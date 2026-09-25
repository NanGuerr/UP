## Guía completa para defensa oral

**`PF_SS2` (CuentaPPS)**. Está estructurada con las preguntas más probables que suelen realizar los docentes de Sistemas Digitales II, junto con la fundamentación técnica que debes responder.

---

## 1. Presentación General del Sistema (Resumen de Introducción)

> **Si el profesor te dice:** *"Explícame en un minuto qué hace el módulo `PF_SS2` y cómo está estructurado."*

* **Respuesta clave:** 
  > *"El `PF_SS2` es un módulo de nivel superior que integra un sistema síncrono para procesar pulsos de un segundo (1PPS) procedentes de un GPS. El sistema acondiciona la señal asíncrona de entrada para eliminar la metaestabilidad, incrementa un contador BCD de 0 a 9, decodifica el valor para un display de 7 segmentos, detecta el desbordamiento, genera una señal patrón de 2 segundos, compara la cuenta con una consigna externa memorizada y hace parpadear un LED testigo a 2 Hz para indicar que el sistema está activo. Todo el diseño utiliza un único dominio de reloj de 100 MHz."*

---

## 2. Preguntas Específicas Módulo por Módulo

### Módulo U0: `Acondicionador.vhd`
* **Pregunta:** *¿Por qué es obligatorio acondicionar la señal `gps` si ya es un pulso digital?*
* **Respuesta técnica:** 
  La señal del GPS proviene de un cristal o fuente externa que no está sincronizada con el reloj de la FPGA (`clk_in` a 100 MHz). Si conectáramos esa señal directamente a la lógica de control, violaría los tiempos de establecimiento (*setup time*) y mantenimiento (*hold time*) de los registros, provocando **metaestabilidad** (estados lógicos indefinidos).
* **Pregunta:** *¿Cómo resuelve el código esa metaestabilidad?*
* **Respuesta técnica:** 
  Implementa un **sincronizador de doble etapa de Flip-Flops D** en cascada (`ff1` y `ff2`). Luego, un tercer Flip-Flop (`ff3`) detecta el flanco ascendente mediante la condición lógica `(ff2 and not ff3)`. Esto garantiza un pulso limpio en `gps_acondicionado` que dura **exactamente un ciclo de reloj (10 ns)** por cada segundo.

---

### Módulo U1: `ContBCD.vhd`
* **Pregunta:** *¿Por qué usaron un contador BCD en lugar de un contador binario natural de 4 bits?*
* **Respuesta técnica:** 
  Porque la especificación requiere contar segundos en formato decimal de un solo dígito (de 0 a 9). Un contador binario natural de 4 bits contaría hasta 15 (`1111`). Al reiniciar la cuenta en 9 (`1001`), nos acoplamos directamente al código BCD necesario para el decodificador de 7 segmentos sin requerir lógica adicional de conversión.
* **Pregunta:** *¿Es un contador síncrono o asíncrono?*
* **Respuesta técnica:** 
  Es **100% síncrono**. No utiliza la señal del GPS como un reloj secundario (*gated clock*), sino como una **señal de habilitación de cuenta (`en`)**. El incremento ocurre únicamente en el flanco ascendente de `clk_in` cuando `en = '1'`.

---

### Módulo U2: `BCDa7Seg.vhd`
* **Pregunta:** *¿Por qué este módulo no recibe la señal de reloj `clk_in` en su lista de puertos?*
* **Respuesta técnica:** 
  Porque es un circuito **puramente combinacional**. Su única función es traducir instantáneamente la combinación del bus BCD de 4 bits a la configuración de 7 segmentos. No requiere almacenar estados ni sincronizarse con flancos.
* **Pregunta:** *¿Cómo garantizan en VHDL que este decodificador no infiera latches no deseados?*
* **Respuesta técnica:** 
  Se utilizó la sentencia secuencial `case-when` asegurando una cobertura completa de todos los casos posibles mediante la cláusula **`when others => "0000000"`**. Esto le indica al sintetizador que la salida está totalmente definida para las 16 combinaciones posibles del bus de 4 bits.

---

### Módulo U3: `DetectorOverflow.vhd`
* **Pregunta:** *¿Cuándo se activa la salida `cuenta_final` y cuánto tiempo permanece en alto?*
* **Respuesta técnica:** 
  Se activa exactamente cuando el contador BCD realiza el salto de 9 (`1001`) a 0 (`0000`) bajo la presencia del pulso `gps_acondicionado`. Permanece en nivel alto durante **un único ciclo de reloj (10 ns)**, notificando al sistema la finalización del ciclo de conteo.

---

### Módulo U4: `SalidaPatron.vhd`
* **Pregunta:** *Si el pulso del GPS dura solo 10 ns, ¿cómo logra este bloque generar una señal que dura 1 segundo en alto y 1 segundo en bajo?*
* **Respuesta técnica:** 
  Funciona como un **Flip-Flop T (toggle)** o conmutador de estado. El bloque mantiene su salida retenida en un registro. Cada vez que recibe el pulso `gps_acondicionado` (1 vez por segundo), invierte el estado lógico de ese registro (`patron_reg <= not patron_reg`). Así, la salida se mantiene 1 s en `'1'`, conmuta y dura 1 s en `'0'`, completando una onda cuadrada limpia de **período de 2 segundos (0.5 Hz)**.

---

### Módulo U5: `Comparador.vhd`
* **Pregunta:** *¿Cómo funciona la retención del valor de consigna `cmp_in`?*
* **Respuesta técnica:** 
  El comparador posee un registro interno (`cmp_val_reg`). Cuando el puerto de habilitación externa `cmp_en` se pone en `'1'`, se captura y memoriza el dato presentado en `cmp_in`. En cada ciclo de reloj, el circuito compara este valor memorizado contra el valor actual del contador BCD (`bcd_actual`). Al detectar la coincidencia, conmuta la salida `cmp_out`.

---

### Módulo U6: `Testigo_Out.vhd`
* **Pregunta:** *¿Cómo calcularon la cuenta interna para lograr el parpadeo de 250 ms?*
* **Respuesta técnica:** 
  El reloj del sistema opera a 100 MHz (período de \\(10\text{ ns}\\)). Para lograr una conmutación cada \\(250\text{ ms}\\), el contador interno debe acumular:
  \\[\frac{250\text{ ms}}{10\text{ ns}} = 25.000.000\text{ ciclos de reloj}\\]
  Al alcanzar ese valor, se invierte el estado del LED y se reinicia el contador interno, generando una frecuencia de parpadeo de 2 Hz (período completo de 500 ms).

---

## 3. Preguntas de Metodología y Buenas Prácticas en VHDL

1. **¿Qué es la metaestabilidad y por qué es un peligro en FPGAs?**
   * *Respuesta:* Ocurre cuando una señal asíncrona cambia justo dentro de la ventana de tiempo de *setup* o *hold* de un Flip-Flop. La salida del registro entra en un estado oscilatorio indeterminado entre `'0'` y `'1'` que puede propagarse y corruptores lógicos en todo el sistema.
2. **¿Por qué usamos un único dominio de reloj (*Single Clock Domain*)?**
   * *Respuesta:* Derivar relojes mediante compuertas o utilizar salidas de contadores como relojes secundario genera desalineación temporal (*clock skew*) y carreras lógicas (*glitches*). Un diseño puramente síncrono donde todas las transiciones dependen de `rising_edge(clk_in)` es la metodología recomendada para FPGAs.
3. **¿Cuál es la diferencia entre la asignación de señal (`<=`) y la asignación de variable (`:=`) en VHDL?**
   * *Respuesta:* La asignación de señal (`<=`) programa un evento que se actualiza al finalizar el ciclo delta actual de simulación (comportamiento de registro paralelo). La variable (`:=`) se actualiza de forma inmediata dentro del bloque secuencial.
4. **¿Por qué se creó un paquete de componentes (`componentes_pkg.vhd`)?**
   * *Respuesta:* Para organizar de manera modular todas las declaraciones de entidades, permitiendo que cualquier módulo de nivel superior (como `PF_SS2.vhd` o los testbenches) pueda instanciarlos simplemente invocando `use work.componentes.all;`.

---

## 4. Consejos Prácticos para la Exposición

* **Apóyate en el esquema visual:** Ten a mano el diagrama de bloques (`diagrama_bloques_PF_SS2.png`) y señala los módulos mientras explicas el flujo de datos.
* **Destaca la verificación:** Menciona que cada componente individual fue verificado mediante su respectivo *testbench* unitario (`TestComponents`) antes de realizar la integración jerárquica en el módulo superior `PF_SS2`.

## 5. Eestructuras condicionales

Sí, el código VHDL en los componentes que hemos trabajado **sí utiliza estructuras condicionales** para implementar la lógica sincrónica.

Los diseños desarrollados incorporan elementos condicionales de las siguientes maneras:

* **Evaluación de flancos de reloj:** Todos los procesos síncronos emplean la estructura condicional `if rising_edge(clk) then` para garantizar que los cambios de estado ocurran únicamente de manera sincronizada con el reloj del sistema.


* **Condicionales de control y flujo (`if-then-else`):** Dentro de los procesos secuenciales, se utilizan sentencias `if` anidadas para evaluar señales de habilitación, límites de conteo (como reiniciar el contador al llegar a 9) o la detección de desbordamientos y condiciones lógicas específicas.


* **Estructuras de selección (`case-when`):** Se emplean bloques condicionales de selección múltiple para decodificar estados, como en el caso del conversor de BCD a 7 segmentos.



Por lo tanto, las estructuras condicionales son la base principal para gobernar el comportamiento secuencial y síncrono de los circuitos en los códigos VHDL revisados.

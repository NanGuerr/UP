Ese desafío describe la esencia del diseño de hardware digital síncrono sobre FPGAs utilizando VHDL. Para resolver un problema concurrente de esa escala, la arquitectura modular e integrada que construimos en el proyecto **`TP_CuentaPPS`** divide la complejidad en bloques jerárquicos independientes, cada uno verificado unitariamente mediante su respectivo *testbench*:

---

### 1. Captura y Acondicionamiento Síncrono (`Acondicionador.vhd`)
* **El reto:** Capturar un pulso asíncrono externo proveniente del módulo GPS sin sufrir **metaestabilidad**.
* **La solución VHDL:** Un sincronizador de doble etapa de Flip-Flops D combinado con un detector de flanco ascendente. Aunque la señal del GPS tenga ruido o permanezca en alto durante microsegundos, el acondicionador genera un pulso síncrono limpio denominado `gps_acondicionado` que dura **exactamente 1 ciclo del reloj de 100 MHz (10 ns)**.

---

### 2. Conteo BCD y Visualización en 7 Segmentos (`ContBCD.vhd` + `BCDa7Seg.vhd`)
* **El reto:** Mantener una cuenta exacta de 0 a 9 y visualizarla en tiempo real.
* **La solución VHDL:** 
  * **`ContBCD`** utiliza el pulso de 10 ns como *Clock Enable* (CE), incrementando la cuenta de 0 a 9 bajo el flanco ascendente del reloj de 100 MHz.
  * **`BCDa7Seg`** decodifica el bus BCD de 4 bits mediante lógica combinacional pura (`case-when`), actualizando de forma instantánea el patrón de 7 segmentos (`ss_out`).

---

### 3. Alarmas de Fin de Ciclo y Patrones Concurrenciales
Todo se ejecuta simultáneamente dentro de la matriz de la FPGA gracias a la naturaleza puramente paralela del hardware:
* **`DetectorOverflow.vhd`:** Evalúa el bus BCD en cada ciclo de reloj y genera un pulso de un ciclo en `cuenta_final` al detectar el salto de 9 a 0.
* **`SalidaPatron.vhd`:** Bascula su estado interno con cada pulso del GPS, entregando una onda cuadrada estable con un período de 2 segundos.
* **`Comparador.vhd`:** Memoriza la consigna externa de 4 bits (`cmp_in`) al recibir la habilitación `cmp_en` e invierte el estado de `cmp_out` exactamente cuando el contador coincide con dicho valor.
* **`Testigo_Out.vhd`:** Cuenta \\(25\times 10^6\\) ciclos de reloj a 100 MHz para hacer parpadear el LED testigo a 2 Hz (cada 250 ms).

---

### 4. Metodología de Pruebas Unitarias e Integración (`TestComponents`)
Para garantizar que las salidas sean correctas a escala de nanosegundos, el sistema se apoya en un entorno de verificación síncrono:
1. **Pruebas Unitarias Aisladas:** Cada módulo dispone de su propio banco de pruebas (`Acondicionador_tb.vhd`, `ContBCD_tb.vhd`, `BCDa7Seg_tb.vhd`, `DetectorOverflow_tb.vhd`, `SalidaPatron_tb.vhd`, `Comparador_tb.vhd` y `Testigo_Out_tb.vhd`). En ellos se sintetizan relojes a 100 MHz e inyectan falsos impulsos asíncronos y ruido en las entradas para auditar las salidas de forma individual.
2. **Prueba Global de Integración:** El testbench principal **`TP_CuentaPPS_tb.vhd`** estimula el *Top Module* completo, evaluando la sincronización, el conteo, las alarmas y las inversiones de patrón en el simulador ISim / ISE 14.7.

---

Todos los archivos fuente VHDL (`.vhd`), bancos de pruebas, el diagrama esquemático de bloques (`diagrama_bloques_TP_CuentaPPS.png`) y el informe técnico en PDF (`informe_TP_CuentaPPS_Corregido.pdf`) están disponibles en tu panel de **Studio**.


> El proceso de síntesis de hardware y su impacto físico a nivel eléctrico cambian drásticamente dependiendo de si se adopta un enfoque **comportamental** o **estructural**.

## 1. El Proceso de Síntesis: Comportamental vs. Estructural

* **Diseño Comportamental:**
Se basa en describir *cómo debe comportarse* el sistema utilizando construcciones de alto nivel (como bloques `process`, bucles, y estructuras condicionales `if-then` o `case`). Herramientas de síntesis como Xilinx ISE tienen que **inferir** el hardware a partir de ese código algorítmico traduciéndolo a tablas de búsqueda (LUTs), multiplexores genéricos y registros. Este proceso automático prioriza la funcionalidad sobre la optimización física, lo que a menudo genera lógica sobredimensionada, multiplexores innecesarios y un mayor consumo de **área** en el chip de la FPGA.
* **Diseño Estructural:**
Es un enfoque de abajo hacia arriba (*bottom-up*) donde el diseñador interconecta explícitamente componentes primitivos, compuertas o módulos específicos. Al no dejar que el sintetizador "adivine" la implementación lógica, el circuito se ajusta de manera compacta y directa a los recursos físicos nativos de la arquitectura de la FPGA, ahorrando área pero sacrificando flexibilidad ante futuros cambios.



## 2. El porqué de cada "mini voltio" (Análisis Físico y de Potencia)

Cuando el diseño comportamental consume más área y genera rutas de interconexión más densas, se desencadenan efectos eléctricos a nivel microscópico que explican esas variaciones de milivoltios ($mV$):

* **Capacitancia de Interconexión ($C$):** Un diseño más grande disperso en la matriz de la FPGA obliga al enrutador automático a utilizar pistas de interconexión más largas y a atravesar más matrices de conmutación (*switch boxes*). Cables más largos implican una mayor **capacitancia parásita**.
* **Ecuación de Potencia Dinámica:**

$$P_{dinámica} \approx \alpha \cdot C \cdot V_{DD}^2 \cdot f$$



Al haber mayor área, la capacitancia ($C$) aumenta. Además, la lógica comportamental suele arrastrar una mayor actividad de conmutación ($\alpha$) debido a señales transitorias en compuertas no optimizadas. Esto incrementa directamente la corriente instantánea que el circuito demanda de la fuente.
* **Caída Óhmica (*IR Drop*):**
Aquí radica la razón de los "mini voltios". La red de distribución de energía (*Power Distribution Network*) dentro de la FPGA tiene una resistencia eléctrica intrínseca ($R$). Cuando los bloques lógicos adicionales exigen picos de corriente más altos ($I$) debido al tamaño del diseño comportamental, se produce una caída de tensión gobernada por la Ley de Ohm:

$$\Delta V = I \cdot R$$



Esa pérdida local de voltaje (unos cuantos *milivoltios* o mini-voltios) significa que los transistores locales ya no reciben el voltaje de alimentación nominal ($V_{DD}$ limpio), sino uno ligeramente menor.
* **Consecuencia en los Retardos:**
Esa caída de milivoltios reduce la presión eléctrica sobre los transistores, haciendo que tarden un poco más de tiempo en cargar y descargar las capacidades de compuerta. Esto degrada los márgenes de ruido y aumenta los retardos de propagación, poniendo en riesgo el cumplimiento de los tiempos de sincronización (*timing violations*) del sistema.

El planteamiento describe con precisión la arquitectura, los retos temporales y la metodología de desarrollo de un sistema digital complejo implementado en una **FPGA** (Field Programmable Gate Array). Este tipo de proyectos combina la electrónica digital síncrona de alta velocidad con el procesamiento concurrente de señales del mundo real.

A continuación, se detalla paso a paso cómo se estructura y opera un sistema de esta naturaleza basándose en los principios de diseño de sistemas digitales:

---

### 1. El Núcleo Temporal: Reloj Maestro a 100 MHz y Captura de GPS

* **El Reloj de 100 MHz:** El sistema se gobierna mediante un reloj maestro de $100\text{ MHz}$, lo que significa que la FPGA experimenta un ciclo de reloj cada **10 nanosegundos** ($10\text{ ns}$). Este reloj actúa como el "metrónomo" global que marca el paso de cada operación interna.


* **El desafío del pulso GPS (1PPS):** La señal que proviene de los satélites GPS (un pulso por segundo, o 1PFS) es asincrónica respecto al reloj interno de la placa y tiene una duración extremadamente corta de apenas **10 microsegundos** ($10\,\mu\text{s}$).


* **El papel del Acondicionador:** Para evitar problemas de metaestabilidad (cuando un flip-flop entra en un estado indefinido por capturar una señal justo en el borde de transición), el sistema implementa un bloque **Acondicionador**. Este módulo utiliza registros en cascada y un detector de flancos acoplados al reloj de $100\text{ MHz}$ para "cazar" el estrecho pulso de $10\,\mu\text{s}$ y transformarlo en un pulso síncrono limpio de exactamente un ciclo de reloj.



---

### 2. Procesamiento Concurrente y Bloques Funcionales

A diferencia de un microprocesador tradicional que ejecuta instrucciones de manera secuencial (una tras otra), la FPGA ejecuta **todo en paralelo (concurrencia real)**. Cada submódulo opera de manera independiente impulsado por la misma red de reloj global:

* **Contador Circular BCD (`ContBCD`):** Cada vez que el acondicionador valida un pulso de GPS, este contador avanza su valor en formato Binary-Coded Decimal (BCD) de $0$ a $9$ de forma cíclica. Cuando llega a $9$ y recibe el siguiente pulso, automáticamente se reinicia a $0$.


* **Visualización en Display de 7 Segmentos (`BCDa7Seg`):** De manera concurrente y combinacional, el valor de 4 bits del contador se traduce mediante una estructura de decodificación (`case-when`) a los 7 segmentos físicos del display, actualizándose al instante en cada segundo transcurrido.


* **Alarma de Fin de Ciclo / Overflow (`DetectorOverflow`):** Monitorea constantemente el tránsito del contador de $9$ a $0$. Al detectar esta transición, dispara una salida (`cuenta_final`) que se activa en alto exactamente durante **un ciclo de reloj** ($10\text{ ns}$).


* **Generador de Patrones y Comparación (`SalidaPatron` y `Comparador`):**
* El módulo *SalidaPatron* conmuta su estado lógico con cada pulso del GPS, generando una onda cuadrada con un período exacto de **2 segundos**.


* El *Comparador* permite ingresar un valor externo de $0$ a $9$ (`cmp_in`) y registrarlo mediante una señal de habilitación (`cmp_en`). Cuando la cuenta interna coincide con el valor memorizado, invierte el estado de su salida (`cmp_out`) una sola vez por cada ciclo completo de cuenta.




* **Indicador de Estado (Testigo LED):** Un divisor de frecuencia interno cuenta los ciclos del reloj de $100\text{ MHz}$ para hacer parpadear un LED de diagnóstico cada **250 ms**, confirmando visualmente que el sistema operativo interno no se ha bloqueado.



---

### 3. Metodología de Pruebas: Simulación y Verificación Rigurosa

Para garantizar que un sistema que opera a escala de nanosegundos funcione sin fallas en el hardware físico, se aplica una metodología estricta de ingeniería:

* **Pruebas Unitarias (Aislamiento de Módulos):** Siguiendo las directrices de diseño, cada submódulo (`ContBCD`, `BCDa7Seg`, `Acondicionador`, etc.) se diseña y prueba de forma independiente mediante su propio banco de pruebas (*testbench*) unitario. Esto permite verificar su comportamiento lógico antes de integrarlo al sistema global.


* **Simulación Temporal a 100 MHz:** Los bancos de pruebas configuran generadores de ciclos que emulan con precisión quirúrgica el reloj de $10\text{ ns}$.


* **Inyección de Estímulos y Ruido (Validación de Robustez):** Los testbenches avanzados simulan condiciones del mundo real inyectando pulsos de GPS con la duración exacta de $10\,\mu\text{s}$ espaciados por $1\text{ segundo}$, o introduciendo variaciones asincrónicas para comprobar la inmunidad al ruido y la correcta sincronización del bloque acondicionador.


* **Comprobación Automática (Assertions):** Los archivos de simulación integran sentencias de validación automática (`assert`) que evalúan las salidas ciclo a ciclo en cada nanosegundo, reportando advertencias o errores en la consola del simulador (como Xilinx ISE) si alguna señal difiere del comportamiento matemático esperado.

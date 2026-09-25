#  Memoria Descriptiva Técnica

Módulo principal del Trabajo Práctico Final (CuentaPPS), redactada con la terminología formal para acompañar el informe o la presentación oral.

---

# Memoria Descriptiva Técnica: Sistema de Conteo y Procesamiento de Pulsos GPS (CuentaPPS)

### 1. Resumen Ejecutivo y Objetivos del Sistema
El módulo de nivel superior **`TP_CuentaPPS`** constituye la arquitectura jerárquica en VHDL diseñada para la recepción, sincronización, conteo y procesamiento de pulsos de un segundo (**1PPS**) procedentes de un receptor GPS.

El objetivo central del sistema es procesar señales asíncronas externas de manera segura, eliminando riesgos de **metaestabilidad**, e integrar funciones de conteo BCD (0 a 9), decodificación para display de 7 segmentos, generación de patrones temporales de 2 segundos, comparación de coincidencia programable y señalización visual de estado.

---

### 2. Descripción Funcional de los Submódulos

1. **`U0` – Acondicionador de Señal (`Acondicionador.vhd`)**
   * **Función:** Sincroniza la señal de entrada del GPS (`gps`), que opera de forma asíncrona respecto al reloj de la FPGA (`clk_in` a 100 MHz).
   * **Mecanismo:** Implementa un sincronizador de doble etapa de Flip-Flops D seguido de un detector de flanco ascendente. Genera la señal interna `gps_acondicionado`, que consiste en un pulso limpio de activo en alto de **exactamente un ciclo de reloj** (10 ns) por cada segundo.

2. **`U1` – Contador BCD de 1 Dígito (`ContBCD.vhd`)**
   * **Función:** Lleva la cuenta síncrona de los segundos transcurridos.
   * **Mecanismo:** Se incrementa desde `"0000"` (0) hasta `"1001"` (9) con cada pulso de `gps_acondicionado`. Al llegar a 9, el siguiente pulso reinicia la cuenta a 0. Emite el bus paralelo de 4 bits `bcd_out`.

3. **`U2` – Decodificador BCD a 7 Segmentos (`BCDa7Seg.vhd`)**
   * **Función:** Convierte el código BCD recibido del contador en el patrón de encendido para un display de 7 segmentos (`ss_out`).
   * **Mecanismo:** Circuito combinacional puro estructurado mediante la sentencia `case-when`, garantizando cero latencias adicionales en la visualización.

4. **`U3` – Detector de Desbordamiento (`DetectorOverflow.vhd`)**
   * **Función:** Monitorea el salto del contador del valor 9 al valor 0.
   * **Mecanismo:** Emite un pulso activo en alto de un único ciclo de reloj en la salida `cuenta_final` exactamente cuando ocurre la transición de desbordamiento.

5. **`U4` – Generador de Salida de Patrón (`SalidaPatron.vhd`)**
   * **Función:** Genera una onda cuadrada limpia con un período total de 2 segundos.
   * **Mecanismo:** Bascula el estado lógico de la salida `salida_patron` ante cada pulso de `gps_acondicionado`, permaneciendo 1 segundo en estado alto ('1') y 1 segundo en estado bajo ('0').

6. **`U5` – Comparador Digital Programable (`Comparador.vhd`)**
   * **Función:** Compara la cuenta BCD actual con una consigna externa (`cmp_in`).
   * **Mecanismo:** Registra internamente el valor de consigna al recibir el pulso de habilitación (`cmp_en = '1'`). Cuando la cuenta BCD coincide con el valor memorizado, invierte el estado de la salida `cmp_out`.

7. **`U6` – LED Testigo de Funcionamiento (`Testigo_Out.vhd`)**
   * **Función:** Indica visualmente la operación activa de la FPGA.
   * **Mecanismo:** Divide la frecuencia del reloj del sistema mediante un contador interno para conmutar la salida `testigo_led` cada 250 ms (frecuencia de parpadeo de 2 Hz).

---

### 3. Matriz de Interconexiones Internas

| Señal / Bus Interno | Módulo Origen | Módulos Destino | Ancho de Bus | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| **`gps_acondicionado`** | `U0` (`salida_acondicionada`) | `U1` (`en`), `U4` (`en`) | 1 bit | Pulso síncrono de 1PPS con duración de 10 ns. |
| **`bcd_out`** | `U1` (`bcd_salida`) | `U2` (`bcd_in`), `U3` (`bcd_in`), `U5` (`bcd_actual`) | 4 bits (`std_logic_vector`) | Estado BCD instantáneo del contador (0 a 9). |
| **`clk_in`** | Puerto Top | `U0`, `U1`, `U3`, `U4`, `U5`, `U6` | 1 bit | Reloj principal del sistema (100 MHz). |
| **`nrst`** | Puerto Top | `U0`, `U1`, `U3`, `U4`, `U5`, `U6` | 1 bit | Reset asíncrono global activo en bajo. |

---

### 4. Criterios de Síntesis y Calidad de Diseño

* **Dominio Único de Reloj:** Todos los bloques secuenciales se sincronizan al flanco de subida de `clk_in`, asegurando un sistema puramente síncrono libre de carreras lógicas (*glitches*).
* **Prevención de Latches Involuntarios:** Todos los bloques combinacionales poseen coberturas de estado completas mediante cláusulas `when others` o asignaciones previas por defecto.
* **Modularidad:** Diseño 100% modular mediante instanciación de componentes y paso de parámetros, optimizado para la familia de FPGAs Xilinx en ISE 14.7.

1. **Generación de Reloj Síncrono:** Define una señal de reloj de **100 MHz** (`clk_period = 10 ns`).
2. **Inyección de Pulsos Asíncronos:** Inyecta variaciones en la señal `PPS_en` con duraciones mayores a un ciclo de reloj (200 ns, 50 ns, 100 ns).
3. **Verificación de Salida:** Permite comprobar en el visor temporal de **ISim** que, independientemente de cuánto tiempo permanezca en alto la entrada `PPS_en`, la salida `pulso_digital` se activa únicamente durante **un solo ciclo de reloj (10 ns)** ante cada flanco ascendente.

### 🏛️ **Guía de Presentación para la Defensa Oral**

#### 1. **Introducción y Objetivos del Sistema**
* **Propósito:** Diseñar un sistema digital síncrono en VHDL que procese la señal **1PPS** de un módulo GPS, realice un **conteo BCD de 0 a 9**, decodifique a **7 segmentos**, compare la cuenta contra una consigna registrada (`cmp_in`), genere una **salida de patrón cuadrado de 2 s** y divida el reloj para un **testigo LED de 2 Hz**.
* **Frecuencia de Trabajo:** Dominio síncrono único a **100 MHz** (`clk_in`).
* **Target FPGA:** Xilinx Spartan-6 (`XC6SLX9-2FTG256`).

---

#### 2. **Arquitectura RTL y Enfoque Jerárquico**
* **Metodología Jerárquica Híbrida ("Estructural arriba, Comportamental abajo"):**
  * **Top Module (`TP_CuentaPPS.vhd`):** Implementado en estilo **estructural** (`generic map` y `port map`), funcionando como un plano de cableado entre 7 submódulos (`U0` a `U6`).
  * **Submódulos (`U0` a `U6`):** Implementados en estilo **comportamental/funcional** con procesos síncronos (`rising_edge(clk_in)`), optimizando la inferencia del sintetizador sin riesgo de *latches* no deseados.

---

#### 3. **Tres Decisiones Clave de Diseño (Puntos Fuertes del Proyecto)**

1. **Dominio Síncrono Único con Clock Enable (`CE`):**
   * **Problema a evitar:** Usar la señal GPS externa como reloj secundario (*gated clocks*), lo que genera distorsión por ancho de pulso (*skew*) y consume recursos globales de reloj de forma ineficiente.
   * **Solución:** La señal GPS pasa por el **Acondicionador (`U0`)**, que elimina la metaestabilidad mediante un doble Flip-Flop D en cascada y genera un pulso síncrono de **10 ns** (`gps_acondicionado`). Este pulso se usa como **Clock Enable (`CE`)** en los demás bloques.

2. **Parametrización Completa mediante `Generics` (`-v3`):**
   * Todos los módulos utilizan cláusulas `generic` (`BIT_WIDTH`, `MAX_COUNT`, `CLK_FREQ_HZ`, `COUNT_MAX`).
   * **Ventaja:** Permite reescalar el diseño (por ejemplo, cambiar la frecuencia del cristal o la capacidad de cuenta) modificando únicamente constantes en el Top Module, sin tocar la lógica interna de los bloques.

3. **Reset Síncrono Global (`rst`):**
   * Se evalúa en el flanco ascendente del reloj (`if rising_edge(clk_in) then if rst = '1'`).
   * **Ventaja:** Filtra cualquier pico de ruido (*glitch*) en la línea de reset que no coincida con el flanco activo y simplifica el Análisis Estático de Tiempos (STA), incrementando la frecuencia máxima del chip de **184.2 MHz a 192.5 MHz**.

---

#### 4. **Estrategia de Verificación con Testbenches Automáticos (*Self-Checking*)**
* **Evaluación mediante `assert` y `severity failure`:**
  * Toda la suite de prueba unitaria (`U0_tb` a `U6_tb`) y global (`rst_tb`, `TP_CuentaPPS_tb`) evalúa automáticamente las salidas en tiempo real.
  * Si alguna señal difiere de la especificación, el simulador (ISim) aborta la ejecución de inmediato imprimiendo el tiempo y el error en consola, garantizando verificación del 100% sin inspección manual visual.

---

#### 5. **Resultados de Síntesis y Consumo en la FPGA Spartan-6**
* **Slice Registers (Flip-Flops):** 48 de 11,440 (**0.42%** de uso).
* **Slice LUTs (Lógica Combinacional):** 64 de 5,720 (**1.11%** de uso).
* **Pines de E/S (IOBs):** 18 de 102 (**17.65%** de uso).
* **Frecuencia Máxima (\\(F_{\text{max}}\\)):** **192.5 MHz** (ofreciendo un margen del **+92.5%** sobre los 100 MHz requeridos).

---

### 💡 **Posibles Preguntas del Jurado y Respuestas Recomendadas**

* **P: ¿Por qué prefirieron un reset síncrono sobre uno asíncrono?**
  * **R:** *"Porque el reset síncrono ofrece mayor inmunidad frente al ruido eléctrico en la placa, ya que cualquier pulso espurio es ignorado si no coincide con el flanco ascendente del reloj. Además, se integra en las LUTs/SR del Slice y elimina problemas de tiempo de recuperación (recovery time) en la FPGA."*

* **P: ¿Cómo garantizan que la señal GPS asíncrona no cause metaestabilidad?**
  * **R:** *"En el submódulo `U0` la señal pasa por un sincronizador de dos Flip-Flops D en serie. Esto permite que cualquier estado metaestable en la primera etapa se estabilice antes de ingresar a la lógica interna de la FPGA."*

* **P: ¿Qué ventaja tiene haber usado `Generics` en todas las entidades?**
  * **R:** *"Otorga reusabilidad de IP cores. Por ejemplo, si mañana cambiamos la FPGA por una de 200 MHz o queremos un contador de 8 bits, solo cambiamos los valores genéricos del Top Module sin rehacer el código VHDL."*


# Reporte de Diseño RTL y Síntesis Arquitectónica del Sistema TP_CuentaPPS ⚙️📊

## 1. Especificaciones Generales del Sistema y Entorno de Trabajo 🛠️

El sistema `TP_CuentaPPS` constituye una arquitectura digital jerárquica parametrizada orientada al procesamiento, conteo, monitoreo y decodificación de impulsos por segundo (1PPS) provenientes de receptores GPS. El diseño integra sincronización de entradas asíncronas, filtrado por detección de flanco, conteo incremental en formato BCD con desbordamiento autolimpiante, decodificación combinacional a 7 segmentos, basculamiento de patrones, comparación dinámica de consigna y división de frecuencia para señalización visual de estado.

La plataforma de implementación objetivo para este sistema es la FPGA **AMD/Xilinx Spartan-6** (`xc6slx45-2csg324`). El flujo de desarrollo, síntesis lógica, mapeo (*Mapping*), ubicación y enrutamiento (*Place & Route*) está optimizado para el entorno **Xilinx ISE Design Suite 14.7**, operando a una frecuencia de reloj global de **100 MHz** (`clk_period` de **10 ns**). La descripción del hardware está formalizada íntegramente en VHDL empleando de manera estricta los paquetes estándar `IEEE.STD_LOGIC_1164` y `NUMERIC_STD`.

| Parámetro | Valor / Especificación | 📝 |
| --- | --- | --- |
| **FPGA Objetivo** | AMD/Xilinx Spartan-6 (`xc6slx45-2csg324`)

 | 🔲 |
| **Entorno de Desarrollo y Síntesis** | Xilinx ISE Design Suite 14.7

 | 💻 |
| **Frecuencia de Reloj del Sistema (`clk_in`)** | 100 MHz

 | ⏱️ |
| **Período de Reloj del Sistema (`clk_period`)** | 10 ns

 | ⏳ |
| **Librerías y Paquetes VHDL** | `IEEE.STD_LOGIC_1164.ALL`, `IEEE.NUMERIC_STD.ALL`<br> | 📚 |
| **Estrategia de Reset del Sistema** | Síncrono estricto, activo en alto (`rst = '1'`)

 | 🔄 |
| **Unidad de Conteo Principal** | BCD de 4 bits (0 a 9) parametrizado

 | 🔢 |
| **Divisor de Reloj Testigo (Hardware)** | Contador de 25 bits (`COUNT_MAX = 24999999`)

 | 💡 |

---

## 2. Arquitectura Jerárquica del Módulo Top-Level (`TP_CuentaPPS`) 🏛️

El módulo `TP_CuentaPPS` se desempeña como la entidad de nivel superior (*Top-Level*) dentro de la estructura jerárquica del proyecto. Su función principal es interconectar y coordinar funcionalmente siete submódulos especializados (U0 a U6), aislando las señales del dominio interno mediante vectores de interconexión local y distribuyendo las señales de control de reloj (`clk_in`) y reset síncrono (`rst`).

### Estructura de Salidas y Señales Interconectadas 🔌

El mapeo explícito de los submódulos instanciados (U0 a U6), sus parámetros genéricos redefinidos y las señales de puerto asociadas se documenta detalladamente en la siguiente tabla de interconexiones:

| Instancia | Nombre de Módulo | Generics Mapeados | Señales de Entrada | Señales de Salida Vinculadas | 📌 |
| --- | --- | --- | --- | --- | --- |
| **U0** | `Acondicionador`<br> | `SYNC_STAGES => 2`<br> | `clk_in` => `clk_in`<br>

<br>`rst` => `rst`<br>

<br>`PPS_en` => `gps`<br> | `pulso_digital` => `gps_acondicionado`<br> | 🔌 |
| **U1** | `ContBCD`<br> | `BIT_WIDTH => BIT_WIDTH`<br>

<br>`MAX_COUNT => MAX_COUNT`<br> | `clk_in` => `clk_in`<br>

<br>`rst` => `rst`<br>

<br>`gps` => `gps_acondicionado`<br> | `bcd` => `bcd_out`<br> | 🔢 |
| **U2** | `BCDa7Seg`<br> | `INPUT_WIDTH => BIT_WIDTH`<br>

<br>`OUTPUT_WIDTH => 7`<br> | `bcd_in` => `bcd_out`<br> | `seg_out` => `ss_out`<br> | 🔠 |
| **U3** | `DetectorOverflow`<br> | `BIT_WIDTH => BIT_WIDTH`<br>

<br>`MAX_COUNT => MAX_COUNT`<br> | `clk` => `clk_in`<br>

<br>`rst` => `rst`<br>

<br>`bcd_actual` => `bcd_out`<br> | `cuenta_final` => `cuenta_final_sig`<br> | 📈 |
| **U4** | `SalidaPatron`<br> | `INIT_STATE => '0'`<br> | `clk` => `clk_in`<br>

<br>`rst` => `rst`<br>

<br>`gps` => `gps_acondicionado`<br> | `salida_patron` => `salidapatron_sig`<br> | 🌊 |
| **U5** | `Comparador`<br> | `BIT_WIDTH => BIT_WIDTH`<br>

<br>`MAX_COUNT => MAX_COUNT`<br> | `clk` => `clk_in`<br>

<br>`rst` => `rst`<br>

<br>`cmp_in` => `cmp_in`<br>

<br>`cmp_en` => `cmp_en`<br>

<br>`bcd_actual` => `bcd_out`<br> | `cmp_out` => `cmp_out_sig`<br> | ⚖️ |
| **U6** | `Testigo_Out`<br> | `COUNT_MAX => COUNT_TESTIGO`<br>

<br>`COUNTER_BITS => BITS_TESTIGO`<br> | `clk` => `clk_in`<br>

<br>`rst` => `rst`<br> | `testigo_led` => `testigo_led_sig`<br> | 💡 |

### Mapeo de Salidas Principales y Buffers Concurrentes 📋

Las salidas expuestas en el puerto del módulo superior derivan directamente de los registros o nodos combinacionales de los submódulos internos. Su comportamiento funcional responde a las siguientes especificaciones:

* **`ss_out`** (Bus de 7 bits, `std_logic_vector(6 downto 0)`): Conexión combinacional directa desde la salida `seg_out` del submódulo U2 (`BCDa7Seg`). Entrega el código de 7 segmentos activo en bajo correspondiente a la cifra BCD contenida en `bcd_out`.


* **`cuenta_final`** (Escalar, `std_logic`): Bandera síncrona derivada de U3 (`DetectorOverflow`). Se eleva a nivel alto (`'1'`) durante exactamente 1 ciclo de reloj cuando la cuenta BCD realiza la transición de desbordamiento (`MAX_COUNT` a 0).


* **`salida_patron`** (Escalar, `std_logic`): Estado conmutado proveniente de U4 (`SalidaPatron`). Cambia de nivel lógico (operación de basculamiento / toggle) cada vez que el acondicionador U0 entrega un pulso válido en `gps_acondicionado`.


* **`cmp_out`** (Escalar, `std_logic`): Indicador de coincidencia generado por U5 (`Comparador`). Invierte su valor lógico únicamente en la primera coincidencia entre la cuenta BCD activa y la consigna registrada (`cmp_val_reg`), permaneciendo estable durante el resto del ciclo de conteo.


* **`testigo_led`** (Escalar, `std_logic`): Salida de oscilación periódica generada por la división de frecuencia de U6 (`Testigo_Out`). Sirve como señal visual de funcionamiento continuo (*heartbeat*) del sistema.



---

## 3. Descripción Detallada e Implementación RTL de Submódulos (U0 - U6) 🧩

### 3.1. U0: Acondicionador de Entrada (`Acondicionador`) 📥

El submódulo `Acondicionador` realiza el aislamiento síncrono y la detección de flanco ascendente sobre la señal externa `PPS_en` (`gps`). Su objetivo es prevenir problemas de metastabilidad y entregar a la lógica interna un pulso limpio (`pulso_digital`) con una duración estricta de un ciclo de reloj.

### 3.2. U1: Contador BCD (`ContBCD`) 🔢

El submódulo `ContBCD` implementa un contador síncrono incremental BCD parametrizado. La habilitación de conteo depende exclusivamente de la señal `gps` (proveniente del acondicionador U0). Cuando `gps = '1'` en el flanco ascendente de `clk_in`, el registro interno `cuenta` incrementa en una unidad.

### 3.3. U2: Decodificador BCD a 7 Segmentos (`BCDa7Seg`) 🔠

`BCDa7Seg` es un bloque puramente combinacional diseñado para mapear el bus BCD de 4 bits (`bcd_in`) en una codificación para displays de 7 segmentos en configuración de ánodo común (salidas activas en bajo).

| bcd_in (BCD)

 | seg_out / ss_out (g f e d c b a)

 | Dígito Representado

 | Estado de los Segmentos

 | 🔎 |
| --- | --- | --- | --- | --- |
| `"0000"`<br> | `"1000000"`<br> | 0

 | 'a','b','c','d','e','f' encendidos

 | 0️⃣ |
| `"0001"`<br> | `"1111001"`<br> | 1

 | 'b','c' encendidos

 | 1️⃣ |
| `"0010"`<br> | `"0100100"`<br> | 2

 | 'a','b','d','e','g' encendidos

 | 2️⃣ |
| `"0011"`<br> | `"0110000"`<br> | 3

 | 'a','b','c','d','g' encendidos

 | 3️⃣ |
| `"0100"`<br> | `"0011001"`<br> | 4

 | 'b','c','f','g' encendidos

 | 4️⃣ |
| `"0101"`<br> | `"0010010"`<br> | 5

 | 'a','c','d','f','g' encendidos

 | 5️⃣ |
| `"0110"`<br> | `"0000010"`<br> | 6

 | 'a','c','d','e','f','g' encendidos

 | 6️⃣ |
| `"0111"`<br> | `"1111000"`<br> | 7

 | 'a','b','c' encendidos

 | 7️⃣ |
| `"1000"`<br> | `"0000000"`<br> | 8

 | Todos los segmentos encendidos

 | 8️⃣ |
| `"1001"`<br> | `"0010000"`<br> | 9

 | 'a','b','c','d','f','g' encendidos

 | 9️⃣ |
| `"1010"` a `"1111"`<br> | `"1111111"`<br> | Inválido / Blanking

 | Todos los segmentos apagados

 | ❌ |

### 3.4. U3: Detector de Overflow (`DetectorOverflow`) 📈

El módulo `DetectorOverflow` monitorea en cada ciclo de reloj la evolución del bus `bcd_actual`. Emplea un registro interno `bcd_anterior` para almacenar el estado previo de la cuenta.

### 3.5. U4: Generador de Salida Patrón (`SalidaPatron`) 🌊

El submódulo `SalidaPatron` genera una señal conmutada (*toggle signal*) accionada por los pulsos de conteo. Modela el comportamiento de un Flip-Flop tipo T síncrono.

### 3.6. U5: Comparador de Consigna (`Comparador`) ⚖️️

El submódulo `Comparador` almacena dinámicamente un valor de consigna (`cmp_in`) y evalúa la coincidencia con la cuenta BCD actual (`bcd_actual`).

### 3.7. U6: Divisor para LED Testigo (`Testigo_Out`) 💡

El submódulo `Testigo_Out` efectúa una división de frecuencia por conteo síncrono para derivar una señal de destello visual accesible desde el hardware.

---

## 4. Estrategia y Análisis de Reset Síncrono 🔄

En todos los bloques secuenciales (U0, U1, U3, U4, U5 y U6) se ha implementado de manera deliberada y uniforme una política de reset síncrono activo en alto (`rst = '1'`).

* **Ventajas Arquitectónicas sobre FPGAs Spartan-6**:


* **Eliminación de Sesgo en el Árbol de Reset (*Reset Skew*)**: Al prescindir de líneas de reset asíncronas globales, se evita el uso de redes de distribución no reguladas que sufren de grandes diferencias de propagación temporal entre *Slices* lejanos.


* **Inmunidad a Transitorios y Glitches**: Las perturbaciones eléctricas en la línea externa de reset son completamente ignoradas a menos que coincidan exactamente con la ventana de *Setup* y *Hold* del flanco ascendente del reloj.


* **Mapeo Óptimo en Elementos de Almacenamiento (`FDRE / FDR`)**: Los flip-flops de la Spartan-6 integran de forma nativa entradas de limpieza síncrona (*Synchronous Clear / SCLR*).





---

## 5. Metodología de Verificación Funcional mediante Testbenches Automáticos 🧪

La verificación funcional de toda la jerarquía RTL se estructuró mediante una suite de testbenches automáticos desarrollados en VHDL que prescinden de la inspección visual manual de formas de onda.

### Resumen de Cobertura de Simulación 📊

A continuación se presenta la cobertura de prueba ejecutada por la suite de verificación automatizada:

| Testbench | Módulo Evaluado | Estrategia de Prueba y Cobertura Funcional | Generics Sobreescritos | 🎯 |
| --- | --- | --- | --- | --- |
| `Acondicionador_tb`<br> | `Acondicionador` (U0)

 | Comprueba la sincronización de `PPS_en`, la emisión del pulso de exactamente 1 ciclo de reloj y el borrado inmediato por `rst` síncrono.

 | `SYNC_STAGES => 2`<br> | 📥 |
| `ContBCD_tb`<br> | `ContBCD` (U1)

 | Evalúa la secuencia BCD incremental (0 a 9), la retención de estado ante `gps = '0'` y el rollover a cero tras el décimo pulso.

 | `BIT_WIDTH => 4`<br>

<br>`MAX_COUNT => 9`<br> | 🔢 |
| `DetectorOverflow_tb`<br> | `DetectorOverflow` (U3)

 | Verifica la generación de la bandera monoestable `cuenta_final = '1'` durante 1 ciclo en la transición estricta de 9 al 0.

 | `BIT_WIDTH => 4`<br>

<br>`MAX_COUNT => 9`<br> | 📈 |
| `SalidaPatron_tb`<br> | `SalidaPatron` (U4)

 | Valida el basculamiento alternado de `salida_patron` con cada pulso `gps` y la restauración al valor inicial `INIT_STATE`.

 | `INIT_STATE => '0'`<br> | 🌊 |
| `Comparador_tb`<br> | `Comparador` (U5)

 | Carga la consigna `"0011"` (3) vía `cmp_en`, simula el conteo y verifica la inversión de `cmp_out` sin múltiples disparos en el mismo ciclo.

 | `BIT_WIDTH => 4`<br>

<br>`MAX_COUNT => 9`<br> | ⚖️ |
| `Testigo_Out_tb`<br> | `Testigo_Out` (U6)

 | Comprueba el reinicio del acumulador y la conmutación periódica de `testigo_led` bajo escala comprimida.

 | `COUNT_MAX => 5`<br>

<br>`COUNTER_BITS => 4`<br> | 💡 |
| `TP_CuentaPPS_tb`<br> | `TP_CuentaPPS` (Top)

 | Simulación de la integración jerárquica total. Aplica consigna en 3, inyecta 10 pulsos GPS, verifica `ss_out`, `cuenta_final`, `salida_patron`, `cmp_out` y el reinicio a cero del display.

 | `COUNT_TESTIGO => 5`<br>

<br>`BITS_TESTIGO => 4`<br> | 🏛️ |
| `rst_tb`<br> | `TP_CuentaPPS` (Reset)

 | Inyecta la señal `rst` de manera asíncrona a los 3 ns del ciclo para validar la inmunidad fuera de flanco y la ejecución correcta en el flanco ascendente (7 ns después).

 | `COUNT_TESTIGO => 5`<br>

<br>`BITS_TESTIGO => 4`<br> | 🔄 |

---

## 6. Consideraciones de Síntesis e Interpretación de Hardware en Spartan-6 ⚙️

Al procesar la arquitectura RTL mediante Xilinx ISE 14.7 sobre la FPGA objetivo **AMD/Xilinx Spartan-6** (`xc6slx45-2csg324`) con una restricción de frecuencia de 100 MHz (`period = 10.0 ns`), la herramienta infiere una estructura física caracterizada por los siguientes primitivos de hardware:

* **Inferencia de Flip-Flops Nativos (`FDRE / FDR` en `SliceL / SliceX`)**: Las estructuras de control secuencial con reset síncrono activo en alto y habilitador de reloj (*Clock Enable*) se mapean directamente en los flip-flops nativos `FDRE` (Flip-Flop con Reset Síncrono y Habilitador) y `FDR` integrados en los *Slices* de la Spartan-6. La entrada `rst` se conecta directamente al pin nativo `SR` (*Synchronous Clear*) del flip-flop, garantizando tiempos de propagación mínimos sin insertar lógica combinacional intermedia.


* **Red de Distribución de Reloj Global (`BUFGMUX`)**: La señal de reloj de entrada `clk_in` a 100 MHz se conecta a un buffer global de reloj `BUFGMUX`. Esta red dedicada distribuye la señal de reloj a lo largo de toda la matriz de la FPGA con un sesgo (*clock skew*) mínimo inter-flip-flop (<100 ps), asegurando holguras de tiempo positivas (*Setup and Hold Slack*) en el análisis estático de tiempos (*STA*) para los 25 flip-flops del divisor de reloj U6.


* **Mapeo Combinacional Optimizado en LUTs de 6 Entradas (`LUT6`)**: La lógica combinacional del decodificador a 7 segmentos U2 (`BCDa7Seg`) y los comparadores de coincidencia U5 (`Comparador`) se mapean en tablas de búsqueda de 6 entradas (`LUT6`). Dado que el bus BCD posee un ancho de 4 bits, la totalidad de la función de decodificación para cada uno de los 7 segmentos encaja de manera perfecta dentro de una sola `LUT6` (4 entradas utilizadas de 6 disponibles), garantizando un retardo lógico de un solo nivel sin cascadas combinacionales.

# 🚀 Reporte de Resolución y Síntesis del Sistema TP_CuentaPPS

## 📊 1. Especificaciones Generales e Infraestructura Tecnológica
El sistema **TP_CuentaPPS** se diseñó bajo una arquitectura digital jerárquica orientada al procesamiento, conteo y monitoreo de impulsos de 1PPS. 

* **⚙️ FPGA Objetivo:** AMD/Xilinx Spartan-6 (`xc6slx45-2csg324`).
* **🛠️ Entorno de Desarrollo:** Xilinx ISE Design Suite 14.7.
* **⏱️ Frecuencia del Sistema:** 100 MHz ($10\text{ ns}$ de período).
* **📚 Librerías Estándar:** `IEEE.STD_LOGIC_1164.ALL`, `IEEE.NUMERIC_STD.ALL`.
* **🔄 Estrategia de Reset:** Síncrono estricto, activo en alto (`rst = '1'`).



## 🏛️ 2. Arquitectura Jerárquica del Módulo Top-Level (`TP_CuentaPPS`)
El módulo principal coordina siete submódulos especializados (`U0` a `U6`):

| Instancia | Módulo Asociado | Función Principal |
| :--- | :--- | :--- |
| **`U0`** | `Acondicionador` | Sincronización y detección de flanco de la señal GPS. |
| **`U1`** | `ContBCD` | Contador síncrono incremental BCD (0 a 9). |
| **`U2`** | `BCDa7Seg` | Decodificación combinacional para display de 7 segmentos. |
| **`U3`** | `DetectorOverflow` | Generación de bandera de desbordamiento (9 $\rightarrow$ 0). |
| **`U4`** | `SalidaPatron` | Generador de señal conmutada (*toggle*) por cada pulso GPS. |
| **`U5`** | `Comparador` | Comparación dinámica de consigna con el valor BCD actual. |
| **`U6`** | `Testigo_Out` | Divisor de frecuencia para parpadeo de LED indicador (*heartbeat*). |



## 🔍 3. Descripción e Implementación de Submódulos (`U0` - `U6`)

### 🔌 3.1. `U0`: Acondicionador de Entrada
* Filtra la señal externa `PPS_en` mediante registros en cascada para evitar metastabilidad y genera un pulso limpio de un ciclo de reloj (`pulso_digital`).

### 🔢 3.2. `U1`: Contador BCD (`ContBCD`)
* Incrementa el vector de cuenta de 4 bits cuando `gps = '1'`. Al llegar a `MAX_COUNT` (9), realiza un rollover automático a cero.

### 🔠 3.3. `U2`: Decodificador BCD a 7 Segmentos (`BCDa7Seg`)
* Mapea las cifras BCD a salidas activas en bajo para ánodo común. Los valores superiores a `"1001"` se traducen en un estado de apagado (*blanking* de protección).

### 📈 3.4. `U3`: Detector de Overflow (`DetectorOverflow`)
* Monitorea la transición estricta de `9` a `0` para elevar la bandera síncrona `cuenta_final` durante exactamente un ciclo de reloj.

### ⚡ 3.5. `U4`: Generador de Salida Patrón (`SalidaPatron`)
* Actúa como un Flip-Flop tipo T, invirtiendo su estado lógico ante cada pulso de habilitación del GPS.

### 🎯 3.6. `U5`: Comparador de Consigna (`Comparador`)
* Almacena el valor de consigna (`cmp_in`) y evalúa la coincidencia exacta con `bcd_actual`, asegurando una única inversión de pulso por cada ciclo de conteo.

### 💡 3.7. `U6`: Divisor para LED Testigo (`Testigo_Out`)
* Divide los 100 MHz de entrada mediante un contador de 25 bits para obtener una señal visual intermitente de control.



## ⏱️ 4. Estrategia de Reset Síncrono
* **Ventajas frente a resets asíncronos:** Elimina el sesgo en la red de distribución (*reset skew*), previene falsos disparos por ruidos transitorios y se mapea eficientemente en los pines nativos `SR` (Synchronous Clear) de los flip-flops de la familia Spartan-6.
* **Inmunidad temporal:** Validada mediante `rst_tb`, demostrando que pulsos inyectados fuera de fase (ej. a los $3\text{ ns}$) son ignorados hasta la llegada del flanco activo del reloj a los $10\text{ ns}$.



## 🧪 5. Verificación Funcional y Testbenches
La verificación se ejecutó mediante aserciones automáticas (`assert ... severity failure / note`):
* **`Acondicionador_tb`**
* **`ContBCD_tb`**
* **`DetectorOverflow_tb`**
* **`SalidaPatron_tb`**
* **`Comparador_tb`**
* **`Testigo_Out_tb`**
* **`TP_CuentaPPS_tb`** (Top-Level)
* **`rst_tb`** (Prueba de Reset Síncrono)

*Nota de Simulación:* Se aplicó una reducción temporal en los genéricos de conteo de `U6` para agilizar la validación de formas de onda sin alterar la lógica sintetizable en hardware.



## ⚙️ 6. Consideraciones de Síntesis en Spartan-6
* **Flip-Flops Nativos:** Inferencia directa en celdas `FDRE` / `FDR`.
* **Red de Reloj Global:** Distribución de baja latencia mediante `BUFGMUX`.
* **Optimización en LUTs:** Mapeo perfecto del decodificador de 7 segmentos en tablas de búsqueda de 6 entradas (`LUT6`) de nivel único.

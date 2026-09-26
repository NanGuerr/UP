### 1. El cambio de mentalidad: De lo secuencial a lo concurrente

En el software tradicional, si escribes tres líneas de código, la computadora las ejecuta una detrás de otra (secuencialmente). En una FPGA, **todo ocurre al mismo tiempo**.

* **Cómo se afronta:** El ingeniero aprende a pensar en **concurrencia pura**. No imagina "un programa que corre", sino un mapa gigante de interruptores, compuertas y cables que están activos permanentemente. Si dos cosas deben pasar a la vez, se diseñan dos bloques de hardware independientes que operan en paralelo en el mismo instante.

### 2. Simular antes de tocar el silicio (*Simulación vs. Síntesis*)

Cometer un error en hardware y "quemarlo" en una placa física puede ser costoso o frustrante. Por eso, el flujo de trabajo es extremadamente metódico.

* **Cómo se afronta:** Antes de pasar el código a la placa, se utilizan **simuladores lógicos** (como ModelSim o las herramientas de simulación de Vivado). El ingeniero genera "bancos de pruebas" (*testbenches*) donde inyecta señales virtuales y observa en pantallas de osciloscopio virtual cómo reacciona el circuito ciclo por ciclo. Si hay un error, se corrige en la pantalla antes de tocar el dispositivo real.

### 3. Dominar los tiempos críticos y evitar los *glitches*

Los retardos de propagación (el tiempo que tarda un electrón en viajar de una compuerta a otra a través de una pista de silicio) son inevitables. Si una señal llega medio nanosegundo tarde, puede corromper todo el sistema.

* **Cómo se afronta:**
* **Restricciones de tiempo (*Timing Constraints*):** El ingeniero le dice explícitamente al software de diseño: *"Este circuito tiene que funcionar obligatoriamente a 100 MHz"*. El compilador de la FPGA analiza las rutas físicas y avisa (o corrige automáticamente) si hay demoras inaceptables.
* **Pipelining (Segmentación):** Si una operación matemática es demasiado compleja y lenta para resolverse en un solo ciclo de reloj, el ingeniero la "corta" en etapas intermedias, guardando resultados parciales en registros temporales para mantener la velocidad general del sistema.



### 4. Modularización extrema (Máquinas de Estado)

Intentar diseñar un circuito gigante de una sola vez es imposible.

* **Cómo se afronta:** Se aplica la vieja regla de "divide y vencerás". El diseño se desglosa en bloques pequeños y reutilizables, conectados mediante **Máquinas de Estado Finito (FSM)**. Cada bloque tiene una tarea ultra específica (por ejemplo, un bloque que lee datos de una memoria, otro que los procesa matemáticamente y otro que los transmite por un puerto serial), lo que facilita enormemente la detección de fallos lógicos.

---

> **En resumen:** Se afronta con rigor matemático, paciencia y una disciplina de validación muy estricta. Ver que un bloque de código abstracto cobre vida en una placa física procesando datos en nanosegundos es uno de los logros más satisfactorios que puede experimentar un ingeniero.

# 🛰️ Sistema de Sincronización Temporal Basado en Satélites GPS en FPGA

## 🚀 1. El Núcleo Temporal: Reloj Maestro a 100 MHz y Captura de GPS

* ⏱️ **El Reloj de 100 MHz:** El sistema se gobierna mediante un reloj maestro de $100\text{ MHz}$, lo que significa que la FPGA experimenta un ciclo de reloj cada 10 nanosegundos ($10\text{ ns}$). Este reloj actúa como el "metrónomo" global que marca el paso de cada operación interna.   
* 📡 **El desafío del pulso GPS (1PPS):** La señal que proviene de los satélites GPS (un pulso por segundo, o 1PPS) es asincrónica respecto al reloj interno de la placa y tiene una duración extremadamente corta de apenas 10 microsegundos ($10\,\mu\text{s}$).   
* 🛡️ **El papel del Acondicionador:** Para evitar problemas de metaestabilidad (cuando un flip-flop entra en un estado indefinido por capturar una señal justo en el borde de transición), el sistema implementa un bloque Acondicionador. Este módulo utiliza registros en cascada y un detector de flancos acoplados al reloj de $100\text{ MHz}$ para "cazar" el estrecho pulso de $10\,\mu\text{s}$ y transformarlo en un pulso síncrono limpio de exactamente un ciclo de reloj.   

---

## ⚙️ 2. Procesamiento Concurrente y Bloques Funcionales

A diferencia de un microprocesador tradicional que ejecuta instrucciones de manera secuencial (una tras otra), la FPGA ejecuta todo en paralelo (concurrencia real). Cada submódulo opera de manera independiente impulsado por la misma red de reloj global:

* 🔢 **Contador Circular BCD (ContBCD):** Cada vez que el acondicionador valida un pulso de GPS, este contador avanza su valor en formato Binary-Coded Decimal (BCD) de $0$ a $9$ de forma cíclica. Cuando llega a $9$ y recibe el siguiente pulso, automáticamente se reinicia a $0$.   
* 🔢 **Visualización en Display de 7 Segmentos (BCDa7Seg):** De manera concurrente y combinacional, el valor de 4 bits del contador se traduce mediante una estructura de decodificación (`case-when`) a los 7 segmentos físicos del display, actualizándose al instante en cada segundo transcurrido.   
* 🚨 **Alarma de Fin de Ciclo / Overflow (DetectorOverflow):** Monitorea constantemente el tránsito del contador de $9$ a $0$. Al detectar esta transición, dispara una salida (`cuenta_final`) que se activa en alto exactamente durante un ciclo de reloj ($10\text{ ns}$).   
* 🔄 **Generador de Patrones y Comparación (SalidaPatron y Comparador):**
  * El módulo `SalidaPatron` conmuta su estado lógico con cada pulso del GPS, generando una onda cuadrada con un período exacto de 2 segundos.   
  * El `Comparador` permite ingresar un valor externo de $0$ a $9$ (`cmp_in`) y registrarlo mediante una señal de habilitación (`cmp_en`). Cuando la cuenta interna coincide con el valor memorizado, invierte el estado de su salida (`cmp_out`) una sola vez por cada ciclo completo de cuenta.   
* 💡 **Indicador de Estado (Testigo LED):** Un divisor de frecuencia interno cuenta los ciclos del reloj de $100\text{ MHz}$ para hacer parpadear un LED de diagnóstico cada $250\text{ ms}$, confirmando visualmente que el sistema operativo interno no se ha bloqueado.   

---

## 🧪 3. Metodología de Pruebas: Simulación y Verificación Rigurosa

Para garantizar que un sistema que opera a escala de nanosegundos funcione sin fallas en el hardware físico, se aplica una metodología estricta de ingeniería:

* 🧩 **Pruebas Unitarias (Aislamiento de Módulos):** Siguiendo las directrices de diseño, cada submódulo (`ContBCD`, `BCDa7Seg`, `Acondicionador`, etc.) se diseña y prueba de forma independiente mediante su propio banco de pruebas (*testbench*) unitario. Esto permite verificar su comportamiento lógico antes de integrarlo al sistema global.   
* ⏱️ **Simulación Temporal a 100 MHz:** Los bancos de pruebas configuran generadores de ciclos que emulan con precisión quirúrgica el reloj de $10\text{ ns}$.   
* ⚡ **Inyección de Estímulos y Ruido (Validación de Robustez):** Los *testbenches* avanzados simulan condiciones del mundo real inyectando pulsos de GPS con la duración exacta de $10\,\mu\text{s}$ espaciados por $1\text{ segundo}$, o introduciendo variaciones asincrónicas para comprobar la inmunidad al ruido y la correcta sincronización del bloque acondicionador.   
* ✅ **Comprobación Automática (Assertions):** Los archivos de simulación integran sentencias de validación automática (`assert`) que evalúan las salidas ciclo a ciclo en cada nanosegundo, reportando advertencias o errores en la consola del simulador si alguna señal difiere del comportamiento matemático esperado.   

---

> 📌 **Nota:** Este documento resume la arquitectura de hardware concurrente, la gestión de señales asíncronas y el control de calidad mediante simulación avanzada para sistemas digitales basados en FPGA.

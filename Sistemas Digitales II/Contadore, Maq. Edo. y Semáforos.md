## 🔢 1. Contadores (Counters)

Un **contador** es un circuito digital (o una variable en software) diseñado para llevar la cuenta de eventos, pulsos de reloj o ciclos de operaciones.

* **Cómo funcionan:** Su valor se incrementa (o decrementa) en una unidad cada vez que recibe una señal de activación (pulso de flanco).
* **Tipos principales:**
* **Ascendentes / Descendentes (*Up/Down*):** Cuentan hacia adelante o hacia atrás.
* **Binarios o BCD:** Dependiendo de la base numérica en la que operen.


* **Aplicaciones:** Generación de retardos temporales, medición de frecuencia, control de direcciones en memoria y división de frecuencias de reloj.



## 🔄 2. Máquinas de Estado (State Machines / FSM)

Una **máquina de estado** es un modelo computacional que se encuentra en un único estado de un conjunto finito de estados posibles en un momento dado. Cambia de estado (transición) en respuesta a entradas externas y eventos lógicos.

* **Componentes clave:** Estados, entradas, salidas y la lógica de transición.
* **Tipos principales:**
* **Mealy:** Las salidas dependen tanto del estado actual como de las entradas actuales.
* **Moore:** Las salidas dependen única y exclusivamente del estado actual.


* **Aplicaciones:** Control de interfaces de comunicación (como UART o I2C), control de motores, procesadores y diseño de protocolos lógicos secuenciales.



## 🚦 3. Semáforos (Semaphores)

En el ámbito de la programación y los sistemas operativos (especialmente en concurrencia y sistemas embebidos en tiempo real), un **semáforo** es una variable o abstracción de sincronización que controla el acceso de múltiples hilos o procesos a un recurso compartido.

* **Cómo funcionan:** Utilizan operaciones atómicas fundamentales, comúnmente llamadas **Wait/P** (disminuir/bloquear) y **Signal/V** (incrementar/liberar).
* **Tipos principales:**
* **Binarios (Mutex):** Solo pueden tomar valores de 0 o 1. Se usan para exclusión mutua (proteger un recurso para que solo un hilo lo use a la vez).
* **Contadores:** Permiten un número máximo predeterminado de accesos concurrentes a un recurso limitado.


* **Aplicaciones:** Evitar condiciones de carrera (*race conditions*), sincronizar tareas en sistemas operativos de tiempo real (RTOS) y gestionar colas de impresión o buffers de memoria.

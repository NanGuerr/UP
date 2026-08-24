## 📝 1. VHDL (o VHSIC Hardware Description Language)

Es un **Lenguaje de Descripción de Hardware** fuertemente tipado (originado de las siglas en inglés para *Very High Speed Integrated Circuit Hardware Description Language*).

* **Qué hace:** A diferencia de los lenguajes de programación tradicionales (como C o Python) que ejecutan instrucciones de forma secuencial, VHDL se usa para describir el comportamiento, la estructura y las conexiones de circuitos digitales de forma **concurrente**.
* **Para qué sirve:** Permite a los ingenieros diseñar, modelar, simular y sintetizar circuitos lógicos complejos (como los que van dentro de un chip) antes de fabricarlos físicamente.



## 🧱 2. FPGA (Field-Programmable Gate Array)

Es un **Dispositivo Lógico Programable** en el campo. Consiste en un circuito integrado semiconductor que contiene una matriz de bloques lógicos configurables y conexiones que el usuario puede reprogramar después de su fabricación.

* **Qué hace:** A diferencia de un procesador tradicional de propósito fijo, una FPGA se puede adaptar para que "se convierta" en el hardware que tú necesites.
* **Para qué sirve:** Es ideal para aplicaciones que exigen procesamiento en tiempo real, altísimo rendimiento y procesamiento paralelo (como telecomunicaciones, procesamiento de video en 4K, radar o aceleración de IA en el borde). *Normalmente, se programa utilizando lenguajes como VHDL.*



## 🔲 3. SoC (System on a Chip / Sistema en un Chip)

Es un circuito integrado que **integra todos los componentes esenciales de un sistema computacional completo** en un solo chip de silicio.

* **Qué incluye:** Típicamente combina uno o más procesadores (CPU/MCU), memoria RAM, interfaces de entrada/salida, controladores de periféricos y a menudo unidades gráficas o de procesamiento de señales en una única pastilla.
* **Para qué sirve:** Minimiza el espacio físico, reduce el consumo de energía y abaratamiento de costos en dispositivos electrónicos complejos (como teléfonos móviles, microcontroladores avanzados y sistemas embebidos).

> 💡 *Nota:* Hoy en día existen los **SoCs Adaptativos** (como la familia Zynq de AMD/Xilinx), que fusionan lo mejor de ambos mundos: un procesador tradicional (tipo ARM) junto con una sección de matriz de FPGA en el mismo chip, permitiendo correr software y hardware personalizado de forma simultánea.



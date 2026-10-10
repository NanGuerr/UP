El diagrama de bloques representa la entidad principal `CuentaPPS`, estructurada bajo el paradigma de separación entre la Unidad de Control Central (FSM) y el Datapath Integrado. Esta división permite que la FSM gestione el flujo de estados y la temporización de señales externas, mientras que el Datapath ejecuta las operaciones aritméticas, de almacenamiento y lógicas de forma paralela y síncrona.

**Unidad de Control Central (FSM)**
Esta sección actúa como el cerebro del sistema, aislando las señales externas asíncronas y generando habilitadores (clock enables) limpios para la ruta de datos.

* **Sincronizador 1PPS (Cadena Anti-Metaestabilidad 2x FF-D):** Recibe la señal externa `1PPS (GPS 10us)`. Su función en hardware es alinear esta señal, que proviene de un dominio externo, al dominio del reloj maestro `clk_in (100MHz)` mediante dos flip-flops tipo D en cascada. Esto previene que voltajes inestables (metaestabilidad) se propaguen al resto del circuito síncrono.


* **Detector de Flanco Ascendente (Generador de pps_tick 10ns):** Convierte la señal sincronizada en un pulso que dura exactamente un ciclo de reloj (10ns a 100MHz). Este `pps_tick` viaja por los buses de control internos para habilitar las operaciones del Datapath sin necesidad de crear dominios de reloj secundarios.


* **FSM de Secuencia y Habilitación de Ciclo:** Máquina de estados que evalúa las condiciones temporales y emite las señales de control internas (como `cmp_match_en`, entre otras) hacia el Datapath.



**Datapath Integrado (Flujo de Datos)**
Es la estructura de hardware que manipula los datos directamente, impulsada por el reloj de 100MHz, el reset síncrono y los buses de control dictados por la FSM.

* **Timer Maestro 25-bit:** Un contador de 25 bits impulsado por `clk_in` que funciona como un generador de tick de 250ms, controlando directamente la salida física `led`.


* **Registro BCD 4-bit:** Almacena un valor numérico de 4 bits. Ejecuta una cuenta cíclica de 0 a 9 y contiene un decodificador que dirige este valor hacia un display de 7 segmentos a través de la salida `7seg (ss_out)`.


* **Lógica Overflow 9->0:** Circuito combinacional que detecta el momento exacto en que el contador BCD se reinicia (pasa de 9 a 0). Al detectarlo, emite un pulso activo de 1 ciclo de reloj (10ns) hacia la salida `cuenta_final`.


* **Toggle Register:** Un registro diseñado para invertir su estado lógico cada 1 segundo, generando un cambio continuo en la salida `patron`.


* **Reg. Consigna `cmp_val` y Lógica de Coincidencia:** El registro de consigna almacena de forma persistente el valor de entrada `cmp_in [3:0]` únicamente durante el ciclo en que la señal de control `cmp_en` (de 1 ciclo) está activa. Posteriormente, la lógica de coincidencia compara este valor almacenado en `cmp_val` con el estado del sistema, ejecutando una inversión única que se refleja en la salida `cmp_out`.



**Justificación de la Disposición del Hardware**

* **Sincronización en la Entrada:** La colocación de la cadena anti-metaestabilidad 2x FF-D en la entrada del pulso GPS es una medida de seguridad crítica. Dado que el receptor GPS y la placa no comparten el mismo oscilador, esta etapa protege la integridad de los registros posteriores.


* **Acondicionamiento a 1 Ciclo:** Reducir el pulso externo original de 10us a un tick interno de 10ns garantiza que el Datapath realice sus incrementos una sola vez por cada evento válido. Si la señal habilitadora durara más de un ciclo de reloj, el sistema contaría el mismo pulso múltiples veces de forma errónea a una velocidad de 100MHz.


* **Arquitectura de Reloj Único:** Al distribuir las órdenes mediante "Buses de Control Internos" desde la FSM, todos los componentes del Datapath mantienen una única conexión al reloj principal de 100MHz. Esto evita la creación de relojes derivados, eliminando problemas graves de sincronización y retrasos de ruta (clock skew) típicos en diseños digitales complejos.


* **Modularidad Concurrente:** El Datapath agrupa los bloques aritméticos y de retención (como el Timer de 25 bits y el Registro BCD) para que funcionen simultáneamente en hardware. Esto permite que la unidad de control central sea mucho más ligera y rápida, limitándose solo a coordinar la orquestación temporal (cuándo habilitar los procesos) en lugar de realizar el procesamiento de la data.

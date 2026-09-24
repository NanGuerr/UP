Aquí tienes el **diagrama de bloques y conexiones de nivel superior** para el módulo principal **`PF_SS2`**, estructurado en formato texto de alta claridad para que puedas incluirlo o consultarlo directamente:

```text
=========================================================================================
                       DIAGRAMA DE BLOQUES Y CONEXIONES: TOP MODULE (PF_SS2)
=========================================================================================

[SEÑALES EXTERNAS]                                             [MÓDULOS Y SALIDAS]

                 .-----------------.
gps ------------>| U0: Acondiciona |
                 '-----------------'
                          |
                          | gps_acondicionado (1 bit, 10 ns)
                          |
                          +--------------------------------------.
                          |                                      |
                 .--------v--------.                    .--------v--------.
                 |   U1: ContBCD   |                    | U4: SalidaPatron|----> salida_patron (2 s)
                 '--------+--------'                    '-----------------'
                          |
                          | bcd_out (Bus de 4 bits: 0 a 9)
                          |
                          +=======================>=====.
                          |                             |
                          |                    .--------v--------.
                          +=======>=====.      |  U2: BCDa7Seg   |====> ss_out (Bus de 7 bits)
                          |             |      '-----------------'
                          |    .--------v--------.
                          |    |U3: DetectarOverf|----> cuenta_final (10 ns)
                          |    '-----------------'
                          |
cmp_in (4 bits) ===>======|=======================>=====.
                          |                             |
cmp_en -------------------|----------------------.      |
                          |                      v      v
                          |                    .--------v--------.
                          '=======>===========>| U5: Comparador  |----> cmp_out
                                               '-----------------'

clk_in (100 MHz) >---+----+----+----+----+--------------------------------.
                     |    |    |    |    |                                |
nrst (Reset '0') >---+----+----+----+----+--------------------------------+.
                     |    |    |    |    |                                |
                     v    v    v    v    v                       .--------v--------.
                   (U0) (U1) (U3) (U4) (U5)                      | U6: Testigo_Out |----> testigo_led (2 Hz)
                                                                 '-----------------'

Leyenda de conexiones:
---- Línea de señal simple (1 bit)
==== Bus de datos paralelos (4 o 7 bits)
```

---

### **Resumen de Módulos e Interconexiones**
* **`U0` (Acondicionador):** Recibe la señal asíncrona del `gps`, elimina la metaestabilidad y emite el pulso síncrono `gps_acondicionado` (10 ns).
* **`U1` (ContBCD):** Contador síncrono que se incrementa de 0 a 9 con cada pulso del GPS y entrega el bus de 4 bits **`bcd_out`**.
* **`U2` (BCDa7Seg):** Decodificador **combinacional puro** que traduce `bcd_out` al bus de 7 segmentos **`ss_out`**.
* **`U3` (DetectorOverflow):** Monitorea la transición de 9 a 0 y emite un pulso de un ciclo en **`cuenta_final`**.
* **`U4` (SalidaPatron):** Genera una onda cuadrada con período de 2 segundos en **`salida_patron`** conmutando en cada pulso de GPS.
* **`U5` (Comparador):** Almacena la consigna **`cmp_in`** cuando **`cmp_en` = '1'** y conmuta **`cmp_out`** al detectar la coincidencia con `bcd_out`.
* **`U6` (Testigo_Out):** Divisor de reloj que hace parpadear **`testigo_led`** a 2 Hz (cada 250 ms) para indicar funcionamiento activo.

*(Recuerda que también tienes disponible la versión gráfica exportada como **`diagrama_bloques_PF_SS2.png`** en tu panel de **Studio**).*

🧩 ¿Quieres que repasemos la tabla sintáctica de puertos del *Top Module* o el código de mapeo del archivo `PF_SS2.vhd` para asegurar que todo coincida con tu informe?

```txt
=========================================================================================
                          DIAGRAMA DE ALTO NIVEL: TOP MODULE (PF_SS2)
=========================================================================================

[PUERTOS DE ENTRADA]                                                  [PUERTOS DE SALIDA]

                                 .-------------------.
gps ---------------------------->|  Acondicionador   |
(Señal asíncrona)                '-------------------'
                                           | gps_acondicionado 
                                           | (Pulso síncrono)
                                           v
                                 .-------------------.
                                 |      ContBCD      |
                                 '-------------------'
                                           | bcd_out (Bus interno de 4 bits)
                .--------------------------+--------------------------.
                |                          |                          |
                v                          v                          v
         .------------.            .----------------.         .---------------.
         |  BCDa7Seg  |            |DetectorOverflow|         |  Comparador   |<--- cmp_in (4 bits)
         '------------'            '----------------'         '---------------'<--- cmp_en (1 bit)
                |                          |                          |
                v                          v                          v
             ss_out                   cuenta_final                 cmp_out
      (Al display 7 seg.)      (Pulso 1 ciclo en overflow)   (Invierte si hay = )


                                 .-------------------.
gps_acondicionado -------------->|   SalidaPatron    |----------------> salida_patron
                                 '-------------------'               (Periodo 2 segundos)


                                 .-------------------.
clk_in (100 MHz) --------------->|    Testigo_Out    |----------------> testigo_led
                                 '-------------------'               (Parpadeo 250 ms)

```
* NOTA DE RELOJ: La señal de reloj principal (clk_in) actúa como una red global. 
  Se distribuye a todos los bloques secuenciales (Acondicionador, ContBCD, 
  DetectorOverflow, SalidaPatron, Comparador y Testigo_Out) para garantizar 
  el diseño sincrónico del sistema.
=========================================================================================

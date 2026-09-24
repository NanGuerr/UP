
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

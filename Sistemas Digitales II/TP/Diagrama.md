# Diagrama de bloques

El **diagrama de bloques y conexiones de nivel superior** actualizado con el nombre del módulo principal **`TP_CuentaPPS`**:

```text
=========================================================================================
                    DIAGRAMA DE BLOQUES Y CONEXIONES: TOP MODULE (TP_CuentaPPS)
=========================================================================================

[SEÑALES EXTERNAS DE ENTRADA]                                  [SUBMÓDULOS Y SALIDAS]

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
                          +=======>=======.    |  U2: BCDa7Seg   |====> ss_out (Bus de 7 bits)
                          |               |    '-----------------'
                          |    .----------v-----------.
                          |    | U3: DetectarOverflow |----> cuenta_final (10 ns)
                          |    '----------------------'
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
                     v    v    v    v    v                       .--------v--------.
                   (U0) (U1) (U3) (U4) (U5)                      | U6: Testigo_Out |----> testigo_led (2 Hz)
                                                                 '-----------------'

Leyenda de conexiones:
---- Línea de señal simple (1 bit)
==== Bus de datos paralelos (4 o 7 bits)
=========================================================================================
```

---

### **Resumen de Puertos y Submódulos del `TP_CuentaPPS`**

1. **`U0: Acondicionador`**: Sincroniza la entrada del GPS (`gps`) con el reloj del sistema (`clk_in`) y genera el pulso de habilitación síncrono `gps_acondicionado` (10 ns) libre de metaestabilidad.
2. **`U1: ContBCD`**: Contador circular de 0 a 9 que se incrementa en cada pulso de GPS y entrega el bus BCD **`bcd_out` (4 bits)**.
3. **`U2: BCDa7Seg`**: Decodificador combinacional puro que traduce `bcd_out` al patrón de cátodos/ánodos en **`ss_out` (7 bits)**.
4. **`U3: DetectorOverflow`**: Evalúa el salto de 9 a 0 en el bus BCD y emite un pulso de un ciclo de reloj en **`cuenta_final`**.
5. **`U4: SalidaPatron`**: Conmuta de estado con cada pulso del GPS para generar una señal cuadrada con período de 2 segundos en **`salida_patron`**.
6. **`U5: Comparador`**: Almacena el valor de consigna **`cmp_in`** al recibir **`cmp_en` = '1'** e invierte el estado de **`cmp_out`** cuando la cuenta BCD coincide con el valor memorizado.
7. **`U6: Testigo_Out`**: Divisor de reloj que conmuta **`testigo_led`** a una frecuencia de 2 Hz (parpadeo cada 250 ms).

---

También he generado y publicado la representación gráfica esquemática en alta resolución bajo el nombre **`diagrama_bloques_TP_CuentaPPS.png`**, la cual ya está disponible en tu panel de **Studio**.

* NOTA DE RELOJ: La señal de reloj principal (clk_in) actúa como una red global. 
  Se distribuye a todos los bloques secuenciales (Acondicionador, ContBCD, 
  DetectorOverflow, SalidaPatron, Comparador y Testigo_Out) para garantizar 
  el diseño sincrónico del sistema.

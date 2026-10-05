========================================================================================================================
ARQUITECTURA ALTERNATIVA: FSM + DATAPATH INTEGRADO
========================================================================================================================
+--------------------------------------------------------------------+
| ENTIDAD TOP: CuentaPPS                                             |
|                                                                    |
|   +--------------------------------------------------------------+ |
|   | UNIDAD DE CONTROL CENTRAL (FSM)                              | |
|   |                                                              | |
|   | - Sincronizador de entrada 1PPS (Doble Flip-Flop)            | |
|   | - Detector de flanco ascendente                              | |
|   | - Decodificador de estados globales                          | |
|   +------------------------------+-------------------------------+ |
|                                  |                                 |
|                                  | Buses de Control Internos       |
|                                  v (ce_bcd, toggle_patron, etc.)   |
|   +--------------------------------------------------------------+ |
|   | DATAPATH INTEGRADO                                           | |
|   |                                                              | |
|   | clk_in (100MHz) +----+->| [Timer Maestro 25-bit] ---> Tick 250ms (Heartbeat LED) |---> led            |
|   |                 |    |                                                         |                    |
|   | rst (Síncrono)  +--+-+->| [Registro BCD 4-bit]   ---> Contador 0..9               |---> 7seg (ss_out)  |
|   |                 |  | |                                                         |                    |
|   |                 |  | |                                                         | v                  |
|   | 1PPS (GPS 10us) +--+-+->| [Lógica Overflow 9->0] -> Genera pulso de 1 ciclo 10ns  |---> cuenta_final   |
|   |                 |  | |                                                         |                    |
|   |                 |  | | [Toggle Register]    -> Invierte estado cada 1s         |---> patron         |
|   |                 |  | |                                                         |                    |
|   | cmp_en ---------+--+-+->| [Reg. Consigna cmp_val]-> Almacena cmp_in al activar cmp_en                 |
|   |                 |    |                                                         |                    |
|   |                 |    | [Lógica de Coincidencia]-> Invierte cmp_out 1 vez/ciclo |---> cmp_out        |
|   | cmp_in (4-bit) -+----+                                                         |                    |
|   +--------------------------------------------------------------+ |
+--------------------------------------------------------------------+

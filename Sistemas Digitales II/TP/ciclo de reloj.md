El período del ciclo de reloj (`clk_period`) configurado en todos los archivos de simulación (testbenches) es de **10 ns**, equivalente a una frecuencia de 100 MHz. Según el reporte de síntesis, el período mínimo que soporta el hardware es de 4.657 ns (214.731 MHz).

A continuación, el cronograma de ejecución y la duración simulada para cada componente:

### Cronograma por Testbench (Archivos de Prueba)

| Componente / Archivo | Fase / Acción | Duración | Ciclos de Reloj |
| --- | --- | --- | --- |
| **Sincronizador_tb**<br> | Inicialización y Reset (`rst = '1'`) | 20 ns | 2 |
|  | Liberación de Reset y espera | 10 ns | 1 |
|  | Pulso `pps_raw` ALTO | 50 ns | 5 |
|  | Pulso `pps_raw` BAJO | 50 ns | 5 |
|  | **Total Sincronizador_tb** | **130 ns** | **13 ciclos** |
| **rst_tb_fsm**<br> | Reset Inicial | 30 ns | 3 |
|  | Liberación de Reset 1 | 20 ns | 2 |
|  | Pulso y espera de `pps_raw` | 40 ns | 4 |
|  | Reset Síncrono 2 | 20 ns | 2 |
|  | Liberación de Reset 2 | 20 ns | 2 |
|  | **Total rst_tb_fsm** | **130 ns** | **13 ciclos** |
| **Datapath_FSM_tb**<br> | Reset inicial y liberación | 30 ns | 3 |
|  | Habilitación y configuración de comparación | 20 ns | 2 |
|  | Bucle de 10 iteraciones para `pps_tick` (30 ns cada una) | 300 ns | 30 |
|  | **Total Datapath_FSM_tb** | **350 ns** | **35 ciclos** |
| **TP_CuentaPPS_FSM_tb**<br> | Reset inicial y liberación | 50 ns | 5 |
|  | Configuración de comparación | 20 ns | 2 |
|  | Bucle de 12 iteraciones de `pps_raw` (100 ns cada una) | 1200 ns | 120 |
|  | **Total TP_CuentaPPS_FSM_tb** | **1270 ns** | **127 ciclos** |

### Ejecución de la Máquina de Estados (Datapath_FSM_CuentaPPS)

Cada vez que el sistema detecta un pulso válido (`pps_tick = '1'`), la máquina de estados finitos (FSM) ejecuta las siguientes transiciones, consumiendo un ciclo de reloj (10 ns) por cada estado:

1. **ST_IDLE $\rightarrow$ ST_COUNT_INCREMENT** (1 ciclo)


2. **ST_COUNT_INCREMENT $\rightarrow$ ST_EVAL_MATCH** (1 ciclo)


3. **ST_EVAL_MATCH $\rightarrow$ ST_IDLE** (1 ciclo)



Esto significa que procesar cada pulso del PPS toma un total de **3 ciclos de reloj (30 ns)** a nivel interno.

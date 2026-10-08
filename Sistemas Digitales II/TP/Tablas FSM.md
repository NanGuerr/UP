# 🔄 Tabla de Reinicio de Módulos (Reset)

*(Nota: Se ajustó el encabezado de la última columna a `rst = '1'` para coincidir con la polaridad del reinicio descrita en la información adicional).*

| Submódulo | Variable/Registro a reiniciar | Valor al activar el reset (`rst = '1'`) |
| --- | --- | --- |
| **Datapath / Top Nivel** | `cuenta_final` | `0` |
| **Datapath / Top Nivel** | `patron` | `1` ('alto') |
| **Datapath / Top Nivel** | `cmp_out` | `1` ('alto') |
| **Datapath / Top Nivel** | `ss_out` (Display de 7 segmentos) | `'1000000'` |
| **Datapath / Top Nivel** | Registro de comparación de entrada | `0011` (almacenamiento temporal) |
| **Sincronizador_Acondicionador** | `pps_tick` | `0` |

---

# 🧪 Tabla de Resumen de Testbenches

| Archivo Testbench | Componente Bajo Prueba | Escenario de Estímulo | Resultado Obtenido |
| --- | --- | --- | --- |
| **`Reset_FSM test`** | Sistema global (Máquina de estados y Datapath) | Aplicación de un pulso de reset prolongado (`rst = 1`) y posterior liberación (`rst = 0`) en condiciones operativas normales. | Fuerza a todo el sistema a un estado inicial conocido. Tras liberar el reinicio (~60.000 ps), la FSM se estabiliza y restablece coordinadamente la cuenta activa (`'1111...'`). |
| **`Sincronizador_Acondicionador`** | Módulo mitigador de metaestabilidad y acondicionador de señal | Inicialización segura (`rst = 1`), seguida de la inyección de un pulso asíncrono prolongado en la entrada externa `pps_raw`. | Detecta el flanco de subida exitosamente y emite un único pulso sincronizado en `pps_tick` de duración exacta de 1 ciclo ($10\text{ ns}$), retornando a `0` autónomamente. |
| **`Datapath_FSM`** | Núcleo operativo (Ruta de datos aislada) | Progresión continua del contador interno (0 a 9) y aplicación de un pulso inicial en `cmp_en` para registrar la consigna de comparación. | Muestra la cuenta secuencial correcta en `ss_out`, genera el pulso de *overflow* en `cuenta_final` ($10\text{ ns}$), e invierte el estado de las salidas `patron`, `led` y `cmp_out` según lo esperado. |
| **`TP_CuentaPPS_Top`** | Entidad de Nivel Superior (Integración Completa) | Integración del sincronizador y datapath bajo control FSM; ingreso de valor consigna mediante el pulso de habilitación `cmp_en`. | Valida la operación global síncrona: cuenta cíclica de 0 a 9, toggle de `patron` cada 1 segundo, parpadeo de `led` a $250\text{ ms}$, y conmutación permanente de `cmp_out` ante la coincidencia. |

A partir del análisis del diagrama esquemático a nivel de transferencia de registros (RTL) y el diagrama de bloques del sistema, se presenta la **Matriz de Conexiones** (Port Map) de la entidad de nivel superior (`TP_CuentaPPS_FSM_Top`). Esta matriz detalla cómo se interconectan los puertos externos con los módulos internos (`U_SYNC` y `U_DATAPATH_FSM`) y las señales que viajan entre ellos.

# 🔌 Matriz de Conexiones (Top Level)

| Señal / Puerto | Tipo / Ancho | Origen (Source) | Destino (Destination) | Descripción |
| --- | --- | --- | --- | --- |
| **`clk_in`** | Entrada (1 bit) | Puerto Externo | `U_SYNC`, `U_DATAPATH_FSM` | Reloj principal del sistema (100 MHz) distribuido a todos los bloques síncronos.

 |
| **`rst`** | Entrada (1 bit) | Puerto Externo | `U_SYNC`, `U_DATAPATH_FSM` | Señal de reinicio global síncrono para el acondicionador y el datapath.

 |
| **`pps_in`** | Entrada (1 bit) | Puerto Externo | `U_SYNC` (como `pps_raw`) | Señal asíncrona proveniente del GPS (1PPS) ingresando al sincronizador.

 |
| **`cmp_in[3:0]`** | Entrada (4 bits) | Puerto Externo | `U_DATAPATH_FSM` | Bus paralelo que ingresa el valor BCD de consigna al submódulo comparador.

 |
| **`cmp_en`** | Entrada (1 bit) | Puerto Externo | `U_DATAPATH_FSM` | Señal de habilitación de captura para el comparador de consignas.

 |
| **`pps_tick`** | Señal Interna (1 bit) | `U_SYNC` (Salida) | `U_DATAPATH_FSM` (Entrada) | Cable de interconexión interna: Pulso síncrono de duración de un ciclo de reloj generado tras detectar el flanco de subida del GPS.

 |
| **`ss_out[6:0]`** | Salida (7 bits) | `U_DATAPATH_FSM` | Puerto Externo | Bus de salida decodificado dirigido al display de siete segmentos.

 |
| **`cuenta_final`** | Salida (1 bit) | `U_DATAPATH_FSM` | Puerto Externo | Indicador activo en alto (durante 1 ciclo) que señaliza el desborde (overflow) de 9 a 0.

 |
| **`cmp_out`** | Salida (1 bit) | `U_DATAPATH_FSM` | Puerto Externo | Salida del comparador que invierte su estado al coincidir la cuenta activa con la consigna almacenada.

 |
| **`led`** | Salida (1 bit) | `U_DATAPATH_FSM` | Puerto Externo | Salida testigo acoplada al timer interno de 25 bits para generar el parpadeo cada 250 ms.

 |
| **`patron`** | Salida (1 bit) | `U_DATAPATH_FSM` | Puerto Externo | Señal de temporización basculante (toggle) que conmuta con cada nuevo pulso 1PPS.

 |

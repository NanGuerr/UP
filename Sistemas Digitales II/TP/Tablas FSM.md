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

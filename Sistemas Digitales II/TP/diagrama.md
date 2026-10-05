Aquí tienes el diagrama y la estructura formateados profesionalmente para un archivo Markdown (`.md`), utilizando bloques de código para preservar el diseño ASCII y secciones claras para facilitar su lectura:

---

## Arquitectura Alternativa: FSM + Datapath Integrado

```text
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

```

---

### Descripción de Componentes

#### 1. Unidad de Control Central (FSM)

* **Sincronizador de entrada 1PPS:** Implementado mediante un doble *Flip-Flop* para evitar metaestabilidad.
* **Detector de flanco ascendente:** Captura las transiciones de la señal de sincronización externa.
* **Decodificador de estados globales:** Genera los buses de control internos (`ce_bcd`, `toggle_patron`, etc.).

#### 2. Datapath Integrado

* **Timer Maestro (25-bit):** Recibe el reloj principal de `clk_in` (100MHz) para generar el *tick* de 250ms destinado al *heartbeat* del LED (`led`).
* **Registro BCD (4-bit):** Gestiona el contador de 0 a 9 vinculado al display de 7 segmentos (`7seg` / `ss_out`).
* **Lógica de Overflow (9->0):** Al recibir la señal `1PPS` (GPS 10us), genera un pulso de 1 ciclo (10ns) hacia `cuenta_final`.
* **Toggle Register:** Invierte su estado cada 1 segundo para controlar la señal `patron`.
* **Registro de Consigna (`cmp_val`) y Coincidencia:** Almacena el valor de `cmp_in` (4-bit) cuando se activa `cmp_en`, invirtiendo `cmp_out` una vez por ciclo al haber coincidencia.

### 1. Actualización de Códigos VHDL y Banco de Pruebas

Se añadieron el puerto `nrst : in std_logic` y la evaluación asíncrona dentro de la lista de sensibilidad (`process(clk, nrst)`) en todos los bloques secuenciales:

* **Archivos publicados en Studio:**
  * **`TP_CuentaPPS-v2.vhd`**: Módulo principal jerárquico con propagación de `nrst` a los bloques `U0`, `U1`, `U3`, `U4`, `U5` y `U6`.
  * **`Acondicionador-v2.vhd`**: Reinicia la cadena de sincronización y detección de flanco a `'0'`.
  * **`ContBCD-v2.vhd`**: Fuerza la cuenta inmediatamente a `"0000"`.
  * **`DetectorOverflow-v2.vhd`**: Borra el registro anterior e inactiva `cuenta_final` (`'0'`).
  * **`SalidaPatron-v2.vhd`**: Restablece el estado del patrón a `'0'`.
  * **`Comparador-v2.vhd`**: Borra los registros internos de la consigna memorizada y la bandera de inversión.
  * **`Testigo_Out-v2.vhd`**: Reinicia el contador de 25.000.000 de ciclos a 0.
  * **`TP_CuentaPPS_tb-v2.vhd`**: Banco de pruebas que simula la aplicación del pulso de reset inicial y un impulso de reset a mitad de operación.

*(Nota: El módulo combinacional **`BCDa7Seg`** no requiere reloj ni reset).*

---

### 2. Diagrama de Bloques Actualizado

Se generó y publicó en Studio la imagen **`diagrama_bloques_TP_CuentaPPS-v2.png`**, en la cual se incorpora la **línea roja discontinua de distribucion global de `nrst`** conectada en paralelo hacia las entradas de reset de todos los submódulos secuenciales (`U0`, `U1`, `U3`, `U4`, `U5` y `U6`).

---

### 3. Texto de Fe de Erratas sobre el Reset

```text
FE DE ERRATAS: Incorporación de la Línea de Reset Global (nrst)

Documento afectado: Informe Técnico y Código RTL del Proyecto TP_CuentaPPS.
Fecha de corrección: 27 de Septiembre de 2026.

DESCRIPCIÓN DE LA OMISIÓN PREVIA:
En las versiones preliminares del diseño RTL (PF_SS2 / TP_CuentaPPS), los procesos 
secuenciales dependían únicamente del estado de inicialización por defecto de las 
señales (Signal Declaration Initial Values) al momento de la configuración del bitstream. 
Esta práctica no garantiza un estado inicial seguro en silicio real tras la energización 
(Power-Up) o ante eventuales fallas de ruido eléctrico.

CORRECCIÓN APLICADA:
1. Se incorporó el puerto de entrada global `nrst` (std_logic) en la entidad `TP_CuentaPPS`.
2. Se estableció una convención de Reset Asíncrono Activo en Bajo ('0' lógico = Reset), 
   conforme a las recomendaciones de diseño para FPGAs Xilinx Spartan/Artix.
3. Todos los procesos secuenciales (U0, U1, U3, U4, U5, U6) incluyeron a `nrst` en su 
   lista de sensibilidad, forzando la puesta a cero inmediata de Flip-Flops, registros 
   de consigna y contadores del sistema ante la presencia de un nivel bajo en dicho pin.
```
**Sí, es fundamental incluir una señal de reset** en diseños digitales para FPGA. En un sistema secuencial, el reset garantiza que todos los Flip-Flops y contadores inicien en un **estado inicial conocido** al energizar la placa o reiniciar el sistema, evitando estados indeterminados o no deseados.

---

### 1. Dónde colocarlo en la jerarquía (Top Module)

En el módulo principal (**`TP_CuentaPPS`**), la señal de reset debe colocarse como un **puerto de entrada global** y conectarse en paralelo a todos los submódulos secuenciales:

* **En la entidad principal (`TP_CuentaPPS.vhd`):**
  ```vhdl
  entity TP_CuentaPPS is
      Port ( 
          clk_in        : in  std_logic;                    -- Reloj principal (100 MHz)
          nrst          : in  std_logic;                    -- Reset global activo en bajo ('0' = reset)
          gps           : in  std_logic;                    -- Entrada 1PPS
          cmp_in        : in  std_logic_vector(3 downto 0);
          cmp_en        : in  std_logic;
          ss_out        : out std_logic_vector(6 downto 0);
          cuenta_final  : out std_logic;
          salida_patron : out std_logic;
          cmp_out       : out std_logic;
          testigo_led   : out std_logic
      );
  end TP_CuentaPPS;
  ```

* **Distribución a submódulos:**
  Debes llevar la señal `nrst` a las entradas de reset de los **6 módulos secuenciales**:
  * **U0** (`Acondicionador`)
  * **U1** (`ContBCD`)
  * **U3** (`DetectorOverflow`)
  * **U4** (`SalidaPatron`)
  * **U5** (`Comparador`)
  * **U6** (`Testigo_Out`)

  *(Nota: El módulo **U2** `BCDa7Seg` es combinacional puro, por lo que **no lleva reloj ni reset**).*

---

### 2. Cómo escribirlo dentro de los procesos VHDL

Para un **reset asíncrono activo en bajo** (`nrst`), debes incluir el pin en la **lista de sensibilidad** (`sensitivity list`) de cada proceso secuencial:

```vhdl
process(clk_in, nrst)
begin
    if nrst = '0' then
        -- Estado de reinicio inicial
        count <= (others => '0');
    elsif rising_edge(clk_in) then
        -- Lógica síncrona normal del módulo
        if gps = '1' then
            if count = 9 then
                count <= (others => '0');
            else
                count <= count + 1;
            end if;
        end if;
    end if;
end process;
```

---

### 3. Valores de reinicio recomendados por bloque

| Submódulo | Variable/Registro a reiniciar | Valor al activar el reset (`nrst = '0'`) |
| :--- | :--- | :--- |
| **U0 – Acondicionador** | `pulso_reg`, `pulso_anterior` | `'0'` |
| **U1 – ContBCD** | `count` | `"0000"` (0 decimal) |
| **U3 – DetectorOverflow** | `bcd_anterior`, `cuenta_final` | `"0000"` y `'0'` |
| **U4 – SalidaPatron** | `estado` | `'0'` (o `'1'`) |
| **U5 – Comparador** | `cmp_val_reg`, `cmp_reg` | `"0000"` y `'0'` |
| **U6 – Testigo_Out** | `contador`, `estado_led` | `0` y `'0'` |

💡 ¿Quieres que actualicemos los archivos VHDL y sus testbenches para incluir el puerto `nrst` en todas las entidades?
---

### 4. Diferencia entre Reset Asíncrono y Reset Síncrono

| Característica | **Reset Asíncrono** (Implementado en `nrst`) | **Reset Síncrono** |
| :--- | :--- | :--- |
| **Dependencia del Reloj** | **Inmediata.** Se ejecuta al instante en que el pin cambia de nivel, independientemente de si hay o no flanco de reloj. | **Síncrona.** La puesta a cero ocurre **únicamente en el siguiente flanco ascendente** del reloj principal. |
| **Lista de Sensibilidad VHDL** | Incluye el reloj y el reset: `process(clk, nrst)` | Incluye únicamente el reloj: `process(clk)` |
| **Respuesta ante falta de reloj** | Si el reloj de la FPGA se detiene o no ha estabilizado, **el reset asíncrono funciona de todos modos**. | Si el reloj no conmuta, el reset síncrono **no tiene ningún efecto**. |
| **Sintaxis VHDL habitual** | ```vhdl if nrst = '0' then <registros> <= '0'; elsif rising_edge(clk) then ... end if; ``` | ```vhdl if rising_edge(clk) then if rst = '1' then <registros> <= '0'; else ... end if; end if; ``` |
| **Ventajas** | Garantiza la inicialización aunque la red de distribución de reloj esté inactiva; no agrega lógica combinacional a la entrada \\(D\\) del Flip-Flop. | Inmune a picos de ruido en la línea de reset (*glitches*); facilita el análisis de tiempos (*Static Timing Analysis*). |

**Sí, absolutamente.** El reloj (`clk_in`) y la señal de reset (`nrst`) cumplen funciones completamente distintas y complementarias en un circuito digital.

---

### 1. ¿Qué hace cada señal?

* **`clk_in` (Reloj Principal):** Es el **marcapasos síncrono** del sistema. En cada flanco de subida (`rising_edge(clk_in)`), ordena a todos los Flip-Flops evaluar sus entradas y avanzar al **siguiente paso** de la secuencia. Sin embargo, el reloj por sí solo **no sabe ni decide cuál es el punto de partida inicial**.
* **`nrst` (Reset Global):** Es la **orden explícita de reinicio**. Fuerza a todos los contadores y registros internos a volver inmediatamente a un **estado inicial conocido** (por ejemplo, la cuenta a `"0000"`).

---

### 2. ¿Por qué el `clk_in` no reemplaza al reset?

1. **Estados indeterminados al encender (Power-Up):**
   Al energizar la FPGA o sufrir una pequeña fluctuación de tensión, los Flip-Flops físicos pueden encender en cualquier estado aleatorio (por ejemplo, en un contador de 0 a 9, arrancar en `1110` o 14). Si solo hay `clk_in`, el reloj comenzará a hacer avanzar el sistema, pero **cometiendo errores desde un estado inicial incorrecto**.
2. **Reinicio en tiempo de ejecución:**
   El reloj `clk_in` late de forma continua e ininterrumpida a 100 MHz. Si el usuario o el sistema necesitan reiniciar la cuenta a cero durante el funcionamiento normal sin cortar la energía de la placa, el `clk_in` no puede hacerlo por sí solo; se requiere la entrada `nrst` para forzar la puesta a cero.
3. **Recuperación ante fallos de ruido:**
   Si un pico de ruido altera el contenido de un registro, la señal de reset permite restablecer el comportamiento correcto del chip inmediatamente.

---

### 3. ¿Cómo trabajan juntos en el código VHDL?

Dentro de los submódulos secuenciales (como el contador BCD o la salida patrón), la señal `clk_in` ingresa al pin de reloj de los Flip-Flops (\\(C\\)), mientras que la señal `nrst` ataca la entrada de borrado inicial:

```vhdl
process(clk_in, nrst)
begin
    if nrst = '0' then
        -- El reset determina DÓNDE EMPEZAR
        count <= (others => '0');
    elsif rising_edge(clk_in) then
        -- El reloj determina CÓMO AVANZAR en cada ciclo
        if gps = '1' then
            count <= count + 1;
        end if;
    end if;
end process;
```

En síntesis: **el `clk_in` hace que el sistema funcione en el tiempo, pero el `nrst` garantiza que comience a funcionar desde el lugar correcto**.

# ⚡ Diseño Lógico Secuencial e Inferencia de Memoria en VHDL

El presente documento de síntesis aborda los principios fundamentales para el diseño, descripción y optimización de circuitos lógicos secuenciales sincrónicos mediante el lenguaje de descripción de hardware VHDL. A diferencia de los sistemas combinacionales —cuyas salidas dependen exclusivamente del valor presente de sus entradas—, los sistemas secuenciales incorporan elementos de memoria que permiten almacenar la historia pasada del sistema.

El eje central en el modelado VHDL de estas arquitecturas es la inferencia de memoria, un mecanismo mediante el cual la herramienta de síntesis interpreta las estructuras condicionales (como los procesos sensibles a flancos de reloj sin cláusula `else`) para generar físicamente unidades de almacenamiento, como los flip-flops (FF) y registros. La correcta aplicación de estos patrones condicionales y el cumplimiento de las buenas prácticas de diseño determinan el rendimiento temporal y el uso eficiente del área dentro de los dispositivos lógicos programables, como las FPGAs.



## 🏛️ 1. Fundamentos del Diseño Lógico Secuencial

### 🔄 1.1. Sistemas Combinacionales vs. Secuenciales
Un sistema digital combinacional calcula sus salidas únicamente a partir del estado de sus entradas en un instante determinado. En contraposición, un sistema secuencial combina un circuito combinacional con elementos de memoria encargados de conservar el estado anterior o la "historia pasada" del sistema.


```

Entradas ---> [ Circuito Combinacional ] ---> Salidas
^            |
|            v
[ Elemento de Memoria ]

```

Los sistemas secuenciales se clasifican en:
*   ⏱️ **Síncronos:** Su funcionamiento y transiciones de estado están regulados por una señal periódica de control denominada pulso de reloj (`clock` / `clk`). Los cambios de estado ocurren únicamente en los flancos de disparo (subida o bajada).
*   ⚡ **Asíncronos:** No dependen de un reloj global; sus salidas cambian inmediatamente en función del orden y momento en que se aplican las señales de entrada.



### 📦 1.2. Elementos de Memoria: Flip-Flops
El flip-flop (o celda binaria) es la unidad mínima de memoria, capaz de albergar 1 bit de información de manera indefinida hasta que una señal de control ordene un cambio de estado.

Se utiliza la notación $Q$ para representar el estado presente y $Q_{t+1}$ para el estado futuro. Los comportamientos de los principales flip-flops son:

| Tipo | Entradas | Estado Futuro ($Q_{t+1}$) | Descripción / Condición |
| :--- | :--- | :--- | :--- |
| 🔢 **D** | $D = 0$ <br> $D = 1$ | $Q_{t+1} = 0$ <br> $Q_{t+1} = 1$ | El valor de entrada $D$ se transfiere a la salida en el flanco de reloj. |
| 🔀 **SR** | $S=0, R=0$ <br> $S=0, R=1$ <br> $S=1, R=0$ <br> $S=1, R=1$ | $Q_{t+1} = Q$ <br> $Q_{t+1} = 0$ <br> $Q_{t+1} = 1$ <br> Indeterminado (`'-'`) | $S$ es Set, $R$ es Reset. La combinación $S=1, R=1$ es una condición no permitida. |
| 🔄 **JK** | $J=0, K=0$ <br> $J=0, K=1$ <br> $J=1, K=0$ <br> $J=1, K=1$ | $Q_{t+1} = Q$ <br> $Q_{t+1} = 0$ <br> $Q_{t+1} = 1$ <br> $Q_{t+1} = \overline{Q}$ | Elimina la indeterminación del SR; con $J=1, K=1$ invierte la salida (basculación). |
| 🔁 **T** | $T = 0$ <br> $T = 1$ | $Q_{t+1} = Q$ <br> $Q_{t+1} = \overline{Q}$ | Si $T=1$, la salida conmuta en cada flanco de reloj. |



## 🛠️ 2. Inferencia de Memoria y Optimización en FPGAs

### 🧱 2.1. Estructura de la Celda Básica en FPGAs
En la arquitectura de una FPGA, los recursos lógicos principales están constituidos por bloques que contienen una tabla de búsqueda (**LUT** - *Look-Up Table*) y un flip-flop tipo D (**FF-D**). Este último presenta una estructura estándar constituida por:
*   Entrada de reloj (`C` / `clock`), conectada al bus principal de reloj.
*   Entrada de reset o set sincrónico (`R`).
*   Entrada de reset o set asincrónico.
*   Entrada de habilitación de reloj (`CE` / `e`).
*   Salida única (`Q`).



### ⚙️ 2.2. Reglas de Inferencia de Memoria en VHDL
La inferencia de memoria ocurre cuando el sintetizador de VHDL detecta que una variable o señal debe mantener su valor previo bajo ciertas condiciones de flujo de control:
*   📋 **Lista de Sensibilidad:** Un proceso secuencial sincrónico debe incluir la señal de reloj en su lista de sensibilidad (`process(clock)`).
*   📈 **Evaluación del Flanco:** Se realiza mediante `rising_edge(clock)` (o `falling_edge(clock)`), o mediante el atributo `clk'event and clk='1'`.
*   🛡️ **Ausencia de Cláusula else:** Al estructurar un `if rising_edge(clock) then` sin una rama `else` explícita, el sintetizador interpreta que el valor debe retenerse, infiriendo un Flip-Flop.



### 📶 2.3. Jerarquía Condicional y Prioridades
Dentro del bloque condicional del proceso, existe un orden jerárquico implícito:
1.  🥇 **Prioridad Máxima:** Flanco de reloj (`rising_edge(clock)`).
2.  🥈 **Segunda Prioridad:** Señal de Reinicio (`reset`).
3.  🥉 **Tercera Prioridad:** Señal de Habilitación (`e` / `CE`).
4.  🔄 **Condición por Defecto:** Conservación del estado actual ($Q \Leftarrow Q$).



### 💡 2.4. Buenas Prácticas de Diseño Hardware
Para garantizar la optimización de recursos y un correcto rendimiento temporal:
*   🚫 **No colocar lógica combinacional en las líneas de reloj:** Impide el uso de las redes de ruteado dedicado (*clock trees*), diseñadas para evitar desviaciones (*skew*).
*   ⏱️ **Uso de Habilitación de Reloj (CE):** Para frecuencias efectivas menores, se debe controlar mediante la entrada de habilitación (`e`), evitando cortar el reloj principal.
*   🔄 **Preferencia por Reset Sincrónico:** Promueve una temporización más predecible y uniforme en la red de distribución.



## 💻 3. Implementación de Componentes Secuenciales

### 📐 3.1. Flip-Flop D y Cascada Concurrente
Ejemplo de descripción conductual estandarizada de un FF-D con reset y habilitación sincrónicos:

```vhdl
entity ff_d is
    port (
        clock : in std_logic;
        reset : in std_logic;
        e     : in std_logic;
        d     : in std_logic;
        q     : out std_logic
    );
end entity ff_d;

architecture Behavioral of ff_d is
begin
    flip_flop: process (clock)
    begin
        if rising_edge(clock) then
            if reset = '1' then
                q <= '0';
            elsif e = '1' then
                q <= d;
            end if;
        end if;
    end process flip_flop;
end architecture Behavioral;

```

> ⚠️ **Fenómeno de Concurrencia en Cascada:** Al asignar señales secuencialmente en un proceso síncrono (`d_int <= d; d_int2 <= d_int;`), ambas sentencias son concurrentes. `d_int2` recibe el valor de `d_int` del ciclo anterior, infiriendo físicamente dos flip-flops en cascada (registro de desplazamiento).



### 🗂️ 3.2. Registros

Un registro es la generalización de un flip-flop a múltiples bits mediante vectores `std_logic_vector`.

> 💡 **Manejo de Puertos `out`:** Como un puerto `out` no puede ser leído dentro de la misma arquitectura en versiones estándar, se requiere una señal intermedia (`q_sig`) para realizar interconexiones internas sin consumir recursos adicionales.

```vhdl
entity reg8 is
    port (
        clock : in std_logic;
        reset : in std_logic;
        e     : in std_logic;
        d     : in std_logic_vector(7 downto 0);
        q     : out std_logic_vector(7 downto 0)
    );
end entity reg8;

architecture Behavioral of reg8 is
    signal q_sig : std_logic_vector(7 downto 0);
begin
    registro: process (clock)
    begin
        if rising_edge(clock) then
            if reset = '1' then
                q_sig <= (others => '0');
            elsif e = '1' then
                q_sig <= d;
            end if;
        end if;
    end process registro;

    q <= q_sig; -- Asignación concurrente fuera del proceso
end architecture Behavioral;

```



### ➕ 3.3. Contadores

Los contadores son estructuras secuenciales de incremento o decremento. Requieren el puerto en modo `inout` para realimentar el valor actual (`Q <= Q + 1`) y la inclusión de paquetes aritméticos como `IEEE.std_logic_arith`.

Ejemplo de contador de 4 bits con carga en paralelo y reset asincrónico:

```vhdl
library ieee;
use ieee.std_logic_1164.all;
use work.std_arith.all;

entity cont is
    port (
        P                : in std_logic_vector(3 downto 0);
        Clk, LOAD, ENP, RESET : in std_logic;
        Q                : inout std_logic_vector(3 downto 0)
    );
end entity cont;

architecture arq_cont of cont is
begin
    process (Clk, RESET, LOAD, ENP)
    begin
        if RESET = '1' then           -- Reset Asincrónico de máxima prioridad
            Q <= "0000";
        elsif rising_edge(Clk) then
            if LOAD = '0' then         -- Carga en paralelo (prioridad sobre conteo)
                Q <= P;
            elsif LOAD = '1' and ENP = '0' then -- Retención de estado
                Q <= Q;
            elsif LOAD = '1' and ENP = '1' then -- Conteo ascendente
                Q <= Q + 1;
            end if;
        end if;
    end process;
end architecture arq_cont;

```



## 🔀 4. Diseño de Sistemas Secuenciales Síncronos (FSM)

### 📊 4.1. Clasificación: Arquitecturas Mealy vs. Moore

* 🤝 **Modelo de Mealy:** La salida depende del estado presente y de las entradas actuales. Las salidas pueden cambiar de forma asíncrona ante fluctuaciones en las entradas.
* 👤 **Modelo de Moore:** La salida depende única y exclusivamente del estado presente, siendo inmune a fluctuaciones intermedias en las entradas.

```
--- MEALY ---
Entradas ----> [ Lógica Combinacional ] ----> Salidas
                    ^          |
                    |          v
              [ Memoria Flip-Flops ]

--- MOORE ---
Entradas ----> [ Lógica Combinacional ] ----> [ Memoria ] ----> [ Lógica Salida ] ----> Salidas

```



### 📝 4.2. Metodología de Descripción en VHDL (Dos Procesos)

La descripción de una FSM se estructura mediante tipos enumerados y dos procesos:

1. **Definición de Estados:** `type estados is (d0, d1, d2, d3);`.
2. **Proceso Combinacional (`proceso1`):** Calcula el estado futuro y las salidas mediante `case-when`.
3. **Proceso Secuencial (`proceso2`):** Actualiza síncronamente el estado con el flanco de reloj.

Ejemplo integrado (Detector de Secuencia Mealy para `1111`):

```vhdl
library ieee;
use ieee.std_logic_1164.all;

entity detector_secuencia is
    port (
        clk, x : in std_logic;
        z      : out std_logic
    );
end entity detector_secuencia;

architecture arq_diagrama of detector_secuencia is
    type estados is (d0, d1, d2, d3);
    signal edo_presente, edo_futuro : estados;
begin
    -- PROCESO 1: Lógica combinacional de transición y salidas
    proceso1: process (edo_presente, x)
    begin
        case edo_presente is
            when d0 =>
                z <= '0';
                if x = '1' then
                    edo_futuro <= d1;
                else
                    edo_futuro <= d0;
                end if;

            when d1 =>
                z <= '0';
                if x = '1' then
                    edo_futuro <= d2;
                else
                    edo_futuro <= d1;
                end if;

            when d2 =>
                z <= '0';
                if x = '1' then
                    edo_futuro <= d3;
                else
                    edo_futuro <= d0;
                end if;

            when d3 =>
                if x = '1' then
                    edo_futuro <= d0;
                    z <= '1'; -- Evaluación combinacional del modelo Mealy
                else
                    edo_futuro <= d3;
                    z <= '0';
                end if;
        end case;
    end process proceso1;

    -- PROCESO 2: Actualización síncrona del registro de estado
    proceso2: process (clk)
    begin
        if rising_edge(clk) then
            edo_presente <= edo_futuro;
        end if;
    end process proceso2;

end architecture arq_diagrama;

```


## 📋 5. Cuadro Comparativo de Estructuras Secuenciales en VHDL

| Componente | Tipo de Datos de Salida | Mecanismo de Control | Elementos Clave VHDL | Consideraciones de Hardware |
| --- | --- | --- | --- | --- |
| 🔢 **Flip-Flop D** | `std_logic` | Flanco de reloj (`rising_edge`) | `process(clock)`, `if-then` | Elemento básico de 1 bit. Mantiene estado sin rama `else`. |
| 🗂️ **Registro N-bits** | `std_logic_vector` | Flanco + Reset + Habilitación | Uso de señales internas (`q_sig`) | Escala $N$ celdas tipo FF-D en paralelo dentro de la FPGA. |
| ➕ **Contador** | `std_logic_vector` | Flanco + Operación Aritmética | Puerto en modo `inout`, paquete `std_arith` | Genera lógica de suma/resta combinacional realimentada a los FFs. |
| 🔄 **FSM (Mealy/Moore)** | Tipo Enumerado (`type`) | Flanco + Condicional `case-when` | Esquema de 2 procesos (`edo_presente`, `edo_futuro`) | La lógica combinacional determina la transición entre estados almacenados en FFs. |

```

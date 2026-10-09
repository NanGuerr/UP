# 📘 Actividad: Circuitos Realimentados II

A continuación se presenta la resolución completa de la actividad de circuitos realimentados, respetando rigurosamente las reglas de diseño síncrono (inclusión obligatoria de reloj, reset y habilitación), reutilizando el código base del contador BCD y aplicando los criterios de síntesis descritos en el apunte de cátedra. ⚙️

---

## 🔢 Ejercicio 1: Contador de 8 bits con carga paralela y salida de overflow

### Descripción y Criterio de Diseño

El circuito debe contar de $0$ a $255$ ($8$ bits). Incorpora una entrada de carga paralela (`load`) con su bus de datos (`data_in`), entrada de habilitación (`enable`) y la señal de salida de desbordamiento (`ov`) que se activa en `'1'` cuando la cuenta está en su valor máximo ($255$) y va a transicionar a $0$. 📈

### Código VHDL (`contador_8b_load.vhd`)

```vhdl
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity contador_8b_load is
    port(
        clk     : in  std_logic;
        reset   : in  std_logic;
        enable  : in  std_logic;
        load    : in  std_logic;
        data_in : in  unsigned(8-1 downto 0);
        ov      : out std_logic;
        count   : out unsigned(8-1 downto 0)
    );
end entity contador_8b_load;

architecture comportamiento of contador_8b_load is
    signal cuenta : unsigned(8-1 downto 0) := (others => '0');
begin
    process (clk)
    begin
        if rising_edge(clk) then
            ov <= '0';
            if reset = '1' then
                cuenta <= (others => '0');
            elsif load = '1' then
                cuenta <= data_in; -- Carga paralela prioritaria sobre enable
            elsif enable = '1' then
                if cuenta = 255 - 1 then
                    ov <= '1'; -- Se anticipa la señal de overflow en el valor 254/255
                end if;

                if cuenta = 255 then
                    cuenta <= (others => '0'); -- Desbordamiento de 255 a 0
                else
                    cuenta <= cuenta + 1;
                end if;
            end if;
        end if;
    end process;

    count <= cuenta;
end architecture comportamiento;

```

---

## 🔟 Ejercicio 2: Contador de dos dígitos BCD (00 a 99)

### Descripción y Criterio de Diseño

Se construye un contador BCD de dos dígitos interconectando dos instancias del bloque elemental de $1$ dígito (`contadorBCD`). Siguiendo el esquema jerárquico del apunte:

* El Dígito 1 (Unidades) recibe el `enable` principal del sistema. 🔗
* La salida de overflow (`ov`) del Dígito 1 se conecta directamente a la entrada `enable` del Dígito 2 (Decenas).
* De esta forma, el segundo dígito se incrementa únicamente una vez por cada $10$ impulsos del primero.

### 1. Módulo Base de 1 Dígito (`contadorBCD.vhd`)

```vhdl
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity contadorBCD is
    port(
        clk    : in  std_logic;
        reset  : in  std_logic;
        enable : in  std_logic;
        ov     : out std_logic;
        bcd    : out unsigned(4-1 downto 0)
    );
end entity contadorBCD;

architecture comportamiento of contadorBCD is
    signal cuenta : unsigned(4-1 downto 0) := (others => '0');
begin
    contador: process (clk)
    begin
        if rising_edge(clk) then
            ov <= '0';
            if reset = '1' then
                cuenta <= (others => '0');
            elsif (enable = '1') then
                if cuenta = 9 - 1 then
                    ov <= '1';
                end if;
                if cuenta = 9 then
                    cuenta <= (others => '0');
                else
                    cuenta <= cuenta + 1;
                end if;
            end if;
        end if;
    end process contador;

    bcd <= cuenta;
end architecture comportamiento;

```

### 2. Módulo Superior de 2 Dígitos (`contadorBCD2D.vhd`)

```vhdl
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity contadorBCD2D is
    port(
        clk          : in  std_logic;
        reset        : in  std_logic;
        enable       : in  std_logic;
        ov_total     : out std_logic;
        bcd_unidades : out unsigned(3 downto 0);
        bcd_decenas  : out unsigned(3 downto 0)
    );
end entity contadorBCD2D;

architecture estructural of contadorBCD2D is
    signal ov_unidades : std_logic;
begin
    -- Instancia Dígito 1: Unidades
    U1_Unidades: entity work.contadorBCD
        port map(
            clk    => clk,
            reset  => reset,
            enable => enable,
            ov     => ov_unidades,
            bcd    => bcd_unidades
        );

    -- Instancia Dígito 2: Decenas (habilitado por la salida ov de Unidades)
    U2_Decenas: entity work.contadorBCD
        port map(
            clk    => clk,
            reset  => reset,
            enable => ov_unidades,
            ov     => ov_total,
            bcd    => bcd_decenas
        );

end architecture estructural;

```

---

## ⏱️ Ejercicio 3: Divisor de frecuencia de módulo genérico

### Descripción y Criterio de Diseño

Este bloque utiliza un parámetro genérico `DIV` (*generic*) para ajustar el módulo de división deseado. Responde a la fórmula descrita en el apunte:

$$\text{DIV} = \frac{F_{\text{entrada}}}{F_{\text{salida}}} - 1$$

El módulo cuenta desde $0$ hasta $\text{DIV}$ y genera un pulso de habilitación (*tick*) activo por $1$ ciclo de reloj al completar la cuenta.

### Código VHDL (`divisor_frecuencia.vhd`)

```vhdl
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity divisor_frecuencia is
    generic(
        DIV : natural := 19 -- Ejemplo: Divisor por 20 (FrecEnt / 20)
    );
    port(
        clk      : in  std_logic;
        reset    : in  std_logic;
        enable   : in  std_logic;
        tick_out : out std_logic
    );
end entity divisor_frecuencia;

architecture comportamiento of divisor_frecuencia is
    signal cuenta : natural range 0 to DIV := 0;
begin
    process (clk)
    begin
        if rising_edge(clk) then
            tick_out <= '0';
            if reset = '1' then
                cuenta <= 0;
            elsif enable = '1' then
                if cuenta = DIV - 1 then
                    tick_out <= '1'; -- Pulso activo un ciclo antes del desbordamiento
                end if;

                if cuenta = DIV then
                    cuenta <= 0;
                else
                    cuenta <= cuenta + 1;
                end if;
            end if;
        end if;
    end process;
end architecture comportamiento;

```

---

## 📊 Ejercicio 4: Generador de señales rectangulares con 50% de tiempo activo

### Descripción y Criterio de Diseño

Para garantizar de manera síncrona un ciclo de trabajo (*duty cycle*) del $50\%$ exacto, se calcula la mitad del período del módulo deseado:

$$\text{SEMI\_PERIODO} = \frac{F_{\text{entrada}}}{2 \cdot F_{\text{salida}}} - 1$$

Cada vez que el contador alcanza dicho valor, se reinicia la cuenta interna y se conmuta (*toggle*) el estado de un Flip-Flop T de salida. 💡

### Código VHDL (`generador_50pct.vhd`)

```vhdl
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity generador_50pct is
    generic(
        SEMI_PERIODO : natural := 9999 -- Ejemplo: Reloj 100 MHz a Salida 5 kHz (100M / (2*5k) - 1)
    );
    port(
        clk        : in  std_logic;
        reset      : in  std_logic;
        enable     : in  std_logic;
        square_out : out std_logic
    );
end entity generador_50pct;

architecture comportamiento of generador_50pct is
    signal cuenta : natural range 0 to SEMI_PERIODO := 0;
    signal q_reg  : std_logic := '0';
begin
    process (clk)
    begin
        if rising_edge(clk) then
            if reset = '1' then
                cuenta <= 0;
                q_reg  <= '0';
            elsif enable = '1' then
                if cuenta = SEMI_PERIODO then
                    cuenta <= 0;
                    q_reg  <= not q_reg; -- Conmutación para lograr 50% de ciclo activo
                else
                    cuenta <= cuenta + 1;
                end if;
            end if;
        end if;
    end process;

    square_out <= q_reg;
end architecture comportamiento;

```

---

## 🛠️ Análisis de Síntesis y Resultados Esperados en ISE/Vivado

Al ejecutar la síntesis y revisar los reportes (*Synthesis Report*, *RTL Schematic* y *RTL Technology*) de estos bloques:

* **Inferencia de Recursos**: El sintetizador identificará automáticamente los contadores como *up counter* y asociará los Flip-Flops necesarios (por ejemplo, $5$ Flip-Flops en `contadorBCD`: $4$ para el registro de cuenta y $1$ para `ov`). 📦
* **Esquemático RTL**: En el diagrama esquemático se apreciará la combinación de un sumador binario con un registro de estado tipo D y compuertas lógicas condicionales (como compuertas AND) dedicadas a la detección del límite de cuenta para forzar el reinicio síncrono. 🔍
* **Consistencia de Sincronismo**: Todos los bloques evitan el uso de redes de reloj derivadas (*gated clocks*). Se operan bajo el reloj principal del sistema (`clk`), gestionando la frecuencia mediante habilitadores síncronos (`enable` / CE). ⏱️

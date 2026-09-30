# 📦 Biblioteca de Componentes Secuenciales en VHDL

Este documento recopila las transcripciones de diversos códigos fuente en VHDL enfocados en la implementación de flip-flops, registros de múltiples bits, celdas parametrizables y estructuras en cascada.



## 🔢 1. Flip-Flop D Básico (`ff_d`)

Implementación estándar de un flip-flop tipo D con entrada de reloj, reset sincrónico y habilitación (*enable*)[cite: 5].

```vhdl
library ieee;
use ieee.std_logic_1164.all;

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
            if (reset = '1') then
                q <= '0';
            elsif e = '1' then
                q <= d;
            end if;
        end if;
    end process flip_flop;
end architecture Behavioral;

```



## 🗂️ 2. Registro Genérico con Salida Negada (`regGenComp`)

Registro parametrizable de tamaño `N` mediante `generic`, que incluye tanto la salida directa `q` como su versión invertida `q_n`.

```vhdl
library ieee;
use ieee.std_logic_1164.all;

entity regGenComp is
    generic (
        N : positive := 8
    );
    port (
        clock : in std_logic;
        reset : in std_logic;
        e     : in std_logic;
        d     : in std_logic_vector(N-1 downto 0);
        q     : out std_logic_vector(N-1 downto 0);
        q_n   : out std_logic_vector(N-1 downto 0)
    );
end entity regGenComp;

architecture Behavioral of regGenComp is
    signal q_sig : std_logic_vector(N-1 downto 0);
begin
    registro: process (clock)
    begin
        if rising_edge(clock) then
            if (reset = '1') then
                q_sig <= (others => '0');
            elsif e = '1' then
                q_sig <= d;
            end if;
        end if;
    end process registro;

    q   <= q_sig;
    q_n <= not q_sig;
end architecture Behavioral;

```



## ⚙️ 3. Registro Genérico Estándar (`regGen`)

Registro parametrizable de longitud `N` optimizado para utilizar señales internas y puertos estándar de salida.

```vhdl
library ieee;
use ieee.std_logic_1164.all;

entity regGen is
    generic (
        N : positive := 8
    );
    port (
        clock : in std_logic;
        reset : in std_logic;
        e     : in std_logic;
        d     : in std_logic_vector(N-1 downto 0);
        q     : out std_logic_vector(N-1 downto 0)
    );
end entity regGen;

architecture Behavioral of regGen is
    signal q_sig : std_logic_vector(N-1 downto 0);
begin
    registro: process (clock)
    begin
        if rising_edge(clock) then
            if (reset = '1') then
                q_sig <= (others => '0');
            elsif e = '1' then
                q_sig <= d;
            end if;
        end if;
    end process registro;

    q <= q_sig;
end architecture Behavioral;

```



## ⛓️ 4. Triple Flip-Flop en Cascada (`triple_ff_d`)

Estructura de tres etapas interconectadas en cascada mediante señales internas para retardo o sincronización de datos.

```vhdl
library ieee;
use ieee.std_logic_1164.all;

entity triple_ff_d is
    port (
        clock : in std_logic;
        reset : in std_logic;
        e     : in std_logic;
        d     : in std_logic;
        q     : out std_logic
    );
end entity triple_ff_d;

architecture Behavioral of triple_ff_d is
    signal d_int1 : std_logic := '0';
    signal d_int2 : std_logic := '0';
    signal d_int3 : std_logic := '0';
begin
    flip_flop: process (clock)
    begin
        if rising_edge(clock) then
            if (reset = '1') then
                d_int1 <= '0';
                d_int2 <= '0';
                d_int3 <= '0';
            elsif e = '1' then
                d_int1 <= d;
                d_int2 <= d_int1;
                d_int3 <= d_int2;
            end if;
        end if;
    end process flip_flop;

    q <= d_int3;
end architecture Behavioral;

```



## 📊 5. Registro de 8 Bits (`reg8`)

Registro estático de 8 bits implementado con una señal interna `q_sig` para gestionar el puerto de salida de forma segura.

```vhdl
library ieee;
use ieee.std_logic_1164.all;

entity reg8 is
    port (
        clock : in std_logic;
        reset : in std_logic;
        e     : in std_logic;
        d     : in std_logic_vector(8-1 downto 0);
        q     : out std_logic_vector(8-1 downto 0)
    );
end entity reg8;

architecture Behavioral of reg8 is
    signal q_sig : std_logic_vector(8-1 downto 0);
begin
    registro: process (clock)
    begin
        if rising_edge(clock) then
            if (reset = '1') then
                q_sig <= (others => '0');
            elsif e = '1' then
                q_sig <= d;
            end if;
        end if;
    end process registro;

    q <= q_sig;
end architecture Behavioral;

```



## 🔗 6. Doble Flip-Flop en Cascada (`doble_ff_d`)

Estructura de dos etapas en cascada, ampliamente utilizada para la sincronización de señales asíncronas de entrada.

```vhdl
library ieee;
use ieee.std_logic_1164.all;

entity doble_ff_d is
    port (
        clock : in std_logic;
        reset : in std_logic;
        e     : in std_logic;
        d     : in std_logic;
        q     : out std_logic
    );
end entity doble_ff_d;

architecture Behavioral of doble_ff_d is
    signal d_int  : std_logic := '0';
    signal d_int2 : std_logic := '0';
begin
    flip_flop: process (clock)
    begin
        if rising_edge(clock) then
            if (reset = '1') then
                d_int  <= '0';
                d_int2 <= '0';
            elsif e = '1' then
                d_int  <= d;
                d_int2 <= d_int;
            end if;
        end if;
    end process flip_flop;

    q <= d_int2;
end architecture Behavioral;

```

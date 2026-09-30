# 🧩 Componentes Lógicos y Control en VHDL

Este documento recopila las transcripciones de códigos fuente en VHDL enfocados en compuertas lógicas básicas, paquetes de declaración de componentes, módulos parametrizables con `generic` y lógicas combinacionales de control para iluminación.



## 🔀 1. Compuerta XOR Estándar (`comp_xor`)

Implementación básica de una compuerta XOR de un bit utilizando operadores concurrentes[cite: 19].

```vhdl
library ieee;
use ieee.std_logic_1164.all;

entity comp_xor is
    port (
        a : in std_logic;
        b : in std_logic;
        c : out std_logic
    );
end entity comp_xor;

architecture arch of comp_xor is
begin
    c <= a xor b;
end architecture arch;

```



## 📦 2. Paquete de Componentes Globales (`componentes`)

Paquete VHDL que agrupa las declaraciones de múltiples componentes estándar y genéricos para su reutilización en diseños jerárquicos.

```vhdl
library ieee;
use ieee.std_logic_1164.all;

package componentes is

    component comp_and is
        port (
            a : in std_logic;
            b : in std_logic;
            c : out std_logic
        );
    end component comp_and;

    component mux2a1 is
        port (
            in0 : in std_logic;
            in1 : in std_logic;
            sel : in std_logic;
            salida : out std_logic
        );
    end component mux2a1;

    component mux4a1 is
        port (
            bus_in : in std_logic_vector(4-1 downto 0);
            sel    : in std_logic_vector(2-1 downto 0);
            salida : out std_logic
        );
    end component mux4a1;

    component comp_or is
        port (
            a : in std_logic_vector(8-1 downto 0);
            b : in std_logic_vector(8-1 downto 0);
            c : out std_logic_vector(8-1 downto 0)
        );
    end component comp_or;

    component deco2a4 is
        port (
            entrada : in std_logic_vector(2-1 downto 0);
            salida  : in std_logic_vector(4-1 downto 0)
        );
    end component deco2a4;

    component orGen is
        generic (
            N : positive := 8
        );
        port (
            a : in std_logic_vector(N-1 downto 0);
            b : in std_logic_vector(N-1 downto 0);
            c : out std_logic_vector(N-1 downto 0)
        );
    end component orGen;

end package componentes;

```



## ⚙️ 3. Compuerta OR Genérica (`orGen`)

Módulo combinacional parametrizable mediante `generic` para operar sobre vectores de ancho `N`.

```vhdl
library ieee;
use ieee.std_logic_1164.all;

entity orGen is
    generic (
        N : positive := 8
    );
    port (
        a : in std_logic_vector(N-1 downto 0);
        b : in std_logic_vector(N-1 downto 0);
        c : out std_logic_vector(N-1 downto 0)
    );
end entity orGen;

architecture arch of orGen is
begin
    c <= a or b;
end architecture arch;

```



## 🔌 4. Bloque de Prueba Estructural para OR Genérico (`prueba_orGen`)

Diseño estructural que instancia el componente `orGen` utilizando un mapeo genérico (`generic map`) fijando el ancho de los buses en 4 bits.

```vhdl
library ieee;
use ieee.std_logic_1164.all;
library work;
use work.componentes.all;

entity prueba_orGen is
    port (
        entrada_a : in std_logic_vector(4-1 downto 0);
        entrada_b : in std_logic_vector(4-1 downto 0);
        salida_c  : out std_logic_vector(4-1 downto 0)
    );
end entity prueba_orGen;

architecture Estructural of prueba_orGen is
begin
    inst_orGen : orGen
        generic map (
            N => 4
        )
        port map (
            a => entrada_a,
            b => entrada_b,
            c => salida_c
        );
end architecture Estructural;

```



## 📊 5. Compuerta OR de 8 Bits (`comp_or`)

Implementación fija de una compuerta OR orientada a vectores de 8 bits de longitud.

```vhdl
library ieee;
use ieee.std_logic_1164.all;

entity comp_or is
    port (
        a : in std_logic_vector(8-1 downto 0);
        b : in std_logic_vector(8-1 downto 0);
        c : out std_logic_vector(8-1 downto 0)
    );
end entity comp_or;

architecture arch of comp_or is
begin
    c <= a or b;
end architecture arch;

```



## 💡 6. Control de Luces mediante Estructuras Secuenciales (`luces_if_else`)

Implementación de un sistema combinacional secuencial dentro de un proceso utilizando `if-else`, incluyendo asignaciones por defecto para prevenir la generación de latches.

```vhdl
library ieee;
use ieee.std_logic_1164.all;

entity luces_if_else is
    port (
        sensor   : in std_logic;
        sw1      : in std_logic;
        sw2      : in std_logic;
        rojo     : out std_logic;
        amarillo : out std_logic;
        verde    : out std_logic
    );
end entity luces_if_else;

architecture Behavioral of luces_if_else is
begin
    p_luces: process (sensor, sw1, sw2)
    begin
        -- Asignaciones por defecto para evitar latches
        rojo     <= '0';
        amarillo <= '0';
        verde    <= '0';

        if (sw1 = '1' and sw2 = '1') then
            rojo <= '1';
        elsif (sensor = '1' and sw1 = '0' and sw2 = '0') then
            amarillo <= '1';
        elsif (sensor = '0' and sw1 = '0' and sw2 = '0') then
            verde <= '1';
        end if;
    end process p_luces;
end architecture Behavioral;

```



## 🚦 7. Control de Luces mediante Asignación Concurrente (`luces_when_else`)

Modelo equivalente para el control de iluminación descrito de forma estrictamente concurrente mediante sentencias condicionales `when-else`.

```vhdl
library ieee;
use ieee.std_logic_1164.all;

entity luces_when_else is
    port (
        sensor   : in std_logic;
        sw1      : in std_logic;
        sw2      : in std_logic;
        rojo     : out std_logic;
        amarillo : out std_logic;
        verde    : out std_logic
    );
end entity luces_when_else;

architecture Behavioral of luces_when_else is
begin
    -- El indicador rojo se enciende cuando los dos finales de carrera están activados en simultáneo.
    rojo <= '1' when (sw1 = '1' and sw2 = '1') else '0';

    -- En caso que esté solo activado el sensor, se prende la luz amarilla (sw1 y sw2 inactivos).
    amarillo <= '1' when (sensor = '1' and sw1 = '0' and sw2 = '0') else '0';

    -- Si ninguno de los switches está activado y el sensor tampoco lo está, la luz verde se prende.
    verde <= '1' when (sensor = '0' and sw1 = '0' and sw2 = '0') else '0';
end architecture Behavioral;

```

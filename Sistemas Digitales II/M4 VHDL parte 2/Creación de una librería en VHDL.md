# Act.  Creación de una librería en VHDL 📚

```txt
library ieee;
use ieee.std_logic_1164.all;

package componentes is

    -- Componente base existente
    component comp_and is
       port ( a : in std_logic;
              b : in std_logic;
              c : out std_logic
            );
    end component comp_and;

    -- 1. Multiplexor de 2 a 1
    component mux2a1 is
        port (
            in0    : in std_logic;
            in1    : in std_logic;
            sel    : in std_logic;
            salida : out std_logic
        );
    end component mux2a1;

    -- 2. Multiplexor de 4 a 1 (con entradas en vector)
    component multiplexor4a1 is
        port (
            entrada_i : in std_logic_vector(3 downto 0);
            sel_i     : in std_logic_vector(1 downto 0);
            salida_o  : out std_logic
        );
    end component multiplexor4a1;

    -- 3. Compuerta OR entre dos buses de 8 bits
    component or_bus8 is
        port (
            a_bus : in std_logic_vector(7 downto 0);
            b_bus : in std_logic_vector(7 downto 0);
            s_bus : out std_logic_vector(7 downto 0)
        );
    end component or_bus8;

    -- 4. Decodificador de 2 a 4
    component dec2a4 is
        port (
            sel : in std_logic_vector(1 downto 0);
            sal : out std_logic_vector(3 downto 0)
        );
    end component dec2a4;

end package componentes;
```

# 📦 Paquete de Componentes Estándar en VHDL (`componentes`)

Este documento recopila la transcripción de un paquete VHDL que declara componentes lógicos fundamentales, tales como compuertas lógicas básicas, multiplexores y decodificadores para su reutilización en diseños jerárquicos[cite: 26].

---

```vhdl
library ieee;
use ieee.std_logic_1164.all;


package componentes is

component comp_and is
   port ( a : in std_logic;
          b : in std_logic;
          c : out std_logic
        );
end component comp_and;

component mux2a1 is
	port (
				in0     : in std_logic;
        in1     : in std_logic;
				sel			: in std_logic;
				salida		: out std_logic
			);
end component mux2a1;

component mux4a1 is
	port (
				bus_in	: in std_logic_vector(4-1 downto 0);
				sel			: in std_logic_vector(2-1 downto 0);
				salida	: out std_logic
			);
end component mux4a1;

component comp_or is
	port (
				a	: in std_logic_vector(8-1 downto 0);
				b	: in std_logic_vector(8-1 downto 0);
				c	: out std_logic_vector(8-1 downto 0)
			);
end component comp_or;

component deco2a4 is
	port (
				entrada	: in std_logic_vector(2-1 downto 0);
				salida	: in std_logic_vector(4-1 downto 0)				
			);
end component deco2a4;

end package componentes;

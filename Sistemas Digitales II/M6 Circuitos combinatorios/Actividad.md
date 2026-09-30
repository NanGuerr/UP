# 🧩 Biblioteca de Circuitos en VHDL

Este documento recopila códigos fuente en VHDL para la implementación de distintos circuitos aritméticos y combinacionales parametrizables.



## ✖️ 1. Multiplicador Signado (`multiplicador_sig`)

Este módulo implementa un multiplicador utilizando tipos de datos con signo (`signed`), parametrizable mediante un valor genérico `N`.

```vhdl
library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;

entity multiplicador_sig is
	 Generic(N : positive := 3);
    Port ( operador1 	: in signed (N-1 downto 0);
           operador2 	: in signed (N-1 downto 0);
           result : out signed ((2*N)-1 downto 0 ):= (others => '0')
          );

end multiplicador_sig;

architecture Behavioral of multiplicador_sig is
		
begin	
	result <= operador1*operador2;	
end Behavioral;

```



## ⚖️ 2. Comparador Estándar (`cmp`)

Circuito combinacional encargado de comparar dos vectores sin signo (`unsigned`) de 8 bits de longitud, emitiendo un nivel alto (`'1'`) si ambos operandos son idénticos.

```vhdl
library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;

entity cmp is	 
    Port ( operador1 	: in unsigned (8-1 downto 0);
           operador2 	: in unsigned (8-1 downto 0);
           cmp_out : out std_logic
          );

end cmp;

architecture Behavioral of cmp is		
begin	
	cmp_out <= '1' when operador1 = operador2 else '0';	
end Behavioral;

```



## ⚙️ 3. Comparador Genérico (`cmpGen`)

Versión parametrizable del comparador de igualdad, permitiendo definir el ancho de los buses mediante la cláusula `generic`.

```vhdl
library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;

entity cmpGen is
	 Generic(N : positive := 3);
    Port ( operador1 	: in unsigned (N-1 downto 0);
           operador2 	: in unsigned (N-1 downto 0);
           cmp_out : out std_logic
          );

end cmpGen;

architecture Behavioral of cmpGen is		
begin	
	cmp_out <= '1' when operador1 = operador2 else '0';	
end Behavioral;

```



## 🗂️ 4. Decodificador 3 a 8 (`deco3a8`)

Decodificador implementado de forma concurrente mediante una sentencia `with-select`, mapeando una entrada de 3 bits a una salida de 8 bits en formato hexadecimal.

```vhdl
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity deco3a8 is
	port (
				entrada	: in std_logic_vector(3-1 downto 0);
				salida	: out std_logic_vector(8-1 downto 0)				
			);
end entity deco3a8;

architecture Behavioral of deco3a8 is
begin
  with entrada select salida <= 
    x"01" when "000",
    x"02" when "001",
    x"04" when "010",
    x"08" when "011",
    x"10" when "100",
    x"20" when "101",
    x"40" when "110",
    x"80" when "111",
    x"00" when others;
end Behavioral;

```


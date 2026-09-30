# 📦 Transcripción de Códigos VHDL - Circuitos Aritméticos y Lógicos

---

## ✖️ 1. Multiplicador Signado (`multiplicador_sig`)
Este bloque implementa un multiplicador paramétrico para datos con signo (`signed`), donde el tamaño de la salida duplica la longitud de los operandos para evitar desbordamientos[cite: 1].

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

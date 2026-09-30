# ⚡ Avanzada de Circuitos y Bancos de Pruebas en VHDL

Este documento recopila códigos fuente en VHDL correspondientes a componentes lógicos elementales, multiplexores parametrizables mediante generics, circuitos aritméticos con signo, paquetes de funciones auxiliares y sus respectivos entornos de simulación (*testbenches* autónomos).



## 🔀 1. Compuerta XOR Básica (`CXor`)

Muestra la descripción concurrente elemental de una función lógica XOR entre dos entradas de un bit[cite: 11].

```vhdl
library ieee;
use ieee.std_logic_1164.all;

entity CXor is
   port ( a1 : in std_logic;
          b1 : in std_logic;
          s1 : out std_logic
        );
end entity CXor;

architecture arch of CXor is
begin
  s1 <= a1 xor b1;
end architecture arch;

```



## 🧪 2. Banco de Pruebas para XOR (`CXor_tb`)

Testbench autónomo encargado de inyectar estímulos secuenciales a la compuerta XOR y verificar los resultados mediante la sentencia `assert` y control de consola con `std.textio`.

```vhdl
library ieee;
use ieee.std_logic_1164.all;

library std;
use std.textio.all;

entity CXor_tb is
end entity CXor_tb;

architecture testbench of CXor_tb is

constant RETARDO : time := 10 ps;

-- Declaración de señales
signal   a : std_logic;
signal   b : std_logic;
signal   c : std_logic;

--! Declaración del componente CXOR
component CXor is
   port ( a1 : in std_logic;
          b1 : in std_logic;
          s1 : out std_logic
        );
end component CXor;

begin

  -- Instanciación del DUT 
   dut : CXor
      port map (
                a1 => a,
                b1 => b,
                s1 => c
   );
   
   -- Proceso de prueba
   test: process
      variable s : line;      
   begin
    -- Estímulos
    a <= '0';
    b <= '0';
    wait for RETARDO;
    assert c = '0'
      report "Se esperaba que el resultado sea 0, pero es: " & std_logic'image(c)
      severity failure;
      
    write(s,string'("Test 1 Ok"));
    writeline (output,s);
    
    a <= '1';
    b <= '0';
    wait for RETARDO;
    assert c = '1'
      report "Se esperaba que el resultado sea 0, pero es: " & std_logic'image(c)
      severity failure;
    
    write(s,string'("Test 2 Ok"));
    writeline (output,s);
     
    a <= '0';
    b <= '1';
    wait for RETARDO;
    assert c = '1'
      report "Se esperaba que el resultado sea 0, pero es: " & std_logic'image(c)
      severity failure;
      
    write(s,string'("Test 3 Ok"));
    writeline (output,s);
    
    a <= '1';
    b <= '1';
    wait for RETARDO;
    assert c = '0'
      report "Se esperaba que el resultado sea 0, pero es: " & std_logic'image(c)
      severity failure;
    
    write(s,string'("Test 4 Ok"));
    writeline (output,s);
    
    write(s,string'("Fin del test"));
    writeline (output,s);
    
    wait;
   end process test;

end architecture testbench;

```



## 📐 3. Multiplexor Genérico (`muxGeneric`)

Multiplexor parametrizable que calcula dinámicamente el ancho de su bus de selección utilizando la función `log2` proveniente de un paquete de herramientas personalizado (`tools`).

```vhdl
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

library work;
use work.tools.all;

entity muxGeneric is
	generic (MAX_IN : positive := 7);
  port (
				bus_in	: in std_logic_vector(MAX_IN-1 downto 0);
				sel			: in std_logic_vector(log2(MAX_IN-1)-1 downto 0);
				salida	: out std_logic
			);
end entity muxGeneric;

architecture Behavioral of muxGeneric is					
begin
	salida <= bus_in(to_integer(unsigned(sel)));
end architecture Behavioral;

```



## 🔄 4. Banco de Pruebas para Multiplexor Genérico (`muxGeneric_tb`)

Verifica de forma iterativa (*loop*) el comportamiento del multiplexor genérico mediante desplazamientos de bits y comprobación de retorno a cero.

```vhdl
library ieee;
use ieee.std_logic_1164.all;

library ieee;
use ieee.numeric_std.all;

library std;
use std.textio.all;

library work;
use work.tools.all;

entity muxGeneric_tb is
end entity muxGeneric_tb;

architecture tb of muxGeneric_tb is

   constant RETARDO : time := 10 ps;
   constant MAX_IN : positive := 4;

   signal   bus_in : std_logic_vector(MAX_IN-1 downto 0);
   signal   sel    : std_logic_vector(log2(MAX_IN-1)-1 downto 0);
   signal   salida : std_logic;

   component muxGeneric is
      generic (MAX_IN : positive := 7);
     port (
               bus_in	: in std_logic_vector(MAX_IN-1 downto 0);
               sel			: in std_logic_vector(log2(MAX_IN-1)-1 downto 0);
               salida	: out std_logic
            );
   end component muxGeneric;

begin
     comp_muxGeneric : muxGeneric
      generic map (MAX_IN => MAX_IN)
      port map (
                bus_in => bus_in,
                sel    => sel,
                salida => salida
               );
   
   test:process
     variable s : line;      
   begin
    for i in 0 to MAX_IN-1 loop
      bus_in <= std_logic_vector(to_unsigned(2**i,bus_in'length));
      sel <= std_logic_vector(to_unsigned(i,sel'length));
      
      wait for RETARDO;
      
      assert salida = '1'
        report "El valor de la salida no es el esperado ('1'), valor: " 
                & std_logic'image(salida)
        severity failure;
      
      write(s,string'("Test entrada Numero:" &integer'image(i)& " ok"));
      writeline (output,s);        
    end loop;
    
    -- Verifico que retorne nuevamente a cero
   bus_in <= std_logic_vector(to_unsigned(0,bus_in'length));
   sel <= std_logic_vector(to_unsigned(0,sel'length));

   wait for RETARDO;

   assert salida = '0'
     report "El valor de la salida no es el esperado ('0'), valor: " 
             & std_logic'image(salida)
     severity failure;

   write(s,string'("Test de retorno a cero ok"));
   writeline (output,s);        
      
    write(s,string'("Todo ok, fin del test"));
    writeline (output,s);  
    wait;
   end process test;

end architecture tb;

```



## ➕ 5. Sumador Signado con Extensión de Signo (`sumador_signado`)

Circuito aritmético parametrizable que implementa una suma con tipos `signed`, ampliando la salida en 1 bit ($N+1$) mediante concatenación del bit de signo para prevenir desbordes (*overflow*).

```vhdl
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity sumador_signado is
	 Generic(N : positive := 4);
    Port ( operador1 	: in  signed (N-1 downto 0);
           operador2 	: in  signed (N-1 downto 0);
           result : out signed (N downto 0 ));
end sumador_signado;

architecture Behavioral of sumador_signado is
begin
   result <= (operador1(N-1)&operador1) + (operador2(N-1)&operador2);
end Behavioral;

```



## 🧪 6. Banco de Pruebas para Sumador Signado (`sumador_signado_tb`)

Valida casos de prueba extremos (valores mínimos negativos, máximos positivos, combinaciones mixtas y restas) utilizando conversiones numéricas avanzadas (`TO_SIGNED` y `TO_INTEGER`).

```vhdl
LIBRARY ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.all;
 
library std;
use std.textio.all;
 
ENTITY sumador_signado_tb IS
END sumador_signado_tb;
 
ARCHITECTURE behavior OF sumador_signado_tb IS 
    
component sumador_signado is
	 Generic(N : positive := 4);
    Port ( operador1 	: in  signed (N-1 downto 0);
           operador2 	: in  signed (N-1 downto 0);
           result : out signed (N downto 0 ));
end component sumador_signado;
    
  constant N : positive := 8;
  constant RETARDO : time := 10 ps;

   signal operador1 : signed(N-1 downto 0) := (others => '0');
   signal operador2 : signed(N-1 downto 0) := (others => '0');
   signal result : signed(N downto 0);
  
BEGIN
 	
   dut: sumador_signado 
        generic map (N=>N)
        PORT MAP (
          operador1 => operador1,
          operador2 => operador2,
          result => result
        );

   test: process
     variable s : line;      
   begin		
      wait for 1 ps;
              
      -- Operación de los dos operadores en el valor mínimo negativo
      operador1 <= TO_SIGNED(-128,N);
      operador2 <= TO_SIGNED(-128,N);
      wait for RETARDO;
      assert result = TO_SIGNED(-128-128,N+1)
        report "Error resultado incorrecto" & integer'image(TO_INTEGER(result))
        severity failure;
      
      write(s,string'("Test Valores extremos negativos OK"));
      writeline (output,s);  
      
      -- Operación de los dos operadores en el valor máximo positivo
      operador1 <= TO_SIGNED(127,N);
      operador2 <= TO_SIGNED(127,N);
      wait for RETARDO;
      assert (result) = TO_SIGNED(127+127,N+1)
        report "Error resultado incorrecto" & integer'image(TO_INTEGER(result))
        severity failure;
      
     write(s,string'("Test Valores extremos positivos OK"));
     writeline (output,s);  

      -- Pruebo dos positivos cualquiera
      operador1 <= TO_SIGNED(10,N);
      operador2 <= TO_SIGNED(20,N);
      wait for RETARDO;
      assert TO_INTEGER(result) = 30
        report "Error resultado incorrecto" & integer'image(TO_INTEGER(result))
        severity failure;
      
      write(s,string'("Test suma dos positivos cualquiera OK"));
      writeline (output,s);  
      
      -- Operación de un operador positivo y uno negativo (resta)
      operador1 <= TO_SIGNED(100,N);
      operador2 <= TO_SIGNED(-30,N);
      wait for RETARDO;
      assert (result) = TO_SIGNED(100-30,N+1)
        report "Error resultado incorrecto" & integer'image(TO_INTEGER(result))
        severity failure;
      
     write(s,string'("Test un operador positivo y uno negativo (resta) OK"));
     writeline (output,s);  

     write(s,string'("Todo OK, fin test"));
     writeline (output,s);  

      wait;
   end process;

END;

```



## 📦 7. Paquete de Herramientas Auxiliares (`tools`)

Define funciones matemáticas de apoyo para el diseño digital, destacando el cálculo optimizado del logaritmo en base 2 (`log2`) orientado al dimensionamiento de buses de bits.

```vhdl
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

package tools is

	function log2( n: natural) return natural;

end package tools;  

package body tools is
	
	function log2(n : natural) return natural is 
		variable resultado, v : natural; 
	begin 
		resultado := 0; 
      v := 1; 
      while v < n loop 			
			resultado := resultado + 1; 
         v := v * 2; 
      end loop; 
		if v = n then
			resultado := resultado + 1;
		end if;
      return resultado; 
   end function log2;
	
end package body tools;

```



## 📝 8. Notas Complementarias de Actividades

> 📌 **Referencias de Evaluación:**
> * Evaluación de testbenches complementarios: `comp_and_tb.vhd` y `mux4a1_tb.vhd`.
> * Validación de componentes adicionales: `CXor_tb.vhd`, `muxGeneric_tb.vhd` y `sumador_signado_tb.vhd`.


# 1. TComponentes (Componentes Individuales)

### `Acondicionador.vhd`
```vhdl
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

-- Módulo Acondicionador: Sincronizador y detector de flanco ascendente de la señal GPS (1PPS)
entity Acondicionador is
    Port ( 
        clk_in        : in  std_logic;
        PPS_en        : in  std_logic;
        pulso_digital : out std_logic
    );
end Acondicionador;

architecture comportamiento of Acondicionador is
    signal pulso_reg       : std_logic := '0';
    signal pulso_anterior  : std_logic := '0';
    signal pulso_detectado : std_logic := '0';
begin
    process(clk_in)
    begin
        if rising_edge(clk_in) then
            pulso_anterior <= pulso_reg;
            pulso_reg      <= PPS_en;

            -- Detecta el flanco ascendente emitiendo un pulso activo de 1 solo ciclo de reloj
            if (pulso_reg = '1' and pulso_anterior = '0') then
                pulso_detectado <= '1';
            else
                pulso_detectado <= '0';
            end if;
        end if;
    end process;

    pulso_digital <= pulso_detectado;
end comportamiento;
```

---

### `BCDa7Seg.vhd`
```vhdl
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Decodificador BCD a 7 segmentos
entity BCDa7Seg is
    Port ( 
        bcd_in  : in  std_logic_vector(3 downto 0);
        seg_out : out std_logic_vector(6 downto 0)
    );
end BCDa7Seg;

architecture Behavioral of BCDa7Seg is
begin
    process(bcd_in)
    begin
        case bcd_in is
            when "0000" => seg_out <= "1111110"; -- 0
            when "0001" => seg_out <= "0110000"; -- 1
            when "0010" => seg_out <= "1101101"; -- 2
            when "0011" => seg_out <= "1111001"; -- 3
            when "0100" => seg_out <= "0110011"; -- 4
            when "0101" => seg_out <= "1011011"; -- 5
            when "0110" => seg_out <= "0011111"; -- 6
            when "0111" => seg_out <= "1110000"; -- 7
            when "1000" => seg_out <= "1111111"; -- 8
            when "1001" => seg_out <= "1110011"; -- 9
            when others => seg_out <= "0000000";
        end case;
    end process;
end Behavioral;
```

---

### `ContBCD.vhd`
```vhdl
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

-- Contador BCD circular de 0 a 9 incrementado por la señal GPS acondicionada
entity ContBCD is
    Port ( 
        gps    : in  std_logic;
        clk_in : in  std_logic;
        bcd    : out std_logic_vector(3 downto 0)
    );
end ContBCD;

architecture Behavioral of ContBCD is
    signal count : unsigned(3 downto 0) := (others => '0');
begin
    process(clk_in)
    begin
        if rising_edge(clk_in) then
            if gps = '1' then
                if count = 9 then
                    count <= (others => '0');
                else
                    count <= count + 1;
                end if;
            end if;
        end if;
    end process;

    bcd <= std_logic_vector(count);
end Behavioral;
```

---

### `DetectorOverflow.vhd`
```vhdl
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Detector de Desbordamiento: emite un pulso activo en alto de 1 ciclo de reloj al pasar de 9 a 0
entity DetectorOverflow is
    Port ( 
        clk          : in  std_logic;
        bcd_actual   : in  std_logic_vector(3 downto 0);
        cuenta_final : out std_logic
    );
end DetectorOverflow;

architecture Behavioral of DetectorOverflow is
    signal bcd_anterior : std_logic_vector(3 downto 0) := "0000";
begin
    process(clk)
    begin
        if rising_edge(clk) then
            if (bcd_anterior = "1001" and bcd_actual = "0000") then
                cuenta_final <= '1';
            else
                cuenta_final <= '0';
            end if;
            bcd_anterior <= bcd_actual;
        end if;
    end process;
end Behavioral;
```

---

### `SalidaPatron.vhd`
```vhdl
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Módulo SalidaPatron: conmuta su estado con cada pulso de GPS (período de 2 segundos)
entity SalidaPatron is
    Port ( 
        gps           : in  std_logic;
        clk           : in  std_logic;
        salida_patron : out std_logic
    );
end SalidaPatron;

architecture Behavioral of SalidaPatron is
    signal estado : std_logic := '1';
begin
    process(clk)
    begin
        if rising_edge(clk) then
            if gps = '1' then
                estado <= not estado;
            end if;
        end if;
    end process;

    salida_patron <= estado;
end Behavioral;
```

---

### `Comparador.vhd`
```vhdl
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Módulo Comparador: registra cmp_in con cmp_en e invierte cmp_out cuando coincide con bcd_actual
entity Comparador is
    Port ( 
        clk        : in  std_logic;
        cmp_in     : in  std_logic_vector(3 downto 0);
        cmp_en     : in  std_logic;
        bcd_actual : in  std_logic_vector(3 downto 0);
        cmp_out    : out std_logic
    );
end Comparador;

architecture Behavioral of Comparador is
    signal cmp_reg              : std_logic := '0';
    signal cmp_val_reg          : std_logic_vector(3 downto 0) := "0000";
    signal invertido_este_ciclo : std_logic := '0';
    signal bcd_anterior         : std_logic_vector(3 downto 0) := "0000";
begin
    process(clk)
    begin
        if rising_edge(clk) then
            -- Almacenar el valor objetivo de cmp_in cuando se habilita la señal cmp_en
            if cmp_en = '1' then
                cmp_val_reg <= cmp_in;
            end if;

            -- Detectar fin de ciclo (transición de 9 a 0) para reiniciar la bandera de inversión
            if bcd_anterior = "1001" and bcd_actual = "0000" then
                invertido_este_ciclo <= '0';
            end if;

            bcd_anterior <= bcd_actual;

            -- Lógica de comparación: invierte la salida si coincide el valor grabado o directo y no se invirtió en este ciclo
            if (cmp_en = '1' or cmp_val_reg = bcd_actual) then
                if (cmp_in = bcd_actual or cmp_val_reg = bcd_actual) and (invertido_este_ciclo = '0') then
                    cmp_reg <= not cmp_reg;
                    invertido_este_ciclo <= '1';
                end if;
            end if;
        end if;
    end process;

    cmp_out <= cmp_reg;
end Behavioral;
```

---

### `Testigo_Out.vhd`
```vhdl
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

-- Módulo Testigo_Out: hace parpadear el LED cada 250 ms dividiendo la frecuencia del reloj
entity Testigo_Out is
    Port ( 
        clk         : in  std_logic;
        testigo_led : out std_logic
    );
end Testigo_Out;

architecture Behavioral of Testigo_Out is
    signal contador   : unsigned(21 downto 0) := (others => '0');
    signal estado_led : std_logic := '0';
begin
    process(clk)
    begin
        if rising_edge(clk) then
            if contador = 2499999 then
                contador   <= (others => '0');
                estado_led <= not estado_led;
            else
                contador <= contador + 1;
            end if;
        end if;
    end process;

    testigo_led <= estado_led;
end Behavioral;
```

---

# 2. TestComponents (Bancos de Prueba Unitarios)

### `BCDa7Seg_tb.vhd`
```vhdl
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY BCDa7Seg_tb IS
END BCDa7Seg_tb;

ARCHITECTURE behavior OF BCDa7Seg_tb IS

    COMPONENT BCDa7Seg
    PORT(
        bcd_in  : IN  std_logic_vector(3 downto 0);
        seg_out : OUT std_logic_vector(6 downto 0)
    );
    END COMPONENT;

    signal bcd_in  : std_logic_vector(3 downto 0) := "0000";
    signal seg_out : std_logic_vector(6 downto 0);

BEGIN

    uut: BCDa7Seg PORT MAP (
        bcd_in  => bcd_in,
        seg_out => seg_out
    );

    stim_proc: process
    begin
        bcd_in <= "0000"; wait for 100 ns;
        bcd_in <= "0001"; wait for 100 ns;
        bcd_in <= "0010"; wait for 100 ns;
        bcd_in <= "0011"; wait for 100 ns;
        bcd_in <= "0100"; wait for 100 ns;
        bcd_in <= "0101"; wait for 100 ns;
        bcd_in <= "0110"; wait for 100 ns;
        bcd_in <= "0111"; wait for 100 ns;
        bcd_in <= "1000"; wait for 100 ns;
        bcd_in <= "1001"; wait for 100 ns;
        wait;
    end process;

END behavior;
```

---

### `Comparador_tb.vhd`
```vhdl
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY Comparador_tb IS
END Comparador_tb;

ARCHITECTURE behavior OF Comparador_tb IS

    COMPONENT Comparador
    PORT(
        clk        : IN  std_logic;
        cmp_in     : IN  std_logic_vector(3 downto 0);
        cmp_en     : IN  std_logic;
        bcd_actual : IN  std_logic_vector(3 downto 0);
        cmp_out    : OUT std_logic
    );
    END COMPONENT;

    signal clk        : std_logic := '0';
    signal cmp_in     : std_logic_vector(3 downto 0) := (others => '0');
    signal cmp_en     : std_logic := '0';
    signal bcd_actual : std_logic_vector(3 downto 0) := (others => '0');
    signal cmp_out    : std_logic;

    constant clk_period : time := 10 ns;

BEGIN

    uut: Comparador PORT MAP (
        clk        => clk,
        cmp_in     => cmp_in,
        cmp_en     => cmp_en,
        bcd_actual => bcd_actual,
        cmp_out    => cmp_out
    );

    clk_process: process
    begin
        while true loop
            clk <= '0';
            wait for clk_period / 2;
            clk <= '1';
            wait for clk_period / 2;
        end loop;
    end process;

    stim_proc: process
    begin
        wait for 20 ns;

        cmp_in     <= "0101"; -- 5
        bcd_actual <= "0101"; -- 5
        cmp_en     <= '1';
        wait for clk_period;

        cmp_in     <= "0101"; -- 5
        bcd_actual <= "0011"; -- 3
        cmp_en     <= '1';
        wait for clk_period;

        cmp_en     <= '0';
        wait;
    end process;

END behavior;
```

---

### `ContBCD_tb.vhd`
```vhdl
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY ContBCD_tb IS
END ContBCD_tb;

ARCHITECTURE test OF ContBCD_tb IS

    signal gps_tb : std_logic := '0';
    signal clk_tb : std_logic := '0';
    signal bcd_tb : std_logic_vector(3 downto 0);

    constant sim_time   : time := 2000 ms;
    constant gps_period : time := 100 ms;
    constant clk_period : time := 10 ns;

    COMPONENT ContBCD
        Port (
            gps    : in  std_logic;
            clk_in : in  std_logic;
            bcd    : out std_logic_vector(3 downto 0)
        );
    END COMPONENT;

BEGIN

    UUT: ContBCD
        port map (
            gps    => gps_tb,
            clk_in => clk_tb,
            bcd    => bcd_tb
        );

    clk_process : process
    begin
        while now < sim_time loop
            clk_tb <= '0';
            wait for clk_period / 2;
            clk_tb <= '1';
            wait for clk_period / 2;
        end loop;
        wait;
    end process;

    gps_process : process
    begin
        while now < sim_time loop
            gps_tb <= '0';
            wait for gps_period - clk_period;
            gps_tb <= '1';
            wait for clk_period;
        end loop;
        wait;
    end process;

END test;
```

---

### `DetectorOverflow_tb.vhd`
```vhdl
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY DetectorOverflow_tb IS
END DetectorOverflow_tb;

ARCHITECTURE behavior OF DetectorOverflow_tb IS

    COMPONENT DetectorOverflow
    PORT(
        clk          : IN  std_logic;
        bcd_actual   : IN  std_logic_vector(3 downto 0);
        cuenta_final : OUT std_logic
    );
    END COMPONENT;

    signal clk          : std_logic := '0';
    signal bcd_actual   : std_logic_vector(3 downto 0) := (others => '0');
    signal cuenta_final : std_logic;

    constant clk_period : time := 10 ns;

BEGIN

    uut: DetectorOverflow PORT MAP (
        clk          => clk,
        bcd_actual   => bcd_actual,
        cuenta_final => cuenta_final
    );

    clk_process : process
    beginAquí tienes los códigos VHDL (`.vhd`) organizados para cada sección.

---

# 1. TComponentes

### `Acondicionador.vhd`
```vhdl
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Acondicionador is
    Port ( 
        clk_in        : in  std_logic;
        PPS_en        : in  std_logic;
        pulso_digital : out std_logic
    );
end Acondicionador;

architecture comportamiento of Acondicionador is
    signal pulso_reg       : std_logic := '0';
    signal pulso_anterior  : std_logic := '0';
    signal pulso_detectado : std_logic := '0';
begin
    process(clk_in)
    begin
        if rising_edge(clk_in) then
            pulso_anterior <= pulso_reg;
            pulso_reg      <= PPS_en;

            if (pulso_reg = '1' and pulso_anterior = '0') then
                pulso_detectado <= '1';
            else
                pulso_detectado <= '0';
            end if;
        end if;
    end process;

    pulso_digital <= pulso_detectado;
end comportamiento;
```

---

### `BCDa7Seg.vhd`
```vhdl
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity BCDa7Seg is
    Port ( 
        bcd_in  : in  std_logic_vector(3 downto 0);
        seg_out : out std_logic_vector(6 downto 0)
    );
end BCDa7Seg;

architecture Behavioral of BCDa7Seg is
begin
    process(bcd_in)
    begin
        case bcd_in is
            when "0000" => seg_out <= "1111110"; -- 0
            when "0001" => seg_out <= "0110000"; -- 1
            when "0010" => seg_out <= "1101101"; -- 2
            when "0011" => seg_out <= "1111001"; -- 3
            when "0100" => seg_out <= "0110011"; -- 4
            when "0101" => seg_out <= "1011011"; -- 5
            when "0110" => seg_out <= "0011111"; -- 6
            when "0111" => seg_out <= "1110000"; -- 7
            when "1000" => seg_out <= "1111111"; -- 8
            when "1001" => seg_out <= "1110011"; -- 9
            when others => seg_out <= "0000000";
        end case;
    end process;
end Behavioral;
```

---

### `ContBCD.vhd`
```vhdl
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity ContBCD is
    Port ( 
        gps    : in  std_logic;
        clk_in : in  std_logic;
        bcd    : out std_logic_vector(3 downto 0)
    );
end ContBCD;

architecture Behavioral of ContBCD is
    signal count : unsigned(3 downto 0) := (others => '0');
begin
    process(clk_in)
    begin
        if rising_edge(clk_in) then
            if gps = '1' then
                if count = 9 then
                    count <= (others => '0');
                else
                    count <= count + 1;
                end if;
            end if;
        end if;
    end process;

    bcd <= std_logic_vector(count);
end Behavioral;
```

---

### `DetectorOverflow.vhd`
```vhdl
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity DetectorOverflow is
    Port ( 
        clk          : in  std_logic;
        bcd_actual   : in  std_logic_vector(3 downto 0);
        cuenta_final : out std_logic
    );
end DetectorOverflow;

architecture Behavioral of DetectorOverflow is
    signal bcd_anterior : std_logic_vector(3 downto 0) := "0000";
begin
    process(clk)
    begin
        if rising_edge(clk) then
            if (bcd_anterior = "1001" and bcd_actual = "0000") then
                cuenta_final <= '1';
            else
                cuenta_final <= '0';
            end if;
            bcd_anterior <= bcd_actual;
        end if;
    end process;
end Behavioral;
```

---

### `SalidaPatron.vhd`
```vhdl
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity SalidaPatron is
    Port ( 
        gps           : in  std_logic;
        clk           : in  std_logic;
        salida_patron : out std_logic
    );
end SalidaPatron;

architecture Behavioral of SalidaPatron is
    signal estado : std_logic := '1';
begin
    process(clk)
    begin
        if rising_edge(clk) then
            if gps = '1' then
                estado <= not estado;
            end if;
        end if;
    end process;

    salida_patron <= estado;
end Behavioral;
```

---

### `Comparador.vhd`
```vhdl
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Comparador is
    Port ( 
        clk        : in  std_logic;
        cmp_in     : in  std_logic_vector(3 downto 0);
        cmp_en     : in  std_logic;
        bcd_actual : in  std_logic_vector(3 downto 0);
        cmp_out    : out std_logic
    );
end Comparador;

architecture Behavioral of Comparador is
    signal cmp_reg              : std_logic := '0';
    signal cmp_val_reg          : std_logic_vector(3 downto 0) := "0000";
    signal invertido_este_ciclo : std_logic := '0';
    signal bcd_anterior         : std_logic_vector(3 downto 0) := "0000";
begin
    process(clk)
    begin
        if rising_edge(clk) then
            if cmp_en = '1' then
                cmp_val_reg <= cmp_in;
            end if;

            if bcd_anterior = "1001" and bcd_actual = "0000" then
                invertido_este_ciclo <= '0';
            end if;

            bcd_anterior <= bcd_actual;

            if (cmp_en = '1' or cmp_val_reg = bcd_actual) then
                if (cmp_in = bcd_actual or cmp_val_reg = bcd_actual) and (invertido_este_ciclo = '0') then
                    cmp_reg <= not cmp_reg;
                    invertido_este_ciclo <= '1';
                end if;
            end if;
        end if;
    end process;

    cmp_out <= cmp_reg;
end Behavioral;
```

---

### `Testigo_Out.vhd`
```vhdl
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Testigo_Out is
    Port ( 
        clk         : in  std_logic;
        testigo_led : out std_logic
    );
end Testigo_Out;

architecture Behavioral of Testigo_Out is
    signal contador   : unsigned(21 downto 0) := (others => '0');
    signal estado_led : std_logic := '0';
begin
    process(clk)
    begin
        if rising_edge(clk) then
            if contador = 2499999 then
                contador   <= (others => '0');
                estado_led <=Todos los archivos **`.vhd`** están disponibles en tu panel de **Studio**. A continuación se presenta cada código organizado por sección de manera concisa:

---

# 1. TComponentes

### `Acondicionador.vhd`
```vhdl
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Acondicionador is
    Port ( 
        clk_in        : in  std_logic;
        PPS_en        : in  std_logic;
        pulso_digital : out std_logic
    );
end Acondicionador;

architecture comportamiento of Acondicionador is
    signal pulso_reg       : std_logic := '0';
    signal pulso_anterior  : std_logic := '0';
    signal pulso_detectado : std_logic := '0';
begin
    process(clk_in)
    begin
        if rising_edge(clk_in) then
            pulso_anterior <= pulso_reg;
            pulso_reg      <= PPS_en;
            if (pulso_reg = '1' and pulso_anterior = '0') then
                pulso_detectado <= '1';
            else
                pulso_detectado <= '0';
            end if;
        end if;
    end process;
    pulso_digital <= pulso_detectado;
end comportamiento;
```

### `BCDa7Seg.vhd`
```vhdl
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity BCDa7Seg is
    Port ( 
        bcd_in  : in  std_logic_vector(3 downto 0);
        seg_out : out std_logic_vector(6 downto 0)
    );
end BCDa7Seg;

architecture Behavioral of BCDa7Seg is
begin
    process(bcd_in)
    begin
        case bcd_in is
            when "0000" => seg_out <= "1111110"; -- 0
            when "0001" => seg_out <= "0110000"; -- 1
            when "0010" => seg_out <= "1101101"; -- 2
            when "0011" => seg_out <= "1111001"; -- 3
            when "0100" => seg_out <= "0110011"; -- 4
            when "0101" => seg_out <= "1011011"; -- 5
            when "0110" => seg_out <= "0011111"; -- 6
            when "0111" => seg_out <= "1110000"; -- 7
            when "1000" => seg_out <= "1111111"; -- 8
            when "1001" => seg_out <= "1110011"; -- 9
            when others => seg_out <= "0000000";
        end case;
    end process;
end Behavioral;
```

### `ContBCD.vhd`
```vhdl
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity ContBCD is
    Port ( 
        gps    : in  std_logic;
        clk_in : in  std_logic;
        bcd    : out std_logic_vector(3 downto 0)
    );
end ContBCD;

architecture Behavioral of ContBCD is
    signal count : unsigned(3 downto 0) := (others => '0');
begin
    process(clk_in)
    begin
        if rising_edge(clk_in) then
            if gps = '1' then
                if count = 9 then
                    count <= (others => '0');
                else
                    count <= count + 1;
                end if;
            end if;
        end if;
    end process;
    bcd <= std_logic_vector(count);
end Behavioral;
```

### `DetectorOverflow.vhd`
```vhdl
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity DetectorOverflow is
    Port ( 
        clk          : in  std_logic;
        bcd_actual   : in  std_logic_vector(3 downto 0);
        cuenta_final : out std_logic
    );
end DetectorOverflow;

architecture Behavioral of DetectorOverflow is
    signal bcd_anterior : std_logic_vector(3 downto 0) := "0000";
begin
    process(clk)
    begin
        if rising_edge(clk) then
            if (bcd_anterior = "1001" and bcd_actual = "0000") then
                cuenta_final <= '1';
            else
                cuenta_final <= '0';
            end if;
            bcd_anterior <= bcd_actual;
        end if;
    end process;
end Behavioral;
```

### `SalidaPatron.vhd`
```vhdl
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity SalidaPatron is
    Port ( 
        gps           : in  std_logic;
        clk           : in  std_logic;
        salida_patron : out std_logic
    );
end SalidaPatron;

architecture Behavioral of SalidaPatron is
    signal estado : std_logic := '1';
begin
    process(clk)
    begin
        if rising_edge(clk) then
            if gps = '1' then
                estado <= not estado;
            end if;
        end if;
    end process;
    salida_patron <= estado;
end Behavioral;
```

### `Comparador.vhd`
```vhdl
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Comparador is
    Port ( 
        clk        : in  std_logic;
        cmp_in     : in  std_logic_vector(3 downto 0);
        cmp_en     : in  std_logic;
        bcd_actual : in  std_logic_vector(3 downto 0);
        cmp_out    : out std_logic
    );
end Comparador;

architecture Behavioral of Comparador is
    signal cmp_reg              : std_logic := '0';
    signal cmp_val_reg          : std_logic_vector(3 downto 0) := "0000";
    signal invertido_este_ciclo : std_logic := '0';
    signal bcd_anterior         : std_logic_vector(3 downto 0) := "0000";
begin
    process(clk)
    begin
        if rising_edge(clk) then
            if cmp_en = '1' then
                cmp_val_reg <= cmp_in;
            end if;

            if bcd_anterior = "1001" and bcd_actual = "0000" then
                invertido_este_ciclo <= '0';
            end if;

            bcd_anterior <= bcd_actual;

            if (cmp_en = '1' or cmp_val_reg = bcd_actual) then
                if (cmp_in = bcd_actual or cmp_val_reg = bcd_actual) and (invertido_este_ciclo = '0') then
                    cmp_reg <= not cmp_reg;
                    invertido_este_ciclo <= '1';
                end if;
            end if;
        end if;
    end process;
    cmp_out <= cmp_reg;
end Behavioral;
```

### `Testigo_Out.vhd`
```vhdl
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Testigo_Out is
    Port ( 
        clk         : in  std_logic;
        testigo_led : out std_logic
    );
end Testigo_Out;

architecture Behavioral of Testigo_Out is
    signal contador   : unsigned(21 downto 0) := (others => '0');
    signal estado_led : std_logic := '0';
begin
    process(clk)
    begin
        if rising_edge(clk) then
            if contador = 2499999 then
                contador   <= (others => '0
```

### 1. TComponentes (Componentes Individuales)

1. **`Acondicionador.vhd`**: Sincroniza la señal del GPS (1PPS) con el reloj del sistema y detecta el flanco ascendente emitiendo un pulso de 1 ciclo.
2. **`BCDa7Seg.vhd`**: Decodificador combinacional BCD a 7 segmentos (`case-when`).
3. **`ContBCD.vhd`**: Contador BCD incremental de 0 a 9 que se habilita con el pulso del GPS.
4. **`DetectorOverflow.vhd`**: Detecta la transición del contador de 9 a 0 y genera un pulso de 1 ciclo en `cuenta_final`.
5. **`SalidaPatron.vhd`**: Conmuta el estado de `salida_patron` con cada pulso de GPS (onda cuadrada con período de 2 segundos).
6. **`Comparador.vhd`**: Registra la consigna de 4 bits (`cmp_in`) al recibir `cmp_en = '1'` e invierte `cmp_out` al coincidir con la cuenta actual.
7. **`Testigo_Out.vhd`**: Divisor de reloj que conmuta `testigo_led` cada 250 ms (frecuencia de 2 Hz).

---

### 2. TestComponents (Bancos de Prueba Unitarios)

1. **`BCDa7Seg_tb.vhd`**: Estimula la entrada BCD de 0 a 9 para comprobar la conversión a los 7 segmentos.
2. **`ContBCD_tb.vhd`**: Genera pulsos de reloj y simula la llegada de impulsos GPS para validar el conteo cíclico.
3. **`DetectorOverflow_tb.vhd`**: Evalúa el comportamiento del pulso de desbordamiento en la transición `1001` (9) \\(\rightarrow\\) `0000` (0).
4. **`SalidaPatron_tb.vhd`**: Verifica la conmutación de estado ante flancos del GPS.
5. **`Comparador_tb.vhd`**: Inyecta habilitaciones `cmp_en` y valores `cmp_in` para verificar la conmutación de `cmp_out`.
6. **`Testigo_Out_tb.vhd`**: Simula el reloj del sistema para comprobar la oscilación del LED testigo.

---

### 3. TopModule (Módulo Superior e Integración)

1. **`TP_CuentaPPS.vhd`** (o `PF_SS2.vhd`):
   * Instancia e interconecta de forma jerárquica los componentes `U0` a `U6`.
   * Conecta las señales `gps`, `clk_in`, `cmp_in`, `cmp_en`, `ss_out`, `cuenta_final`, `salida_patron`, `cmp_out` y `testigo_led`.
2. **`TP_CuentaPPS_tb.vhd`** (o `PF_SS2_tb.vhd`):
   * Banco de pruebas integral que simula el sistema completo en ISim / ISE 14.7.


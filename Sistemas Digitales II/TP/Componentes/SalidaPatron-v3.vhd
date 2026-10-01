library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Generador de Salida Patrón Parametrizado con Reset Síncrono
entity SalidaPatron is
    generic (
        INIT_STATE : std_logic := '0'
    );
    Port ( 
        gps           : in  std_logic;
        clk           : in  std_logic;
        rst           : in  std_logic;                    -- Reset síncrono ('1' activo)
        salida_patron : out std_logic
    );
end SalidaPatron;

architecture Behavioral of SalidaPatron is
    signal estado : std_logic := INIT_STATE;
begin
    process(clk)
    begin
        if rising_edge(clk) then
            if rst = '1' then
                estado <= INIT_STATE;
            else
                if gps = '1' then
                    estado <= not estado;
                end if;
            end if;
        end if;
    end process;

    salida_patron <= estado;
end Behavioral;

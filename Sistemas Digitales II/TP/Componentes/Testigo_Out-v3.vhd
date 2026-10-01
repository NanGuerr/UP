library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

-- Divisor LED Testigo Parametrizado con Reset Síncrono
entity Testigo_Out is
    generic (
        COUNT_MAX   : integer := 24999999;
        COUNTER_BITS: integer := 25
    );
    Port ( 
        clk         : in  std_logic;
        rst         : in  std_logic;                    -- Reset síncrono ('1' activo)
        testigo_led : out std_logic
    );
end Testigo_Out;

architecture Behavioral of Testigo_Out is
    signal contador   : unsigned(COUNTER_BITS-1 downto 0) := (others => '0');
    signal estado_led : std_logic := '0';
begin
    process(clk)
    begin
        if rising_edge(clk) then
            if rst = '1' then
                contador   <= (others => '0');
                estado_led <= '0';
            else
                if contador = to_unsigned(COUNT_MAX, COUNTER_BITS) then
                    contador   <= (others => '0');
                    estado_led <= not estado_led;
                else
                    contador <= contador + 1;
                end if;
            end if;
        end if;
    end process;

    testigo_led <= estado_led;
end Behavioral;

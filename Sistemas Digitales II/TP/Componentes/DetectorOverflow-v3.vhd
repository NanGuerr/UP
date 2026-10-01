library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

-- Detector de Overflow Parametrizado con Reset Síncrono
entity DetectorOverflow is
    generic (
        BIT_WIDTH : integer := 4;
        MAX_COUNT : integer := 9
    );
    Port ( 
        clk          : in  std_logic;
        rst          : in  std_logic;                    -- Reset síncrono ('1' activo)
        bcd_actual   : in  std_logic_vector(BIT_WIDTH-1 downto 0);
        cuenta_final : out std_logic
    );
end DetectorOverflow;

architecture Behavioral of DetectorOverflow is
    signal bcd_anterior : std_logic_vector(BIT_WIDTH-1 downto 0) := (others => '0');
    constant MAX_VAL_VEC : std_logic_vector(BIT_WIDTH-1 downto 0) := std_logic_vector(to_unsigned(MAX_COUNT, BIT_WIDTH));
    constant ZERO_VAL_VEC: std_logic_vector(BIT_WIDTH-1 downto 0) := (others => '0');
begin
    process(clk)
    begin
        if rising_edge(clk) then
            if rst = '1' then
                bcd_anterior <= (others => '0');
                cuenta_final <= '0';
            else
                if (bcd_anterior = MAX_VAL_VEC and bcd_actual = ZERO_VAL_VEC) then
                    cuenta_final <= '1';
                else
                    cuenta_final <= '0';
                end if;
                bcd_anterior <= bcd_actual;
            end if;
        end if;
    end process;
end Behavioral;

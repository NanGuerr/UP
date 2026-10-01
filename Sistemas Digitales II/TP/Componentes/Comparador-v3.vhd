library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

-- Comparador de Consigna Parametrizado con Reset Síncrono
entity Comparador is
    generic (
        BIT_WIDTH : integer := 4;
        MAX_COUNT : integer := 9
    );
    Port ( 
        clk        : in  std_logic;
        rst        : in  std_logic;                    -- Reset síncrono ('1' activo)
        cmp_in     : in  std_logic_vector(BIT_WIDTH-1 downto 0);
        cmp_en     : in  std_logic;
        bcd_actual : in  std_logic_vector(BIT_WIDTH-1 downto 0);
        cmp_out    : out std_logic
    );
end Comparador;

architecture Behavioral of Comparador is
    signal cmp_reg              : std_logic := '0';
    signal cmp_val_reg          : std_logic_vector(BIT_WIDTH-1 downto 0) := (others => '0');
    signal invertido_este_ciclo : std_logic := '0';
    signal bcd_anterior         : std_logic_vector(BIT_WIDTH-1 downto 0) := (others => '0');
    
    constant MAX_VAL_VEC : std_logic_vector(BIT_WIDTH-1 downto 0) := std_logic_vector(to_unsigned(MAX_COUNT, BIT_WIDTH));
    constant ZERO_VAL_VEC: std_logic_vector(BIT_WIDTH-1 downto 0) := (others => '0');
begin
    process(clk)
    begin
        if rising_edge(clk) then
            if rst = '1' then
                cmp_reg              <= '0';
                cmp_val_reg          <= (others => '0');
                invertido_este_ciclo <= '0';
                bcd_anterior         <= (others => '0');
            else
                if cmp_en = '1' then
                    cmp_val_reg <= cmp_in;
                end if;

                if bcd_anterior = MAX_VAL_VEC and bcd_actual = ZERO_VAL_VEC then
                    invertido_este_ciclo <= '0';
                end if;

                bcd_anterior <= bcd_actual;

                if (cmp_en = '1' or cmp_val_reg = bcd_actual) then
                    if (cmp_in = bcd_actual or cmp_val_reg = bcd_actual) and (invertido_este_ciclo = '0') then
                        cmp_reg              <= not cmp_reg;
                        invertido_este_ciclo <= '1';
                    end if;
                end if;
            end if;
        end if;
    end process;

    cmp_out <= cmp_reg;
end Behavioral;

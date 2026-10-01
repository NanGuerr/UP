library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity ContBCD_tb is
end ContBCD_tb;

architecture behavior of ContBCD_tb is
    component ContBCD
        generic ( BIT_WIDTH : integer := 4; MAX_COUNT : integer := 9 );
        port (
            gps    : in  std_logic;
            clk_in : in  std_logic;
            rst    : in  std_logic;
            bcd    : out std_logic_vector(3 downto 0)
        );
    end component;

    signal gps    : std_logic := '0';
    signal clk_in : std_logic := '0';
    signal rst    : std_logic := '1';
    signal bcd    : std_logic_vector(3 downto 0);

    constant clk_period : time := 10 ns;

begin
    uut: ContBCD
        generic map ( BIT_WIDTH => 4, MAX_COUNT => 9 )
        port map (
            gps    => gps,
            clk_in => clk_in,
            rst    => rst,
            bcd    => bcd
        );

    clk_process: process
    begin
        while true loop
            clk_in <= '0'; wait for clk_period / 2;
            clk_in <= '1'; wait for clk_period / 2;
        end loop;
    end process;

    stim_proc: process
    begin
        -- Reset inicial
        rst <= '1';
        wait for clk_period * 2;
        assert bcd = "0000" report "ERROR: ContBCD no inició en 0000" severity failure;

        rst <= '0';
        wait for clk_period;

        -- Probar secuencia 0 -> 9 y rollover a 0
        for i in 0 to 9 loop
            assert unsigned(bcd) = i report "ERROR: Valor BCD incorrecto en paso de conteo" severity failure;
            gps <= '1';
            wait for clk_period;
            gps <= '0';
            wait for clk_period * 2;
        end loop;

        -- Tras la 10a pulsación, el contador debe hacer rollover a 0
        assert bcd = "0000" report "ERROR: Overflow BCD no hizo rollover a 0000" severity failure;

        -- Probar que sin gps=1 el contador retiene su valor
        wait for clk_period * 3;
        assert bcd = "0000" report "ERROR: El contador cambió sin habilitación de GPS" severity failure;

        assert false report "TEST PASSED: ContBCD_tb verificado automáticamente con éxito." severity note;
        wait;
    end process;
end behavior;

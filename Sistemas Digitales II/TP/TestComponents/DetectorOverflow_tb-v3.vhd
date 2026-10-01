library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity DetectorOverflow_tb is
end DetectorOverflow_tb;

architecture behavior of DetectorOverflow_tb is
    component DetectorOverflow
        generic ( BIT_WIDTH : integer := 4; MAX_COUNT : integer := 9 );
        port (
            clk          : in  std_logic;
            rst          : in  std_logic;
            bcd_actual   : in  std_logic_vector(3 downto 0);
            cuenta_final : out std_logic
        );
    end component;

    signal clk          : std_logic := '0';
    signal rst          : std_logic := '1';
    signal bcd_actual   : std_logic_vector(3 downto 0) := "0000";
    signal cuenta_final : std_logic;

    constant clk_period : time := 10 ns;

begin
    uut: DetectorOverflow
        generic map ( BIT_WIDTH => 4, MAX_COUNT => 9 )
        port map (
            clk          => clk,
            rst          => rst,
            bcd_actual   => bcd_actual,
            cuenta_final => cuenta_final
        );

    clk_process: process
    begin
        while true loop
            clk <= '0'; wait for clk_period / 2;
            clk <= '1'; wait for clk_period / 2;
        end loop;
    end process;

    stim_proc: process
    begin
        rst <= '1';
        wait for clk_period * 2;
        assert cuenta_final = '0' report "ERROR: cuenta_final no es '0' durante reset" severity failure;

        rst <= '0';
        bcd_actual <= "1001"; -- 9
        wait for clk_period;

        bcd_actual <= "0000"; -- Transición de 9 a 0 (Overflow)
        wait for clk_period;
        assert cuenta_final = '1' report "ERROR: No se detectó el desbordamiento (9 -> 0)" severity failure;

        bcd_actual <= "0001"; -- Sig. cuenta
        wait for clk_period;
        assert cuenta_final = '0' report "ERROR: cuenta_final no retornó a '0' tras 1 ciclo" severity failure;

        assert false report "TEST PASSED: DetectorOverflow_tb verificado automáticamente con éxito." severity note;
        wait;
    end process;
end behavior;

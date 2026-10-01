library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Testigo_Out_tb is
end Testigo_Out_tb;

architecture behavior of Testigo_Out_tb is
    component Testigo_Out
        generic ( COUNT_MAX : integer := 5; COUNTER_BITS : integer := 4 );
        port (
            clk         : in  std_logic;
            rst         : in  std_logic;
            testigo_led : out std_logic
        );
    end component;

    signal clk         : std_logic := '0';
    signal rst         : std_logic := '1';
    signal testigo_led : std_logic;

    constant clk_period : time := 10 ns;

begin
    -- Usamos COUNT_MAX = 5 para prueba rápida en testbench
    uut: Testigo_Out
        generic map ( COUNT_MAX => 5, COUNTER_BITS => 4 )
        port map (
            clk         => clk,
            rst         => rst,
            testigo_led => testigo_led
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
        assert testigo_led = '0' report "ERROR: testigo_led no es '0' en reset" severity failure;

        rst <= '0';
        wait for clk_period * 6; -- 6 ciclos para conmutar
        assert testigo_led = '1' report "ERROR: testigo_led no conmutó a '1' tras alcanzar MAX_COUNT" severity failure;

        wait for clk_period * 6;
        assert testigo_led = '0' report "ERROR: testigo_led no volvió a '0'" severity failure;

        assert false report "TEST PASSED: Testigo_Out_tb verificado automáticamente con éxito." severity note;
        wait;
    end process;
end behavior;

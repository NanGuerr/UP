library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity SalidaPatron_tb is
end SalidaPatron_tb;

architecture behavior of SalidaPatron_tb is
    component SalidaPatron
        generic ( INIT_STATE : std_logic := '0' );
        port (
            gps           : in  std_logic;
            clk           : in  std_logic;
            rst           : in  std_logic;
            salida_patron : out std_logic
        );
    end component;

    signal gps           : std_logic := '0';
    signal clk           : std_logic := '0';
    signal rst           : std_logic := '1';
    signal salida_patron : std_logic;

    constant clk_period : time := 10 ns;

begin
    uut: SalidaPatron
        generic map ( INIT_STATE => '0' )
        port map (
            gps           => gps,
            clk           => clk,
            rst           => rst,
            salida_patron => salida_patron
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
        assert salida_patron = '0' report "ERROR: salida_patron no es '0' en reset" severity failure;

        rst <= '0';
        wait for clk_period;

        -- 1er Pulso GPS -> conmuta a '1'
        gps <= '1'; wait for clk_period;
        gps <= '0'; wait for clk_period;
        assert salida_patron = '1' report "ERROR: salida_patron no basculó a '1'" severity failure;

        -- 2do Pulso GPS -> conmuta a '0'
        gps <= '1'; wait for clk_period;
        gps <= '0'; wait for clk_period;
        assert salida_patron = '0' report "ERROR: salida_patron no basculó a '0'" severity failure;

        assert false report "TEST PASSED: SalidaPatron_tb verificado automáticamente con éxito." severity note;
        wait;
    end process;
end behavior;

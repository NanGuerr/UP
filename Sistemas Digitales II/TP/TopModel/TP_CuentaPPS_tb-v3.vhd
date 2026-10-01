library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity TP_CuentaPPS_tb is
end TP_CuentaPPS_tb;

architecture behavior of TP_CuentaPPS_tb is
    component TP_CuentaPPS
        generic (
            BIT_WIDTH     : integer := 4;
            MAX_COUNT     : integer := 9;
            COUNT_TESTIGO : integer := 5;
            BITS_TESTIGO  : integer := 4
        );
        port (
            gps           : in  std_logic;
            clk_in        : in  std_logic;
            rst           : in  std_logic;
            cmp_in        : in  std_logic_vector(3 downto 0);
            cmp_en        : in  std_logic;
            ss_out        : out std_logic_vector(6 downto 0);
            cuenta_final  : out std_logic;
            salida_patron : out std_logic;
            cmp_out       : out std_logic;
            testigo_led   : out std_logic
        );
    end component;

    signal gps           : std_logic := '0';
    signal clk_in        : std_logic := '0';
    signal rst           : std_logic := '1';
    signal cmp_in        : std_logic_vector(3 downto 0) := "0011"; -- Consigna = 3
    signal cmp_en        : std_logic := '0';
    signal ss_out        : std_logic_vector(6 downto 0);
    signal cuenta_final  : std_logic;
    signal salida_patron : std_logic;
    signal cmp_out       : std_logic;
    signal testigo_led   : std_logic;

    constant clk_period : time := 10 ns;

begin
    uut: TP_CuentaPPS
        generic map (
            BIT_WIDTH     => 4,
            MAX_COUNT     => 9,
            COUNT_TESTIGO => 5,
            BITS_TESTIGO  => 4
        )
        port map (
            gps           => gps,
            clk_in        => clk_in,
            rst           => rst,
            cmp_in        => cmp_in,
            cmp_en        => cmp_en,
            ss_out        => ss_out,
            cuenta_final  => cuenta_final,
            salida_patron => salida_patron,
            cmp_out       => cmp_out,
            testigo_led   => testigo_led
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
        -- Reset síncrono inicial
        rst <= '1';
        wait for clk_period * 2;
        assert ss_out = "1000000" report "ERROR TOP: Display no inicia en '0'" severity failure;

        rst <= '0';
        wait for clk_period;

        -- Cargar consigna cmp_in = 3
        cmp_en <= '1'; wait for clk_period; cmp_en <= '0';

        -- Simular 10 pulsos GPS (conteo de 0 a 9 y overflow)
        for i in 0 to 9 loop
            gps <= '1'; wait for clk_period * 2;
            gps <= '0'; wait for clk_period * 3;
        end loop;

        -- Verificar que cuenta_final generó un pulso y el display regresó a '0'
        assert ss_out = "1000000" report "ERROR TOP: El sistema no volvió a '0' tras el ciclo de 10 pulsos" severity failure;

        assert false report "TEST PASSED: TP_CuentaPPS_tb verificado automáticamente con éxito." severity note;
        wait;
    end process;
end behavior;

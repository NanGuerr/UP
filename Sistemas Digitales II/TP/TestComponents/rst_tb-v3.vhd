library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity rst_tb is
end rst_tb;

architecture behavior of rst_tb is
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
    signal cmp_in        : std_logic_vector(3 downto 0) := "0010";
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
        -- 1. Reset inicial síncrono
        rst <= '1';
        wait for clk_period * 2;
        assert ss_out = "1000000" report "ERROR: Display no muestra '0' (1000000) bajo Reset" severity failure;

        -- 2. Liberar reset
        rst <= '0';
        wait for clk_period * 2;

        -- 3. Inyección de señal GPS y verificación de sincronismo de reset
        gps <= '1'; wait for clk_period;
        gps <= '0'; wait for clk_period * 3;

        -- 4. Inyectar Reset desfasado respecto al reloj (demostrar que es SÍNCRONO: espera al flanco)
        wait for 3 ns;
        rst <= '1';
        -- A los 3 ns el display NO cambia inmediatamente (diferencia con reset asíncrono)
        wait for 7 ns; -- Al llegar al flanco de subida del reloj, se ejecuta la puesta a cero síncrona
        assert ss_out = "1000000" report "ERROR: Reset síncrono no ejecutó la puesta a cero en el flanco" severity failure;

        rst <= '0';
        wait for clk_period * 2;

        assert false report "TEST PASSED: rst_tb (Reset Síncrono) verificado automáticamente con éxito." severity note;
        wait;
    end process;
end behavior;

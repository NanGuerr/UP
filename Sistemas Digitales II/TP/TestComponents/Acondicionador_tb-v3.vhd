library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Acondicionador_tb is
end Acondicionador_tb;

architecture behavior of Acondicionador_tb is
    component Acondicionador
        generic ( SYNC_STAGES : integer := 2 );
        port (
            clk_in        : in  std_logic;
            rst           : in  std_logic;
            PPS_en        : in  std_logic;
            pulso_digital : out std_logic
        );
    end component;

    signal clk_in        : std_logic := '0';
    signal rst          : std_logic := '1'; -- Inicia en Reset ('1')
    signal PPS_en        : std_logic := '0';
    signal pulso_digital : std_logic;

    constant clk_period : time := 10 ns;

begin
    uut: Acondicionador
        generic map ( SYNC_STAGES => 2 )
        port map (
            clk_in        => clk_in,
            rst           => rst,
            PPS_en        => PPS_en,
            pulso_digital => pulso_digital
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
        -- Estado inicial de Reset Síncrono
        rst <= '1';
        wait for clk_period * 2;
        assert pulso_digital = '0' report "ERROR: Salida no es '0' en Reset Síncrono" severity failure;

        -- Liberar Reset
        rst <= '0';
        wait for clk_period;
        assert pulso_digital = '0' report "ERROR: Salida espontánea tras liberar reset" severity failure;

        -- Generar entrada PPS_en = '1'
        PPS_en <= '1';
        wait for clk_period;
        -- Primer ciclo: pulso_reg recibe '1'
        wait for clk_period;
        -- Segundo ciclo: flanco detectado -> pulso_digital = '1'
        assert pulso_digital = '1' report "ERROR: No se detectó el pulso de flanco ascendente" severity failure;

        wait for clk_period;
        -- Siguiente ciclo: pulso_digital debe volver a '0'
        assert pulso_digital = '0' report "ERROR: El pulso generado no duró exactamente 1 ciclo" severity failure;

        PPS_en <= '0';
        wait for clk_period * 2;

        -- Prueba de Reset Síncrono en medio de operación
        PPS_en <= '1';
        wait for clk_period;
        rst <= '1';
        wait for clk_period;
        assert pulso_digital = '0' report "ERROR: Reset síncrono no borró la salida en flanco" severity failure;

        rst <= '0';
        PPS_en <= '0';
        wait for clk_period * 2;

        assert false report "TEST PASSED: Acondicionador_tb verificado automáticamente con éxito." severity note;
        wait;
    end process;
end behavior;

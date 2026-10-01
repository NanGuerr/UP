library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Comparador_tb is
end Comparador_tb;

architecture behavior of Comparador_tb is
    component Comparador
        generic ( BIT_WIDTH : integer := 4; MAX_COUNT : integer := 9 );
        port (
            clk        : in  std_logic;
            rst        : in  std_logic;
            cmp_in     : in  std_logic_vector(3 downto 0);
            cmp_en     : in  std_logic;
            bcd_actual : in  std_logic_vector(3 downto 0);
            cmp_out    : out std_logic
        );
    end component;

    signal clk        : std_logic := '0';
    signal rst        : std_logic := '1';
    signal cmp_in     : std_logic_vector(3 downto 0) := "0000";
    signal cmp_en     : std_logic := '0';
    signal bcd_actual : std_logic_vector(3 downto 0) := "0000";
    signal cmp_out    : std_logic;

    constant clk_period : time := 10 ns;

begin
    uut: Comparador
        generic map ( BIT_WIDTH => 4, MAX_COUNT => 9 )
        port map (
            clk        => clk,
            rst        => rst,
            cmp_in     => cmp_in,
            cmp_en     => cmp_en,
            bcd_actual => bcd_actual,
            cmp_out    => cmp_out
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
        assert cmp_out = '0' report "ERROR: cmp_out no es '0' en reset" severity failure;

        rst <= '0';
        -- Cargar consigna = 3 ("0011")
        cmp_in <= "0011"; cmp_en <= '1';
        wait for clk_period; cmp_en <= '0';

        -- Probar simulación de ciclo BCD 0->9
        bcd_actual <= "0000"; wait for clk_period;
        bcd_actual <= "0001"; wait for clk_period;
        bcd_actual <= "0010"; wait for clk_period;
        bcd_actual <= "0011"; wait for clk_period; -- Coincidencia!
        assert cmp_out = '1' report "ERROR: cmp_out no invirtió al alcanzar la coincidencia (3)" severity failure;

        bcd_actual <= "0100"; wait for clk_period;
        assert cmp_out = '1' report "ERROR: cmp_out debe retener su estado durante el resto del ciclo" severity failure;

        bcd_actual <= "1001"; wait for clk_period;
        bcd_actual <= "0000"; wait for clk_period; -- Rollover de ciclo limpia bandera

        assert false report "TEST PASSED: Comparador_tb verificado automáticamente con éxito." severity note;
        wait;
    end process;
end behavior;

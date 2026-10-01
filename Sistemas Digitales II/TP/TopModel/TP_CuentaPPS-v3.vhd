library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Top Module Jerárquico Parametrizado con Reset Síncrono (rst)
entity TP_CuentaPPS is
    generic (
        BIT_WIDTH     : integer := 4;
        MAX_COUNT     : integer := 9;
        COUNT_TESTIGO : integer := 24999999;
        BITS_TESTIGO  : integer := 25
    );
    Port ( 
        gps           : in  std_logic;                    -- Entrada 1PPS
        clk_in        : in  std_logic;                    -- Reloj 100 MHz
        rst           : in  std_logic;                    -- Reset síncrono ('1' activo)
        cmp_in        : in  std_logic_vector(BIT_WIDTH-1 downto 0);
        cmp_en        : in  std_logic;
        ss_out        : out std_logic_vector(6 downto 0);
        cuenta_final  : out std_logic;
        salida_patron : out std_logic;
        cmp_out       : out std_logic;
        testigo_led   : out std_logic
    );
end TP_CuentaPPS;

architecture Behavioral of TP_CuentaPPS is

    component Acondicionador
        generic (
            SYNC_STAGES : integer := 2
        );
        Port ( 
            clk_in        : in  std_logic;
            rst           : in  std_logic;
            PPS_en        : in  std_logic;
            pulso_digital : out std_logic
        );
    end component;

    component ContBCD
        generic (
            BIT_WIDTH : integer := 4;
            MAX_COUNT : integer := 9
        );
        Port ( 
            gps    : in  std_logic;
            clk_in : in  std_logic;
            rst    : in  std_logic;
            bcd    : out std_logic_vector(BIT_WIDTH-1 downto 0)
        );
    end component;

    component BCDa7Seg
        generic (
            INPUT_WIDTH  : integer := 4;
            OUTPUT_WIDTH : integer := 7
        );
        Port ( 
            bcd_in  : in  std_logic_vector(INPUT_WIDTH-1 downto 0);
            seg_out : out std_logic_vector(OUTPUT_WIDTH-1 downto 0)
        );
    end component;

    component DetectorOverflow
        generic (
            BIT_WIDTH : integer := 4;
            MAX_COUNT : integer := 9
        );
        Port ( 
            clk          : in  std_logic;
            rst          : in  std_logic;
            bcd_actual   : in  std_logic_vector(BIT_WIDTH-1 downto 0);
            cuenta_final : out std_logic
        );
    end component;

    component SalidaPatron
        generic (
            INIT_STATE : std_logic := '0'
        );
        Port ( 
            gps           : in  std_logic;
            clk           : in  std_logic;
            rst           : in  std_logic;
            salida_patron : out std_logic
        );
    end component;

    component Comparador
        generic (
            BIT_WIDTH : integer := 4;
            MAX_COUNT : integer := 9
        );
        Port ( 
            clk        : in  std_logic;
            rst        : in  std_logic;
            cmp_in     : in  std_logic_vector(BIT_WIDTH-1 downto 0);
            cmp_en     : in  std_logic;
            bcd_actual : in  std_logic_vector(BIT_WIDTH-1 downto 0);
            cmp_out    : out std_logic
        );
    end component;

    component Testigo_Out
        generic (
            COUNT_MAX   : integer := 24999999;
            COUNTER_BITS: integer := 25
        );
        Port ( 
            clk         : in  std_logic;
            rst         : in  std_logic;
            testigo_led : out std_logic
        );
    end component;

    -- Señales internas
    signal gps_acondicionado : std_logic;
    signal bcd_out           : std_logic_vector(BIT_WIDTH-1 downto 0);
    signal cuenta_final_sig  : std_logic;
    signal salidapatron_sig  : std_logic;
    signal cmp_out_sig       : std_logic;
    signal testigo_led_sig   : std_logic;

begin

    U0: Acondicionador
        generic map ( SYNC_STAGES => 2 )
        port map (
            clk_in        => clk_in,
            rst           => rst,
            PPS_en        => gps,
            pulso_digital => gps_acondicionado
        );

    U1: ContBCD
        generic map ( BIT_WIDTH => BIT_WIDTH, MAX_COUNT => MAX_COUNT )
        port map (
            gps    => gps_acondicionado,
            clk_in => clk_in,
            rst    => rst,
            bcd    => bcd_out
        );

    U2: BCDa7Seg
        generic map ( INPUT_WIDTH => BIT_WIDTH, OUTPUT_WIDTH => 7 )
        port map (
            bcd_in  => bcd_out,
            seg_out => ss_out
        );

    U3: DetectorOverflow
        generic map ( BIT_WIDTH => BIT_WIDTH, MAX_COUNT => MAX_COUNT )
        port map (
            clk          => clk_in,
            rst          => rst,
            bcd_actual   => bcd_out,
            cuenta_final => cuenta_final_sig
        );

    U4: SalidaPatron
        generic map ( INIT_STATE => '0' )
        port map (
            gps           => gps_acondicionado,
            clk           => clk_in,
            rst           => rst,
            salida_patron => salidapatron_sig
        );

    U5: Comparador
        generic map ( BIT_WIDTH => BIT_WIDTH, MAX_COUNT => MAX_COUNT )
        port map (
            clk        => clk_in,
            rst        => rst,
            cmp_in     => cmp_in,
            cmp_en     => cmp_en,
            bcd_actual => bcd_out,
            cmp_out    => cmp_out_sig
        );

    U6: Testigo_Out
        generic map ( COUNT_MAX => COUNT_TESTIGO, COUNTER_BITS => BITS_TESTIGO )
        port map (
            clk         => clk_in,
            rst         => rst,
            testigo_led => testigo_led_sig
        );

    cuenta_final  <= cuenta_final_sig;
    salida_patron <= salidapatron_sig;
    cmp_out       <= cmp_out_sig;
    testigo_led   <= testigo_led_sig;

end Behavioral;

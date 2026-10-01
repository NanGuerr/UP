library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Módulo Acondicionador con Generics y Reset Síncrono (rst)
entity Acondicionador is
    generic (
        SYNC_STAGES : integer := 2
    );
    Port ( 
        clk_in        : in  std_logic;
        rst           : in  std_logic;                    -- Reset síncrono activo en alto
        PPS_en        : in  std_logic;
        pulso_digital : out std_logic
    );
end Acondicionador;

architecture comportamiento of Acondicionador is
    signal pulso_reg       : std_logic := '0';
    signal pulso_anterior  : std_logic := '0';
    signal pulso_detectado : std_logic := '0';
begin
    process(clk_in)
    begin
        if rising_edge(clk_in) then
            if rst = '1' then
                pulso_reg       <= '0';
                pulso_anterior  <= '0';
                pulso_detectado <= '0';
            else
                pulso_anterior <= pulso_reg;
                pulso_reg      <= PPS_en;

                if (pulso_reg = '1' and pulso_anterior = '0') then
                    pulso_detectado <= '1';
                else
                    pulso_detectado <= '0';
                end if;
            end if;
        end if;
    end process;

    pulso_digital <= pulso_detectado;
end comportamiento;

library ieee;
use ieee.std_logic_1164.all;

entity REG is
    generic(nb : integer := 8);
    port(
        din : in std_logic_vector(nb - 1 downto 0);
        clk : in std_logic;
        rst_n : in std_logic;
        en : in std_logic;
        dout : out std_logic_vector(nb - 1 downto 0)
    );
end entity;

architecture beh of REG is
    begin
        reg_process: process(clk, rst_n) is
            begin
                if rst_n = '0' then
                    dout <= (others => '0');
                elsif (rising_edge(clk) and en = '1') then
                    dout <= din;
                end if;
            end process;     
end architecture;    
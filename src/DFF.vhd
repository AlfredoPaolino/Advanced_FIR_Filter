library ieee;
use ieee.std_logic_1164.all;

entity DFF is
    port(
        din : in std_logic;
        clk : in std_logic;
        rst_n : in std_logic;
        dout : out std_logic
    );
end entity;

architecture beh of DFF is
    begin
        reg_process: process(clk, rst_n) is
            begin
                if rst_n = '0' then
                    dout <= '0';
                elsif rising_edge(clk) then
                    dout <= din;
                end if;
            end process;     
end architecture;    
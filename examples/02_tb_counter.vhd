library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_counter is
end entity;

architecture sim of tb_counter is
    signal clk : std_logic := '0';
    signal q : unsigned(3 downto 0);
begin
    uut: entity work.counter
        port map (
            clk => clk,
            q => q
        );

    clk_process: process
    begin
        while true loop
            clk <= '0';
            wait for 10 ns;
            clk <= '1';
            wait for 10 ns;
        end loop;
    end process;
end architecture sim;

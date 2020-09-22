library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.numeric_std.all;

entity led is
    port
    (
        clk  : in std_logic;
        leds : out std_logic_vector(7 downto 0)
    );
end led;

architecture RTL of led is
begin
    process (clk)
        variable count : unsigned(31 downto 0) := X"7FFFFFFF";
    begin
        if (rising_edge(clk)) then
            count := count - 1;
            leds(7 downto 0) <= std_logic_vector(count(31 downto 24));
        end if;
    end process;
end RTL;
--- HEX_DISPLAY                                  Chuck McManis 17-Feb-2001
--- 
--- This is a driver for a 7 segment LED display. It converts a 4-bit nybble
--- into a hexadecimal character 0-9a-f. Some letters are upper case others are
--- lower case in an effort to distinguish them from numbers so b and 6 differ
--- by the presence of the top segment being lit or not. (for example)
---
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity hex_display is
    Port ( value : in std_logic_vector(3 downto 0);
	    blank : in std_logic;
	    test : in std_logic;
	    segs : out std_logic_vector(6 downto 0));
end hex_display;

-- This is a good third project since it is simply combinatorial logic. When
-- synthesized the selection statement (case) generates a decoder that takes
-- four input lines and generates eight output lines. (the decimal point is 
-- always set to 'off.' If you want to get decimal point control, try adding
-- another pin (dp) to the port description, and then you can assign it with
-- a concurrent signal assignment 
architecture behavioral of hex_display is
begin
    process (value, blank, test) is
    begin
	if (blank = '1') then
	    segs <= "1111111";
	elsif (test = '1') then
	    segs <= "0000000";
	else 
	    case value is
		when "0000" => segs <= not "0111111"; -- 0
		when "0001" => segs <= not "0000110"; -- 1
		when "0010" => segs <= not "1011011"; -- 2
		when "0011" => segs <= not "1001111"; -- 3
		when "0100" => segs <= not "1100110"; -- 4
		when "0101" => segs <= not "1101101"; -- 5
		when "0110" => segs <= not "1111101"; -- 6
		when "0111" => segs <= not "0000111"; -- 7
		when "1000" => segs <= not "1111111"; -- 8
		when "1001" => segs <= not "1100111"; -- 9
		when "1010" => segs <= not "1110111"; -- A
		when "1011" => segs <= not "1111100"; -- b
		when "1100" => segs <= not "0111001"; -- c
		when "1101" => segs <= not "1011110"; -- d
		when "1110" => segs <= not "1111001"; -- E
		when others => segs <= not "1110001"; -- F
	    end case;
	end if;
    end process;
end behavioral;
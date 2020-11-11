library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.numeric_std.all;

entity convert_to_gray is
    port
    (
		R_in : in std_logic_vector(11 downto 0);
		G_in : in std_logic_vector(11 downto 0);
		B_in : in std_logic_vector(11 downto 0);
		
		R_out : out std_logic_vector(11 downto 0);
		G_out : out std_logic_vector(11 downto 0);
		B_out : out std_logic_vector(11 downto 0)
    );
	
end convert_to_gray;

architecture RTL of convert_to_gray is
signal color : natural;
begin
    color <= (to_unsigned(R_in) + to_unsigned(G_in) + to_unsigned(B_in)) / 3;
	
	R_out <= std_logic_vector(to_unsigned(color));
	G_out <= std_logic_vector(color);
	B_out <= std_logic_vector(color);
end RTL;
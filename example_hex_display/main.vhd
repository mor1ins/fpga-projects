-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- PROGRAM		"Quartus Prime"
-- VERSION		"Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"
-- CREATED		"Fri Sep 27 20:33:50 2019"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY main IS 
	PORT
	(
		num1 :  IN  STD_LOGIC_VECTOR(1 DOWNTO 0);
		num2 :  IN  STD_LOGIC_VECTOR(1 DOWNTO 0);
		num1_view :  OUT  STD_LOGIC_VECTOR(6 DOWNTO 0);
		num2_view :  OUT  STD_LOGIC_VECTOR(6 DOWNTO 0);
		sign :  OUT  STD_LOGIC_VECTOR(6 DOWNTO 0)
	);
END main;

ARCHITECTURE bdf_type OF main IS 

COMPONENT comp2
	PORT(x : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
		 y : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
		 res : OUT STD_LOGIC_VECTOR(1 DOWNTO 0)
	);
END COMPONENT;

COMPONENT display_view
	PORT(is_num : IN STD_LOGIC;
		 value : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
		 segs : OUT STD_LOGIC_VECTOR(6 DOWNTO 0)
	);
END COMPONENT;

SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_4 :  STD_LOGIC;


BEGIN 
SYNTHESIZED_WIRE_0 <= '0';
SYNTHESIZED_WIRE_4 <= '1';



b2v_inst : comp2
PORT MAP(x => num1,
		 y => num2,
		 res => SYNTHESIZED_WIRE_1);




b2v_inst2 : display_view
PORT MAP(is_num => SYNTHESIZED_WIRE_0,
		 value => SYNTHESIZED_WIRE_1,
		 segs => sign);


b2v_inst3 : display_view
PORT MAP(is_num => SYNTHESIZED_WIRE_4,
		 value => num1,
		 segs => num1_view);


b2v_inst4 : display_view
PORT MAP(is_num => SYNTHESIZED_WIRE_4,
		 value => num2,
		 segs => num2_view);


END bdf_type;
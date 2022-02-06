-- Copyright (C) 1991-2015 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus Prime License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- ***************************************************************************
-- This file contains a Vhdl test bench template that is freely editable to   
-- suit user's needs .Comments are provided in each section to help the user  
-- fill out necessary details.                                                
-- ***************************************************************************
-- Generated on "10/12/2020 12:01:41"
                                                            
-- Vhdl Test Bench template for design  :  muxtdm
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY muxtdm_vhd_tst IS
END muxtdm_vhd_tst;
ARCHITECTURE muxtdm_arch OF muxtdm_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL a_0 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL a_i : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL b_0 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL b_i : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL c_0 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL c_i : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL d_0 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL d_i : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL EN : STD_LOGIC;
SIGNAL W : STD_LOGIC_VECTOR(1 DOWNTO 0);
COMPONENT muxtdm
	PORT (
	a_0 : BUFFER STD_LOGIC_VECTOR(3 DOWNTO 0);
	a_i : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	b_0 : BUFFER STD_LOGIC_VECTOR(3 DOWNTO 0);
	b_i : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	c_0 : BUFFER STD_LOGIC_VECTOR(3 DOWNTO 0);
	c_i : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	d_0 : BUFFER STD_LOGIC_VECTOR(3 DOWNTO 0);
	d_i : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	EN : IN STD_LOGIC;
	W : IN STD_LOGIC_VECTOR(1 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : muxtdm
	PORT MAP (
-- list connections between master ports and signals
	a_0 => a_0,
	a_i => a_i,
	b_0 => b_0,
	b_i => b_i,
	c_0 => c_0,
	c_i => c_i,
	d_0 => d_0,
	d_i => d_i,
	EN => EN,
	W => W
	);
init : PROCESS                                               
-- variable declarations                                     
BEGIN                                                        
        -- code that executes only once                      
WAIT;                                                       
END PROCESS init;                                           
always : PROCESS                                              
-- optional sensitivity list                                  
-- (        )                                                 
-- variable declarations                                      
BEGIN                                                         
        -- code executes for every event on sensitivity list  
EN<='1';
W<= "00";
a_i<="0000";
b_i<="1000";
c_i<="0101";
d_i<="1010";
wait for 10 ns;
EN<='1';
W<= "01";
a_i<="0000";
b_i<="1000";
c_i<="0101";
d_i<="1010";
wait for 10 ns;
EN<='1';
a_i<="0000";
b_i<="1000";
c_i<="0101";
d_i<="1010";
W<= "10";
wait for 10 ns;
EN<='1';
a_i<="0000";
b_i<="1000";
c_i<="0101";
d_i<="1010";
W<= "11";
wait for 10 ns;

EN<='1';
W<= "00";
a_i<="0100";
b_i<="0011";
c_i<="1001";
d_i<="1000";
wait for 10 ns;
EN<='1';
W<= "01";
a_i<="0100";
b_i<="0011";
c_i<="1001";
d_i<="1000";
wait for 10 ns;
EN<='1';
W<= "10";
a_i<="0100";
b_i<="0011";
c_i<="1001";
d_i<="1000";
wait for 10 ns;
EN<='1';
W<= "11";
a_i<="0100";
b_i<="0011";
c_i<="1001";
d_i<="1000";
wait for 10 ns;

EN<='1';
W<= "00";
a_i<="0110";
b_i<="0101";
c_i<="0001";
d_i<="0011";
wait for 10 ns;
EN<='1';
W<= "01";
a_i<="0110";
b_i<="0101";
c_i<="0001";
d_i<="0011";
wait for 10 ns;
EN<='1';
W<= "10";
a_i<="0110";
b_i<="0101";
c_i<="0001";
d_i<="0011";
wait for 10 ns;
EN<='1';
W<= "11";
a_i<="0110";
b_i<="0101";
c_i<="0001";
d_i<="0011";
wait for 10 ns;
WAIT;                                                        
END PROCESS always;                                          
END muxtdm_arch;

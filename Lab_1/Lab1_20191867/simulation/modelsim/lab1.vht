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
-- Generated on "09/14/2020 20:00:02"
                                                            
-- Vhdl Test Bench template for design  :  lab1
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY lab1_vhd_tst IS
END lab1_vhd_tst;
ARCHITECTURE lab1_arch OF lab1_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL A : STD_LOGIC;
SIGNAL B : STD_LOGIC;
SIGNAL Cin : STD_LOGIC;
SIGNAL Cout : STD_LOGIC;
SIGNAL S : STD_LOGIC;
COMPONENT lab1
	PORT (
	A : IN STD_LOGIC;
	B : IN STD_LOGIC;
	Cin : IN STD_LOGIC;
	Cout : BUFFER STD_LOGIC;
	S : BUFFER STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : lab1
	PORT MAP (
-- list connections between master ports and signals
	A => A,
	B => B,
	Cin => Cin,
	Cout => Cout,
	S => S
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
B   <= '0';
A   <= '0';
Cin <= '0';
wait for 10 ns;
B   <= '1';
A   <= '0';
Cin <= '0';
wait for 10 ns;
B   <= '0';
A   <= '1';
Cin <= '0';
wait for 10 ns;
B   <= '1';
A   <= '1';
Cin <= '0';
wait for 10 ns;
B   <= '0';
A   <= '0';
Cin <= '1';
wait for 10 ns;
B   <= '1';
A   <= '0';
Cin <= '1';
wait for 10 ns;
B   <= '0';
A   <= '1';
Cin <= '1';
wait for 10 ns;
B   <= '1';
A   <= '1';
Cin <= '1';
wait for 10 ns;
WAIT;                                                        
END PROCESS always;                                          
END lab1_arch;

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
-- Generated on "10/12/2020 20:33:25"
                                                            
-- Vhdl Test Bench template for design  :  ex1
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY ex1_vhd_tst IS
END ex1_vhd_tst;
ARCHITECTURE ex1_arch OF ex1_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL A : STD_LOGIC;
SIGNAL B : STD_LOGIC;
SIGNAL C : STD_LOGIC;
SIGNAL D : STD_LOGIC;
SIGNAL EN : STD_LOGIC;
SIGNAL F : STD_LOGIC;
COMPONENT ex1
	PORT (
	A : IN STD_LOGIC;
	B : IN STD_LOGIC;
	C : IN STD_LOGIC;
	D : IN STD_LOGIC;
	EN : IN STD_LOGIC;
	F : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : ex1
	PORT MAP (
-- list connections between master ports and signals
	A => A,
	B => B,
	C => C,
	D => D,
	EN => EN,
	F => F
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
EN <= '0';
A <= '-';
B <= '-';
C <= '-';
D <= '-';
wait for 10 ns;
EN <= '1';
A <= '0';
B <= '0';
C <= '0';
D <= '0';
wait for 10 ns;
EN <= '1';
A <= '0';
B <= '0';
C <= '0';
D <= '1';
wait for 10 ns;		  
EN <= '1';
A <= '0';
B <= '0';
C <= '1';
D <= '0';
wait for 10 ns;
EN <= '1';
A <= '0';
B <= '0';
C <= '1';
D <= '1';
wait for 10 ns;
EN <= '1';
A <= '0';
B <= '1';
C <= '0';
D <= '0';
wait for 10 ns;
EN <= '1';
A <= '0';
B <= '1';
C <= '0';
D <= '1';
wait for 10 ns;
EN <= '1';		  
A <= '0';
B <= '1';
C <= '1';
D <= '0';
wait for 10 ns;
EN <= '1';
EN <= '1';
A <= '0';
B <= '1';
C <= '1';
D <= '1';
wait for 10 ns;
EN <= '1';			  
A <= '1';
B <= '0';
C <= '0';
D <= '0';
wait for 10 ns;
EN <= '1';
A <= '1';
B <= '0';
C <= '0';
D <= '1';
wait for 10 ns;	
EN <= '1';	  
A <= '1';
B <= '0';
C <= '1';
D <= '0';
wait for 10 ns;
EN <= '1';
A <= '1';
B <= '0';
C <= '1';
D <= '1';
wait for 10 ns;
EN <= '1';
A <= '1';
B <= '1';
C <= '0';
D <= '0';
wait for 10 ns;
EN <= '1';
A <= '1';
B <= '1';
C <= '0';
D <= '1';
wait for 10 ns;
EN <= '1';		  
A <= '1';
B <= '1';
C <= '1';
D <= '0';
wait for 10 ns;
EN <= '1';
A <= '1';
B <= '1';
C <= '1';
D <= '1';
wait for 10 ns;
WAIT;                                                        
END PROCESS always;                                          
END ex1_arch;

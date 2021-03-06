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
-- Generated on "09/21/2020 19:29:31"
                                                            
-- Vhdl Test Bench template for design  :  circuitoex1
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY circuitoex1_vhd_tst IS
END circuitoex1_vhd_tst;
ARCHITECTURE circuitoex1_arch OF circuitoex1_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL a : STD_LOGIC;
SIGNAL b : STD_LOGIC;
SIGNAL c : STD_LOGIC;
SIGNAL f : STD_LOGIC;
SIGNAL g : STD_LOGIC;
COMPONENT circuitoex1
	PORT (
	a : IN STD_LOGIC;
	b : IN STD_LOGIC;
	c : IN STD_LOGIC;
	f : OUT STD_LOGIC;
	g : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : circuitoex1
	PORT MAP (
-- list connections between master ports and signals
	a => a,
	b => b,
	c => c,
	f => f,
	g => g
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
	c   <= '0';
	b   <= '0';
	a   <= '0';
	wait for 10 ns;
	c   <= '1';
	b   <= '0';
	a   <= '0';
	wait for 10 ns;
	c   <= '0';
	b   <= '1';
	a   <= '0';
	wait for 10 ns;		  
	c   <= '1';
	b   <= '1';
	a   <= '0';
	wait for 10 ns;
	c   <= '0';
	b   <= '0';
	a   <= '1';
	wait for 10 ns;
	c   <= '1';
	b   <= '0';
	a   <= '1';
	wait for 10 ns;
	c   <= '0';
	b   <= '1';
	a   <= '1';
	wait for 10 ns;		  
	c   <= '1';
	b   <= '1';
	a   <= '1';
	wait for 10 ns;
WAIT;                                                        
END PROCESS always;                                          
END circuitoex1_arch;

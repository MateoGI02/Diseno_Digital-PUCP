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
-- Generated on "09/21/2020 20:50:40"
                                                            
-- Vhdl Test Bench template for design  :  exp2
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY exp2_vhd_tst IS
END exp2_vhd_tst;
ARCHITECTURE exp2_arch OF exp2_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL a : STD_LOGIC;
SIGNAL b : STD_LOGIC;
SIGNAL c : STD_LOGIC;
SIGNAL d : STD_LOGIC;
SIGNAL e : STD_LOGIC;
SIGNAL f : STD_LOGIC;
SIGNAL g : STD_LOGIC;
SIGNAL w : STD_LOGIC;
SIGNAL x : STD_LOGIC;
SIGNAL y : STD_LOGIC;
SIGNAL z : STD_LOGIC;
COMPONENT exp2
	PORT (
	a : OUT STD_LOGIC;
	b : OUT STD_LOGIC;
	c : OUT STD_LOGIC;
	d : OUT STD_LOGIC;
	e : OUT STD_LOGIC;
	f : OUT STD_LOGIC;
	g : OUT STD_LOGIC;
	w : IN STD_LOGIC;
	x : IN STD_LOGIC;
	y : IN STD_LOGIC;
	z : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : exp2
	PORT MAP (
-- list connections between master ports and signals
	a => a,
	b => b,
	c => c,
	d => d,
	e => e,
	f => f,
	g => g,
	w => w,
	x => x,
	y => y,
	z => z
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
	x   <= '0';
	y   <= '0';
	z   <= '0';
	w   <= '0';
	wait for 10 ns;
	x   <= '0';
	y   <= '0';
	z   <= '0';
	w   <= '1';
	wait for 10 ns;
	x   <= '0';
	y   <= '0';
	z   <= '1';
	w   <= '0';
	wait for 10 ns;		  
	x   <= '0';
	y   <= '0';
	z   <= '1';
	w   <= '1';
	wait for 10 ns;
	x   <= '0';
	y   <= '1';
	z   <= '0';
	w   <= '0';
	wait for 10 ns;
	x   <= '0';
	y   <= '1';
	z   <= '0';
	w   <= '1';
	wait for 10 ns;
	x   <= '0';
	y   <= '1';
	z   <= '1';
	w   <= '0';
	wait for 10 ns;		  
	x   <= '0';
	y   <= '1';
	z   <= '1';
	w   <= '1';	
	wait for 10 ns;
	x   <= '1';
	y   <= '0';
	z   <= '0';
	w   <= '0';
	wait for 10 ns;
	x   <= '1';
	y   <= '0';
	z   <= '0';
	w   <= '1';
	wait for 10 ns;
	x   <= '1';
	y   <= '0';
	z   <= '1';
	w   <= '0';	
	wait for 10 ns;
	x   <= '1';
	y   <= '0';
	z   <= '1';
	w   <= '1';
	wait for 10 ns;
	x   <= '1';
	y   <= '1';
	z   <= '0';
	w   <= '0';
	wait for 10 ns;
	x   <= '1';
	y   <= '1';
	z   <= '0';
	w   <= '1';	
	wait for 10 ns;
	x   <= '1';
	y   <= '1';
	z   <= '1';
	w   <= '0';
	wait for 10 ns;
	x   <= '1';
	y   <= '1';
	z   <= '1';
	w   <= '1';
	wait for 10 ns;		  
WAIT;                                                        
END PROCESS always;                                          
END exp2_arch;

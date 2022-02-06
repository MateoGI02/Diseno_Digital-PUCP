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
-- Generated on "11/09/2020 17:55:04"
                                                            
-- Vhdl Test Bench template for design  :  seguidor_moore
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY seguidor_moore_vhd_tst IS
END seguidor_moore_vhd_tst;
ARCHITECTURE seguidor_moore_arch OF seguidor_moore_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL L : STD_LOGIC;
SIGNAL M1a : STD_LOGIC;
SIGNAL M2a : STD_LOGIC;
SIGNAL M2l : STD_LOGIC;
SIGNAL M2r : STD_LOGIC;
SIGNAL P : STD_LOGIC;
SIGNAL R : STD_LOGIC;
SIGNAL reset_n : STD_LOGIC;
COMPONENT seguidor_moore
	PORT (
	clk : IN STD_LOGIC;
	L : IN STD_LOGIC;
	M1a : OUT STD_LOGIC;
	M2a : OUT STD_LOGIC;
	M2l : OUT STD_LOGIC;
	M2r : OUT STD_LOGIC;
	P : IN STD_LOGIC;
	R : IN STD_LOGIC;
	reset_n : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : seguidor_moore
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	L => L,
	M1a => M1a,
	M2a => M2a,
	M2l => M2l,
	M2r => M2r,
	P => P,
	R => R,
	reset_n => reset_n
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
	P <= '0';
	L <= '0';
	R <= '0';
	reset_n <= '0' ;
	clk <= '0' ;
	wait for 10 ns;
	P <= '0';
	L <= '0';
	R <= '0';
	reset_n <= '0' ;
	clk <= '1' ;
	wait for 10 ns;
	P <= '1';
	L <= '0';
	R <= '0';
	reset_n <= '1' ;
	clk <= '0' ;
	wait for 10 ns;
	P <= '1';
	L <= '0';
	R <= '0';
	reset_n <= '1' ;
	clk <= '1' ;
	wait for 10 ns;
	P <= '1';
	L <= '1';
	R <= '1';
	reset_n <= '1' ;
	clk <= '0' ;
	wait for 10 ns;
	P <= '1';
	L <= '1';
	R <= '1';
	reset_n <= '1' ;
	clk <= '1' ;
	wait for 10 ns;
	P <= '1';
	L <= '0';
	R <= '0';
	reset_n <= '1' ;
	clk <= '0' ;
	wait for 10 ns;
	P <= '1';
	L <= '0';
	R <= '0';
	reset_n <= '1' ;
	clk <= '1' ;
	wait for 10 ns;
	P <= '1';
	L <= '1';
	R <= '0';
	reset_n <= '1' ;
	clk <= '0' ;
	wait for 10 ns;
	P <= '1';
	L <= '1';
	R <= '0';
	reset_n <= '1' ;
	clk <= '1' ;
	wait for 10 ns;  --100 ns--
	P <= '1';
	L <= '0';
	R <= '0';
	reset_n <= '1' ;
	clk <= '0' ;
	wait for 10 ns;
	P <= '1';
	L <= '0';
	R <= '0';
	reset_n <= '1' ;
	clk <= '1' ;
	wait for 10 ns;
	P <= '1';
	L <= '0';
	R <= '1';
	reset_n <= '1' ;
	clk <= '0' ;
	wait for 10 ns;
	P <= '1';
	L <= '0';
	R <= '1';
	reset_n <= '1' ;
	clk <= '1' ;
	wait for 10 ns;
	P <= '1';
	L <= '0';
	R <= '1';
	reset_n <= '1' ;
	clk <= '0' ;
	wait for 10 ns;
	P <= '1';
	L <= '0';
	R <= '1';
	reset_n <= '1' ;
	clk <= '1' ;
	wait for 10 ns;
	P <= '1';
	L <= '1';
	R <= '0';
	reset_n <= '1' ;
	clk <= '0' ;
	wait for 10 ns;
	P <= '1';
	L <= '1';
	R <= '0';
	reset_n <= '1' ;
	clk <= '1' ;
	wait for 10 ns;
	P <= '1';
	L <= '1';
	R <= '1';
	reset_n <= '1' ;
	clk <= '0' ;
	wait for 10 ns;
	P <= '1';
	L <= '1';
	R <= '1';
	reset_n <= '1' ;
	clk <= '1' ;
	wait for 10 ns;  --200 ns--
	P <= '1';
	L <= '1';
	R <= '1';
	reset_n <= '1' ;
	clk <= '0' ;
	wait for 10 ns;
	P <= '1';
	L <= '1';
	R <= '1';
	reset_n <= '1' ;
	clk <= '1' ;
	wait for 10 ns;
	P <= '1';
	L <= '1';
	R <= '0';
	reset_n <= '1' ;
	clk <= '0' ;
	wait for 10 ns;
	P <= '1';
	L <= '1';
	R <= '0';
	reset_n <= '1' ;
	clk <= '1' ;
	wait for 10 ns;
	P <= '1';
	L <= '1';
	R <= '0';
	reset_n <= '1' ;
	clk <= '0' ;
	wait for 10 ns;
	P <= '1';
	L <= '1';
	R <= '0';
	reset_n <= '1' ;
	clk <= '1' ;
	wait for 10 ns;
	P <= '1';
	L <= '1';
	R <= '1';
	reset_n <= '0' ;
	clk <= '0' ;
	wait for 10 ns;
	P <= '1';
	L <= '1';
	R <= '1';
	reset_n <= '0' ;
	clk <= '1' ;
	wait for 10 ns;
	P <= '1';
	L <= '1';
	R <= '0';
	reset_n <= '1' ;
	clk <= '0' ;
	wait for 10 ns;
	P <= '1';
	L <= '1';
	R <= '0';
	reset_n <= '1' ;
	clk <= '1' ;
	wait for 10 ns; --300 ns--
WAIT;                                                        
END PROCESS always;                                          
END seguidor_moore_arch;

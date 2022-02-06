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
-- Generated on "11/30/2020 15:50:32"
                                                            
-- Vhdl Test Bench template for design  :  fsm
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY fsm_vhd_tst IS
END fsm_vhd_tst;
ARCHITECTURE fsm_arch OF fsm_vhd_tst IS
-- constants  
CONSTANT periodo : time := 1 ns;                                               
-- signals                                                   
SIGNAL borrar_l : STD_LOGIC;
SIGNAL borrar_lan : STD_LOGIC;
SIGNAL borrar_p : STD_LOGIC;
SIGNAL clk : STD_LOGIC;
SIGNAL ini_pausa_l : STD_LOGIC;
SIGNAL ini_pausa_lan : STD_LOGIC;
SIGNAL ini_pausa_p : STD_LOGIC;
SIGNAL ini_pausa_per : STD_LOGIC;
SIGNAL min_value_l : STD_LOGIC;
SIGNAL min_value_p : STD_LOGIC;
SIGNAL reset_n : STD_LOGIC;
COMPONENT fsm
	PORT (
	borrar_l : BUFFER STD_LOGIC;
	borrar_lan : IN STD_LOGIC;
	borrar_p : BUFFER STD_LOGIC;
	clk : IN STD_LOGIC;
	ini_pausa_l : BUFFER STD_LOGIC;
	ini_pausa_lan : IN STD_LOGIC;
	ini_pausa_p : BUFFER STD_LOGIC;
	ini_pausa_per : IN STD_LOGIC;
	min_value_l : IN STD_LOGIC;
	min_value_p : IN STD_LOGIC;
	reset_n : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : fsm
	PORT MAP (
-- list connections between master ports and signals
	borrar_l => borrar_l,
	borrar_lan => borrar_lan,
	borrar_p => borrar_p,
	clk => clk,
	ini_pausa_l => ini_pausa_l,
	ini_pausa_lan => ini_pausa_lan,
	ini_pausa_p => ini_pausa_p,
	ini_pausa_per => ini_pausa_per,
	min_value_l => min_value_l,
	min_value_p => min_value_p,
	reset_n => reset_n
	);
init : PROCESS                                               
-- variable declarations                                     
BEGIN                                                        
        -- code that executes only once                      
clk<='0';
			wait for periodo*0.5;
			clk<='1';
			wait for periodo*0.5;                                                        
END PROCESS init;                                           
always : PROCESS                                              
-- optional sensitivity list                                  
-- (        )                                                 
-- variable declarations                                      
BEGIN                                                         
        -- code executes for every event on sensitivity list  
		   reset_n 		   <='0';
		ini_pausa_per	<='0';
		min_value_p 	<='0';
		ini_pausa_lan	<='0';
		borrar_lan		<='0';
		min_value_l 	<='0';  
		wait for 5*periodo;
		
		reset_n 		   <='1';
		ini_pausa_per	<='1';
		min_value_p 	<='-';
		ini_pausa_lan	<='-';
		borrar_lan		<='0';
		min_value_l 	<='-';  
		wait for 20*periodo;
		
		reset_n 		   <='1';
		ini_pausa_per	<='-';
		min_value_p 	<='1';
		ini_pausa_lan	<='-';
		borrar_lan		<='-';
		min_value_l 	<='-';  
		wait for 20*periodo;
		
		reset_n 		   <='1';
		ini_pausa_per	<='1';
		min_value_p 	<='0';
		ini_pausa_lan	<='1';
		borrar_lan		<='-';
		min_value_l 	<='0';  
		wait for 20*periodo;
		
		reset_n 		   <='1';
		ini_pausa_per	<='-';
		min_value_p 	<='1';
		ini_pausa_lan	<='-';
		borrar_lan		<='-';
		min_value_l 	<='-';  
		wait for 20*periodo;
		
		reset_n 		   <='1';
		ini_pausa_per	<='1';
		min_value_p 	<='0';
		ini_pausa_lan	<='0';
		borrar_lan		<='0';
		min_value_l 	<='1';  
		wait for 20*periodo;
		
		reset_n 		   <='1';
		ini_pausa_per	<='0';
		min_value_p 	<='-';
		ini_pausa_lan	<='0';
		borrar_lan		<='0';
		min_value_l 	<='-';  
		wait for 20*periodo;
		
		reset_n 		   <='1';
		ini_pausa_per	<='0';
		min_value_p 	<='0';
		ini_pausa_lan	<='0';
		borrar_lan		<='1';
		min_value_l 	<='0';  
		wait for 20*periodo;
		
		reset_n 		   <='1';
		ini_pausa_per	<='1';
		min_value_p 	<='0';
		ini_pausa_lan	<='1';
		borrar_lan		<='-';
		min_value_l 	<='0';  
		wait for 20*periodo;
		
		reset_n 		   <='1';
		ini_pausa_per	<='-';
		min_value_p 	<='1';
		ini_pausa_lan	<='-';
		borrar_lan		<='-';
		min_value_l 	<='-';  
		wait for 20*periodo;  
		
		reset_n 		   <='1';
		ini_pausa_per	<='1';
		min_value_p 	<='-';
		ini_pausa_lan	<='0';
		borrar_lan		<='-';
		min_value_l 	<='-';  
		wait for 20*periodo; 
		
		reset_n 		   <='1';
		ini_pausa_per	<='1';
		min_value_p 	<='-';
		ini_pausa_lan	<='1';
		borrar_lan		<='-';
		min_value_l 	<='-';  
		wait for 20*periodo; 
		
		reset_n 		   <='1';
		ini_pausa_per	<='0';
		min_value_p 	<='-';
		ini_pausa_lan	<='0';
		borrar_lan		<='0';
		min_value_l 	<='-';  
		wait for 20*periodo; 
		
		reset_n 		   <='1';
		ini_pausa_per	<='1';
		min_value_p 	<='0';
		ini_pausa_lan	<='1';
		borrar_lan		<='-';
		min_value_l 	<='0';  
		wait for 20*periodo; 
		
		reset_n 		   <='1';
		ini_pausa_per	<='1';
		min_value_p 	<='0';
		ini_pausa_lan	<='0';
		borrar_lan		<='1';
		min_value_l 	<='0';  
		wait for 20*periodo; 
		
		reset_n 		   <='1';
		ini_pausa_per	<='0';
		min_value_p 	<='-';
		ini_pausa_lan	<='0';
		borrar_lan		<='0';
		min_value_l 	<='-';  
		wait for 20*periodo; 
	
		reset_n 		   <='1';
		ini_pausa_per	<='0';
		min_value_p 	<='0';
		ini_pausa_lan	<='0';
		borrar_lan		<='1';
		min_value_l 	<='0';  
		wait for 20*periodo; 
		
		reset_n 		   <='1';
		ini_pausa_per	<='0';
		min_value_p 	<='0';
		ini_pausa_lan	<='0';
		borrar_lan		<='0';
		min_value_l 	<='0';  
		wait for 20*periodo; 
		
		reset_n 		   <='1';
		ini_pausa_per	<='1';
		min_value_p 	<='0';
		ini_pausa_lan	<='1';
		borrar_lan		<='-';
		min_value_l 	<='0';  
		wait for 20*periodo;
                                                      
END PROCESS always;                                          
END fsm_arch;

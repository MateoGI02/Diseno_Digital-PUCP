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
-- Generated on "11/20/2020 20:11:17"
                                                            
-- Vhdl Test Bench template for design  :  reloj_l
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY reloj_l_vhd_tst IS
END reloj_l_vhd_tst;
ARCHITECTURE reloj_l_arch OF reloj_l_vhd_tst IS
-- constants  
CONSTANT periodo : time := 10 ns;  --- 1s                                               
-- signals                                                   
SIGNAL borrar : STD_LOGIC;
SIGNAL clk : STD_LOGIC;
SIGNAL dsec_p_dec : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL dsec_p_uni : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL ini_pausa : STD_LOGIC;
SIGNAL min_value_l : STD_LOGIC;
SIGNAL reset_n : STD_LOGIC;
COMPONENT reloj_l
	PORT (
	borrar : IN STD_LOGIC;
	clk : IN STD_LOGIC;
	dsec_p_dec : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	dsec_p_uni : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	ini_pausa : IN STD_LOGIC;
	min_value_l : OUT STD_LOGIC;
	reset_n : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : reloj_l
	PORT MAP (
-- list connections between master ports and signals
	borrar => borrar,
	clk => clk,
	dsec_p_dec => dsec_p_dec,
	dsec_p_uni => dsec_p_uni,
	ini_pausa => ini_pausa,
	min_value_l => min_value_l,
	reset_n => reset_n
	);
init : PROCESS                                               
-- variable declarations                                     
BEGIN                                                        
        -- code that executes only once  
clk<='0';
wait for 0.5*periodo;		  
clk<='1';
wait for 0.5*periodo;		  
END PROCESS init;                                           
always : PROCESS                                              
-- optional sensitivity list                                  
-- (        )                                                 
-- variable declarations                                      
BEGIN                                                         
        -- code executes for every event on sensitivity list  
		      --REINICIO DEL RELOJ                                                       
       reset_n<='0';
		 borrar<='1';
		 ini_pausa<='1';
		
		wait for 5*periodo;
		--ACTIVACION DE LA CUENTA
		--EL borrar será 1 por memoria del anterior
		reset_n<='1';
		ini_pausa<='1';
		wait for 100*periodo;
		--PAUSA DE LA CUENTA
		reset_n<='1';
		ini_pausa<='0';
		borrar<='0';
		wait for 100*periodo;
		
		--REACTIVAR LA CUENTA
		-- EL reset_n anterior y el borrar
		ini_pausa<='1';
		wait for 100*periodo;
		
		--PAUSA DE LA CUENTA
		-- EL reset_n anterior
		ini_pausa<='0';
		borrar<='0';
		wait for 100*periodo;
		
		--BORRADO DE LA CUENTA
		-- EL reset_n anterior
		ini_pausa<='0';
		borrar<='1';
		wait for 100*periodo;
		
		--reactivar cuenta
		-- EL reset_n anterior
			ini_pausa<='1';
		wait for 150*periodo;
                                                    
END PROCESS always;                                          
END reloj_l_arch;

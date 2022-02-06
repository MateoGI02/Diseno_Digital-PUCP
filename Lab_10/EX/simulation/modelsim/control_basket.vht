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
-- Generated on "12/07/2020 18:55:25"
                                                            
-- Vhdl Test Bench template for design  :  control_basket
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY control_basket_vhd_tst IS
END control_basket_vhd_tst;
ARCHITECTURE control_basket_arch OF control_basket_vhd_tst IS
-- constants      
CONSTANT periodo : time := 1 ns;                                           
-- signals                                                   
SIGNAL borrar_lan : STD_LOGIC;
SIGNAL clock : STD_LOGIC;
SIGNAL dlsec_dec : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL dlsec_uni : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL dpmin_dec : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL dpmin_uni : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL dpsec_dec : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL dpsec_uni : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL ini_pausa_lan : STD_LOGIC;
SIGNAL ini_pausa_per : STD_LOGIC;
SIGNAL numero_periodo_del_partido : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL reset_n : STD_LOGIC;
COMPONENT control_basket
	PORT (
	borrar_lan : IN STD_LOGIC;
	clock : IN STD_LOGIC;
	dlsec_dec : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	dlsec_uni : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	dpmin_dec : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	dpmin_uni : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	dpsec_dec : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	dpsec_uni : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	ini_pausa_lan : IN STD_LOGIC;
	ini_pausa_per : IN STD_LOGIC;
	numero_periodo_del_partido : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	reset_n : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : control_basket
	PORT MAP (
-- list connections between master ports and signals
	borrar_lan => borrar_lan,
	clock => clock,
	dlsec_dec => dlsec_dec,
	dlsec_uni => dlsec_uni,
	dpmin_dec => dpmin_dec,
	dpmin_uni => dpmin_uni,
	dpsec_dec => dpsec_dec,
	dpsec_uni => dpsec_uni,
	ini_pausa_lan => ini_pausa_lan,
	ini_pausa_per => ini_pausa_per,
	numero_periodo_del_partido => numero_periodo_del_partido,
	reset_n => reset_n
	);
init : PROCESS                                               
-- variable declarations                                     
BEGIN                                                        
        -- code that executes only once                      
clock<='0';
wait for 0.5*periodo;
clock<='1';
wait for 0.5*periodo;                                                       
END PROCESS init;                                           
always : PROCESS                                              
-- optional sensitivity list                                  
-- (        )                                                 
-- variable declarations                                      
BEGIN                                                         
        -- code executes for every event on sensitivity list  
		  		    reset_n 		   <='0';
		ini_pausa_per	<='0';
		ini_pausa_lan	<='0';
		borrar_lan		<='0'; 
		wait for 5*periodo;
		
		reset_n 		   <='1';
		ini_pausa_per	<='1';
		ini_pausa_lan	<='0';
		borrar_lan		<='0';  
		wait for 20*periodo;
		
		
		
		reset_n 		   <='1';
		ini_pausa_per	<='1';
		ini_pausa_lan	<='1';
		borrar_lan		<='0';  
		wait for 20*periodo;
WAIT;                                                        
END PROCESS always;                                          
END control_basket_arch;

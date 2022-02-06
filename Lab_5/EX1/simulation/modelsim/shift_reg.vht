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
-- Generated on "10/19/2020 19:57:58"
                                                            
-- Vhdl Test Bench template for design  :  shift_reg
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY shift_reg_vhd_tst IS
END shift_reg_vhd_tst;
ARCHITECTURE shift_reg_arch OF shift_reg_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL p : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL q : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL reset_n : STD_LOGIC;
SIGNAL s_l : STD_LOGIC;
SIGNAL serial_input : STD_LOGIC;
COMPONENT shift_reg
	PORT (
	clk : IN STD_LOGIC;
	p : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	q : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	reset_n : IN STD_LOGIC;
	s_l : IN STD_LOGIC;
	serial_input : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : shift_reg
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	p => p,
	q => q,
	reset_n => reset_n,
	s_l => s_l,
	serial_input => serial_input
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
clk<='0';
reset_n<='0';
p<="----";
s_l<='-';
serial_input<='-';
wait for 5 ns;	     
clk<='1';
reset_n<='0';
p<="----";
s_l<='-';
serial_input<='-';
wait for 5 ns;	  ---un clock P=10 ns--
clk<='0';
reset_n<='0';
p<="----";
s_l<='-';
serial_input<='-';
wait for 5 ns;	  
clk<='1';
reset_n<='0';
p<="----";
s_l<='-';
serial_input<='-';
wait for 5 ns;   ---un clock P=10 ns--
clk<='0';
reset_n<='1';
p<="1001";
s_l<='1';
serial_input<='-';
wait for 5 ns;	  
clk<='1';
reset_n<='1';
p<="1001";
s_l<='1';
serial_input<='-';
wait for 5 ns;   ---un clock P=10 ns--	
clk<='0';
reset_n<='1';
p<="1001";
s_l<='0';
serial_input<='0';
wait for 5 ns;	   
clk<='1';
reset_n<='1';
p<="1001";
s_l<='0';
serial_input<='0';
wait for 5 ns;	  ---un clock P=10 ns-- 
clk<='0';
reset_n<='1';
p<="1001";
s_l<='1';
serial_input<='1';
wait for 5 ns;	   
clk<='1';
reset_n<='1';
p<="1001";
s_l<='1';
serial_input<='1';
wait for 5 ns;	  ---un clock P=10 ns--
clk<='0';
reset_n<='1';
p<="1001";
s_l<='0';
serial_input<='0';
wait for 5 ns;	   
clk<='1';
reset_n<='1';
p<="1001";
s_l<='0';
serial_input<='0';
wait for 5 ns;	  ---un clock P=10 ns-- 
clk<='0';
reset_n<='1';
p<="1001";
s_l<='0';
serial_input<='0';
wait for 5 ns;	   
clk<='1';
reset_n<='1';
p<="1001";
s_l<='0';
serial_input<='0';
wait for 5 ns;	  ---un clock P=10 ns-- 
clk<='0';
reset_n<='1';
p<="1001";
s_l<='0';
serial_input<='0';
wait for 5 ns;	   
clk<='1';
reset_n<='1';
p<="1001";
s_l<='0';
serial_input<='0';
wait for 5 ns;	  ---un clock P=10 ns-- 
clk<='0';
reset_n<='1';
p<="1001";
s_l<='0';
serial_input<='0';
wait for 5 ns;	   
clk<='1';
reset_n<='1';
p<="1001";
s_l<='0';
serial_input<='0';
wait for 5 ns;	  ---un clock P=10 ns-- 
clk<='0';
reset_n<='1';
p<="1001";
s_l<='0';
serial_input<='0';
wait for 5 ns;	   
clk<='1';
reset_n<='1';
p<="1001";
s_l<='0';
serial_input<='0';
wait for 5 ns;	  ---un clock P=10 ns-- 
		  WAIT;                                                        
END PROCESS always;                                          
END shift_reg_arch;

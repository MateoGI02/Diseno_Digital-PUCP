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
-- Generated on "09/28/2020 20:04:47"
                                                            
-- Vhdl Test Bench template for design  :  addsub
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY addsub_vhd_tst IS
END addsub_vhd_tst;
ARCHITECTURE addsub_arch OF addsub_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL Co : STD_LOGIC;
SIGNAL n : STD_LOGIC;
SIGNAL S : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL v : STD_LOGIC;
SIGNAL X : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL Y : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL z : STD_LOGIC;
COMPONENT addsub
	PORT (
	Co : IN STD_LOGIC;
	n : OUT STD_LOGIC;
	S : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	v : OUT STD_LOGIC;
	X : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	Y : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	z : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : addsub
	PORT MAP (
-- list connections between master ports and signals
	Co => Co,
	n => n,
	S => S,
	v => v,
	X => X,
	Y => Y,
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
Co <= '0';
X <= "0000";
Y <= "0000";
wait for 10 ns;
Co <= '0';
X <= "0001";
Y <= "0001";
wait for 10 ns;
Co <= '0';
X <= "0010";
Y <= "0010";
wait for 10 ns;
Co <= '0';
X <= "0011";
Y <= "0011";
wait for 10 ns;
Co <= '0';
X <= "0100";
Y <= "0100";
wait for 10 ns;
Co <= '0';
X <= "0001";
Y <= "0101";
wait for 10 ns;
Co <= '0';
X <= "0110";
Y <= "0110";
wait for 10 ns;
Co <= '0';
X <= "0011";
Y <= "0111";
wait for 10 ns;
Co <= '0';
X <= "1001";
Y <= "1000";
wait for 10 ns;
Co <= '0';
X <= "0001";
Y <= "1001";
wait for 10 ns;
Co <= '0';
X <= "0010";
Y <= "1011";
wait for 10 ns;
Co <= '0';
X <= "1111";
Y <= "1010";
wait for 10 ns;
Co <= '0';
X <= "1100";
Y <= "1100";
wait for 10 ns;
Co <= '0';
X <= "1101";
Y <= "1101";
wait for 10 ns;
Co <= '0';
X <= "1110";
Y <= "1110";
wait for 10 ns;
Co <= '0';
X <= "1111";
Y <= "1111";
wait for 10 ns;
Co <= '1';
X <= "0000";
Y <= "0010";
wait for 10 ns;
Co <= '1';
X <= "1001";
Y <= "0001";
wait for 10 ns;
Co <= '1';
X <= "1010";
Y <= "0000";
wait for 10 ns;
Co <= '1';
X <= "1011";
Y <= "0111";
wait for 10 ns;
Co <= '1';
X <= "0001";
Y <= "1100";
wait for 10 ns;
Co <= '1';
X <= "0100";
Y <= "1101";
wait for 10 ns;
Co <= '1';
X <= "0110";
Y <= "0110";
wait for 10 ns;
Co <= '1';
X <= "0111";
Y <= "0101";
wait for 10 ns;
Co <= '1';
X <= "1011";
Y <= "1100";
wait for 10 ns;
Co <= '1';
X <= "1101";
Y <= "1001";
wait for 10 ns;
Co <= '1';
X <= "1110";
Y <= "1010";
wait for 10 ns;
Co <= '1';
X <= "1011";
Y <= "1001";
wait for 10 ns;
Co <= '1';
X <= "1100";
Y <= "1110";
wait for 10 ns;
Co <= '1';
X <= "1101";
Y <= "1100";
wait for 10 ns;
Co <= '1';
X <= "1010";
Y <= "1110";
wait for 10 ns;
Co <= '1';
X <= "1101";
Y <= "0101";
wait for 10 ns;
WAIT;                                                        
END PROCESS always;                                          
END addsub_arch;

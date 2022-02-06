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

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 15.1.0 Build 185 10/21/2015 SJ Lite Edition"

-- DATE "09/28/2020 20:47:27"

-- 
-- Device: Altera 10M50DAF484C7G Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	addsub IS
    PORT (
	Co : IN std_logic;
	X : IN std_logic_vector(3 DOWNTO 0);
	Y : IN std_logic_vector(3 DOWNTO 0);
	S : OUT std_logic_vector(3 DOWNTO 0);
	v : OUT std_logic;
	n : OUT std_logic;
	z : OUT std_logic
	);
END addsub;

-- Design Ports Information
-- S[0]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[1]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[2]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[3]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- v	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- n	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- z	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[0]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[0]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[1]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Co	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[1]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[2]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[2]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[3]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[3]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF addsub IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Co : std_logic;
SIGNAL ww_X : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Y : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_S : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_v : std_logic;
SIGNAL ww_n : std_logic;
SIGNAL ww_z : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \S[0]~output_o\ : std_logic;
SIGNAL \S[1]~output_o\ : std_logic;
SIGNAL \S[2]~output_o\ : std_logic;
SIGNAL \S[3]~output_o\ : std_logic;
SIGNAL \v~output_o\ : std_logic;
SIGNAL \n~output_o\ : std_logic;
SIGNAL \z~output_o\ : std_logic;
SIGNAL \X[0]~input_o\ : std_logic;
SIGNAL \Y[0]~input_o\ : std_logic;
SIGNAL \etapa|stage0|s~0_combout\ : std_logic;
SIGNAL \Co~input_o\ : std_logic;
SIGNAL \etapa|stage0|Cout~0_combout\ : std_logic;
SIGNAL \X[1]~input_o\ : std_logic;
SIGNAL \etapa|stage0|Cout~1_combout\ : std_logic;
SIGNAL \Y[1]~input_o\ : std_logic;
SIGNAL \etapa|stage1|s~combout\ : std_logic;
SIGNAL \etapa|stage1|Cout~0_combout\ : std_logic;
SIGNAL \X[2]~input_o\ : std_logic;
SIGNAL \Y[2]~input_o\ : std_logic;
SIGNAL \etapa|stage2|s~0_combout\ : std_logic;
SIGNAL \X[3]~input_o\ : std_logic;
SIGNAL \Y[3]~input_o\ : std_logic;
SIGNAL \etapa|stage2|Cout~0_combout\ : std_logic;
SIGNAL \etapa|stage3|s~0_combout\ : std_logic;
SIGNAL \v~0_combout\ : std_logic;
SIGNAL \z~0_combout\ : std_logic;
SIGNAL w : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_z~0_combout\ : std_logic;

BEGIN

ww_Co <= Co;
ww_X <= X;
ww_Y <= Y;
S <= ww_S;
v <= ww_v;
n <= ww_n;
z <= ww_z;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);
\ALT_INV_z~0_combout\ <= NOT \z~0_combout\;

-- Location: LCCOMB_X44_Y44_N16
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X46_Y54_N2
\S[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \etapa|stage0|s~0_combout\,
	devoe => ww_devoe,
	o => \S[0]~output_o\);

-- Location: IOOBUF_X46_Y54_N23
\S[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \etapa|stage1|s~combout\,
	devoe => ww_devoe,
	o => \S[1]~output_o\);

-- Location: IOOBUF_X51_Y54_N16
\S[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \etapa|stage2|s~0_combout\,
	devoe => ww_devoe,
	o => \S[2]~output_o\);

-- Location: IOOBUF_X46_Y54_N9
\S[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \etapa|stage3|s~0_combout\,
	devoe => ww_devoe,
	o => \S[3]~output_o\);

-- Location: IOOBUF_X51_Y54_N9
\v~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \v~0_combout\,
	devoe => ww_devoe,
	o => \v~output_o\);

-- Location: IOOBUF_X49_Y54_N9
\n~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \etapa|stage3|s~0_combout\,
	devoe => ww_devoe,
	o => \n~output_o\);

-- Location: IOOBUF_X56_Y54_N9
\z~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_z~0_combout\,
	devoe => ww_devoe,
	o => \z~output_o\);

-- Location: IOIBUF_X51_Y54_N29
\X[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(0),
	o => \X[0]~input_o\);

-- Location: IOIBUF_X54_Y54_N15
\Y[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y(0),
	o => \Y[0]~input_o\);

-- Location: LCCOMB_X52_Y51_N16
\etapa|stage0|s~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \etapa|stage0|s~0_combout\ = \X[0]~input_o\ $ (\Y[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \X[0]~input_o\,
	datad => \Y[0]~input_o\,
	combout => \etapa|stage0|s~0_combout\);

-- Location: IOIBUF_X49_Y54_N1
\Co~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Co,
	o => \Co~input_o\);

-- Location: LCCOMB_X52_Y51_N12
\etapa|stage0|Cout~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \etapa|stage0|Cout~0_combout\ = (\Co~input_o\ & !\Y[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Co~input_o\,
	datad => \Y[0]~input_o\,
	combout => \etapa|stage0|Cout~0_combout\);

-- Location: IOIBUF_X51_Y54_N22
\X[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(1),
	o => \X[1]~input_o\);

-- Location: LCCOMB_X52_Y51_N22
\etapa|stage0|Cout~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \etapa|stage0|Cout~1_combout\ = (\X[0]~input_o\ & ((\Co~input_o\) # (\Y[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \X[0]~input_o\,
	datac => \Co~input_o\,
	datad => \Y[0]~input_o\,
	combout => \etapa|stage0|Cout~1_combout\);

-- Location: IOIBUF_X58_Y54_N29
\Y[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y(1),
	o => \Y[1]~input_o\);

-- Location: LCCOMB_X52_Y51_N18
\w[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- w(1) = \Co~input_o\ $ (\Y[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Co~input_o\,
	datad => \Y[1]~input_o\,
	combout => w(1));

-- Location: LCCOMB_X52_Y51_N8
\etapa|stage1|s\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \etapa|stage1|s~combout\ = \X[1]~input_o\ $ (w(1) $ (((\etapa|stage0|Cout~0_combout\) # (\etapa|stage0|Cout~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \etapa|stage0|Cout~0_combout\,
	datab => \X[1]~input_o\,
	datac => \etapa|stage0|Cout~1_combout\,
	datad => w(1),
	combout => \etapa|stage1|s~combout\);

-- Location: LCCOMB_X52_Y51_N26
\etapa|stage1|Cout~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \etapa|stage1|Cout~0_combout\ = (\X[1]~input_o\ & ((\etapa|stage0|Cout~0_combout\) # ((\etapa|stage0|Cout~1_combout\) # (w(1))))) # (!\X[1]~input_o\ & (w(1) & ((\etapa|stage0|Cout~0_combout\) # (\etapa|stage0|Cout~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \etapa|stage0|Cout~0_combout\,
	datab => \X[1]~input_o\,
	datac => \etapa|stage0|Cout~1_combout\,
	datad => w(1),
	combout => \etapa|stage1|Cout~0_combout\);

-- Location: IOIBUF_X51_Y54_N1
\X[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(2),
	o => \X[2]~input_o\);

-- Location: IOIBUF_X56_Y54_N1
\Y[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y(2),
	o => \Y[2]~input_o\);

-- Location: LCCOMB_X52_Y51_N20
\etapa|stage2|s~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \etapa|stage2|s~0_combout\ = \etapa|stage1|Cout~0_combout\ $ (\X[2]~input_o\ $ (\Co~input_o\ $ (\Y[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \etapa|stage1|Cout~0_combout\,
	datab => \X[2]~input_o\,
	datac => \Co~input_o\,
	datad => \Y[2]~input_o\,
	combout => \etapa|stage2|s~0_combout\);

-- Location: IOIBUF_X54_Y54_N29
\X[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(3),
	o => \X[3]~input_o\);

-- Location: IOIBUF_X69_Y54_N1
\Y[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y(3),
	o => \Y[3]~input_o\);

-- Location: LCCOMB_X52_Y51_N6
\etapa|stage2|Cout~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \etapa|stage2|Cout~0_combout\ = (\etapa|stage1|Cout~0_combout\ & ((\X[2]~input_o\) # (\Co~input_o\ $ (\Y[2]~input_o\)))) # (!\etapa|stage1|Cout~0_combout\ & (\X[2]~input_o\ & (\Co~input_o\ $ (\Y[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \etapa|stage1|Cout~0_combout\,
	datab => \X[2]~input_o\,
	datac => \Co~input_o\,
	datad => \Y[2]~input_o\,
	combout => \etapa|stage2|Cout~0_combout\);

-- Location: LCCOMB_X52_Y51_N0
\etapa|stage3|s~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \etapa|stage3|s~0_combout\ = \Co~input_o\ $ (\X[3]~input_o\ $ (\Y[3]~input_o\ $ (\etapa|stage2|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Co~input_o\,
	datab => \X[3]~input_o\,
	datac => \Y[3]~input_o\,
	datad => \etapa|stage2|Cout~0_combout\,
	combout => \etapa|stage3|s~0_combout\);

-- Location: LCCOMB_X52_Y51_N10
\v~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \v~0_combout\ = (\X[3]~input_o\ & (!\etapa|stage2|Cout~0_combout\ & (\Co~input_o\ $ (\Y[3]~input_o\)))) # (!\X[3]~input_o\ & (\etapa|stage2|Cout~0_combout\ & (\Co~input_o\ $ (!\Y[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Co~input_o\,
	datab => \X[3]~input_o\,
	datac => \Y[3]~input_o\,
	datad => \etapa|stage2|Cout~0_combout\,
	combout => \v~0_combout\);

-- Location: LCCOMB_X52_Y51_N4
\z~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \z~0_combout\ = (\etapa|stage0|s~0_combout\) # ((\etapa|stage3|s~0_combout\) # ((\etapa|stage1|s~combout\) # (\etapa|stage2|s~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \etapa|stage0|s~0_combout\,
	datab => \etapa|stage3|s~0_combout\,
	datac => \etapa|stage1|s~combout\,
	datad => \etapa|stage2|s~0_combout\,
	combout => \z~0_combout\);

-- Location: UNVM_X0_Y40_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X43_Y52_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

-- Location: ADCBLOCK_X43_Y51_N0
\~QUARTUS_CREATED_ADC2~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 2,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);

ww_S(0) <= \S[0]~output_o\;

ww_S(1) <= \S[1]~output_o\;

ww_S(2) <= \S[2]~output_o\;

ww_S(3) <= \S[3]~output_o\;

ww_v <= \v~output_o\;

ww_n <= \n~output_o\;

ww_z <= \z~output_o\;
END structure;



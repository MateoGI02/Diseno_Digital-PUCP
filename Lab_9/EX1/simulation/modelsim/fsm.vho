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

-- DATE "11/30/2020 20:28:19"

-- 
-- Device: Altera 10M50DAF484C7G Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	fsm IS
    PORT (
	reset_n : IN std_logic;
	clk : IN std_logic;
	ini_pausa_per : IN std_logic;
	ini_pausa_lan : IN std_logic;
	borrar_lan : IN std_logic;
	min_value_p : IN std_logic;
	min_value_l : IN std_logic;
	ini_pausa_l : BUFFER std_logic;
	ini_pausa_p : BUFFER std_logic;
	salida10bits : BUFFER std_logic_vector(9 DOWNTO 0);
	borrar_p : BUFFER std_logic;
	borrar_l : BUFFER std_logic
	);
END fsm;

-- Design Ports Information
-- ini_pausa_l	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ini_pausa_p	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- salida10bits[0]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- salida10bits[1]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- salida10bits[2]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- salida10bits[3]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- salida10bits[4]	=>  Location: PIN_V5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- salida10bits[5]	=>  Location: PIN_W6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- salida10bits[6]	=>  Location: PIN_W7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- salida10bits[7]	=>  Location: PIN_V7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- salida10bits[8]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- salida10bits[9]	=>  Location: PIN_V8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- borrar_p	=>  Location: PIN_W9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- borrar_l	=>  Location: PIN_W10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ini_pausa_lan	=>  Location: PIN_AB9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ini_pausa_per	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- min_value_p	=>  Location: PIN_AA11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- min_value_l	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- borrar_lan	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset_n	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF fsm IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_reset_n : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_ini_pausa_per : std_logic;
SIGNAL ww_ini_pausa_lan : std_logic;
SIGNAL ww_borrar_lan : std_logic;
SIGNAL ww_min_value_p : std_logic;
SIGNAL ww_min_value_l : std_logic;
SIGNAL ww_ini_pausa_l : std_logic;
SIGNAL ww_ini_pausa_p : std_logic;
SIGNAL ww_salida10bits : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_borrar_p : std_logic;
SIGNAL ww_borrar_l : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \ini_pausa_l~output_o\ : std_logic;
SIGNAL \ini_pausa_p~output_o\ : std_logic;
SIGNAL \salida10bits[0]~output_o\ : std_logic;
SIGNAL \salida10bits[1]~output_o\ : std_logic;
SIGNAL \salida10bits[2]~output_o\ : std_logic;
SIGNAL \salida10bits[3]~output_o\ : std_logic;
SIGNAL \salida10bits[4]~output_o\ : std_logic;
SIGNAL \salida10bits[5]~output_o\ : std_logic;
SIGNAL \salida10bits[6]~output_o\ : std_logic;
SIGNAL \salida10bits[7]~output_o\ : std_logic;
SIGNAL \salida10bits[8]~output_o\ : std_logic;
SIGNAL \salida10bits[9]~output_o\ : std_logic;
SIGNAL \borrar_p~output_o\ : std_logic;
SIGNAL \borrar_l~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \borrar_lan~input_o\ : std_logic;
SIGNAL \ini_pausa_lan~input_o\ : std_logic;
SIGNAL \min_value_p~input_o\ : std_logic;
SIGNAL \ini_pausa_per~input_o\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \min_value_l~input_o\ : std_logic;
SIGNAL \estado_siguiente~0_combout\ : std_logic;
SIGNAL \process_1~1_combout\ : std_logic;
SIGNAL \Selector3~3_combout\ : std_logic;
SIGNAL \process_1~0_combout\ : std_logic;
SIGNAL \Selector1~1_combout\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \reset_n~input_o\ : std_logic;
SIGNAL \etapa0|Add0~0_combout\ : std_logic;
SIGNAL \etapa0|Add0~1\ : std_logic;
SIGNAL \etapa0|Add0~2_combout\ : std_logic;
SIGNAL \etapa0|Add0~3\ : std_logic;
SIGNAL \etapa0|Add0~4_combout\ : std_logic;
SIGNAL \etapa0|Add0~5\ : std_logic;
SIGNAL \etapa0|Add0~6_combout\ : std_logic;
SIGNAL \etapa0|Add0~7\ : std_logic;
SIGNAL \etapa0|Add0~8_combout\ : std_logic;
SIGNAL \etapa0|Add0~9\ : std_logic;
SIGNAL \etapa0|Add0~10_combout\ : std_logic;
SIGNAL \etapa0|Equal0~6_combout\ : std_logic;
SIGNAL \etapa0|Add0~11\ : std_logic;
SIGNAL \etapa0|Add0~12_combout\ : std_logic;
SIGNAL \etapa0|Add0~13\ : std_logic;
SIGNAL \etapa0|Add0~14_combout\ : std_logic;
SIGNAL \etapa0|q_next[7]~11_combout\ : std_logic;
SIGNAL \etapa0|Add0~15\ : std_logic;
SIGNAL \etapa0|Add0~16_combout\ : std_logic;
SIGNAL \etapa0|Add0~17\ : std_logic;
SIGNAL \etapa0|Add0~18_combout\ : std_logic;
SIGNAL \etapa0|Equal0~5_combout\ : std_logic;
SIGNAL \etapa0|Equal0~7_combout\ : std_logic;
SIGNAL \etapa0|Add0~19\ : std_logic;
SIGNAL \etapa0|Add0~20_combout\ : std_logic;
SIGNAL \etapa0|Add0~21\ : std_logic;
SIGNAL \etapa0|Add0~22_combout\ : std_logic;
SIGNAL \etapa0|Add0~23\ : std_logic;
SIGNAL \etapa0|Add0~24_combout\ : std_logic;
SIGNAL \etapa0|q_next[12]~10_combout\ : std_logic;
SIGNAL \etapa0|Add0~25\ : std_logic;
SIGNAL \etapa0|Add0~26_combout\ : std_logic;
SIGNAL \etapa0|q_next[13]~9_combout\ : std_logic;
SIGNAL \etapa0|Add0~27\ : std_logic;
SIGNAL \etapa0|Add0~28_combout\ : std_logic;
SIGNAL \etapa0|q_next[14]~8_combout\ : std_logic;
SIGNAL \etapa0|Add0~29\ : std_logic;
SIGNAL \etapa0|Add0~30_combout\ : std_logic;
SIGNAL \etapa0|q_next[15]~7_combout\ : std_logic;
SIGNAL \etapa0|Add0~31\ : std_logic;
SIGNAL \etapa0|Add0~32_combout\ : std_logic;
SIGNAL \etapa0|Add0~33\ : std_logic;
SIGNAL \etapa0|Add0~34_combout\ : std_logic;
SIGNAL \etapa0|q_next[17]~6_combout\ : std_logic;
SIGNAL \etapa0|Add0~35\ : std_logic;
SIGNAL \etapa0|Add0~36_combout\ : std_logic;
SIGNAL \etapa0|Add0~37\ : std_logic;
SIGNAL \etapa0|Add0~38_combout\ : std_logic;
SIGNAL \etapa0|q_next[19]~5_combout\ : std_logic;
SIGNAL \etapa0|Add0~39\ : std_logic;
SIGNAL \etapa0|Add0~40_combout\ : std_logic;
SIGNAL \etapa0|q_next[20]~4_combout\ : std_logic;
SIGNAL \etapa0|Add0~41\ : std_logic;
SIGNAL \etapa0|Add0~42_combout\ : std_logic;
SIGNAL \etapa0|q_next[21]~3_combout\ : std_logic;
SIGNAL \etapa0|Add0~43\ : std_logic;
SIGNAL \etapa0|Add0~44_combout\ : std_logic;
SIGNAL \etapa0|q_next[22]~2_combout\ : std_logic;
SIGNAL \etapa0|Add0~45\ : std_logic;
SIGNAL \etapa0|Add0~46_combout\ : std_logic;
SIGNAL \etapa0|q_next[23]~1_combout\ : std_logic;
SIGNAL \etapa0|Add0~47\ : std_logic;
SIGNAL \etapa0|Add0~48_combout\ : std_logic;
SIGNAL \etapa0|Add0~49\ : std_logic;
SIGNAL \etapa0|Add0~50_combout\ : std_logic;
SIGNAL \etapa0|q_next[25]~0_combout\ : std_logic;
SIGNAL \etapa0|Equal0~0_combout\ : std_logic;
SIGNAL \etapa0|Equal0~1_combout\ : std_logic;
SIGNAL \etapa0|Equal0~2_combout\ : std_logic;
SIGNAL \etapa0|Equal0~3_combout\ : std_logic;
SIGNAL \etapa0|Equal0~4_combout\ : std_logic;
SIGNAL \etapa0|Equal0~8_combout\ : std_logic;
SIGNAL \etapa0|clk_o_reg~q\ : std_logic;
SIGNAL \estado_presente.A~q\ : std_logic;
SIGNAL \Selector1~2_combout\ : std_logic;
SIGNAL \Selector1~3_combout\ : std_logic;
SIGNAL \Selector1~4_combout\ : std_logic;
SIGNAL \estado_presente.B~q\ : std_logic;
SIGNAL \ini_pausa_p~0_combout\ : std_logic;
SIGNAL \process_1~2_combout\ : std_logic;
SIGNAL \Selector3~2_combout\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \Selector3~1_combout\ : std_logic;
SIGNAL \Selector3~4_combout\ : std_logic;
SIGNAL \estado_presente.D~q\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \Selector4~1_combout\ : std_logic;
SIGNAL \estado_presente.E~q\ : std_logic;
SIGNAL \Selector2~3_combout\ : std_logic;
SIGNAL \Selector2~16_combout\ : std_logic;
SIGNAL \Selector2~15_combout\ : std_logic;
SIGNAL \estado_presente.C~q\ : std_logic;
SIGNAL \borrar_l~0_combout\ : std_logic;
SIGNAL \etapa0|q_reg\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \ALT_INV_borrar_l~0_combout\ : std_logic;
SIGNAL \ALT_INV_estado_presente.A~q\ : std_logic;

BEGIN

ww_reset_n <= reset_n;
ww_clk <= clk;
ww_ini_pausa_per <= ini_pausa_per;
ww_ini_pausa_lan <= ini_pausa_lan;
ww_borrar_lan <= borrar_lan;
ww_min_value_p <= min_value_p;
ww_min_value_l <= min_value_l;
ini_pausa_l <= ww_ini_pausa_l;
ini_pausa_p <= ww_ini_pausa_p;
salida10bits <= ww_salida10bits;
borrar_p <= ww_borrar_p;
borrar_l <= ww_borrar_l;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_borrar_l~0_combout\ <= NOT \borrar_l~0_combout\;
\ALT_INV_estado_presente.A~q\ <= NOT \estado_presente.A~q\;

-- Location: LCCOMB_X44_Y43_N16
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

-- Location: IOOBUF_X31_Y0_N23
\ini_pausa_l~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \estado_presente.C~q\,
	devoe => ww_devoe,
	o => \ini_pausa_l~output_o\);

-- Location: IOOBUF_X31_Y0_N30
\ini_pausa_p~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ini_pausa_p~0_combout\,
	devoe => ww_devoe,
	o => \ini_pausa_p~output_o\);

-- Location: IOOBUF_X46_Y54_N9
\salida10bits[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \salida10bits[0]~output_o\);

-- Location: IOOBUF_X51_Y54_N16
\salida10bits[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \salida10bits[1]~output_o\);

-- Location: IOOBUF_X46_Y54_N23
\salida10bits[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \salida10bits[2]~output_o\);

-- Location: IOOBUF_X46_Y54_N2
\salida10bits[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \salida10bits[3]~output_o\);

-- Location: IOOBUF_X14_Y0_N9
\salida10bits[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \salida10bits[4]~output_o\);

-- Location: IOOBUF_X16_Y0_N30
\salida10bits[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \salida10bits[5]~output_o\);

-- Location: IOOBUF_X24_Y0_N9
\salida10bits[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \salida10bits[6]~output_o\);

-- Location: IOOBUF_X20_Y0_N23
\salida10bits[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \salida10bits[7]~output_o\);

-- Location: IOOBUF_X24_Y0_N2
\salida10bits[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \salida10bits[8]~output_o\);

-- Location: IOOBUF_X20_Y0_N16
\salida10bits[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \salida10bits[9]~output_o\);

-- Location: IOOBUF_X22_Y0_N2
\borrar_p~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_estado_presente.A~q\,
	devoe => ww_devoe,
	o => \borrar_p~output_o\);

-- Location: IOOBUF_X24_Y0_N30
\borrar_l~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_borrar_l~0_combout\,
	devoe => ww_devoe,
	o => \borrar_l~output_o\);

-- Location: IOIBUF_X34_Y0_N29
\clk~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G19
\clk~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X34_Y0_N8
\borrar_lan~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_borrar_lan,
	o => \borrar_lan~input_o\);

-- Location: IOIBUF_X34_Y0_N15
\ini_pausa_lan~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ini_pausa_lan,
	o => \ini_pausa_lan~input_o\);

-- Location: IOIBUF_X40_Y0_N8
\min_value_p~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_min_value_p,
	o => \min_value_p~input_o\);

-- Location: IOIBUF_X31_Y0_N8
\ini_pausa_per~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ini_pausa_per,
	o => \ini_pausa_per~input_o\);

-- Location: LCCOMB_X31_Y1_N6
\Selector1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (!\min_value_p~input_o\ & ((\borrar_lan~input_o\) # ((\ini_pausa_lan~input_o\) # (\ini_pausa_per~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \borrar_lan~input_o\,
	datab => \ini_pausa_lan~input_o\,
	datac => \min_value_p~input_o\,
	datad => \ini_pausa_per~input_o\,
	combout => \Selector1~0_combout\);

-- Location: IOIBUF_X40_Y0_N1
\min_value_l~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_min_value_l,
	o => \min_value_l~input_o\);

-- Location: LCCOMB_X31_Y1_N16
\estado_siguiente~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \estado_siguiente~0_combout\ = (\ini_pausa_per~input_o\ & !\ini_pausa_lan~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ini_pausa_per~input_o\,
	datad => \ini_pausa_lan~input_o\,
	combout => \estado_siguiente~0_combout\);

-- Location: LCCOMB_X32_Y1_N26
\process_1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \process_1~1_combout\ = (\estado_siguiente~0_combout\ & (!\min_value_p~input_o\ & (\min_value_l~input_o\ $ (\borrar_lan~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \min_value_l~input_o\,
	datab => \borrar_lan~input_o\,
	datac => \estado_siguiente~0_combout\,
	datad => \min_value_p~input_o\,
	combout => \process_1~1_combout\);

-- Location: LCCOMB_X31_Y1_N10
\Selector3~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector3~3_combout\ = (!\borrar_lan~input_o\ & (!\ini_pausa_lan~input_o\ & (!\min_value_p~input_o\ & !\ini_pausa_per~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \borrar_lan~input_o\,
	datab => \ini_pausa_lan~input_o\,
	datac => \min_value_p~input_o\,
	datad => \ini_pausa_per~input_o\,
	combout => \Selector3~3_combout\);

-- Location: LCCOMB_X32_Y1_N12
\process_1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \process_1~0_combout\ = (!\min_value_l~input_o\ & (\ini_pausa_per~input_o\ & !\min_value_p~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \min_value_l~input_o\,
	datac => \ini_pausa_per~input_o\,
	datad => \min_value_p~input_o\,
	combout => \process_1~0_combout\);

-- Location: LCCOMB_X31_Y1_N22
\Selector1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector1~1_combout\ = (!\borrar_lan~input_o\ & (\estado_presente.D~q\ & (\process_1~0_combout\ & !\ini_pausa_lan~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \borrar_lan~input_o\,
	datab => \estado_presente.D~q\,
	datac => \process_1~0_combout\,
	datad => \ini_pausa_lan~input_o\,
	combout => \Selector1~1_combout\);

-- Location: LCCOMB_X31_Y1_N2
\Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (\estado_siguiente~0_combout\ & (((!\ini_pausa_p~0_combout\)) # (!\min_value_p~input_o\))) # (!\estado_siguiente~0_combout\ & (\estado_presente.A~q\ & ((!\ini_pausa_p~0_combout\) # (!\min_value_p~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado_siguiente~0_combout\,
	datab => \min_value_p~input_o\,
	datac => \estado_presente.A~q\,
	datad => \ini_pausa_p~0_combout\,
	combout => \Selector0~0_combout\);

-- Location: IOIBUF_X29_Y0_N1
\reset_n~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset_n,
	o => \reset_n~input_o\);

-- Location: LCCOMB_X26_Y3_N6
\etapa0|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \etapa0|Add0~0_combout\ = \etapa0|q_reg\(0) $ (VCC)
-- \etapa0|Add0~1\ = CARRY(\etapa0|q_reg\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \etapa0|q_reg\(0),
	datad => VCC,
	combout => \etapa0|Add0~0_combout\,
	cout => \etapa0|Add0~1\);

-- Location: FF_X26_Y3_N7
\etapa0|q_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \etapa0|Add0~0_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \etapa0|q_reg\(0));

-- Location: LCCOMB_X26_Y3_N8
\etapa0|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \etapa0|Add0~2_combout\ = (\etapa0|q_reg\(1) & (!\etapa0|Add0~1\)) # (!\etapa0|q_reg\(1) & ((\etapa0|Add0~1\) # (GND)))
-- \etapa0|Add0~3\ = CARRY((!\etapa0|Add0~1\) # (!\etapa0|q_reg\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \etapa0|q_reg\(1),
	datad => VCC,
	cin => \etapa0|Add0~1\,
	combout => \etapa0|Add0~2_combout\,
	cout => \etapa0|Add0~3\);

-- Location: FF_X26_Y3_N9
\etapa0|q_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \etapa0|Add0~2_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \etapa0|q_reg\(1));

-- Location: LCCOMB_X26_Y3_N10
\etapa0|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \etapa0|Add0~4_combout\ = (\etapa0|q_reg\(2) & (\etapa0|Add0~3\ $ (GND))) # (!\etapa0|q_reg\(2) & (!\etapa0|Add0~3\ & VCC))
-- \etapa0|Add0~5\ = CARRY((\etapa0|q_reg\(2) & !\etapa0|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \etapa0|q_reg\(2),
	datad => VCC,
	cin => \etapa0|Add0~3\,
	combout => \etapa0|Add0~4_combout\,
	cout => \etapa0|Add0~5\);

-- Location: FF_X26_Y3_N11
\etapa0|q_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \etapa0|Add0~4_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \etapa0|q_reg\(2));

-- Location: LCCOMB_X26_Y3_N12
\etapa0|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \etapa0|Add0~6_combout\ = (\etapa0|q_reg\(3) & (!\etapa0|Add0~5\)) # (!\etapa0|q_reg\(3) & ((\etapa0|Add0~5\) # (GND)))
-- \etapa0|Add0~7\ = CARRY((!\etapa0|Add0~5\) # (!\etapa0|q_reg\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \etapa0|q_reg\(3),
	datad => VCC,
	cin => \etapa0|Add0~5\,
	combout => \etapa0|Add0~6_combout\,
	cout => \etapa0|Add0~7\);

-- Location: FF_X26_Y3_N13
\etapa0|q_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \etapa0|Add0~6_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \etapa0|q_reg\(3));

-- Location: LCCOMB_X26_Y3_N14
\etapa0|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \etapa0|Add0~8_combout\ = (\etapa0|q_reg\(4) & (\etapa0|Add0~7\ $ (GND))) # (!\etapa0|q_reg\(4) & (!\etapa0|Add0~7\ & VCC))
-- \etapa0|Add0~9\ = CARRY((\etapa0|q_reg\(4) & !\etapa0|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \etapa0|q_reg\(4),
	datad => VCC,
	cin => \etapa0|Add0~7\,
	combout => \etapa0|Add0~8_combout\,
	cout => \etapa0|Add0~9\);

-- Location: FF_X26_Y3_N15
\etapa0|q_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \etapa0|Add0~8_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \etapa0|q_reg\(4));

-- Location: LCCOMB_X26_Y3_N16
\etapa0|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \etapa0|Add0~10_combout\ = (\etapa0|q_reg\(5) & (!\etapa0|Add0~9\)) # (!\etapa0|q_reg\(5) & ((\etapa0|Add0~9\) # (GND)))
-- \etapa0|Add0~11\ = CARRY((!\etapa0|Add0~9\) # (!\etapa0|q_reg\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \etapa0|q_reg\(5),
	datad => VCC,
	cin => \etapa0|Add0~9\,
	combout => \etapa0|Add0~10_combout\,
	cout => \etapa0|Add0~11\);

-- Location: FF_X26_Y3_N17
\etapa0|q_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \etapa0|Add0~10_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \etapa0|q_reg\(5));

-- Location: LCCOMB_X26_Y3_N4
\etapa0|Equal0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \etapa0|Equal0~6_combout\ = (\etapa0|q_reg\(3) & (\etapa0|q_reg\(2) & (\etapa0|q_reg\(4) & \etapa0|q_reg\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \etapa0|q_reg\(3),
	datab => \etapa0|q_reg\(2),
	datac => \etapa0|q_reg\(4),
	datad => \etapa0|q_reg\(5),
	combout => \etapa0|Equal0~6_combout\);

-- Location: LCCOMB_X26_Y3_N18
\etapa0|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \etapa0|Add0~12_combout\ = (\etapa0|q_reg\(6) & (\etapa0|Add0~11\ $ (GND))) # (!\etapa0|q_reg\(6) & (!\etapa0|Add0~11\ & VCC))
-- \etapa0|Add0~13\ = CARRY((\etapa0|q_reg\(6) & !\etapa0|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \etapa0|q_reg\(6),
	datad => VCC,
	cin => \etapa0|Add0~11\,
	combout => \etapa0|Add0~12_combout\,
	cout => \etapa0|Add0~13\);

-- Location: FF_X26_Y3_N19
\etapa0|q_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \etapa0|Add0~12_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \etapa0|q_reg\(6));

-- Location: LCCOMB_X26_Y3_N20
\etapa0|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \etapa0|Add0~14_combout\ = (\etapa0|q_reg\(7) & (!\etapa0|Add0~13\)) # (!\etapa0|q_reg\(7) & ((\etapa0|Add0~13\) # (GND)))
-- \etapa0|Add0~15\ = CARRY((!\etapa0|Add0~13\) # (!\etapa0|q_reg\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \etapa0|q_reg\(7),
	datad => VCC,
	cin => \etapa0|Add0~13\,
	combout => \etapa0|Add0~14_combout\,
	cout => \etapa0|Add0~15\);

-- Location: LCCOMB_X26_Y3_N0
\etapa0|q_next[7]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \etapa0|q_next[7]~11_combout\ = (!\etapa0|Equal0~8_combout\ & \etapa0|Add0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \etapa0|Equal0~8_combout\,
	datad => \etapa0|Add0~14_combout\,
	combout => \etapa0|q_next[7]~11_combout\);

-- Location: FF_X26_Y3_N1
\etapa0|q_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \etapa0|q_next[7]~11_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \etapa0|q_reg\(7));

-- Location: LCCOMB_X26_Y3_N22
\etapa0|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \etapa0|Add0~16_combout\ = (\etapa0|q_reg\(8) & (\etapa0|Add0~15\ $ (GND))) # (!\etapa0|q_reg\(8) & (!\etapa0|Add0~15\ & VCC))
-- \etapa0|Add0~17\ = CARRY((\etapa0|q_reg\(8) & !\etapa0|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \etapa0|q_reg\(8),
	datad => VCC,
	cin => \etapa0|Add0~15\,
	combout => \etapa0|Add0~16_combout\,
	cout => \etapa0|Add0~17\);

-- Location: FF_X26_Y3_N23
\etapa0|q_reg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \etapa0|Add0~16_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \etapa0|q_reg\(8));

-- Location: LCCOMB_X26_Y3_N24
\etapa0|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \etapa0|Add0~18_combout\ = (\etapa0|q_reg\(9) & (!\etapa0|Add0~17\)) # (!\etapa0|q_reg\(9) & ((\etapa0|Add0~17\) # (GND)))
-- \etapa0|Add0~19\ = CARRY((!\etapa0|Add0~17\) # (!\etapa0|q_reg\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \etapa0|q_reg\(9),
	datad => VCC,
	cin => \etapa0|Add0~17\,
	combout => \etapa0|Add0~18_combout\,
	cout => \etapa0|Add0~19\);

-- Location: FF_X26_Y3_N25
\etapa0|q_reg[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \etapa0|Add0~18_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \etapa0|q_reg\(9));

-- Location: LCCOMB_X26_Y3_N2
\etapa0|Equal0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \etapa0|Equal0~5_combout\ = (!\etapa0|q_reg\(8) & (\etapa0|q_reg\(6) & (!\etapa0|q_reg\(7) & !\etapa0|q_reg\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \etapa0|q_reg\(8),
	datab => \etapa0|q_reg\(6),
	datac => \etapa0|q_reg\(7),
	datad => \etapa0|q_reg\(9),
	combout => \etapa0|Equal0~5_combout\);

-- Location: LCCOMB_X27_Y3_N28
\etapa0|Equal0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \etapa0|Equal0~7_combout\ = (\etapa0|q_reg\(0) & \etapa0|q_reg\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \etapa0|q_reg\(0),
	datad => \etapa0|q_reg\(1),
	combout => \etapa0|Equal0~7_combout\);

-- Location: LCCOMB_X26_Y3_N26
\etapa0|Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \etapa0|Add0~20_combout\ = (\etapa0|q_reg\(10) & (\etapa0|Add0~19\ $ (GND))) # (!\etapa0|q_reg\(10) & (!\etapa0|Add0~19\ & VCC))
-- \etapa0|Add0~21\ = CARRY((\etapa0|q_reg\(10) & !\etapa0|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \etapa0|q_reg\(10),
	datad => VCC,
	cin => \etapa0|Add0~19\,
	combout => \etapa0|Add0~20_combout\,
	cout => \etapa0|Add0~21\);

-- Location: FF_X26_Y3_N27
\etapa0|q_reg[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \etapa0|Add0~20_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \etapa0|q_reg\(10));

-- Location: LCCOMB_X26_Y3_N28
\etapa0|Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \etapa0|Add0~22_combout\ = (\etapa0|q_reg\(11) & (!\etapa0|Add0~21\)) # (!\etapa0|q_reg\(11) & ((\etapa0|Add0~21\) # (GND)))
-- \etapa0|Add0~23\ = CARRY((!\etapa0|Add0~21\) # (!\etapa0|q_reg\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \etapa0|q_reg\(11),
	datad => VCC,
	cin => \etapa0|Add0~21\,
	combout => \etapa0|Add0~22_combout\,
	cout => \etapa0|Add0~23\);

-- Location: FF_X26_Y3_N29
\etapa0|q_reg[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \etapa0|Add0~22_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \etapa0|q_reg\(11));

-- Location: LCCOMB_X26_Y3_N30
\etapa0|Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \etapa0|Add0~24_combout\ = (\etapa0|q_reg\(12) & (\etapa0|Add0~23\ $ (GND))) # (!\etapa0|q_reg\(12) & (!\etapa0|Add0~23\ & VCC))
-- \etapa0|Add0~25\ = CARRY((\etapa0|q_reg\(12) & !\etapa0|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \etapa0|q_reg\(12),
	datad => VCC,
	cin => \etapa0|Add0~23\,
	combout => \etapa0|Add0~24_combout\,
	cout => \etapa0|Add0~25\);

-- Location: LCCOMB_X27_Y2_N6
\etapa0|q_next[12]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \etapa0|q_next[12]~10_combout\ = (!\etapa0|Equal0~8_combout\ & \etapa0|Add0~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \etapa0|Equal0~8_combout\,
	datad => \etapa0|Add0~24_combout\,
	combout => \etapa0|q_next[12]~10_combout\);

-- Location: FF_X27_Y2_N7
\etapa0|q_reg[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \etapa0|q_next[12]~10_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \etapa0|q_reg\(12));

-- Location: LCCOMB_X26_Y2_N0
\etapa0|Add0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \etapa0|Add0~26_combout\ = (\etapa0|q_reg\(13) & (!\etapa0|Add0~25\)) # (!\etapa0|q_reg\(13) & ((\etapa0|Add0~25\) # (GND)))
-- \etapa0|Add0~27\ = CARRY((!\etapa0|Add0~25\) # (!\etapa0|q_reg\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \etapa0|q_reg\(13),
	datad => VCC,
	cin => \etapa0|Add0~25\,
	combout => \etapa0|Add0~26_combout\,
	cout => \etapa0|Add0~27\);

-- Location: LCCOMB_X27_Y2_N4
\etapa0|q_next[13]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \etapa0|q_next[13]~9_combout\ = (\etapa0|Add0~26_combout\ & !\etapa0|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \etapa0|Add0~26_combout\,
	datad => \etapa0|Equal0~8_combout\,
	combout => \etapa0|q_next[13]~9_combout\);

-- Location: FF_X27_Y2_N5
\etapa0|q_reg[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \etapa0|q_next[13]~9_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \etapa0|q_reg\(13));

-- Location: LCCOMB_X26_Y2_N2
\etapa0|Add0~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \etapa0|Add0~28_combout\ = (\etapa0|q_reg\(14) & (\etapa0|Add0~27\ $ (GND))) # (!\etapa0|q_reg\(14) & (!\etapa0|Add0~27\ & VCC))
-- \etapa0|Add0~29\ = CARRY((\etapa0|q_reg\(14) & !\etapa0|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \etapa0|q_reg\(14),
	datad => VCC,
	cin => \etapa0|Add0~27\,
	combout => \etapa0|Add0~28_combout\,
	cout => \etapa0|Add0~29\);

-- Location: LCCOMB_X26_Y2_N26
\etapa0|q_next[14]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \etapa0|q_next[14]~8_combout\ = (!\etapa0|Equal0~8_combout\ & \etapa0|Add0~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \etapa0|Equal0~8_combout\,
	datad => \etapa0|Add0~28_combout\,
	combout => \etapa0|q_next[14]~8_combout\);

-- Location: FF_X26_Y2_N27
\etapa0|q_reg[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \etapa0|q_next[14]~8_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \etapa0|q_reg\(14));

-- Location: LCCOMB_X26_Y2_N4
\etapa0|Add0~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \etapa0|Add0~30_combout\ = (\etapa0|q_reg\(15) & (!\etapa0|Add0~29\)) # (!\etapa0|q_reg\(15) & ((\etapa0|Add0~29\) # (GND)))
-- \etapa0|Add0~31\ = CARRY((!\etapa0|Add0~29\) # (!\etapa0|q_reg\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \etapa0|q_reg\(15),
	datad => VCC,
	cin => \etapa0|Add0~29\,
	combout => \etapa0|Add0~30_combout\,
	cout => \etapa0|Add0~31\);

-- Location: LCCOMB_X27_Y2_N20
\etapa0|q_next[15]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \etapa0|q_next[15]~7_combout\ = (\etapa0|Add0~30_combout\ & !\etapa0|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \etapa0|Add0~30_combout\,
	datad => \etapa0|Equal0~8_combout\,
	combout => \etapa0|q_next[15]~7_combout\);

-- Location: FF_X27_Y2_N21
\etapa0|q_reg[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \etapa0|q_next[15]~7_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \etapa0|q_reg\(15));

-- Location: LCCOMB_X26_Y2_N6
\etapa0|Add0~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \etapa0|Add0~32_combout\ = (\etapa0|q_reg\(16) & (\etapa0|Add0~31\ $ (GND))) # (!\etapa0|q_reg\(16) & (!\etapa0|Add0~31\ & VCC))
-- \etapa0|Add0~33\ = CARRY((\etapa0|q_reg\(16) & !\etapa0|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \etapa0|q_reg\(16),
	datad => VCC,
	cin => \etapa0|Add0~31\,
	combout => \etapa0|Add0~32_combout\,
	cout => \etapa0|Add0~33\);

-- Location: FF_X26_Y2_N7
\etapa0|q_reg[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \etapa0|Add0~32_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \etapa0|q_reg\(16));

-- Location: LCCOMB_X26_Y2_N8
\etapa0|Add0~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \etapa0|Add0~34_combout\ = (\etapa0|q_reg\(17) & (!\etapa0|Add0~33\)) # (!\etapa0|q_reg\(17) & ((\etapa0|Add0~33\) # (GND)))
-- \etapa0|Add0~35\ = CARRY((!\etapa0|Add0~33\) # (!\etapa0|q_reg\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \etapa0|q_reg\(17),
	datad => VCC,
	cin => \etapa0|Add0~33\,
	combout => \etapa0|Add0~34_combout\,
	cout => \etapa0|Add0~35\);

-- Location: LCCOMB_X27_Y2_N30
\etapa0|q_next[17]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \etapa0|q_next[17]~6_combout\ = (!\etapa0|Equal0~8_combout\ & \etapa0|Add0~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \etapa0|Equal0~8_combout\,
	datad => \etapa0|Add0~34_combout\,
	combout => \etapa0|q_next[17]~6_combout\);

-- Location: FF_X27_Y2_N31
\etapa0|q_reg[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \etapa0|q_next[17]~6_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \etapa0|q_reg\(17));

-- Location: LCCOMB_X26_Y2_N10
\etapa0|Add0~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \etapa0|Add0~36_combout\ = (\etapa0|q_reg\(18) & (\etapa0|Add0~35\ $ (GND))) # (!\etapa0|q_reg\(18) & (!\etapa0|Add0~35\ & VCC))
-- \etapa0|Add0~37\ = CARRY((\etapa0|q_reg\(18) & !\etapa0|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \etapa0|q_reg\(18),
	datad => VCC,
	cin => \etapa0|Add0~35\,
	combout => \etapa0|Add0~36_combout\,
	cout => \etapa0|Add0~37\);

-- Location: FF_X26_Y2_N11
\etapa0|q_reg[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \etapa0|Add0~36_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \etapa0|q_reg\(18));

-- Location: LCCOMB_X26_Y2_N12
\etapa0|Add0~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \etapa0|Add0~38_combout\ = (\etapa0|q_reg\(19) & (!\etapa0|Add0~37\)) # (!\etapa0|q_reg\(19) & ((\etapa0|Add0~37\) # (GND)))
-- \etapa0|Add0~39\ = CARRY((!\etapa0|Add0~37\) # (!\etapa0|q_reg\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \etapa0|q_reg\(19),
	datad => VCC,
	cin => \etapa0|Add0~37\,
	combout => \etapa0|Add0~38_combout\,
	cout => \etapa0|Add0~39\);

-- Location: LCCOMB_X26_Y2_N28
\etapa0|q_next[19]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \etapa0|q_next[19]~5_combout\ = (!\etapa0|Equal0~8_combout\ & \etapa0|Add0~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \etapa0|Equal0~8_combout\,
	datad => \etapa0|Add0~38_combout\,
	combout => \etapa0|q_next[19]~5_combout\);

-- Location: FF_X26_Y2_N29
\etapa0|q_reg[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \etapa0|q_next[19]~5_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \etapa0|q_reg\(19));

-- Location: LCCOMB_X26_Y2_N14
\etapa0|Add0~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \etapa0|Add0~40_combout\ = (\etapa0|q_reg\(20) & (\etapa0|Add0~39\ $ (GND))) # (!\etapa0|q_reg\(20) & (!\etapa0|Add0~39\ & VCC))
-- \etapa0|Add0~41\ = CARRY((\etapa0|q_reg\(20) & !\etapa0|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \etapa0|q_reg\(20),
	datad => VCC,
	cin => \etapa0|Add0~39\,
	combout => \etapa0|Add0~40_combout\,
	cout => \etapa0|Add0~41\);

-- Location: LCCOMB_X27_Y2_N18
\etapa0|q_next[20]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \etapa0|q_next[20]~4_combout\ = (!\etapa0|Equal0~8_combout\ & \etapa0|Add0~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \etapa0|Equal0~8_combout\,
	datad => \etapa0|Add0~40_combout\,
	combout => \etapa0|q_next[20]~4_combout\);

-- Location: FF_X27_Y2_N19
\etapa0|q_reg[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \etapa0|q_next[20]~4_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \etapa0|q_reg\(20));

-- Location: LCCOMB_X26_Y2_N16
\etapa0|Add0~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \etapa0|Add0~42_combout\ = (\etapa0|q_reg\(21) & (!\etapa0|Add0~41\)) # (!\etapa0|q_reg\(21) & ((\etapa0|Add0~41\) # (GND)))
-- \etapa0|Add0~43\ = CARRY((!\etapa0|Add0~41\) # (!\etapa0|q_reg\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \etapa0|q_reg\(21),
	datad => VCC,
	cin => \etapa0|Add0~41\,
	combout => \etapa0|Add0~42_combout\,
	cout => \etapa0|Add0~43\);

-- Location: LCCOMB_X27_Y2_N28
\etapa0|q_next[21]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \etapa0|q_next[21]~3_combout\ = (\etapa0|Add0~42_combout\ & !\etapa0|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \etapa0|Add0~42_combout\,
	datad => \etapa0|Equal0~8_combout\,
	combout => \etapa0|q_next[21]~3_combout\);

-- Location: FF_X27_Y2_N29
\etapa0|q_reg[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \etapa0|q_next[21]~3_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \etapa0|q_reg\(21));

-- Location: LCCOMB_X26_Y2_N18
\etapa0|Add0~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \etapa0|Add0~44_combout\ = (\etapa0|q_reg\(22) & (\etapa0|Add0~43\ $ (GND))) # (!\etapa0|q_reg\(22) & (!\etapa0|Add0~43\ & VCC))
-- \etapa0|Add0~45\ = CARRY((\etapa0|q_reg\(22) & !\etapa0|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \etapa0|q_reg\(22),
	datad => VCC,
	cin => \etapa0|Add0~43\,
	combout => \etapa0|Add0~44_combout\,
	cout => \etapa0|Add0~45\);

-- Location: LCCOMB_X26_Y2_N30
\etapa0|q_next[22]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \etapa0|q_next[22]~2_combout\ = (!\etapa0|Equal0~8_combout\ & \etapa0|Add0~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \etapa0|Equal0~8_combout\,
	datad => \etapa0|Add0~44_combout\,
	combout => \etapa0|q_next[22]~2_combout\);

-- Location: FF_X26_Y2_N31
\etapa0|q_reg[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \etapa0|q_next[22]~2_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \etapa0|q_reg\(22));

-- Location: LCCOMB_X26_Y2_N20
\etapa0|Add0~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \etapa0|Add0~46_combout\ = (\etapa0|q_reg\(23) & (!\etapa0|Add0~45\)) # (!\etapa0|q_reg\(23) & ((\etapa0|Add0~45\) # (GND)))
-- \etapa0|Add0~47\ = CARRY((!\etapa0|Add0~45\) # (!\etapa0|q_reg\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \etapa0|q_reg\(23),
	datad => VCC,
	cin => \etapa0|Add0~45\,
	combout => \etapa0|Add0~46_combout\,
	cout => \etapa0|Add0~47\);

-- Location: LCCOMB_X27_Y2_N8
\etapa0|q_next[23]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \etapa0|q_next[23]~1_combout\ = (!\etapa0|Equal0~8_combout\ & \etapa0|Add0~46_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \etapa0|Equal0~8_combout\,
	datad => \etapa0|Add0~46_combout\,
	combout => \etapa0|q_next[23]~1_combout\);

-- Location: FF_X27_Y2_N9
\etapa0|q_reg[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \etapa0|q_next[23]~1_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \etapa0|q_reg\(23));

-- Location: LCCOMB_X26_Y2_N22
\etapa0|Add0~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \etapa0|Add0~48_combout\ = (\etapa0|q_reg\(24) & (\etapa0|Add0~47\ $ (GND))) # (!\etapa0|q_reg\(24) & (!\etapa0|Add0~47\ & VCC))
-- \etapa0|Add0~49\ = CARRY((\etapa0|q_reg\(24) & !\etapa0|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \etapa0|q_reg\(24),
	datad => VCC,
	cin => \etapa0|Add0~47\,
	combout => \etapa0|Add0~48_combout\,
	cout => \etapa0|Add0~49\);

-- Location: FF_X26_Y2_N23
\etapa0|q_reg[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \etapa0|Add0~48_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \etapa0|q_reg\(24));

-- Location: LCCOMB_X26_Y2_N24
\etapa0|Add0~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \etapa0|Add0~50_combout\ = \etapa0|Add0~49\ $ (\etapa0|q_reg\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \etapa0|q_reg\(25),
	cin => \etapa0|Add0~49\,
	combout => \etapa0|Add0~50_combout\);

-- Location: LCCOMB_X27_Y2_N26
\etapa0|q_next[25]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \etapa0|q_next[25]~0_combout\ = (!\etapa0|Equal0~8_combout\ & \etapa0|Add0~50_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \etapa0|Equal0~8_combout\,
	datad => \etapa0|Add0~50_combout\,
	combout => \etapa0|q_next[25]~0_combout\);

-- Location: FF_X27_Y2_N27
\etapa0|q_reg[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \etapa0|q_next[25]~0_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \etapa0|q_reg\(25));

-- Location: LCCOMB_X27_Y2_N22
\etapa0|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \etapa0|Equal0~0_combout\ = (\etapa0|q_reg\(25) & (!\etapa0|q_reg\(24) & (\etapa0|q_reg\(23) & \etapa0|q_reg\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \etapa0|q_reg\(25),
	datab => \etapa0|q_reg\(24),
	datac => \etapa0|q_reg\(23),
	datad => \etapa0|q_reg\(22),
	combout => \etapa0|Equal0~0_combout\);

-- Location: LCCOMB_X27_Y2_N16
\etapa0|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \etapa0|Equal0~1_combout\ = (!\etapa0|q_reg\(18) & (\etapa0|q_reg\(21) & (\etapa0|q_reg\(19) & \etapa0|q_reg\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \etapa0|q_reg\(18),
	datab => \etapa0|q_reg\(21),
	datac => \etapa0|q_reg\(19),
	datad => \etapa0|q_reg\(20),
	combout => \etapa0|Equal0~1_combout\);

-- Location: LCCOMB_X27_Y2_N14
\etapa0|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \etapa0|Equal0~2_combout\ = (\etapa0|q_reg\(17) & (!\etapa0|q_reg\(16) & (\etapa0|q_reg\(14) & \etapa0|q_reg\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \etapa0|q_reg\(17),
	datab => \etapa0|q_reg\(16),
	datac => \etapa0|q_reg\(14),
	datad => \etapa0|q_reg\(15),
	combout => \etapa0|Equal0~2_combout\);

-- Location: LCCOMB_X27_Y2_N12
\etapa0|Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \etapa0|Equal0~3_combout\ = (\etapa0|q_reg\(12) & (\etapa0|q_reg\(13) & (!\etapa0|q_reg\(10) & !\etapa0|q_reg\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \etapa0|q_reg\(12),
	datab => \etapa0|q_reg\(13),
	datac => \etapa0|q_reg\(10),
	datad => \etapa0|q_reg\(11),
	combout => \etapa0|Equal0~3_combout\);

-- Location: LCCOMB_X27_Y2_N10
\etapa0|Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \etapa0|Equal0~4_combout\ = (\etapa0|Equal0~0_combout\ & (\etapa0|Equal0~1_combout\ & (\etapa0|Equal0~2_combout\ & \etapa0|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \etapa0|Equal0~0_combout\,
	datab => \etapa0|Equal0~1_combout\,
	datac => \etapa0|Equal0~2_combout\,
	datad => \etapa0|Equal0~3_combout\,
	combout => \etapa0|Equal0~4_combout\);

-- Location: LCCOMB_X27_Y2_N24
\etapa0|Equal0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \etapa0|Equal0~8_combout\ = (\etapa0|Equal0~6_combout\ & (\etapa0|Equal0~5_combout\ & (\etapa0|Equal0~7_combout\ & \etapa0|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \etapa0|Equal0~6_combout\,
	datab => \etapa0|Equal0~5_combout\,
	datac => \etapa0|Equal0~7_combout\,
	datad => \etapa0|Equal0~4_combout\,
	combout => \etapa0|Equal0~8_combout\);

-- Location: FF_X27_Y2_N25
\etapa0|clk_o_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \etapa0|Equal0~8_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \etapa0|clk_o_reg~q\);

-- Location: FF_X31_Y1_N3
\estado_presente.A\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector0~0_combout\,
	clrn => \reset_n~input_o\,
	ena => \etapa0|clk_o_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado_presente.A~q\);

-- Location: LCCOMB_X31_Y1_N8
\Selector1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector1~2_combout\ = (!\min_value_p~input_o\ & ((\ini_pausa_lan~input_o\ & ((!\ini_pausa_per~input_o\))) # (!\ini_pausa_lan~input_o\ & ((\borrar_lan~input_o\) # (\ini_pausa_per~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \borrar_lan~input_o\,
	datab => \ini_pausa_lan~input_o\,
	datac => \min_value_p~input_o\,
	datad => \ini_pausa_per~input_o\,
	combout => \Selector1~2_combout\);

-- Location: LCCOMB_X31_Y1_N14
\Selector1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector1~3_combout\ = (\estado_presente.B~q\ & ((\Selector1~2_combout\) # ((\estado_presente.C~q\ & \process_1~1_combout\)))) # (!\estado_presente.B~q\ & (\estado_presente.C~q\ & ((\process_1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado_presente.B~q\,
	datab => \estado_presente.C~q\,
	datac => \Selector1~2_combout\,
	datad => \process_1~1_combout\,
	combout => \Selector1~3_combout\);

-- Location: LCCOMB_X31_Y1_N26
\Selector1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector1~4_combout\ = (\Selector1~1_combout\) # ((\Selector1~3_combout\) # ((!\estado_presente.A~q\ & \estado_siguiente~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector1~1_combout\,
	datab => \estado_presente.A~q\,
	datac => \Selector1~3_combout\,
	datad => \estado_siguiente~0_combout\,
	combout => \Selector1~4_combout\);

-- Location: FF_X31_Y1_N27
\estado_presente.B\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector1~4_combout\,
	clrn => \reset_n~input_o\,
	ena => \etapa0|clk_o_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado_presente.B~q\);

-- Location: LCCOMB_X31_Y1_N28
\ini_pausa_p~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ini_pausa_p~0_combout\ = (\estado_presente.B~q\) # (\estado_presente.C~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \estado_presente.B~q\,
	datad => \estado_presente.C~q\,
	combout => \ini_pausa_p~0_combout\);

-- Location: LCCOMB_X32_Y1_N8
\process_1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \process_1~2_combout\ = (!\min_value_l~input_o\ & (!\ini_pausa_lan~input_o\ & (!\ini_pausa_per~input_o\ & !\min_value_p~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \min_value_l~input_o\,
	datab => \ini_pausa_lan~input_o\,
	datac => \ini_pausa_per~input_o\,
	datad => \min_value_p~input_o\,
	combout => \process_1~2_combout\);

-- Location: LCCOMB_X31_Y1_N4
\Selector3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector3~2_combout\ = (\estado_presente.E~q\ & (\process_1~2_combout\ & !\borrar_lan~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado_presente.E~q\,
	datac => \process_1~2_combout\,
	datad => \borrar_lan~input_o\,
	combout => \Selector3~2_combout\);

-- Location: LCCOMB_X32_Y1_N10
\Selector3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = (\borrar_lan~input_o\ & (((!\process_1~2_combout\)))) # (!\borrar_lan~input_o\ & (((\ini_pausa_lan~input_o\)) # (!\process_1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_1~0_combout\,
	datab => \borrar_lan~input_o\,
	datac => \ini_pausa_lan~input_o\,
	datad => \process_1~2_combout\,
	combout => \Selector3~0_combout\);

-- Location: LCCOMB_X32_Y1_N28
\Selector3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector3~1_combout\ = (\Selector3~0_combout\ & (\estado_presente.D~q\ & ((!\process_1~0_combout\) # (!\ini_pausa_lan~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector3~0_combout\,
	datab => \estado_presente.D~q\,
	datac => \ini_pausa_lan~input_o\,
	datad => \process_1~0_combout\,
	combout => \Selector3~1_combout\);

-- Location: LCCOMB_X31_Y1_N20
\Selector3~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector3~4_combout\ = (\Selector3~2_combout\) # ((\Selector3~1_combout\) # ((\Selector3~3_combout\ & \ini_pausa_p~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector3~3_combout\,
	datab => \ini_pausa_p~0_combout\,
	datac => \Selector3~2_combout\,
	datad => \Selector3~1_combout\,
	combout => \Selector3~4_combout\);

-- Location: FF_X31_Y1_N21
\estado_presente.D\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector3~4_combout\,
	clrn => \reset_n~input_o\,
	ena => \etapa0|clk_o_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado_presente.D~q\);

-- Location: LCCOMB_X31_Y1_N24
\Selector4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = (\estado_presente.E~q\ & ((!\ini_pausa_lan~input_o\) # (!\ini_pausa_per~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ini_pausa_per~input_o\,
	datac => \ini_pausa_lan~input_o\,
	datad => \estado_presente.E~q\,
	combout => \Selector4~0_combout\);

-- Location: LCCOMB_X31_Y1_N12
\Selector4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector4~1_combout\ = (\process_1~2_combout\ & (\borrar_lan~input_o\ & ((\estado_presente.D~q\) # (\Selector4~0_combout\)))) # (!\process_1~2_combout\ & (((\Selector4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \borrar_lan~input_o\,
	datab => \estado_presente.D~q\,
	datac => \process_1~2_combout\,
	datad => \Selector4~0_combout\,
	combout => \Selector4~1_combout\);

-- Location: FF_X31_Y1_N13
\estado_presente.E\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector4~1_combout\,
	clrn => \reset_n~input_o\,
	ena => \etapa0|clk_o_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado_presente.E~q\);

-- Location: LCCOMB_X32_Y1_N18
\Selector2~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector2~3_combout\ = (!\min_value_p~input_o\ & ((\estado_presente.B~q\) # ((!\min_value_l~input_o\ & \estado_presente.D~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \min_value_l~input_o\,
	datab => \estado_presente.D~q\,
	datac => \estado_presente.B~q\,
	datad => \min_value_p~input_o\,
	combout => \Selector2~3_combout\);

-- Location: LCCOMB_X31_Y1_N18
\Selector2~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector2~16_combout\ = (\ini_pausa_lan~input_o\ & (\ini_pausa_per~input_o\ & ((\estado_presente.E~q\) # (\Selector2~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado_presente.E~q\,
	datab => \Selector2~3_combout\,
	datac => \ini_pausa_lan~input_o\,
	datad => \ini_pausa_per~input_o\,
	combout => \Selector2~16_combout\);

-- Location: LCCOMB_X31_Y1_N0
\Selector2~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector2~15_combout\ = (\Selector2~16_combout\) # ((\Selector1~0_combout\ & (!\process_1~1_combout\ & \estado_presente.C~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector1~0_combout\,
	datab => \process_1~1_combout\,
	datac => \estado_presente.C~q\,
	datad => \Selector2~16_combout\,
	combout => \Selector2~15_combout\);

-- Location: FF_X31_Y1_N1
\estado_presente.C\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector2~15_combout\,
	clrn => \reset_n~input_o\,
	ena => \etapa0|clk_o_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado_presente.C~q\);

-- Location: LCCOMB_X31_Y1_N30
\borrar_l~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \borrar_l~0_combout\ = (\estado_presente.D~q\) # (\estado_presente.C~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \estado_presente.D~q\,
	datad => \estado_presente.C~q\,
	combout => \borrar_l~0_combout\);

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

ww_ini_pausa_l <= \ini_pausa_l~output_o\;

ww_ini_pausa_p <= \ini_pausa_p~output_o\;

ww_salida10bits(0) <= \salida10bits[0]~output_o\;

ww_salida10bits(1) <= \salida10bits[1]~output_o\;

ww_salida10bits(2) <= \salida10bits[2]~output_o\;

ww_salida10bits(3) <= \salida10bits[3]~output_o\;

ww_salida10bits(4) <= \salida10bits[4]~output_o\;

ww_salida10bits(5) <= \salida10bits[5]~output_o\;

ww_salida10bits(6) <= \salida10bits[6]~output_o\;

ww_salida10bits(7) <= \salida10bits[7]~output_o\;

ww_salida10bits(8) <= \salida10bits[8]~output_o\;

ww_salida10bits(9) <= \salida10bits[9]~output_o\;

ww_borrar_p <= \borrar_p~output_o\;

ww_borrar_l <= \borrar_l~output_o\;
END structure;



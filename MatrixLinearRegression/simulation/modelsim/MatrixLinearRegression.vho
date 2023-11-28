-- Copyright (C) 2023  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 22.1std.2 Build 922 07/20/2023 SC Lite Edition"

-- DATE "11/28/2023 18:19:55"

-- 
-- Device: Altera 5CEBA4F23C7 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	MatrixLinearRegression IS
    PORT (
	DAT : BUFFER std_logic_vector(3 DOWNTO 0);
	CLK : IN std_logic;
	CMD : BUFFER std_logic;
	DATA : BUFFER std_logic_vector(3 DOWNTO 0)
	);
END MatrixLinearRegression;

-- Design Ports Information
-- CMD	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA[0]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA[1]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA[2]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA[3]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DAT[0]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DAT[1]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DAT[2]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DAT[3]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_H11,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF MatrixLinearRegression IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_DAT : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_CLK : std_logic;
SIGNAL ww_CMD : std_logic;
SIGNAL ww_DATA : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputCLKENA0_outclk\ : std_logic;
SIGNAL \DAT[0]~input_o\ : std_logic;
SIGNAL \DATA[0]~reg0feeder_combout\ : std_logic;
SIGNAL \DATA[0]~reg0_q\ : std_logic;
SIGNAL \DAT[1]~input_o\ : std_logic;
SIGNAL \DATA[1]~reg0feeder_combout\ : std_logic;
SIGNAL \DATA[1]~reg0_q\ : std_logic;
SIGNAL \DAT[2]~input_o\ : std_logic;
SIGNAL \DATA[2]~reg0_q\ : std_logic;
SIGNAL \DAT[3]~input_o\ : std_logic;
SIGNAL \DATA[3]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_DAT[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_DAT[1]~input_o\ : std_logic;

BEGIN

DAT <= ww_DAT;
ww_CLK <= CLK;
CMD <= ww_CMD;
DATA <= ww_DATA;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_DAT[0]~input_o\ <= NOT \DAT[0]~input_o\;
\ALT_INV_DAT[1]~input_o\ <= NOT \DAT[1]~input_o\;

-- Location: IOOBUF_X32_Y45_N93
\CMD~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_CMD);

-- Location: IOOBUF_X50_Y0_N36
\DATA[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DATA[0]~reg0_q\,
	devoe => ww_devoe,
	o => ww_DATA(0));

-- Location: IOOBUF_X48_Y0_N76
\DATA[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DATA[1]~reg0_q\,
	devoe => ww_devoe,
	o => ww_DATA(1));

-- Location: IOOBUF_X51_Y0_N36
\DATA[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DATA[2]~reg0_q\,
	devoe => ww_devoe,
	o => ww_DATA(2));

-- Location: IOOBUF_X52_Y0_N53
\DATA[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DATA[3]~reg0_q\,
	devoe => ww_devoe,
	o => ww_DATA(3));

-- Location: IOOBUF_X34_Y45_N53
\DAT[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_DAT(0));

-- Location: IOOBUF_X32_Y45_N42
\DAT[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_DAT(1));

-- Location: IOOBUF_X32_Y45_N59
\DAT[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_DAT(2));

-- Location: IOOBUF_X32_Y45_N76
\DAT[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_DAT(3));

-- Location: IOIBUF_X34_Y45_N1
\CLK~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: CLKCTRL_G15
\CLK~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \CLK~input_o\,
	outclk => \CLK~inputCLKENA0_outclk\);

-- Location: IOIBUF_X34_Y45_N52
\DAT[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DAT(0),
	o => \DAT[0]~input_o\);

-- Location: LABCELL_X39_Y36_N33
\DATA[0]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATA[0]~reg0feeder_combout\ = ( \DAT[0]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_DAT[0]~input_o\,
	combout => \DATA[0]~reg0feeder_combout\);

-- Location: FF_X39_Y36_N34
\DATA[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \DATA[0]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATA[0]~reg0_q\);

-- Location: IOIBUF_X32_Y45_N41
\DAT[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DAT(1),
	o => \DAT[1]~input_o\);

-- Location: LABCELL_X36_Y33_N3
\DATA[1]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATA[1]~reg0feeder_combout\ = ( \DAT[1]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_DAT[1]~input_o\,
	combout => \DATA[1]~reg0feeder_combout\);

-- Location: FF_X36_Y33_N4
\DATA[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \DATA[1]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATA[1]~reg0_q\);

-- Location: IOIBUF_X32_Y45_N58
\DAT[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DAT(2),
	o => \DAT[2]~input_o\);

-- Location: FF_X45_Y38_N4
\DATA[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \DAT[2]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATA[2]~reg0_q\);

-- Location: IOIBUF_X32_Y45_N75
\DAT[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DAT(3),
	o => \DAT[3]~input_o\);

-- Location: FF_X39_Y12_N31
\DATA[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \DAT[3]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATA[3]~reg0_q\);

-- Location: LABCELL_X2_Y24_N3
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;



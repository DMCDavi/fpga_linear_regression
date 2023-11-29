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

-- DATE "11/29/2023 12:12:01"

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
	clk : IN std_logic;
	reset_n : IN std_logic;
	tx_ena : IN std_logic;
	rx : IN std_logic;
	rx_busy : BUFFER std_logic;
	rx_ready : BUFFER std_logic;
	os_pulse_out : BUFFER std_logic;
	rx_error : BUFFER std_logic;
	rx_data : BUFFER std_logic_vector(7 DOWNTO 0);
	tx_busy : BUFFER std_logic;
	tx : BUFFER std_logic
	);
END MatrixLinearRegression;

-- Design Ports Information
-- rx_busy	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rx_ready	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- os_pulse_out	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rx_error	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rx_data[0]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rx_data[1]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rx_data[2]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rx_data[3]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rx_data[4]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rx_data[5]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rx_data[6]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rx_data[7]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tx_busy	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tx	=>  Location: PIN_T17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rx	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset_n	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tx_ena	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_clk : std_logic;
SIGNAL ww_reset_n : std_logic;
SIGNAL ww_tx_ena : std_logic;
SIGNAL ww_rx : std_logic;
SIGNAL ww_rx_busy : std_logic;
SIGNAL ww_rx_ready : std_logic;
SIGNAL ww_os_pulse_out : std_logic;
SIGNAL ww_rx_error : std_logic;
SIGNAL ww_rx_data : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_tx_busy : std_logic;
SIGNAL ww_tx : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \rx~input_o\ : std_logic;
SIGNAL \reset_n~input_o\ : std_logic;
SIGNAL \Add0~17_sumout\ : std_logic;
SIGNAL \Add0~18\ : std_logic;
SIGNAL \Add0~13_sumout\ : std_logic;
SIGNAL \Add0~14\ : std_logic;
SIGNAL \Add0~9_sumout\ : std_logic;
SIGNAL \Add0~10\ : std_logic;
SIGNAL \Add0~5_sumout\ : std_logic;
SIGNAL \Add0~6\ : std_logic;
SIGNAL \Add0~33_sumout\ : std_logic;
SIGNAL \Add0~34\ : std_logic;
SIGNAL \Add0~29_sumout\ : std_logic;
SIGNAL \Add0~30\ : std_logic;
SIGNAL \Add0~1_sumout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \Add0~2\ : std_logic;
SIGNAL \Add0~25_sumout\ : std_logic;
SIGNAL \Add0~26\ : std_logic;
SIGNAL \Add0~21_sumout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \count_os~1_combout\ : std_logic;
SIGNAL \count_os[2]~DUPLICATE_q\ : std_logic;
SIGNAL \count_os~0_combout\ : std_logic;
SIGNAL \count_os[4]~DUPLICATE_q\ : std_logic;
SIGNAL \count_os~3_combout\ : std_logic;
SIGNAL \count_os[3]~DUPLICATE_q\ : std_logic;
SIGNAL \count_os~4_combout\ : std_logic;
SIGNAL \count_os~2_combout\ : std_logic;
SIGNAL \LessThan1~0_combout\ : std_logic;
SIGNAL \os_pulse~q\ : std_logic;
SIGNAL \rx_state.ready_st~q\ : std_logic;
SIGNAL \os_count[3]~2_combout\ : std_logic;
SIGNAL \Selector10~0_combout\ : std_logic;
SIGNAL \os_count[2]~1_combout\ : std_logic;
SIGNAL \os_count[3]~3_combout\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \rx_state.idle~q\ : std_logic;
SIGNAL \rx_count[3]~3_combout\ : std_logic;
SIGNAL \Selector9~0_combout\ : std_logic;
SIGNAL \Selector8~0_combout\ : std_logic;
SIGNAL \rx_count[3]~1_combout\ : std_logic;
SIGNAL \rx_count[3]~0_combout\ : std_logic;
SIGNAL \rx_count[3]~2_combout\ : std_logic;
SIGNAL \os_count[0]~5_combout\ : std_logic;
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \os_count[2]~4_combout\ : std_logic;
SIGNAL \tx_data[0]~1_combout\ : std_logic;
SIGNAL \os_count[1]~6_combout\ : std_logic;
SIGNAL \LessThan3~0_combout\ : std_logic;
SIGNAL \Selector6~0_combout\ : std_logic;
SIGNAL \rx_state.receive~q\ : std_logic;
SIGNAL \os_count[2]~0_combout\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \rx_busy~reg0_q\ : std_logic;
SIGNAL \rx_ready_aux~0_combout\ : std_logic;
SIGNAL \rx_ready_aux~q\ : std_logic;
SIGNAL \rx_buffer[0]~0_combout\ : std_logic;
SIGNAL \rx_error~0_combout\ : std_logic;
SIGNAL \tx_data[0]~0_combout\ : std_logic;
SIGNAL \rx_error~reg0_q\ : std_logic;
SIGNAL \rx_data[0]~reg0_q\ : std_logic;
SIGNAL \rx_data[1]~reg0feeder_combout\ : std_logic;
SIGNAL \rx_data[1]~reg0_q\ : std_logic;
SIGNAL \rx_data[2]~reg0_q\ : std_logic;
SIGNAL \rx_data[3]~reg0_q\ : std_logic;
SIGNAL \rx_data[4]~reg0_q\ : std_logic;
SIGNAL \rx_data[5]~reg0feeder_combout\ : std_logic;
SIGNAL \rx_data[5]~reg0_q\ : std_logic;
SIGNAL \rx_data[6]~reg0_q\ : std_logic;
SIGNAL \rx_data[7]~reg0feeder_combout\ : std_logic;
SIGNAL \rx_data[7]~reg0_q\ : std_logic;
SIGNAL \tx_ena~input_o\ : std_logic;
SIGNAL \tx_busy~0_combout\ : std_logic;
SIGNAL \baud_pulse~q\ : std_logic;
SIGNAL \tx_count~4_combout\ : std_logic;
SIGNAL \tx_count[0]~1_combout\ : std_logic;
SIGNAL \tx_count~3_combout\ : std_logic;
SIGNAL \tx_count~2_combout\ : std_logic;
SIGNAL \tx_count~0_combout\ : std_logic;
SIGNAL \LessThan5~0_combout\ : std_logic;
SIGNAL \tx_state~q\ : std_logic;
SIGNAL \tx_busy~reg0_q\ : std_logic;
SIGNAL \tx_data[0]~feeder_combout\ : std_logic;
SIGNAL \tx_data[0]~2_combout\ : std_logic;
SIGNAL \tx_data[6]~feeder_combout\ : std_logic;
SIGNAL \tx_data[7]~feeder_combout\ : std_logic;
SIGNAL \tx_buffer~10_combout\ : std_logic;
SIGNAL \tx_buffer[0]~1_combout\ : std_logic;
SIGNAL \tx_buffer~9_combout\ : std_logic;
SIGNAL \tx_buffer~8_combout\ : std_logic;
SIGNAL \tx_buffer~7_combout\ : std_logic;
SIGNAL \tx_buffer~6_combout\ : std_logic;
SIGNAL \tx_buffer~5_combout\ : std_logic;
SIGNAL \tx_buffer~4_combout\ : std_logic;
SIGNAL \tx_buffer~3_combout\ : std_logic;
SIGNAL \tx_buffer~2_combout\ : std_logic;
SIGNAL \tx_buffer~0_combout\ : std_logic;
SIGNAL \tx~reg0_q\ : std_logic;
SIGNAL count_baud : std_logic_vector(8 DOWNTO 0);
SIGNAL os_count : std_logic_vector(3 DOWNTO 0);
SIGNAL rx_count : std_logic_vector(3 DOWNTO 0);
SIGNAL count_os : std_logic_vector(4 DOWNTO 0);
SIGNAL rx_buffer : std_logic_vector(8 DOWNTO 0);
SIGNAL tx_buffer : std_logic_vector(9 DOWNTO 0);
SIGNAL tx_count : std_logic_vector(3 DOWNTO 0);
SIGNAL tx_data : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_LessThan0~1_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL ALT_INV_count_os : std_logic_vector(4 DOWNTO 0);
SIGNAL \ALT_INV_os_count[2]~0_combout\ : std_logic;
SIGNAL \ALT_INV_rx_state.receive~q\ : std_logic;
SIGNAL ALT_INV_os_count : std_logic_vector(3 DOWNTO 0);
SIGNAL ALT_INV_rx_count : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_rx_state.idle~q\ : std_logic;
SIGNAL \ALT_INV_tx~reg0_q\ : std_logic;
SIGNAL \ALT_INV_tx_busy~reg0_q\ : std_logic;
SIGNAL \ALT_INV_os_pulse~q\ : std_logic;
SIGNAL \ALT_INV_rx_ready_aux~q\ : std_logic;
SIGNAL \ALT_INV_rx_busy~reg0_q\ : std_logic;
SIGNAL \ALT_INV_tx_state~q\ : std_logic;
SIGNAL ALT_INV_count_baud : std_logic_vector(8 DOWNTO 0);
SIGNAL \ALT_INV_count_os[3]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_count_os[2]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_count_os[4]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_tx_ena~input_o\ : std_logic;
SIGNAL \ALT_INV_reset_n~input_o\ : std_logic;
SIGNAL \ALT_INV_rx~input_o\ : std_logic;
SIGNAL ALT_INV_tx_data : std_logic_vector(7 DOWNTO 0);
SIGNAL ALT_INV_tx_buffer : std_logic_vector(9 DOWNTO 1);
SIGNAL ALT_INV_tx_count : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_baud_pulse~q\ : std_logic;
SIGNAL \ALT_INV_LessThan0~2_combout\ : std_logic;
SIGNAL \ALT_INV_Add2~0_combout\ : std_logic;
SIGNAL \ALT_INV_rx_count[3]~1_combout\ : std_logic;
SIGNAL \ALT_INV_tx_data[0]~1_combout\ : std_logic;
SIGNAL \ALT_INV_rx_count[3]~0_combout\ : std_logic;
SIGNAL \ALT_INV_os_count[3]~2_combout\ : std_logic;
SIGNAL \ALT_INV_os_count[2]~1_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan3~0_combout\ : std_logic;
SIGNAL \ALT_INV_rx_state.ready_st~q\ : std_logic;
SIGNAL ALT_INV_rx_buffer : std_logic_vector(8 DOWNTO 0);

BEGIN

ww_clk <= clk;
ww_reset_n <= reset_n;
ww_tx_ena <= tx_ena;
ww_rx <= rx;
rx_busy <= ww_rx_busy;
rx_ready <= ww_rx_ready;
os_pulse_out <= ww_os_pulse_out;
rx_error <= ww_rx_error;
rx_data <= ww_rx_data;
tx_busy <= ww_tx_busy;
tx <= ww_tx;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_LessThan0~1_combout\ <= NOT \LessThan0~1_combout\;
\ALT_INV_LessThan0~0_combout\ <= NOT \LessThan0~0_combout\;
ALT_INV_count_os(4) <= NOT count_os(4);
\ALT_INV_os_count[2]~0_combout\ <= NOT \os_count[2]~0_combout\;
\ALT_INV_rx_state.receive~q\ <= NOT \rx_state.receive~q\;
ALT_INV_os_count(1) <= NOT os_count(1);
ALT_INV_os_count(0) <= NOT os_count(0);
ALT_INV_os_count(2) <= NOT os_count(2);
ALT_INV_rx_count(3) <= NOT rx_count(3);
ALT_INV_os_count(3) <= NOT os_count(3);
\ALT_INV_rx_state.idle~q\ <= NOT \rx_state.idle~q\;
\ALT_INV_tx~reg0_q\ <= NOT \tx~reg0_q\;
\ALT_INV_tx_busy~reg0_q\ <= NOT \tx_busy~reg0_q\;
\ALT_INV_os_pulse~q\ <= NOT \os_pulse~q\;
\ALT_INV_rx_ready_aux~q\ <= NOT \rx_ready_aux~q\;
\ALT_INV_rx_busy~reg0_q\ <= NOT \rx_busy~reg0_q\;
\ALT_INV_tx_state~q\ <= NOT \tx_state~q\;
ALT_INV_count_baud(4) <= NOT count_baud(4);
ALT_INV_count_baud(5) <= NOT count_baud(5);
ALT_INV_count_baud(7) <= NOT count_baud(7);
ALT_INV_count_baud(8) <= NOT count_baud(8);
ALT_INV_count_baud(0) <= NOT count_baud(0);
ALT_INV_count_baud(1) <= NOT count_baud(1);
ALT_INV_count_baud(2) <= NOT count_baud(2);
ALT_INV_count_baud(3) <= NOT count_baud(3);
ALT_INV_count_baud(6) <= NOT count_baud(6);
\ALT_INV_count_os[3]~DUPLICATE_q\ <= NOT \count_os[3]~DUPLICATE_q\;
\ALT_INV_count_os[2]~DUPLICATE_q\ <= NOT \count_os[2]~DUPLICATE_q\;
\ALT_INV_count_os[4]~DUPLICATE_q\ <= NOT \count_os[4]~DUPLICATE_q\;
\ALT_INV_tx_ena~input_o\ <= NOT \tx_ena~input_o\;
\ALT_INV_reset_n~input_o\ <= NOT \reset_n~input_o\;
\ALT_INV_rx~input_o\ <= NOT \rx~input_o\;
ALT_INV_tx_data(7) <= NOT tx_data(7);
ALT_INV_tx_data(6) <= NOT tx_data(6);
ALT_INV_tx_buffer(9) <= NOT tx_buffer(9);
ALT_INV_tx_data(5) <= NOT tx_data(5);
ALT_INV_tx_buffer(8) <= NOT tx_buffer(8);
ALT_INV_tx_data(4) <= NOT tx_data(4);
ALT_INV_tx_buffer(7) <= NOT tx_buffer(7);
ALT_INV_tx_data(3) <= NOT tx_data(3);
ALT_INV_tx_buffer(6) <= NOT tx_buffer(6);
ALT_INV_tx_data(2) <= NOT tx_data(2);
ALT_INV_tx_buffer(5) <= NOT tx_buffer(5);
ALT_INV_tx_data(1) <= NOT tx_data(1);
ALT_INV_tx_buffer(4) <= NOT tx_buffer(4);
ALT_INV_tx_data(0) <= NOT tx_data(0);
ALT_INV_tx_buffer(3) <= NOT tx_buffer(3);
ALT_INV_tx_buffer(2) <= NOT tx_buffer(2);
ALT_INV_tx_buffer(1) <= NOT tx_buffer(1);
ALT_INV_tx_count(0) <= NOT tx_count(0);
\ALT_INV_baud_pulse~q\ <= NOT \baud_pulse~q\;
ALT_INV_tx_count(1) <= NOT tx_count(1);
ALT_INV_tx_count(2) <= NOT tx_count(2);
ALT_INV_tx_count(3) <= NOT tx_count(3);
ALT_INV_count_os(0) <= NOT count_os(0);
\ALT_INV_LessThan0~2_combout\ <= NOT \LessThan0~2_combout\;
\ALT_INV_Add2~0_combout\ <= NOT \Add2~0_combout\;
\ALT_INV_rx_count[3]~1_combout\ <= NOT \rx_count[3]~1_combout\;
ALT_INV_rx_count(1) <= NOT rx_count(1);
ALT_INV_rx_count(0) <= NOT rx_count(0);
ALT_INV_rx_count(2) <= NOT rx_count(2);
\ALT_INV_tx_data[0]~1_combout\ <= NOT \tx_data[0]~1_combout\;
\ALT_INV_rx_count[3]~0_combout\ <= NOT \rx_count[3]~0_combout\;
\ALT_INV_os_count[3]~2_combout\ <= NOT \os_count[3]~2_combout\;
\ALT_INV_os_count[2]~1_combout\ <= NOT \os_count[2]~1_combout\;
\ALT_INV_LessThan3~0_combout\ <= NOT \LessThan3~0_combout\;
\ALT_INV_rx_state.ready_st~q\ <= NOT \rx_state.ready_st~q\;
ALT_INV_rx_buffer(8) <= NOT rx_buffer(8);
ALT_INV_rx_buffer(7) <= NOT rx_buffer(7);
ALT_INV_rx_buffer(6) <= NOT rx_buffer(6);
ALT_INV_rx_buffer(2) <= NOT rx_buffer(2);
ALT_INV_rx_buffer(1) <= NOT rx_buffer(1);
ALT_INV_rx_buffer(0) <= NOT rx_buffer(0);
ALT_INV_count_os(3) <= NOT count_os(3);
ALT_INV_count_os(1) <= NOT count_os(1);
ALT_INV_count_os(2) <= NOT count_os(2);

-- Location: IOOBUF_X51_Y0_N36
\rx_busy~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \rx_busy~reg0_q\,
	devoe => ww_devoe,
	o => ww_rx_busy);

-- Location: IOOBUF_X50_Y0_N36
\rx_ready~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \rx_ready_aux~q\,
	devoe => ww_devoe,
	o => ww_rx_ready);

-- Location: IOOBUF_X52_Y0_N53
\os_pulse_out~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \os_pulse~q\,
	devoe => ww_devoe,
	o => ww_os_pulse_out);

-- Location: IOOBUF_X48_Y0_N76
\rx_error~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \rx_error~reg0_q\,
	devoe => ww_devoe,
	o => ww_rx_error);

-- Location: IOOBUF_X44_Y0_N36
\rx_data[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \rx_data[0]~reg0_q\,
	devoe => ww_devoe,
	o => ww_rx_data(0));

-- Location: IOOBUF_X40_Y0_N93
\rx_data[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \rx_data[1]~reg0_q\,
	devoe => ww_devoe,
	o => ww_rx_data(1));

-- Location: IOOBUF_X44_Y0_N53
\rx_data[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \rx_data[2]~reg0_q\,
	devoe => ww_devoe,
	o => ww_rx_data(2));

-- Location: IOOBUF_X43_Y0_N36
\rx_data[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \rx_data[3]~reg0_q\,
	devoe => ww_devoe,
	o => ww_rx_data(3));

-- Location: IOOBUF_X38_Y0_N36
\rx_data[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \rx_data[4]~reg0_q\,
	devoe => ww_devoe,
	o => ww_rx_data(4));

-- Location: IOOBUF_X43_Y0_N53
\rx_data[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \rx_data[5]~reg0_q\,
	devoe => ww_devoe,
	o => ww_rx_data(5));

-- Location: IOOBUF_X51_Y0_N53
\rx_data[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \rx_data[6]~reg0_q\,
	devoe => ww_devoe,
	o => ww_rx_data(6));

-- Location: IOOBUF_X48_Y0_N42
\rx_data[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \rx_data[7]~reg0_q\,
	devoe => ww_devoe,
	o => ww_rx_data(7));

-- Location: IOOBUF_X48_Y0_N93
\tx_busy~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_tx_busy~reg0_q\,
	devoe => ww_devoe,
	o => ww_tx_busy);

-- Location: IOOBUF_X54_Y14_N62
\tx~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_tx~reg0_q\,
	devoe => ww_devoe,
	o => ww_tx);

-- Location: IOIBUF_X22_Y0_N1
\clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G6
\clk~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \clk~input_o\,
	outclk => \clk~inputCLKENA0_outclk\);

-- Location: IOIBUF_X54_Y15_N4
\rx~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rx,
	o => \rx~input_o\);

-- Location: IOIBUF_X54_Y16_N55
\reset_n~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset_n,
	o => \reset_n~input_o\);

-- Location: FF_X48_Y10_N19
\count_os[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \count_os~3_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_os(3));

-- Location: FF_X48_Y10_N31
\count_os[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \count_os~1_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_os(2));

-- Location: MLABCELL_X49_Y9_N30
\Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~17_sumout\ = SUM(( count_baud(0) ) + ( VCC ) + ( !VCC ))
-- \Add0~18\ = CARRY(( count_baud(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_count_baud(0),
	cin => GND,
	sumout => \Add0~17_sumout\,
	cout => \Add0~18\);

-- Location: FF_X49_Y9_N32
\count_baud[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~17_sumout\,
	clrn => \reset_n~input_o\,
	sclr => \LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_baud(0));

-- Location: MLABCELL_X49_Y9_N33
\Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~13_sumout\ = SUM(( count_baud(1) ) + ( GND ) + ( \Add0~18\ ))
-- \Add0~14\ = CARRY(( count_baud(1) ) + ( GND ) + ( \Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_count_baud(1),
	cin => \Add0~18\,
	sumout => \Add0~13_sumout\,
	cout => \Add0~14\);

-- Location: FF_X49_Y9_N35
\count_baud[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~13_sumout\,
	clrn => \reset_n~input_o\,
	sclr => \LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_baud(1));

-- Location: MLABCELL_X49_Y9_N36
\Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~9_sumout\ = SUM(( count_baud(2) ) + ( GND ) + ( \Add0~14\ ))
-- \Add0~10\ = CARRY(( count_baud(2) ) + ( GND ) + ( \Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_count_baud(2),
	cin => \Add0~14\,
	sumout => \Add0~9_sumout\,
	cout => \Add0~10\);

-- Location: FF_X49_Y9_N38
\count_baud[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~9_sumout\,
	clrn => \reset_n~input_o\,
	sclr => \LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_baud(2));

-- Location: MLABCELL_X49_Y9_N39
\Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~5_sumout\ = SUM(( count_baud(3) ) + ( GND ) + ( \Add0~10\ ))
-- \Add0~6\ = CARRY(( count_baud(3) ) + ( GND ) + ( \Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_count_baud(3),
	cin => \Add0~10\,
	sumout => \Add0~5_sumout\,
	cout => \Add0~6\);

-- Location: FF_X49_Y9_N41
\count_baud[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~5_sumout\,
	clrn => \reset_n~input_o\,
	sclr => \LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_baud(3));

-- Location: MLABCELL_X49_Y9_N42
\Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~33_sumout\ = SUM(( count_baud(4) ) + ( GND ) + ( \Add0~6\ ))
-- \Add0~34\ = CARRY(( count_baud(4) ) + ( GND ) + ( \Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_count_baud(4),
	cin => \Add0~6\,
	sumout => \Add0~33_sumout\,
	cout => \Add0~34\);

-- Location: FF_X49_Y9_N44
\count_baud[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~33_sumout\,
	clrn => \reset_n~input_o\,
	sclr => \LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_baud(4));

-- Location: MLABCELL_X49_Y9_N45
\Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~29_sumout\ = SUM(( count_baud(5) ) + ( GND ) + ( \Add0~34\ ))
-- \Add0~30\ = CARRY(( count_baud(5) ) + ( GND ) + ( \Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_count_baud(5),
	cin => \Add0~34\,
	sumout => \Add0~29_sumout\,
	cout => \Add0~30\);

-- Location: FF_X49_Y9_N47
\count_baud[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~29_sumout\,
	clrn => \reset_n~input_o\,
	sclr => \LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_baud(5));

-- Location: MLABCELL_X49_Y9_N48
\Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~1_sumout\ = SUM(( count_baud(6) ) + ( GND ) + ( \Add0~30\ ))
-- \Add0~2\ = CARRY(( count_baud(6) ) + ( GND ) + ( \Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_count_baud(6),
	cin => \Add0~30\,
	sumout => \Add0~1_sumout\,
	cout => \Add0~2\);

-- Location: FF_X49_Y9_N50
\count_baud[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~1_sumout\,
	clrn => \reset_n~input_o\,
	sclr => \LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_baud(6));

-- Location: MLABCELL_X49_Y9_N9
\LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = ( !count_baud(2) & ( !count_baud(6) & ( (!count_baud(3) & (!count_baud(0) & !count_baud(1))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_count_baud(3),
	datac => ALT_INV_count_baud(0),
	datad => ALT_INV_count_baud(1),
	datae => ALT_INV_count_baud(2),
	dataf => ALT_INV_count_baud(6),
	combout => \LessThan0~0_combout\);

-- Location: MLABCELL_X49_Y9_N51
\Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~25_sumout\ = SUM(( count_baud(7) ) + ( GND ) + ( \Add0~2\ ))
-- \Add0~26\ = CARRY(( count_baud(7) ) + ( GND ) + ( \Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_count_baud(7),
	cin => \Add0~2\,
	sumout => \Add0~25_sumout\,
	cout => \Add0~26\);

-- Location: FF_X49_Y9_N53
\count_baud[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~25_sumout\,
	clrn => \reset_n~input_o\,
	sclr => \LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_baud(7));

-- Location: MLABCELL_X49_Y9_N54
\Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~21_sumout\ = SUM(( count_baud(8) ) + ( GND ) + ( \Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_count_baud(8),
	cin => \Add0~26\,
	sumout => \Add0~21_sumout\);

-- Location: FF_X49_Y9_N56
\count_baud[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~21_sumout\,
	clrn => \reset_n~input_o\,
	sclr => \LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_baud(8));

-- Location: MLABCELL_X49_Y9_N18
\LessThan0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = ( count_baud(7) & ( (count_baud(8) & (((count_baud(5) & count_baud(4))) # (count_baud(6)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010101110000000001010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_count_baud(6),
	datab => ALT_INV_count_baud(5),
	datac => ALT_INV_count_baud(4),
	datad => ALT_INV_count_baud(8),
	dataf => ALT_INV_count_baud(7),
	combout => \LessThan0~1_combout\);

-- Location: MLABCELL_X49_Y9_N15
\LessThan0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = ( \LessThan0~1_combout\ & ( !\LessThan0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_LessThan0~0_combout\,
	dataf => \ALT_INV_LessThan0~1_combout\,
	combout => \LessThan0~2_combout\);

-- Location: LABCELL_X48_Y10_N30
\count_os~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \count_os~1_combout\ = ( count_os(2) & ( !\LessThan0~2_combout\ & ( (!count_os(0) & ((!count_os(3)) # ((!\count_os[4]~DUPLICATE_q\)))) # (count_os(0) & (!count_os(1) & ((!count_os(3)) # (!\count_os[4]~DUPLICATE_q\)))) ) ) ) # ( !count_os(2) & ( 
-- !\LessThan0~2_combout\ & ( (count_os(0) & (count_os(1) & ((!count_os(3)) # (!\count_os[4]~DUPLICATE_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010100111111001010100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_count_os(0),
	datab => ALT_INV_count_os(3),
	datac => \ALT_INV_count_os[4]~DUPLICATE_q\,
	datad => ALT_INV_count_os(1),
	datae => ALT_INV_count_os(2),
	dataf => \ALT_INV_LessThan0~2_combout\,
	combout => \count_os~1_combout\);

-- Location: FF_X48_Y10_N32
\count_os[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \count_os~1_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count_os[2]~DUPLICATE_q\);

-- Location: FF_X48_Y10_N49
\count_os[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \count_os~0_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_os(4));

-- Location: LABCELL_X48_Y10_N48
\count_os~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \count_os~0_combout\ = ( count_os(4) & ( !\LessThan0~2_combout\ & ( (!\count_os[3]~DUPLICATE_q\) # ((!count_os(1) & !\count_os[2]~DUPLICATE_q\)) ) ) ) # ( !count_os(4) & ( !\LessThan0~2_combout\ & ( (\count_os[3]~DUPLICATE_q\ & (count_os(1) & (count_os(0) 
-- & \count_os[2]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001111011101010101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_count_os[3]~DUPLICATE_q\,
	datab => ALT_INV_count_os(1),
	datac => ALT_INV_count_os(0),
	datad => \ALT_INV_count_os[2]~DUPLICATE_q\,
	datae => ALT_INV_count_os(4),
	dataf => \ALT_INV_LessThan0~2_combout\,
	combout => \count_os~0_combout\);

-- Location: FF_X48_Y10_N50
\count_os[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \count_os~0_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count_os[4]~DUPLICATE_q\);

-- Location: LABCELL_X48_Y10_N18
\count_os~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \count_os~3_combout\ = ( count_os(3) & ( !\LessThan0~2_combout\ & ( (!count_os(1) & (((!\count_os[4]~DUPLICATE_q\) # (!\count_os[2]~DUPLICATE_q\)))) # (count_os(1) & (!\count_os[4]~DUPLICATE_q\ & ((!count_os(0)) # (!\count_os[2]~DUPLICATE_q\)))) ) ) ) # ( 
-- !count_os(3) & ( !\LessThan0~2_combout\ & ( (count_os(0) & (count_os(1) & \count_os[2]~DUPLICATE_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001111111001110000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_count_os(0),
	datab => ALT_INV_count_os(1),
	datac => \ALT_INV_count_os[4]~DUPLICATE_q\,
	datad => \ALT_INV_count_os[2]~DUPLICATE_q\,
	datae => ALT_INV_count_os(3),
	dataf => \ALT_INV_LessThan0~2_combout\,
	combout => \count_os~3_combout\);

-- Location: FF_X48_Y10_N20
\count_os[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \count_os~3_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count_os[3]~DUPLICATE_q\);

-- Location: LABCELL_X48_Y10_N0
\count_os~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \count_os~4_combout\ = ( count_os(0) & ( \LessThan0~2_combout\ ) ) # ( !count_os(0) & ( \LessThan0~2_combout\ ) ) # ( !count_os(0) & ( !\LessThan0~2_combout\ & ( (!\count_os[3]~DUPLICATE_q\) # ((!\count_os[4]~DUPLICATE_q\) # ((!count_os(1) & 
-- !\count_os[2]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111011111010000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_count_os[3]~DUPLICATE_q\,
	datab => ALT_INV_count_os(1),
	datac => \ALT_INV_count_os[4]~DUPLICATE_q\,
	datad => \ALT_INV_count_os[2]~DUPLICATE_q\,
	datae => ALT_INV_count_os(0),
	dataf => \ALT_INV_LessThan0~2_combout\,
	combout => \count_os~4_combout\);

-- Location: FF_X48_Y10_N1
\count_os[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \count_os~4_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_os(0));

-- Location: LABCELL_X48_Y10_N12
\count_os~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \count_os~2_combout\ = ( count_os(1) & ( !\LessThan0~2_combout\ & ( (!count_os(0) & ((!count_os(3)) # (!\count_os[4]~DUPLICATE_q\))) ) ) ) # ( !count_os(1) & ( !\LessThan0~2_combout\ & ( (count_os(0) & ((!count_os(3)) # ((!\count_os[4]~DUPLICATE_q\) # 
-- (!\count_os[2]~DUPLICATE_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010100101010001010100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_count_os(0),
	datab => ALT_INV_count_os(3),
	datac => \ALT_INV_count_os[4]~DUPLICATE_q\,
	datad => \ALT_INV_count_os[2]~DUPLICATE_q\,
	datae => ALT_INV_count_os(1),
	dataf => \ALT_INV_LessThan0~2_combout\,
	combout => \count_os~2_combout\);

-- Location: FF_X48_Y10_N14
\count_os[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \count_os~2_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_os(1));

-- Location: MLABCELL_X49_Y10_N42
\LessThan1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan1~0_combout\ = ( count_os(4) & ( count_os(2) & ( (\count_os[3]~DUPLICATE_q\ & ((!\LessThan0~1_combout\) # (\LessThan0~0_combout\))) ) ) ) # ( count_os(4) & ( !count_os(2) & ( (count_os(1) & (\count_os[3]~DUPLICATE_q\ & ((!\LessThan0~1_combout\) # 
-- (\LessThan0~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010000000100000000000000000000111100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_count_os(1),
	datab => \ALT_INV_LessThan0~0_combout\,
	datac => \ALT_INV_count_os[3]~DUPLICATE_q\,
	datad => \ALT_INV_LessThan0~1_combout\,
	datae => ALT_INV_count_os(4),
	dataf => ALT_INV_count_os(2),
	combout => \LessThan1~0_combout\);

-- Location: FF_X49_Y10_N44
os_pulse : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \LessThan1~0_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \os_pulse~q\);

-- Location: FF_X49_Y10_N11
\rx_state.ready_st\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \os_count[2]~0_combout\,
	clrn => \reset_n~input_o\,
	ena => \os_pulse~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_state.ready_st~q\);

-- Location: MLABCELL_X49_Y10_N36
\os_count[3]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \os_count[3]~2_combout\ = ( !\rx_state.ready_st~q\ & ( \os_pulse~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_os_pulse~q\,
	dataf => \ALT_INV_rx_state.ready_st~q\,
	combout => \os_count[3]~2_combout\);

-- Location: LABCELL_X48_Y10_N39
\Selector10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector10~0_combout\ = ( \rx_state.receive~q\ & ( !rx_count(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_rx_count(0),
	dataf => \ALT_INV_rx_state.receive~q\,
	combout => \Selector10~0_combout\);

-- Location: LABCELL_X50_Y10_N9
\os_count[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \os_count[2]~1_combout\ = ( os_count(3) & ( !\rx_state.idle~q\ ) ) # ( !os_count(3) & ( !\rx_state.idle~q\ & ( \rx~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_rx~input_o\,
	datae => ALT_INV_os_count(3),
	dataf => \ALT_INV_rx_state.idle~q\,
	combout => \os_count[2]~1_combout\);

-- Location: MLABCELL_X49_Y10_N48
\os_count[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \os_count[3]~3_combout\ = ( os_count(3) & ( \rx_state.receive~q\ & ( (!\os_count[3]~2_combout\) # ((!\LessThan3~0_combout\ & (!\os_count[2]~1_combout\)) # (\LessThan3~0_combout\ & ((rx_count(3))))) ) ) ) # ( !os_count(3) & ( \rx_state.receive~q\ & ( 
-- (\os_count[3]~2_combout\ & (\LessThan3~0_combout\ & !\os_count[2]~1_combout\)) ) ) ) # ( os_count(3) & ( !\rx_state.receive~q\ & ( (!\os_count[3]~2_combout\) # ((!\LessThan3~0_combout\ & !\os_count[2]~1_combout\)) ) ) ) # ( !os_count(3) & ( 
-- !\rx_state.receive~q\ & ( (\os_count[3]~2_combout\ & (\LessThan3~0_combout\ & !\os_count[2]~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010000111010101110101000010000000100001110101011111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_os_count[3]~2_combout\,
	datab => \ALT_INV_LessThan3~0_combout\,
	datac => \ALT_INV_os_count[2]~1_combout\,
	datad => ALT_INV_rx_count(3),
	datae => ALT_INV_os_count(3),
	dataf => \ALT_INV_rx_state.receive~q\,
	combout => \os_count[3]~3_combout\);

-- Location: FF_X49_Y10_N50
\os_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \os_count[3]~3_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => os_count(3));

-- Location: LABCELL_X48_Y10_N6
\Selector5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector5~0_combout\ = ( \rx_state.idle~q\ & ( !\rx_state.ready_st~q\ ) ) # ( !\rx_state.idle~q\ & ( !\rx_state.ready_st~q\ & ( (!\rx~input_o\ & os_count(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_rx~input_o\,
	datad => ALT_INV_os_count(3),
	datae => \ALT_INV_rx_state.idle~q\,
	dataf => \ALT_INV_rx_state.ready_st~q\,
	combout => \Selector5~0_combout\);

-- Location: FF_X48_Y10_N8
\rx_state.idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector5~0_combout\,
	clrn => \reset_n~input_o\,
	ena => \os_pulse~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_state.idle~q\);

-- Location: LABCELL_X48_Y10_N45
\rx_count[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \rx_count[3]~3_combout\ = ( \os_pulse~q\ & ( \tx_data[0]~1_combout\ & ( (!rx_count(3)) # ((!\rx~input_o\ & (!\rx_state.idle~q\ & os_count(3)))) ) ) ) # ( \os_pulse~q\ & ( !\tx_data[0]~1_combout\ & ( (!\rx~input_o\ & (!\rx_state.idle~q\ & os_count(3))) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010000000100000000000000000001111111100001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_rx~input_o\,
	datab => \ALT_INV_rx_state.idle~q\,
	datac => ALT_INV_os_count(3),
	datad => ALT_INV_rx_count(3),
	datae => \ALT_INV_os_pulse~q\,
	dataf => \ALT_INV_tx_data[0]~1_combout\,
	combout => \rx_count[3]~3_combout\);

-- Location: FF_X48_Y10_N41
\rx_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector10~0_combout\,
	clrn => \reset_n~input_o\,
	ena => \rx_count[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rx_count(0));

-- Location: LABCELL_X48_Y10_N54
\Selector9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector9~0_combout\ = ( rx_count(0) & ( (\rx_state.receive~q\ & !rx_count(1)) ) ) # ( !rx_count(0) & ( (\rx_state.receive~q\ & rx_count(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100110011000000000011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_rx_state.receive~q\,
	datad => ALT_INV_rx_count(1),
	dataf => ALT_INV_rx_count(0),
	combout => \Selector9~0_combout\);

-- Location: FF_X48_Y10_N56
\rx_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector9~0_combout\,
	clrn => \reset_n~input_o\,
	ena => \rx_count[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rx_count(1));

-- Location: LABCELL_X48_Y10_N36
\Selector8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector8~0_combout\ = ( rx_count(0) & ( (\rx_state.receive~q\ & (!rx_count(1) $ (!rx_count(2)))) ) ) # ( !rx_count(0) & ( (\rx_state.receive~q\ & rx_count(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100000011001100000000001100110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_rx_state.receive~q\,
	datac => ALT_INV_rx_count(1),
	datad => ALT_INV_rx_count(2),
	dataf => ALT_INV_rx_count(0),
	combout => \Selector8~0_combout\);

-- Location: FF_X48_Y10_N38
\rx_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector8~0_combout\,
	clrn => \reset_n~input_o\,
	ena => \rx_count[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rx_count(2));

-- Location: LABCELL_X48_Y10_N57
\rx_count[3]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \rx_count[3]~1_combout\ = ( rx_count(1) & ( (\rx_state.receive~q\ & (!rx_count(3) $ (((!rx_count(0)) # (!rx_count(2)))))) ) ) # ( !rx_count(1) & ( (\rx_state.receive~q\ & rx_count(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000011000100100000001100010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_rx_count(0),
	datab => \ALT_INV_rx_state.receive~q\,
	datac => ALT_INV_rx_count(3),
	datad => ALT_INV_rx_count(2),
	dataf => ALT_INV_rx_count(1),
	combout => \rx_count[3]~1_combout\);

-- Location: LABCELL_X50_Y10_N15
\rx_count[3]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \rx_count[3]~0_combout\ = ( os_count(3) & ( !\rx_state.idle~q\ & ( !\rx~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_rx~input_o\,
	datae => ALT_INV_os_count(3),
	dataf => \ALT_INV_rx_state.idle~q\,
	combout => \rx_count[3]~0_combout\);

-- Location: MLABCELL_X49_Y10_N39
\rx_count[3]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \rx_count[3]~2_combout\ = ( \tx_data[0]~1_combout\ & ( (!\os_pulse~q\ & (((rx_count(3))))) # (\os_pulse~q\ & (((!\rx_count[3]~0_combout\ & rx_count(3))) # (\rx_count[3]~1_combout\))) ) ) # ( !\tx_data[0]~1_combout\ & ( (!\os_pulse~q\ & (((rx_count(3))))) 
-- # (\os_pulse~q\ & ((!\rx_count[3]~0_combout\ & ((rx_count(3)))) # (\rx_count[3]~0_combout\ & (\rx_count[3]~1_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111111101000000011111110100010001111111010001000111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_rx_count[3]~1_combout\,
	datab => \ALT_INV_os_pulse~q\,
	datac => \ALT_INV_rx_count[3]~0_combout\,
	datad => ALT_INV_rx_count(3),
	dataf => \ALT_INV_tx_data[0]~1_combout\,
	combout => \rx_count[3]~2_combout\);

-- Location: FF_X49_Y10_N41
\rx_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \rx_count[3]~2_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rx_count(3));

-- Location: MLABCELL_X49_Y10_N54
\os_count[0]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \os_count[0]~5_combout\ = ( \os_count[3]~2_combout\ & ( (!\tx_data[0]~1_combout\ & (!\os_count[2]~1_combout\ & ((!os_count(0))))) # (\tx_data[0]~1_combout\ & ((!rx_count(3) & (\os_count[2]~1_combout\ & !os_count(0))) # (rx_count(3) & ((os_count(0)))))) ) 
-- ) # ( !\os_count[3]~2_combout\ & ( os_count(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111110100100000000111010010000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_os_count[2]~1_combout\,
	datab => ALT_INV_rx_count(3),
	datac => \ALT_INV_tx_data[0]~1_combout\,
	datad => ALT_INV_os_count(0),
	dataf => \ALT_INV_os_count[3]~2_combout\,
	combout => \os_count[0]~5_combout\);

-- Location: FF_X49_Y10_N56
\os_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \os_count[0]~5_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => os_count(0));

-- Location: MLABCELL_X49_Y10_N33
\Add2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~0_combout\ = ( os_count(0) & ( os_count(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => ALT_INV_os_count(0),
	dataf => ALT_INV_os_count(1),
	combout => \Add2~0_combout\);

-- Location: MLABCELL_X49_Y10_N15
\os_count[2]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \os_count[2]~4_combout\ = ( os_count(2) & ( \Add2~0_combout\ & ( (!\os_count[3]~2_combout\) # ((\tx_data[0]~1_combout\ & rx_count(3))) ) ) ) # ( !os_count(2) & ( \Add2~0_combout\ & ( (\os_count[3]~2_combout\ & ((!\tx_data[0]~1_combout\ & 
-- ((!\os_count[2]~1_combout\))) # (\tx_data[0]~1_combout\ & (!rx_count(3) & \os_count[2]~1_combout\)))) ) ) ) # ( os_count(2) & ( !\Add2~0_combout\ & ( (!\os_count[3]~2_combout\) # ((!\tx_data[0]~1_combout\ & ((!\os_count[2]~1_combout\))) # 
-- (\tx_data[0]~1_combout\ & ((\os_count[2]~1_combout\) # (rx_count(3))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011111101110100100010000100001100110111001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_tx_data[0]~1_combout\,
	datab => \ALT_INV_os_count[3]~2_combout\,
	datac => ALT_INV_rx_count(3),
	datad => \ALT_INV_os_count[2]~1_combout\,
	datae => ALT_INV_os_count(2),
	dataf => \ALT_INV_Add2~0_combout\,
	combout => \os_count[2]~4_combout\);

-- Location: FF_X49_Y10_N17
\os_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \os_count[2]~4_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => os_count(2));

-- Location: MLABCELL_X49_Y10_N24
\tx_data[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \tx_data[0]~1_combout\ = ( os_count(0) & ( os_count(3) & ( (os_count(2) & (\rx_state.receive~q\ & os_count(1))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_os_count(2),
	datac => \ALT_INV_rx_state.receive~q\,
	datad => ALT_INV_os_count(1),
	datae => ALT_INV_os_count(0),
	dataf => ALT_INV_os_count(3),
	combout => \tx_data[0]~1_combout\);

-- Location: MLABCELL_X49_Y10_N12
\os_count[1]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \os_count[1]~6_combout\ = ( os_count(1) & ( os_count(0) & ( (!\os_count[3]~2_combout\) # ((\tx_data[0]~1_combout\ & rx_count(3))) ) ) ) # ( !os_count(1) & ( os_count(0) & ( (\os_count[3]~2_combout\ & ((!\tx_data[0]~1_combout\ & (!\os_count[2]~1_combout\)) 
-- # (\tx_data[0]~1_combout\ & (\os_count[2]~1_combout\ & !rx_count(3))))) ) ) ) # ( os_count(1) & ( !os_count(0) & ( (!\os_count[3]~2_combout\) # ((!\tx_data[0]~1_combout\ & (!\os_count[2]~1_combout\)) # (\tx_data[0]~1_combout\ & ((rx_count(3)) # 
-- (\os_count[2]~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011011111110100100001001000001100110011011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_tx_data[0]~1_combout\,
	datab => \ALT_INV_os_count[3]~2_combout\,
	datac => \ALT_INV_os_count[2]~1_combout\,
	datad => ALT_INV_rx_count(3),
	datae => ALT_INV_os_count(1),
	dataf => ALT_INV_os_count(0),
	combout => \os_count[1]~6_combout\);

-- Location: FF_X49_Y10_N14
\os_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \os_count[1]~6_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => os_count(1));

-- Location: MLABCELL_X49_Y10_N57
\LessThan3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan3~0_combout\ = ( os_count(2) & ( (os_count(1) & os_count(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_os_count(1),
	datad => ALT_INV_os_count(0),
	dataf => ALT_INV_os_count(2),
	combout => \LessThan3~0_combout\);

-- Location: MLABCELL_X49_Y10_N18
\Selector6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector6~0_combout\ = ( \rx_state.receive~q\ & ( rx_count(3) & ( (!\LessThan3~0_combout\) # ((!os_count(3)) # ((!\rx~input_o\ & !\rx_state.idle~q\))) ) ) ) # ( !\rx_state.receive~q\ & ( rx_count(3) & ( (!\rx~input_o\ & (os_count(3) & 
-- !\rx_state.idle~q\)) ) ) ) # ( \rx_state.receive~q\ & ( !rx_count(3) ) ) # ( !\rx_state.receive~q\ & ( !rx_count(3) & ( (!\rx~input_o\ & (os_count(3) & !\rx_state.idle~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000000111111111111111100001010000000001111111011111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_rx~input_o\,
	datab => \ALT_INV_LessThan3~0_combout\,
	datac => ALT_INV_os_count(3),
	datad => \ALT_INV_rx_state.idle~q\,
	datae => \ALT_INV_rx_state.receive~q\,
	dataf => ALT_INV_rx_count(3),
	combout => \Selector6~0_combout\);

-- Location: FF_X49_Y10_N20
\rx_state.receive\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector6~0_combout\,
	clrn => \reset_n~input_o\,
	ena => \os_pulse~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_state.receive~q\);

-- Location: MLABCELL_X49_Y10_N9
\os_count[2]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \os_count[2]~0_combout\ = ( os_count(0) & ( os_count(1) & ( (\rx_state.receive~q\ & (os_count(2) & (rx_count(3) & os_count(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_rx_state.receive~q\,
	datab => ALT_INV_os_count(2),
	datac => ALT_INV_rx_count(3),
	datad => ALT_INV_os_count(3),
	datae => ALT_INV_os_count(0),
	dataf => ALT_INV_os_count(1),
	combout => \os_count[2]~0_combout\);

-- Location: LABCELL_X48_Y10_N27
\Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = ( \rx_state.idle~q\ & ( (!\os_count[2]~0_combout\ & \rx_busy~reg0_q\) ) ) # ( !\rx_state.idle~q\ & ( (!\rx~input_o\ & os_count(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000000000101010100000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_os_count[2]~0_combout\,
	datab => \ALT_INV_rx~input_o\,
	datac => ALT_INV_os_count(3),
	datad => \ALT_INV_rx_busy~reg0_q\,
	dataf => \ALT_INV_rx_state.idle~q\,
	combout => \Selector0~0_combout\);

-- Location: FF_X48_Y10_N28
\rx_busy~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector0~0_combout\,
	clrn => \reset_n~input_o\,
	ena => \os_pulse~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_busy~reg0_q\);

-- Location: LABCELL_X48_Y10_N24
\rx_ready_aux~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \rx_ready_aux~0_combout\ = ( \rx_state.receive~q\ & ( (\rx_ready_aux~q\) # (\os_count[2]~0_combout\) ) ) # ( !\rx_state.receive~q\ & ( \os_count[2]~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_os_count[2]~0_combout\,
	datad => \ALT_INV_rx_ready_aux~q\,
	dataf => \ALT_INV_rx_state.receive~q\,
	combout => \rx_ready_aux~0_combout\);

-- Location: FF_X48_Y10_N25
rx_ready_aux : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \rx_ready_aux~0_combout\,
	clrn => \reset_n~input_o\,
	ena => \os_pulse~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_ready_aux~q\);

-- Location: MLABCELL_X49_Y10_N3
\rx_buffer[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \rx_buffer[0]~0_combout\ = ( \tx_data[0]~1_combout\ & ( (\reset_n~input_o\ & (!rx_count(3) & \os_pulse~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000100000001000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reset_n~input_o\,
	datab => ALT_INV_rx_count(3),
	datac => \ALT_INV_os_pulse~q\,
	dataf => \ALT_INV_tx_data[0]~1_combout\,
	combout => \rx_buffer[0]~0_combout\);

-- Location: FF_X50_Y10_N11
\rx_buffer[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \rx~input_o\,
	sload => VCC,
	ena => \rx_buffer[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rx_buffer(8));

-- Location: FF_X49_Y10_N2
\rx_buffer[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => rx_buffer(8),
	sload => VCC,
	ena => \rx_buffer[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rx_buffer(7));

-- Location: FF_X49_Y10_N32
\rx_buffer[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => rx_buffer(7),
	sload => VCC,
	ena => \rx_buffer[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rx_buffer(6));

-- Location: FF_X50_Y10_N17
\rx_buffer[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => rx_buffer(6),
	sload => VCC,
	ena => \rx_buffer[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rx_buffer(5));

-- Location: FF_X50_Y10_N32
\rx_buffer[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => rx_buffer(5),
	sload => VCC,
	ena => \rx_buffer[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rx_buffer(4));

-- Location: FF_X49_Y10_N5
\rx_buffer[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => rx_buffer(4),
	sload => VCC,
	ena => \rx_buffer[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rx_buffer(3));

-- Location: FF_X49_Y10_N25
\rx_buffer[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => rx_buffer(3),
	sload => VCC,
	ena => \rx_buffer[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rx_buffer(2));

-- Location: FF_X49_Y10_N35
\rx_buffer[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => rx_buffer(2),
	sload => VCC,
	ena => \rx_buffer[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rx_buffer(1));

-- Location: FF_X49_Y10_N28
\rx_buffer[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => rx_buffer(1),
	sload => VCC,
	ena => \rx_buffer[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rx_buffer(0));

-- Location: LABCELL_X50_Y10_N39
\rx_error~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \rx_error~0_combout\ = ( rx_buffer(0) ) # ( !rx_buffer(0) & ( !\rx~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_rx~input_o\,
	dataf => ALT_INV_rx_buffer(0),
	combout => \rx_error~0_combout\);

-- Location: LABCELL_X50_Y10_N36
\tx_data[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \tx_data[0]~0_combout\ = ( \os_count[2]~0_combout\ & ( \os_pulse~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_os_pulse~q\,
	dataf => \ALT_INV_os_count[2]~0_combout\,
	combout => \tx_data[0]~0_combout\);

-- Location: FF_X50_Y10_N40
\rx_error~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \rx_error~0_combout\,
	clrn => \reset_n~input_o\,
	ena => \tx_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_error~reg0_q\);

-- Location: FF_X50_Y10_N37
\rx_data[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => rx_buffer(1),
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \tx_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_data[0]~reg0_q\);

-- Location: LABCELL_X50_Y10_N42
\rx_data[1]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \rx_data[1]~reg0feeder_combout\ = ( rx_buffer(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_rx_buffer(2),
	combout => \rx_data[1]~reg0feeder_combout\);

-- Location: FF_X50_Y10_N43
\rx_data[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \rx_data[1]~reg0feeder_combout\,
	clrn => \reset_n~input_o\,
	ena => \tx_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_data[1]~reg0_q\);

-- Location: FF_X50_Y10_N4
\rx_data[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => rx_buffer(3),
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \tx_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_data[2]~reg0_q\);

-- Location: FF_X50_Y10_N56
\rx_data[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => rx_buffer(4),
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \tx_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_data[3]~reg0_q\);

-- Location: FF_X50_Y10_N58
\rx_data[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => rx_buffer(5),
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \tx_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_data[4]~reg0_q\);

-- Location: LABCELL_X50_Y10_N48
\rx_data[5]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \rx_data[5]~reg0feeder_combout\ = ( rx_buffer(6) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_rx_buffer(6),
	combout => \rx_data[5]~reg0feeder_combout\);

-- Location: FF_X50_Y10_N49
\rx_data[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \rx_data[5]~reg0feeder_combout\,
	clrn => \reset_n~input_o\,
	ena => \tx_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_data[5]~reg0_q\);

-- Location: FF_X50_Y10_N52
\rx_data[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => rx_buffer(7),
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \tx_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_data[6]~reg0_q\);

-- Location: LABCELL_X50_Y10_N0
\rx_data[7]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \rx_data[7]~reg0feeder_combout\ = rx_buffer(8)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_rx_buffer(8),
	combout => \rx_data[7]~reg0feeder_combout\);

-- Location: FF_X50_Y10_N1
\rx_data[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \rx_data[7]~reg0feeder_combout\,
	clrn => \reset_n~input_o\,
	ena => \tx_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_data[7]~reg0_q\);

-- Location: IOIBUF_X33_Y0_N41
\tx_ena~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tx_ena,
	o => \tx_ena~input_o\);

-- Location: LABCELL_X48_Y9_N42
\tx_busy~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \tx_busy~0_combout\ = ( !\tx_ena~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_tx_ena~input_o\,
	combout => \tx_busy~0_combout\);

-- Location: FF_X49_Y9_N5
baud_pulse : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \LessThan0~2_combout\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \baud_pulse~q\);

-- Location: LABCELL_X48_Y9_N18
\tx_count~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \tx_count~4_combout\ = ( !tx_count(0) & ( \baud_pulse~q\ & ( \tx_state~q\ ) ) ) # ( tx_count(0) & ( !\baud_pulse~q\ & ( \tx_state~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_tx_state~q\,
	datae => ALT_INV_tx_count(0),
	dataf => \ALT_INV_baud_pulse~q\,
	combout => \tx_count~4_combout\);

-- Location: LABCELL_X48_Y9_N15
\tx_count[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \tx_count[0]~1_combout\ = ( \tx_ena~input_o\ ) # ( !\tx_ena~input_o\ & ( \tx_state~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_tx_state~q\,
	dataf => \ALT_INV_tx_ena~input_o\,
	combout => \tx_count[0]~1_combout\);

-- Location: FF_X48_Y9_N20
\tx_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \tx_count~4_combout\,
	clrn => \reset_n~input_o\,
	ena => \tx_count[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tx_count(0));

-- Location: LABCELL_X48_Y9_N27
\tx_count~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \tx_count~3_combout\ = ( tx_count(1) & ( tx_count(0) & ( (\tx_state~q\ & !\baud_pulse~q\) ) ) ) # ( !tx_count(1) & ( tx_count(0) & ( (\tx_state~q\ & \baud_pulse~q\) ) ) ) # ( tx_count(1) & ( !tx_count(0) & ( \tx_state~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000011110000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_tx_state~q\,
	datad => \ALT_INV_baud_pulse~q\,
	datae => ALT_INV_tx_count(1),
	dataf => ALT_INV_tx_count(0),
	combout => \tx_count~3_combout\);

-- Location: FF_X48_Y9_N29
\tx_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \tx_count~3_combout\,
	clrn => \reset_n~input_o\,
	ena => \tx_count[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tx_count(1));

-- Location: LABCELL_X48_Y9_N54
\tx_count~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \tx_count~2_combout\ = ( tx_count(2) & ( \baud_pulse~q\ & ( (\tx_state~q\ & ((!tx_count(0)) # (!tx_count(1)))) ) ) ) # ( !tx_count(2) & ( \baud_pulse~q\ & ( (tx_count(0) & (tx_count(1) & \tx_state~q\)) ) ) ) # ( tx_count(2) & ( !\baud_pulse~q\ & ( 
-- \tx_state~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000001010000000011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_tx_count(0),
	datac => ALT_INV_tx_count(1),
	datad => \ALT_INV_tx_state~q\,
	datae => ALT_INV_tx_count(2),
	dataf => \ALT_INV_baud_pulse~q\,
	combout => \tx_count~2_combout\);

-- Location: FF_X48_Y9_N56
\tx_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \tx_count~2_combout\,
	clrn => \reset_n~input_o\,
	ena => \tx_count[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tx_count(2));

-- Location: LABCELL_X48_Y9_N36
\tx_count~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \tx_count~0_combout\ = ( tx_count(3) & ( tx_count(2) & ( (\tx_state~q\ & ((!\baud_pulse~q\) # ((!tx_count(0)) # (!tx_count(1))))) ) ) ) # ( !tx_count(3) & ( tx_count(2) & ( (\baud_pulse~q\ & (tx_count(0) & (tx_count(1) & \tx_state~q\))) ) ) ) # ( 
-- tx_count(3) & ( !tx_count(2) & ( \tx_state~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000010000000011111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_baud_pulse~q\,
	datab => ALT_INV_tx_count(0),
	datac => ALT_INV_tx_count(1),
	datad => \ALT_INV_tx_state~q\,
	datae => ALT_INV_tx_count(3),
	dataf => ALT_INV_tx_count(2),
	combout => \tx_count~0_combout\);

-- Location: FF_X48_Y9_N37
\tx_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \tx_count~0_combout\,
	clrn => \reset_n~input_o\,
	ena => \tx_count[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tx_count(3));

-- Location: LABCELL_X48_Y9_N12
\LessThan5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan5~0_combout\ = ( tx_count(3) & ( (!tx_count(2) & ((!tx_count(1)) # ((!tx_count(0) & !\baud_pulse~q\)))) # (tx_count(2) & (tx_count(0) & (\baud_pulse~q\ & tx_count(1)))) ) ) # ( !tx_count(3) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111110000100000011111000010000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_tx_count(0),
	datab => \ALT_INV_baud_pulse~q\,
	datac => ALT_INV_tx_count(2),
	datad => ALT_INV_tx_count(1),
	dataf => ALT_INV_tx_count(3),
	combout => \LessThan5~0_combout\);

-- Location: FF_X48_Y9_N14
tx_state : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \LessThan5~0_combout\,
	asdata => \tx_ena~input_o\,
	clrn => \reset_n~input_o\,
	sload => \ALT_INV_tx_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_state~q\);

-- Location: FF_X48_Y9_N43
\tx_busy~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \tx_busy~0_combout\,
	clrn => \reset_n~input_o\,
	ena => \ALT_INV_tx_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_busy~reg0_q\);

-- Location: LABCELL_X50_Y9_N0
\tx_data[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \tx_data[0]~feeder_combout\ = ( rx_buffer(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_rx_buffer(1),
	combout => \tx_data[0]~feeder_combout\);

-- Location: LABCELL_X50_Y9_N18
\tx_data[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \tx_data[0]~2_combout\ = ( \os_pulse~q\ & ( \os_count[2]~0_combout\ & ( \reset_n~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_reset_n~input_o\,
	datae => \ALT_INV_os_pulse~q\,
	dataf => \ALT_INV_os_count[2]~0_combout\,
	combout => \tx_data[0]~2_combout\);

-- Location: FF_X50_Y9_N2
\tx_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \tx_data[0]~feeder_combout\,
	ena => \tx_data[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tx_data(0));

-- Location: FF_X50_Y9_N20
\tx_data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => rx_buffer(2),
	sload => VCC,
	ena => \tx_data[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tx_data(1));

-- Location: FF_X50_Y9_N50
\tx_data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => rx_buffer(3),
	sload => VCC,
	ena => \tx_data[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tx_data(2));

-- Location: FF_X50_Y9_N35
\tx_data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => rx_buffer(6),
	sload => VCC,
	ena => \tx_data[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tx_data(5));

-- Location: LABCELL_X50_Y9_N36
\tx_data[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \tx_data[6]~feeder_combout\ = ( rx_buffer(7) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_rx_buffer(7),
	combout => \tx_data[6]~feeder_combout\);

-- Location: FF_X50_Y9_N38
\tx_data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \tx_data[6]~feeder_combout\,
	ena => \tx_data[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tx_data(6));

-- Location: LABCELL_X50_Y9_N15
\tx_data[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \tx_data[7]~feeder_combout\ = ( rx_buffer(8) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_rx_buffer(8),
	combout => \tx_data[7]~feeder_combout\);

-- Location: FF_X50_Y9_N16
\tx_data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \tx_data[7]~feeder_combout\,
	ena => \tx_data[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tx_data(7));

-- Location: LABCELL_X50_Y9_N6
\tx_buffer~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \tx_buffer~10_combout\ = ( !tx_data(7) & ( !\tx_state~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_tx_state~q\,
	dataf => ALT_INV_tx_data(7),
	combout => \tx_buffer~10_combout\);

-- Location: MLABCELL_X49_Y9_N0
\tx_buffer[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \tx_buffer[0]~1_combout\ = ( \tx_state~q\ & ( (\baud_pulse~q\ & \reset_n~input_o\) ) ) # ( !\tx_state~q\ & ( (\tx_ena~input_o\ & \reset_n~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000001010000010100000011000000110000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_baud_pulse~q\,
	datab => \ALT_INV_tx_ena~input_o\,
	datac => \ALT_INV_reset_n~input_o\,
	datae => \ALT_INV_tx_state~q\,
	combout => \tx_buffer[0]~1_combout\);

-- Location: FF_X50_Y9_N8
\tx_buffer[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \tx_buffer~10_combout\,
	ena => \tx_buffer[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tx_buffer(9));

-- Location: LABCELL_X50_Y9_N9
\tx_buffer~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \tx_buffer~9_combout\ = ( tx_buffer(9) & ( (!tx_data(6)) # (\tx_state~q\) ) ) # ( !tx_buffer(9) & ( (!\tx_state~q\ & !tx_data(6)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000000000101010100000000011111111010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_tx_state~q\,
	datad => ALT_INV_tx_data(6),
	dataf => ALT_INV_tx_buffer(9),
	combout => \tx_buffer~9_combout\);

-- Location: FF_X50_Y9_N10
\tx_buffer[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \tx_buffer~9_combout\,
	ena => \tx_buffer[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tx_buffer(8));

-- Location: LABCELL_X50_Y9_N42
\tx_buffer~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \tx_buffer~8_combout\ = ( tx_buffer(8) & ( (!tx_data(5)) # (\tx_state~q\) ) ) # ( !tx_buffer(8) & ( (!\tx_state~q\ & !tx_data(5)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000101000001010000011110101111101011111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_tx_state~q\,
	datac => ALT_INV_tx_data(5),
	dataf => ALT_INV_tx_buffer(8),
	combout => \tx_buffer~8_combout\);

-- Location: FF_X50_Y9_N44
\tx_buffer[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \tx_buffer~8_combout\,
	ena => \tx_buffer[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tx_buffer(7));

-- Location: FF_X50_Y9_N25
\tx_data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => rx_buffer(5),
	sload => VCC,
	ena => \tx_data[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tx_data(4));

-- Location: LABCELL_X50_Y9_N45
\tx_buffer~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \tx_buffer~7_combout\ = ( tx_data(4) & ( (\tx_state~q\ & tx_buffer(7)) ) ) # ( !tx_data(4) & ( (!\tx_state~q\) # (tx_buffer(7)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010111110101111101011111010111100000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_tx_state~q\,
	datac => ALT_INV_tx_buffer(7),
	dataf => ALT_INV_tx_data(4),
	combout => \tx_buffer~7_combout\);

-- Location: FF_X50_Y9_N47
\tx_buffer[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \tx_buffer~7_combout\,
	ena => \tx_buffer[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tx_buffer(6));

-- Location: FF_X50_Y9_N22
\tx_data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => rx_buffer(4),
	sload => VCC,
	ena => \tx_data[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tx_data(3));

-- Location: LABCELL_X50_Y9_N57
\tx_buffer~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \tx_buffer~6_combout\ = ( tx_data(3) & ( (\tx_state~q\ & tx_buffer(6)) ) ) # ( !tx_data(3) & ( (!\tx_state~q\) # (tx_buffer(6)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010111110101111101011111010111100000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_tx_state~q\,
	datac => ALT_INV_tx_buffer(6),
	dataf => ALT_INV_tx_data(3),
	combout => \tx_buffer~6_combout\);

-- Location: FF_X50_Y9_N59
\tx_buffer[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \tx_buffer~6_combout\,
	ena => \tx_buffer[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tx_buffer(5));

-- Location: LABCELL_X50_Y9_N54
\tx_buffer~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \tx_buffer~5_combout\ = ( tx_buffer(5) & ( (!tx_data(2)) # (\tx_state~q\) ) ) # ( !tx_buffer(5) & ( (!\tx_state~q\ & !tx_data(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000101000001010000011110101111101011111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_tx_state~q\,
	datac => ALT_INV_tx_data(2),
	dataf => ALT_INV_tx_buffer(5),
	combout => \tx_buffer~5_combout\);

-- Location: FF_X50_Y9_N55
\tx_buffer[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \tx_buffer~5_combout\,
	ena => \tx_buffer[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tx_buffer(4));

-- Location: MLABCELL_X49_Y9_N27
\tx_buffer~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \tx_buffer~4_combout\ = ( tx_buffer(4) & ( (!tx_data(1)) # (\tx_state~q\) ) ) # ( !tx_buffer(4) & ( (!\tx_state~q\ & !tx_data(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000101000001010000011110101111101011111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_tx_state~q\,
	datac => ALT_INV_tx_data(1),
	dataf => ALT_INV_tx_buffer(4),
	combout => \tx_buffer~4_combout\);

-- Location: FF_X49_Y9_N28
\tx_buffer[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \tx_buffer~4_combout\,
	ena => \tx_buffer[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tx_buffer(3));

-- Location: MLABCELL_X49_Y9_N24
\tx_buffer~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \tx_buffer~3_combout\ = ( tx_buffer(3) & ( (!tx_data(0)) # (\tx_state~q\) ) ) # ( !tx_buffer(3) & ( (!\tx_state~q\ & !tx_data(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000000000101010100000000011111111010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_tx_state~q\,
	datad => ALT_INV_tx_data(0),
	dataf => ALT_INV_tx_buffer(3),
	combout => \tx_buffer~3_combout\);

-- Location: FF_X49_Y9_N25
\tx_buffer[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \tx_buffer~3_combout\,
	ena => \tx_buffer[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tx_buffer(2));

-- Location: MLABCELL_X49_Y9_N12
\tx_buffer~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \tx_buffer~2_combout\ = ( tx_buffer(2) ) # ( !tx_buffer(2) & ( !\tx_state~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_tx_state~q\,
	dataf => ALT_INV_tx_buffer(2),
	combout => \tx_buffer~2_combout\);

-- Location: FF_X49_Y9_N13
\tx_buffer[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \tx_buffer~2_combout\,
	ena => \tx_buffer[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tx_buffer(1));

-- Location: MLABCELL_X49_Y9_N21
\tx_buffer~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \tx_buffer~0_combout\ = ( tx_buffer(1) & ( \tx_state~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_tx_state~q\,
	dataf => ALT_INV_tx_buffer(1),
	combout => \tx_buffer~0_combout\);

-- Location: FF_X49_Y9_N23
\tx_buffer[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \tx_buffer~0_combout\,
	ena => \tx_buffer[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tx_buffer(0));

-- Location: FF_X49_Y9_N58
\tx~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => tx_buffer(0),
	clrn => \reset_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx~reg0_q\);

-- Location: MLABCELL_X37_Y40_N3
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



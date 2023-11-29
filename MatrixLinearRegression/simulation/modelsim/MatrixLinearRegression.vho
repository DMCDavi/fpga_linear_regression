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

-- DATE "11/29/2023 17:22:02"

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
	reset : IN std_logic;
	rx : IN std_logic;
	tx : BUFFER std_logic;
	rx_ready_t : BUFFER std_logic;
	tx_busy_t : BUFFER std_logic
	);
END MatrixLinearRegression;

-- Design Ports Information
-- tx	=>  Location: PIN_T17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rx_ready_t	=>  Location: PIN_AA2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tx_busy_t	=>  Location: PIN_AA1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rx	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_reset : std_logic;
SIGNAL ww_rx : std_logic;
SIGNAL ww_tx : std_logic;
SIGNAL ww_rx_ready_t : std_logic;
SIGNAL ww_tx_busy_t : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \uart_comm|Add0~5_sumout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \uart_comm|Add0~6\ : std_logic;
SIGNAL \uart_comm|Add0~9_sumout\ : std_logic;
SIGNAL \uart_comm|Add0~10\ : std_logic;
SIGNAL \uart_comm|Add0~13_sumout\ : std_logic;
SIGNAL \uart_comm|Add0~14\ : std_logic;
SIGNAL \uart_comm|Add0~17_sumout\ : std_logic;
SIGNAL \uart_comm|Add0~18\ : std_logic;
SIGNAL \uart_comm|Add0~33_sumout\ : std_logic;
SIGNAL \uart_comm|Add0~34\ : std_logic;
SIGNAL \uart_comm|Add0~29_sumout\ : std_logic;
SIGNAL \uart_comm|Add0~30\ : std_logic;
SIGNAL \uart_comm|Add0~1_sumout\ : std_logic;
SIGNAL \uart_comm|Add0~2\ : std_logic;
SIGNAL \uart_comm|Add0~25_sumout\ : std_logic;
SIGNAL \uart_comm|Add0~26\ : std_logic;
SIGNAL \uart_comm|Add0~21_sumout\ : std_logic;
SIGNAL \uart_comm|LessThan0~1_combout\ : std_logic;
SIGNAL \uart_comm|LessThan0~0_combout\ : std_logic;
SIGNAL \uart_comm|LessThan0~2_combout\ : std_logic;
SIGNAL \uart_comm|baud_pulse~q\ : std_logic;
SIGNAL \rx~input_o\ : std_logic;
SIGNAL \uart_comm|count_os~5_combout\ : std_logic;
SIGNAL \uart_comm|count_os[0]~DUPLICATE_q\ : std_logic;
SIGNAL \uart_comm|count_os~4_combout\ : std_logic;
SIGNAL \uart_comm|count_os~3_combout\ : std_logic;
SIGNAL \uart_comm|count_os[1]~DUPLICATE_q\ : std_logic;
SIGNAL \uart_comm|Add1~1_combout\ : std_logic;
SIGNAL \uart_comm|count_os~2_combout\ : std_logic;
SIGNAL \uart_comm|Add1~0_combout\ : std_logic;
SIGNAL \uart_comm|count_os~1_combout\ : std_logic;
SIGNAL \uart_comm|LessThan1~0_combout\ : std_logic;
SIGNAL \uart_comm|count_os~0_combout\ : std_logic;
SIGNAL \uart_comm|LessThan1~1_combout\ : std_logic;
SIGNAL \uart_comm|os_pulse~q\ : std_logic;
SIGNAL \uart_comm|Selector4~0_combout\ : std_logic;
SIGNAL \uart_comm|rx_state.idle~q\ : std_logic;
SIGNAL \uart_comm|os_count[2]~0_combout\ : std_logic;
SIGNAL \uart_comm|os_count[1]~5_combout\ : std_logic;
SIGNAL \uart_comm|os_count[2]~4_combout\ : std_logic;
SIGNAL \uart_comm|rx_state.ready_st~q\ : std_logic;
SIGNAL \uart_comm|os_count[2]~1_combout\ : std_logic;
SIGNAL \uart_comm|os_count[2]~2_combout\ : std_logic;
SIGNAL \uart_comm|rx_buffer[1]~0_combout\ : std_logic;
SIGNAL \uart_comm|Selector9~0_combout\ : std_logic;
SIGNAL \uart_comm|rx_count[3]~2_combout\ : std_logic;
SIGNAL \uart_comm|Selector8~0_combout\ : std_logic;
SIGNAL \uart_comm|Selector7~0_combout\ : std_logic;
SIGNAL \uart_comm|rx_count[3]~0_combout\ : std_logic;
SIGNAL \uart_comm|Selector5~0_combout\ : std_logic;
SIGNAL \uart_comm|rx_count[3]~1_combout\ : std_logic;
SIGNAL \uart_comm|os_count[0]~3_combout\ : std_logic;
SIGNAL \uart_comm|Add2~0_combout\ : std_logic;
SIGNAL \uart_comm|Selector5~1_combout\ : std_logic;
SIGNAL \uart_comm|rx_state.receive~q\ : std_logic;
SIGNAL \uart_comm|rx_ready_aux~0_combout\ : std_logic;
SIGNAL \uart_comm|rx_ready_aux~q\ : std_logic;
SIGNAL \tx_start~q\ : std_logic;
SIGNAL \uart_comm|tx_busy~0_combout\ : std_logic;
SIGNAL \uart_comm|tx_busy~q\ : std_logic;
SIGNAL \tx_start~0_combout\ : std_logic;
SIGNAL \tx_start~DUPLICATE_q\ : std_logic;
SIGNAL \uart_comm|tx_count[3]~1_combout\ : std_logic;
SIGNAL \uart_comm|tx_count~4_combout\ : std_logic;
SIGNAL \uart_comm|tx_count[0]~DUPLICATE_q\ : std_logic;
SIGNAL \uart_comm|tx_count~3_combout\ : std_logic;
SIGNAL \uart_comm|tx_count~2_combout\ : std_logic;
SIGNAL \uart_comm|tx_count~0_combout\ : std_logic;
SIGNAL \uart_comm|LessThan5~0_combout\ : std_logic;
SIGNAL \uart_comm|tx_state~q\ : std_logic;
SIGNAL \uart_comm|rx_buffer[1]~1_combout\ : std_logic;
SIGNAL \uart_comm|rx_data[0]~0_combout\ : std_logic;
SIGNAL \teste[0]~feeder_combout\ : std_logic;
SIGNAL \uart_comm|tx_busy~DUPLICATE_q\ : std_logic;
SIGNAL \tx_data[0]~0_combout\ : std_logic;
SIGNAL \teste[2]~feeder_combout\ : std_logic;
SIGNAL \teste[5]~feeder_combout\ : std_logic;
SIGNAL \tx_data[5]~feeder_combout\ : std_logic;
SIGNAL \tx_data[7]~feeder_combout\ : std_logic;
SIGNAL \uart_comm|tx_buffer~10_combout\ : std_logic;
SIGNAL \uart_comm|tx_buffer[0]~1_combout\ : std_logic;
SIGNAL \uart_comm|tx_buffer~9_combout\ : std_logic;
SIGNAL \uart_comm|tx_buffer~8_combout\ : std_logic;
SIGNAL \uart_comm|tx_buffer~7_combout\ : std_logic;
SIGNAL \uart_comm|tx_buffer~6_combout\ : std_logic;
SIGNAL \uart_comm|tx_buffer~5_combout\ : std_logic;
SIGNAL \teste[1]~feeder_combout\ : std_logic;
SIGNAL \uart_comm|tx_buffer~4_combout\ : std_logic;
SIGNAL \uart_comm|tx_buffer~3_combout\ : std_logic;
SIGNAL \uart_comm|tx_buffer~2_combout\ : std_logic;
SIGNAL \uart_comm|tx_buffer~0_combout\ : std_logic;
SIGNAL \uart_comm|tx~q\ : std_logic;
SIGNAL \uart_comm|count_baud\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \uart_comm|tx_buffer\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \uart_comm|rx_count\ : std_logic_vector(3 DOWNTO 0);
SIGNAL tx_data : std_logic_vector(7 DOWNTO 0);
SIGNAL \uart_comm|os_count\ : std_logic_vector(2 DOWNTO 0);
SIGNAL teste : std_logic_vector(7 DOWNTO 0);
SIGNAL \uart_comm|count_os\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \uart_comm|tx_count\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \uart_comm|rx_data\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \uart_comm|rx_buffer\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \uart_comm|ALT_INV_tx_count[0]~DUPLICATE_q\ : std_logic;
SIGNAL \uart_comm|ALT_INV_count_os[0]~DUPLICATE_q\ : std_logic;
SIGNAL \uart_comm|ALT_INV_count_os[1]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_tx_start~DUPLICATE_q\ : std_logic;
SIGNAL \uart_comm|ALT_INV_tx_busy~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_rx~input_o\ : std_logic;
SIGNAL \ALT_INV_reset~input_o\ : std_logic;
SIGNAL ALT_INV_teste : std_logic_vector(7 DOWNTO 5);
SIGNAL \uart_comm|ALT_INV_rx_data\ : std_logic_vector(5 DOWNTO 0);
SIGNAL ALT_INV_tx_data : std_logic_vector(7 DOWNTO 0);
SIGNAL \uart_comm|ALT_INV_tx_buffer\ : std_logic_vector(9 DOWNTO 1);
SIGNAL \uart_comm|ALT_INV_Add1~1_combout\ : std_logic;
SIGNAL \uart_comm|ALT_INV_Add1~0_combout\ : std_logic;
SIGNAL \uart_comm|ALT_INV_LessThan0~2_combout\ : std_logic;
SIGNAL \uart_comm|ALT_INV_tx_count\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \uart_comm|ALT_INV_LessThan1~0_combout\ : std_logic;
SIGNAL \uart_comm|ALT_INV_count_os\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \uart_comm|ALT_INV_LessThan0~1_combout\ : std_logic;
SIGNAL \uart_comm|ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL \uart_comm|ALT_INV_os_count[2]~4_combout\ : std_logic;
SIGNAL \uart_comm|ALT_INV_os_count[2]~1_combout\ : std_logic;
SIGNAL \uart_comm|ALT_INV_rx_state.ready_st~q\ : std_logic;
SIGNAL \uart_comm|ALT_INV_os_count[2]~0_combout\ : std_logic;
SIGNAL \uart_comm|ALT_INV_Add2~0_combout\ : std_logic;
SIGNAL \uart_comm|ALT_INV_rx_count[3]~0_combout\ : std_logic;
SIGNAL \uart_comm|ALT_INV_rx_count\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \uart_comm|ALT_INV_Selector5~0_combout\ : std_logic;
SIGNAL \uart_comm|ALT_INV_rx_state.idle~q\ : std_logic;
SIGNAL \uart_comm|ALT_INV_rx_buffer[1]~0_combout\ : std_logic;
SIGNAL \uart_comm|ALT_INV_baud_pulse~q\ : std_logic;
SIGNAL \ALT_INV_tx_start~q\ : std_logic;
SIGNAL \uart_comm|ALT_INV_os_pulse~q\ : std_logic;
SIGNAL \uart_comm|ALT_INV_rx_state.receive~q\ : std_logic;
SIGNAL \uart_comm|ALT_INV_os_count\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \uart_comm|ALT_INV_tx_busy~q\ : std_logic;
SIGNAL \uart_comm|ALT_INV_rx_ready_aux~q\ : std_logic;
SIGNAL \uart_comm|ALT_INV_tx~q\ : std_logic;
SIGNAL \uart_comm|ALT_INV_count_baud\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \uart_comm|ALT_INV_tx_state~q\ : std_logic;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_rx <= rx;
tx <= ww_tx;
rx_ready_t <= ww_rx_ready_t;
tx_busy_t <= ww_tx_busy_t;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\uart_comm|ALT_INV_tx_count[0]~DUPLICATE_q\ <= NOT \uart_comm|tx_count[0]~DUPLICATE_q\;
\uart_comm|ALT_INV_count_os[0]~DUPLICATE_q\ <= NOT \uart_comm|count_os[0]~DUPLICATE_q\;
\uart_comm|ALT_INV_count_os[1]~DUPLICATE_q\ <= NOT \uart_comm|count_os[1]~DUPLICATE_q\;
\ALT_INV_tx_start~DUPLICATE_q\ <= NOT \tx_start~DUPLICATE_q\;
\uart_comm|ALT_INV_tx_busy~DUPLICATE_q\ <= NOT \uart_comm|tx_busy~DUPLICATE_q\;
\ALT_INV_rx~input_o\ <= NOT \rx~input_o\;
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;
ALT_INV_teste(7) <= NOT teste(7);
\uart_comm|ALT_INV_rx_data\(5) <= NOT \uart_comm|rx_data\(5);
ALT_INV_tx_data(7) <= NOT tx_data(7);
ALT_INV_teste(5) <= NOT teste(5);
ALT_INV_tx_data(6) <= NOT tx_data(6);
\uart_comm|ALT_INV_tx_buffer\(9) <= NOT \uart_comm|tx_buffer\(9);
ALT_INV_tx_data(5) <= NOT tx_data(5);
\uart_comm|ALT_INV_tx_buffer\(8) <= NOT \uart_comm|tx_buffer\(8);
\uart_comm|ALT_INV_rx_data\(2) <= NOT \uart_comm|rx_data\(2);
ALT_INV_tx_data(4) <= NOT tx_data(4);
\uart_comm|ALT_INV_tx_buffer\(7) <= NOT \uart_comm|tx_buffer\(7);
\uart_comm|ALT_INV_rx_data\(1) <= NOT \uart_comm|rx_data\(1);
ALT_INV_tx_data(3) <= NOT tx_data(3);
\uart_comm|ALT_INV_tx_buffer\(6) <= NOT \uart_comm|tx_buffer\(6);
\uart_comm|ALT_INV_rx_data\(0) <= NOT \uart_comm|rx_data\(0);
ALT_INV_tx_data(2) <= NOT tx_data(2);
\uart_comm|ALT_INV_tx_buffer\(5) <= NOT \uart_comm|tx_buffer\(5);
ALT_INV_tx_data(1) <= NOT tx_data(1);
\uart_comm|ALT_INV_tx_buffer\(4) <= NOT \uart_comm|tx_buffer\(4);
ALT_INV_tx_data(0) <= NOT tx_data(0);
\uart_comm|ALT_INV_tx_buffer\(3) <= NOT \uart_comm|tx_buffer\(3);
\uart_comm|ALT_INV_Add1~1_combout\ <= NOT \uart_comm|Add1~1_combout\;
\uart_comm|ALT_INV_Add1~0_combout\ <= NOT \uart_comm|Add1~0_combout\;
\uart_comm|ALT_INV_LessThan0~2_combout\ <= NOT \uart_comm|LessThan0~2_combout\;
\uart_comm|ALT_INV_tx_buffer\(2) <= NOT \uart_comm|tx_buffer\(2);
\uart_comm|ALT_INV_tx_count\(0) <= NOT \uart_comm|tx_count\(0);
\uart_comm|ALT_INV_tx_count\(1) <= NOT \uart_comm|tx_count\(1);
\uart_comm|ALT_INV_tx_count\(2) <= NOT \uart_comm|tx_count\(2);
\uart_comm|ALT_INV_tx_count\(3) <= NOT \uart_comm|tx_count\(3);
\uart_comm|ALT_INV_LessThan1~0_combout\ <= NOT \uart_comm|LessThan1~0_combout\;
\uart_comm|ALT_INV_count_os\(0) <= NOT \uart_comm|count_os\(0);
\uart_comm|ALT_INV_count_os\(1) <= NOT \uart_comm|count_os\(1);
\uart_comm|ALT_INV_count_os\(2) <= NOT \uart_comm|count_os\(2);
\uart_comm|ALT_INV_count_os\(3) <= NOT \uart_comm|count_os\(3);
\uart_comm|ALT_INV_count_os\(5) <= NOT \uart_comm|count_os\(5);
\uart_comm|ALT_INV_LessThan0~1_combout\ <= NOT \uart_comm|LessThan0~1_combout\;
\uart_comm|ALT_INV_LessThan0~0_combout\ <= NOT \uart_comm|LessThan0~0_combout\;
\uart_comm|ALT_INV_count_os\(4) <= NOT \uart_comm|count_os\(4);
\uart_comm|ALT_INV_os_count[2]~4_combout\ <= NOT \uart_comm|os_count[2]~4_combout\;
\uart_comm|ALT_INV_os_count[2]~1_combout\ <= NOT \uart_comm|os_count[2]~1_combout\;
\uart_comm|ALT_INV_rx_state.ready_st~q\ <= NOT \uart_comm|rx_state.ready_st~q\;
\uart_comm|ALT_INV_os_count[2]~0_combout\ <= NOT \uart_comm|os_count[2]~0_combout\;
\uart_comm|ALT_INV_Add2~0_combout\ <= NOT \uart_comm|Add2~0_combout\;
\uart_comm|ALT_INV_rx_count[3]~0_combout\ <= NOT \uart_comm|rx_count[3]~0_combout\;
\uart_comm|ALT_INV_rx_count\(1) <= NOT \uart_comm|rx_count\(1);
\uart_comm|ALT_INV_rx_count\(0) <= NOT \uart_comm|rx_count\(0);
\uart_comm|ALT_INV_rx_count\(2) <= NOT \uart_comm|rx_count\(2);
\uart_comm|ALT_INV_Selector5~0_combout\ <= NOT \uart_comm|Selector5~0_combout\;
\uart_comm|ALT_INV_rx_state.idle~q\ <= NOT \uart_comm|rx_state.idle~q\;
\uart_comm|ALT_INV_rx_buffer[1]~0_combout\ <= NOT \uart_comm|rx_buffer[1]~0_combout\;
\uart_comm|ALT_INV_baud_pulse~q\ <= NOT \uart_comm|baud_pulse~q\;
\uart_comm|ALT_INV_tx_buffer\(1) <= NOT \uart_comm|tx_buffer\(1);
\ALT_INV_tx_start~q\ <= NOT \tx_start~q\;
\uart_comm|ALT_INV_os_pulse~q\ <= NOT \uart_comm|os_pulse~q\;
\uart_comm|ALT_INV_rx_state.receive~q\ <= NOT \uart_comm|rx_state.receive~q\;
\uart_comm|ALT_INV_os_count\(1) <= NOT \uart_comm|os_count\(1);
\uart_comm|ALT_INV_os_count\(0) <= NOT \uart_comm|os_count\(0);
\uart_comm|ALT_INV_os_count\(2) <= NOT \uart_comm|os_count\(2);
\uart_comm|ALT_INV_rx_count\(3) <= NOT \uart_comm|rx_count\(3);
\uart_comm|ALT_INV_tx_busy~q\ <= NOT \uart_comm|tx_busy~q\;
\uart_comm|ALT_INV_rx_ready_aux~q\ <= NOT \uart_comm|rx_ready_aux~q\;
\uart_comm|ALT_INV_tx~q\ <= NOT \uart_comm|tx~q\;
\uart_comm|ALT_INV_count_baud\(4) <= NOT \uart_comm|count_baud\(4);
\uart_comm|ALT_INV_count_baud\(5) <= NOT \uart_comm|count_baud\(5);
\uart_comm|ALT_INV_count_baud\(7) <= NOT \uart_comm|count_baud\(7);
\uart_comm|ALT_INV_count_baud\(8) <= NOT \uart_comm|count_baud\(8);
\uart_comm|ALT_INV_count_baud\(3) <= NOT \uart_comm|count_baud\(3);
\uart_comm|ALT_INV_count_baud\(2) <= NOT \uart_comm|count_baud\(2);
\uart_comm|ALT_INV_count_baud\(1) <= NOT \uart_comm|count_baud\(1);
\uart_comm|ALT_INV_count_baud\(0) <= NOT \uart_comm|count_baud\(0);
\uart_comm|ALT_INV_count_baud\(6) <= NOT \uart_comm|count_baud\(6);
\uart_comm|ALT_INV_tx_state~q\ <= NOT \uart_comm|tx_state~q\;

-- Location: IOOBUF_X54_Y14_N62
\tx~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \uart_comm|ALT_INV_tx~q\,
	devoe => ww_devoe,
	o => ww_tx);

-- Location: IOOBUF_X0_Y18_N79
\rx_ready_t~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \uart_comm|rx_ready_aux~q\,
	devoe => ww_devoe,
	o => ww_rx_ready_t);

-- Location: IOOBUF_X0_Y18_N96
\tx_busy_t~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \uart_comm|ALT_INV_tx_busy~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_tx_busy_t);

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

-- Location: LABCELL_X50_Y15_N30
\uart_comm|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart_comm|Add0~5_sumout\ = SUM(( \uart_comm|count_baud\(0) ) + ( VCC ) + ( !VCC ))
-- \uart_comm|Add0~6\ = CARRY(( \uart_comm|count_baud\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \uart_comm|ALT_INV_count_baud\(0),
	cin => GND,
	sumout => \uart_comm|Add0~5_sumout\,
	cout => \uart_comm|Add0~6\);

-- Location: IOIBUF_X54_Y16_N55
\reset~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: FF_X50_Y15_N32
\uart_comm|count_baud[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \uart_comm|Add0~5_sumout\,
	clrn => \reset~input_o\,
	sclr => \uart_comm|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_comm|count_baud\(0));

-- Location: LABCELL_X50_Y15_N33
\uart_comm|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart_comm|Add0~9_sumout\ = SUM(( \uart_comm|count_baud\(1) ) + ( GND ) + ( \uart_comm|Add0~6\ ))
-- \uart_comm|Add0~10\ = CARRY(( \uart_comm|count_baud\(1) ) + ( GND ) + ( \uart_comm|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \uart_comm|ALT_INV_count_baud\(1),
	cin => \uart_comm|Add0~6\,
	sumout => \uart_comm|Add0~9_sumout\,
	cout => \uart_comm|Add0~10\);

-- Location: FF_X50_Y15_N35
\uart_comm|count_baud[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \uart_comm|Add0~9_sumout\,
	clrn => \reset~input_o\,
	sclr => \uart_comm|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_comm|count_baud\(1));

-- Location: LABCELL_X50_Y15_N36
\uart_comm|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart_comm|Add0~13_sumout\ = SUM(( \uart_comm|count_baud\(2) ) + ( GND ) + ( \uart_comm|Add0~10\ ))
-- \uart_comm|Add0~14\ = CARRY(( \uart_comm|count_baud\(2) ) + ( GND ) + ( \uart_comm|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \uart_comm|ALT_INV_count_baud\(2),
	cin => \uart_comm|Add0~10\,
	sumout => \uart_comm|Add0~13_sumout\,
	cout => \uart_comm|Add0~14\);

-- Location: FF_X50_Y15_N38
\uart_comm|count_baud[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \uart_comm|Add0~13_sumout\,
	clrn => \reset~input_o\,
	sclr => \uart_comm|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_comm|count_baud\(2));

-- Location: LABCELL_X50_Y15_N39
\uart_comm|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart_comm|Add0~17_sumout\ = SUM(( \uart_comm|count_baud\(3) ) + ( GND ) + ( \uart_comm|Add0~14\ ))
-- \uart_comm|Add0~18\ = CARRY(( \uart_comm|count_baud\(3) ) + ( GND ) + ( \uart_comm|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \uart_comm|ALT_INV_count_baud\(3),
	cin => \uart_comm|Add0~14\,
	sumout => \uart_comm|Add0~17_sumout\,
	cout => \uart_comm|Add0~18\);

-- Location: FF_X50_Y15_N41
\uart_comm|count_baud[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \uart_comm|Add0~17_sumout\,
	clrn => \reset~input_o\,
	sclr => \uart_comm|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_comm|count_baud\(3));

-- Location: LABCELL_X50_Y15_N42
\uart_comm|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart_comm|Add0~33_sumout\ = SUM(( \uart_comm|count_baud\(4) ) + ( GND ) + ( \uart_comm|Add0~18\ ))
-- \uart_comm|Add0~34\ = CARRY(( \uart_comm|count_baud\(4) ) + ( GND ) + ( \uart_comm|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \uart_comm|ALT_INV_count_baud\(4),
	cin => \uart_comm|Add0~18\,
	sumout => \uart_comm|Add0~33_sumout\,
	cout => \uart_comm|Add0~34\);

-- Location: FF_X50_Y15_N44
\uart_comm|count_baud[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \uart_comm|Add0~33_sumout\,
	clrn => \reset~input_o\,
	sclr => \uart_comm|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_comm|count_baud\(4));

-- Location: LABCELL_X50_Y15_N45
\uart_comm|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart_comm|Add0~29_sumout\ = SUM(( \uart_comm|count_baud\(5) ) + ( GND ) + ( \uart_comm|Add0~34\ ))
-- \uart_comm|Add0~30\ = CARRY(( \uart_comm|count_baud\(5) ) + ( GND ) + ( \uart_comm|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \uart_comm|ALT_INV_count_baud\(5),
	cin => \uart_comm|Add0~34\,
	sumout => \uart_comm|Add0~29_sumout\,
	cout => \uart_comm|Add0~30\);

-- Location: FF_X50_Y15_N47
\uart_comm|count_baud[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \uart_comm|Add0~29_sumout\,
	clrn => \reset~input_o\,
	sclr => \uart_comm|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_comm|count_baud\(5));

-- Location: LABCELL_X50_Y15_N48
\uart_comm|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart_comm|Add0~1_sumout\ = SUM(( \uart_comm|count_baud\(6) ) + ( GND ) + ( \uart_comm|Add0~30\ ))
-- \uart_comm|Add0~2\ = CARRY(( \uart_comm|count_baud\(6) ) + ( GND ) + ( \uart_comm|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \uart_comm|ALT_INV_count_baud\(6),
	cin => \uart_comm|Add0~30\,
	sumout => \uart_comm|Add0~1_sumout\,
	cout => \uart_comm|Add0~2\);

-- Location: FF_X50_Y15_N50
\uart_comm|count_baud[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \uart_comm|Add0~1_sumout\,
	clrn => \reset~input_o\,
	sclr => \uart_comm|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_comm|count_baud\(6));

-- Location: LABCELL_X50_Y15_N51
\uart_comm|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart_comm|Add0~25_sumout\ = SUM(( \uart_comm|count_baud\(7) ) + ( GND ) + ( \uart_comm|Add0~2\ ))
-- \uart_comm|Add0~26\ = CARRY(( \uart_comm|count_baud\(7) ) + ( GND ) + ( \uart_comm|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \uart_comm|ALT_INV_count_baud\(7),
	cin => \uart_comm|Add0~2\,
	sumout => \uart_comm|Add0~25_sumout\,
	cout => \uart_comm|Add0~26\);

-- Location: FF_X50_Y15_N53
\uart_comm|count_baud[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \uart_comm|Add0~25_sumout\,
	clrn => \reset~input_o\,
	sclr => \uart_comm|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_comm|count_baud\(7));

-- Location: LABCELL_X50_Y15_N54
\uart_comm|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart_comm|Add0~21_sumout\ = SUM(( \uart_comm|count_baud\(8) ) + ( GND ) + ( \uart_comm|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \uart_comm|ALT_INV_count_baud\(8),
	cin => \uart_comm|Add0~26\,
	sumout => \uart_comm|Add0~21_sumout\);

-- Location: FF_X50_Y15_N56
\uart_comm|count_baud[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \uart_comm|Add0~21_sumout\,
	clrn => \reset~input_o\,
	sclr => \uart_comm|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_comm|count_baud\(8));

-- Location: LABCELL_X50_Y15_N24
\uart_comm|LessThan0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart_comm|LessThan0~1_combout\ = ( \uart_comm|count_baud\(5) & ( \uart_comm|count_baud\(7) & ( (\uart_comm|count_baud\(8) & ((\uart_comm|count_baud\(4)) # (\uart_comm|count_baud\(6)))) ) ) ) # ( !\uart_comm|count_baud\(5) & ( \uart_comm|count_baud\(7) & 
-- ( (\uart_comm|count_baud\(6) & \uart_comm|count_baud\(8)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000101000001010000010100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uart_comm|ALT_INV_count_baud\(6),
	datac => \uart_comm|ALT_INV_count_baud\(8),
	datad => \uart_comm|ALT_INV_count_baud\(4),
	datae => \uart_comm|ALT_INV_count_baud\(5),
	dataf => \uart_comm|ALT_INV_count_baud\(7),
	combout => \uart_comm|LessThan0~1_combout\);

-- Location: LABCELL_X50_Y15_N18
\uart_comm|LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart_comm|LessThan0~0_combout\ = ( !\uart_comm|count_baud\(2) & ( !\uart_comm|count_baud\(6) & ( (!\uart_comm|count_baud\(0) & (!\uart_comm|count_baud\(1) & !\uart_comm|count_baud\(3))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \uart_comm|ALT_INV_count_baud\(0),
	datac => \uart_comm|ALT_INV_count_baud\(1),
	datad => \uart_comm|ALT_INV_count_baud\(3),
	datae => \uart_comm|ALT_INV_count_baud\(2),
	dataf => \uart_comm|ALT_INV_count_baud\(6),
	combout => \uart_comm|LessThan0~0_combout\);

-- Location: LABCELL_X50_Y15_N15
\uart_comm|LessThan0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart_comm|LessThan0~2_combout\ = ( !\uart_comm|LessThan0~0_combout\ & ( \uart_comm|LessThan0~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uart_comm|ALT_INV_LessThan0~1_combout\,
	dataf => \uart_comm|ALT_INV_LessThan0~0_combout\,
	combout => \uart_comm|LessThan0~2_combout\);

-- Location: FF_X50_Y15_N23
\uart_comm|baud_pulse\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \uart_comm|LessThan0~2_combout\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_comm|baud_pulse~q\);

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

-- Location: MLABCELL_X49_Y15_N12
\uart_comm|count_os~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart_comm|count_os~5_combout\ = ( \uart_comm|count_os\(0) & ( \uart_comm|LessThan0~1_combout\ & ( !\uart_comm|LessThan0~0_combout\ ) ) ) # ( !\uart_comm|count_os\(0) & ( \uart_comm|LessThan0~1_combout\ & ( (!\uart_comm|LessThan1~0_combout\) # 
-- ((!\uart_comm|LessThan0~0_combout\) # (!\uart_comm|count_os\(4))) ) ) ) # ( !\uart_comm|count_os\(0) & ( !\uart_comm|LessThan0~1_combout\ & ( (!\uart_comm|LessThan1~0_combout\) # (!\uart_comm|count_os\(4)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111001100000000000000000011111111111111001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \uart_comm|ALT_INV_LessThan1~0_combout\,
	datac => \uart_comm|ALT_INV_LessThan0~0_combout\,
	datad => \uart_comm|ALT_INV_count_os\(4),
	datae => \uart_comm|ALT_INV_count_os\(0),
	dataf => \uart_comm|ALT_INV_LessThan0~1_combout\,
	combout => \uart_comm|count_os~5_combout\);

-- Location: FF_X49_Y15_N13
\uart_comm|count_os[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \uart_comm|count_os~5_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_comm|count_os\(0));

-- Location: FF_X49_Y15_N14
\uart_comm|count_os[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \uart_comm|count_os~5_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_comm|count_os[0]~DUPLICATE_q\);

-- Location: MLABCELL_X49_Y15_N6
\uart_comm|count_os~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart_comm|count_os~4_combout\ = ( \uart_comm|count_os\(1) & ( \uart_comm|LessThan0~0_combout\ & ( (!\uart_comm|count_os[0]~DUPLICATE_q\ & ((!\uart_comm|LessThan1~0_combout\) # (!\uart_comm|count_os\(4)))) ) ) ) # ( !\uart_comm|count_os\(1) & ( 
-- \uart_comm|LessThan0~0_combout\ & ( (\uart_comm|count_os[0]~DUPLICATE_q\ & ((!\uart_comm|LessThan1~0_combout\) # (!\uart_comm|count_os\(4)))) ) ) ) # ( \uart_comm|count_os\(1) & ( !\uart_comm|LessThan0~0_combout\ & ( (!\uart_comm|LessThan0~1_combout\ & 
-- (!\uart_comm|count_os[0]~DUPLICATE_q\ & ((!\uart_comm|LessThan1~0_combout\) # (!\uart_comm|count_os\(4))))) ) ) ) # ( !\uart_comm|count_os\(1) & ( !\uart_comm|LessThan0~0_combout\ & ( (!\uart_comm|LessThan0~1_combout\ & 
-- (\uart_comm|count_os[0]~DUPLICATE_q\ & ((!\uart_comm|LessThan1~0_combout\) # (!\uart_comm|count_os\(4))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100000100010001000000000110011001100001100110011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uart_comm|ALT_INV_LessThan0~1_combout\,
	datab => \uart_comm|ALT_INV_count_os[0]~DUPLICATE_q\,
	datac => \uart_comm|ALT_INV_LessThan1~0_combout\,
	datad => \uart_comm|ALT_INV_count_os\(4),
	datae => \uart_comm|ALT_INV_count_os\(1),
	dataf => \uart_comm|ALT_INV_LessThan0~0_combout\,
	combout => \uart_comm|count_os~4_combout\);

-- Location: FF_X49_Y15_N7
\uart_comm|count_os[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \uart_comm|count_os~4_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_comm|count_os\(1));

-- Location: LABCELL_X50_Y15_N0
\uart_comm|count_os~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart_comm|count_os~3_combout\ = ( \uart_comm|count_os\(2) & ( !\uart_comm|LessThan0~2_combout\ & ( (!\uart_comm|count_os\(0) & ((!\uart_comm|LessThan1~0_combout\) # ((!\uart_comm|count_os\(4))))) # (\uart_comm|count_os\(0) & (!\uart_comm|count_os\(1) & 
-- ((!\uart_comm|LessThan1~0_combout\) # (!\uart_comm|count_os\(4))))) ) ) ) # ( !\uart_comm|count_os\(2) & ( !\uart_comm|LessThan0~2_combout\ & ( (\uart_comm|count_os\(0) & (\uart_comm|count_os\(1) & ((!\uart_comm|LessThan1~0_combout\) # 
-- (!\uart_comm|count_os\(4))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000100111110101100100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uart_comm|ALT_INV_count_os\(0),
	datab => \uart_comm|ALT_INV_LessThan1~0_combout\,
	datac => \uart_comm|ALT_INV_count_os\(1),
	datad => \uart_comm|ALT_INV_count_os\(4),
	datae => \uart_comm|ALT_INV_count_os\(2),
	dataf => \uart_comm|ALT_INV_LessThan0~2_combout\,
	combout => \uart_comm|count_os~3_combout\);

-- Location: FF_X50_Y15_N2
\uart_comm|count_os[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \uart_comm|count_os~3_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_comm|count_os\(2));

-- Location: FF_X49_Y15_N8
\uart_comm|count_os[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \uart_comm|count_os~4_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_comm|count_os[1]~DUPLICATE_q\);

-- Location: MLABCELL_X49_Y15_N30
\uart_comm|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart_comm|Add1~1_combout\ = ( \uart_comm|LessThan0~1_combout\ & ( \uart_comm|count_os[1]~DUPLICATE_q\ & ( (\uart_comm|count_os[0]~DUPLICATE_q\ & (\uart_comm|count_os\(2) & \uart_comm|LessThan0~0_combout\)) ) ) ) # ( !\uart_comm|LessThan0~1_combout\ & ( 
-- \uart_comm|count_os[1]~DUPLICATE_q\ & ( (\uart_comm|count_os[0]~DUPLICATE_q\ & \uart_comm|count_os\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000011000000110000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \uart_comm|ALT_INV_count_os[0]~DUPLICATE_q\,
	datac => \uart_comm|ALT_INV_count_os\(2),
	datad => \uart_comm|ALT_INV_LessThan0~0_combout\,
	datae => \uart_comm|ALT_INV_LessThan0~1_combout\,
	dataf => \uart_comm|ALT_INV_count_os[1]~DUPLICATE_q\,
	combout => \uart_comm|Add1~1_combout\);

-- Location: LABCELL_X50_Y15_N6
\uart_comm|count_os~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart_comm|count_os~2_combout\ = ( \uart_comm|LessThan0~2_combout\ & ( \uart_comm|Add1~1_combout\ ) ) # ( !\uart_comm|LessThan0~2_combout\ & ( (!\uart_comm|LessThan1~0_combout\ & ((!\uart_comm|Add1~1_combout\ $ (!\uart_comm|count_os\(3))))) # 
-- (\uart_comm|LessThan1~0_combout\ & (!\uart_comm|count_os\(4) & (!\uart_comm|Add1~1_combout\ $ (!\uart_comm|count_os\(3))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111011100000000011101110000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uart_comm|ALT_INV_LessThan1~0_combout\,
	datab => \uart_comm|ALT_INV_count_os\(4),
	datac => \uart_comm|ALT_INV_Add1~1_combout\,
	datad => \uart_comm|ALT_INV_count_os\(3),
	dataf => \uart_comm|ALT_INV_LessThan0~2_combout\,
	combout => \uart_comm|count_os~2_combout\);

-- Location: FF_X50_Y15_N8
\uart_comm|count_os[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \uart_comm|count_os~2_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_comm|count_os\(3));

-- Location: MLABCELL_X49_Y15_N36
\uart_comm|Add1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart_comm|Add1~0_combout\ = ( \uart_comm|LessThan0~1_combout\ & ( \uart_comm|LessThan0~0_combout\ & ( (\uart_comm|count_os\(2) & (\uart_comm|count_os[1]~DUPLICATE_q\ & (\uart_comm|count_os\(3) & \uart_comm|count_os[0]~DUPLICATE_q\))) ) ) ) # ( 
-- !\uart_comm|LessThan0~1_combout\ & ( \uart_comm|LessThan0~0_combout\ & ( (\uart_comm|count_os\(2) & (\uart_comm|count_os[1]~DUPLICATE_q\ & (\uart_comm|count_os\(3) & \uart_comm|count_os[0]~DUPLICATE_q\))) ) ) ) # ( !\uart_comm|LessThan0~1_combout\ & ( 
-- !\uart_comm|LessThan0~0_combout\ & ( (\uart_comm|count_os\(2) & (\uart_comm|count_os[1]~DUPLICATE_q\ & (\uart_comm|count_os\(3) & \uart_comm|count_os[0]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000000000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uart_comm|ALT_INV_count_os\(2),
	datab => \uart_comm|ALT_INV_count_os[1]~DUPLICATE_q\,
	datac => \uart_comm|ALT_INV_count_os\(3),
	datad => \uart_comm|ALT_INV_count_os[0]~DUPLICATE_q\,
	datae => \uart_comm|ALT_INV_LessThan0~1_combout\,
	dataf => \uart_comm|ALT_INV_LessThan0~0_combout\,
	combout => \uart_comm|Add1~0_combout\);

-- Location: LABCELL_X50_Y15_N9
\uart_comm|count_os~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart_comm|count_os~1_combout\ = ( \uart_comm|Add1~0_combout\ & ( (!\uart_comm|LessThan0~2_combout\ & ((!\uart_comm|count_os\(4) & ((\uart_comm|count_os\(5)))) # (\uart_comm|count_os\(4) & (!\uart_comm|LessThan1~0_combout\ & !\uart_comm|count_os\(5))))) ) 
-- ) # ( !\uart_comm|Add1~0_combout\ & ( (!\uart_comm|LessThan0~2_combout\ & (\uart_comm|count_os\(5) & ((!\uart_comm|LessThan1~0_combout\) # (!\uart_comm|count_os\(4))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011100000000000001110000000100000110000000010000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uart_comm|ALT_INV_LessThan1~0_combout\,
	datab => \uart_comm|ALT_INV_count_os\(4),
	datac => \uart_comm|ALT_INV_LessThan0~2_combout\,
	datad => \uart_comm|ALT_INV_count_os\(5),
	dataf => \uart_comm|ALT_INV_Add1~0_combout\,
	combout => \uart_comm|count_os~1_combout\);

-- Location: FF_X50_Y15_N11
\uart_comm|count_os[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \uart_comm|count_os~1_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_comm|count_os\(5));

-- Location: MLABCELL_X49_Y15_N45
\uart_comm|LessThan1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart_comm|LessThan1~0_combout\ = ( \uart_comm|count_os\(5) & ( \uart_comm|count_os[1]~DUPLICATE_q\ & ( (\uart_comm|count_os\(3)) # (\uart_comm|count_os\(2)) ) ) ) # ( \uart_comm|count_os\(5) & ( !\uart_comm|count_os[1]~DUPLICATE_q\ & ( 
-- ((\uart_comm|count_os\(2) & \uart_comm|count_os[0]~DUPLICATE_q\)) # (\uart_comm|count_os\(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001011111111100000000000000000101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uart_comm|ALT_INV_count_os\(2),
	datac => \uart_comm|ALT_INV_count_os[0]~DUPLICATE_q\,
	datad => \uart_comm|ALT_INV_count_os\(3),
	datae => \uart_comm|ALT_INV_count_os\(5),
	dataf => \uart_comm|ALT_INV_count_os[1]~DUPLICATE_q\,
	combout => \uart_comm|LessThan1~0_combout\);

-- Location: LABCELL_X50_Y15_N12
\uart_comm|count_os~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart_comm|count_os~0_combout\ = ( \uart_comm|LessThan0~2_combout\ & ( \uart_comm|Add1~0_combout\ ) ) # ( !\uart_comm|LessThan0~2_combout\ & ( (!\uart_comm|Add1~0_combout\ & (!\uart_comm|LessThan1~0_combout\ & \uart_comm|count_os\(4))) # 
-- (\uart_comm|Add1~0_combout\ & ((!\uart_comm|count_os\(4)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111000000000011111100000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \uart_comm|ALT_INV_LessThan1~0_combout\,
	datac => \uart_comm|ALT_INV_Add1~0_combout\,
	datad => \uart_comm|ALT_INV_count_os\(4),
	dataf => \uart_comm|ALT_INV_LessThan0~2_combout\,
	combout => \uart_comm|count_os~0_combout\);

-- Location: FF_X50_Y15_N14
\uart_comm|count_os[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \uart_comm|count_os~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_comm|count_os\(4));

-- Location: MLABCELL_X49_Y15_N48
\uart_comm|LessThan1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart_comm|LessThan1~1_combout\ = ( \uart_comm|LessThan1~0_combout\ & ( \uart_comm|LessThan0~0_combout\ & ( \uart_comm|count_os\(4) ) ) ) # ( \uart_comm|LessThan1~0_combout\ & ( !\uart_comm|LessThan0~0_combout\ & ( (!\uart_comm|LessThan0~1_combout\ & 
-- \uart_comm|count_os\(4)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \uart_comm|ALT_INV_LessThan0~1_combout\,
	datad => \uart_comm|ALT_INV_count_os\(4),
	datae => \uart_comm|ALT_INV_LessThan1~0_combout\,
	dataf => \uart_comm|ALT_INV_LessThan0~0_combout\,
	combout => \uart_comm|LessThan1~1_combout\);

-- Location: FF_X49_Y15_N50
\uart_comm|os_pulse\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \uart_comm|LessThan1~1_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_comm|os_pulse~q\);

-- Location: LABCELL_X47_Y15_N3
\uart_comm|Selector4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart_comm|Selector4~0_combout\ = ( \uart_comm|rx_state.idle~q\ & ( \uart_comm|os_count\(2) & ( !\uart_comm|rx_state.ready_st~q\ ) ) ) # ( !\uart_comm|rx_state.idle~q\ & ( \uart_comm|os_count\(2) & ( (!\rx~input_o\ & !\uart_comm|rx_state.ready_st~q\) ) ) 
-- ) # ( \uart_comm|rx_state.idle~q\ & ( !\uart_comm|os_count\(2) & ( !\uart_comm|rx_state.ready_st~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000010101010000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_rx~input_o\,
	datad => \uart_comm|ALT_INV_rx_state.ready_st~q\,
	datae => \uart_comm|ALT_INV_rx_state.idle~q\,
	dataf => \uart_comm|ALT_INV_os_count\(2),
	combout => \uart_comm|Selector4~0_combout\);

-- Location: FF_X47_Y15_N5
\uart_comm|rx_state.idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \uart_comm|Selector4~0_combout\,
	clrn => \reset~input_o\,
	ena => \uart_comm|os_pulse~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_comm|rx_state.idle~q\);

-- Location: LABCELL_X48_Y15_N33
\uart_comm|os_count[2]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart_comm|os_count[2]~0_combout\ = ( \uart_comm|os_count\(2) & ( !\uart_comm|rx_state.idle~q\ ) ) # ( !\uart_comm|os_count\(2) & ( (!\uart_comm|rx_state.idle~q\ & \rx~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uart_comm|ALT_INV_rx_state.idle~q\,
	datac => \ALT_INV_rx~input_o\,
	dataf => \uart_comm|ALT_INV_os_count\(2),
	combout => \uart_comm|os_count[2]~0_combout\);

-- Location: LABCELL_X48_Y15_N24
\uart_comm|os_count[1]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart_comm|os_count[1]~5_combout\ = ( \uart_comm|os_count\(1) & ( \uart_comm|os_count\(0) & ( (!\uart_comm|os_count[2]~1_combout\) # (\uart_comm|os_count[2]~4_combout\) ) ) ) # ( !\uart_comm|os_count\(1) & ( \uart_comm|os_count\(0) & ( 
-- (!\uart_comm|os_count[2]~0_combout\ & (\uart_comm|os_count[2]~1_combout\ & !\uart_comm|os_count[2]~4_combout\)) ) ) ) # ( \uart_comm|os_count\(1) & ( !\uart_comm|os_count\(0) & ( (!\uart_comm|os_count[2]~0_combout\) # ((!\uart_comm|os_count[2]~1_combout\) 
-- # (\uart_comm|os_count[2]~4_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011111110111100100000001000001100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uart_comm|ALT_INV_os_count[2]~0_combout\,
	datab => \uart_comm|ALT_INV_os_count[2]~1_combout\,
	datac => \uart_comm|ALT_INV_os_count[2]~4_combout\,
	datae => \uart_comm|ALT_INV_os_count\(1),
	dataf => \uart_comm|ALT_INV_os_count\(0),
	combout => \uart_comm|os_count[1]~5_combout\);

-- Location: FF_X48_Y15_N26
\uart_comm|os_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \uart_comm|os_count[1]~5_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_comm|os_count\(1));

-- Location: LABCELL_X47_Y15_N54
\uart_comm|os_count[2]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart_comm|os_count[2]~4_combout\ = ( \uart_comm|os_count\(0) & ( \uart_comm|os_count\(2) & ( (\uart_comm|os_count\(1) & (\uart_comm|rx_state.receive~q\ & \uart_comm|rx_count\(3))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \uart_comm|ALT_INV_os_count\(1),
	datac => \uart_comm|ALT_INV_rx_state.receive~q\,
	datad => \uart_comm|ALT_INV_rx_count\(3),
	datae => \uart_comm|ALT_INV_os_count\(0),
	dataf => \uart_comm|ALT_INV_os_count\(2),
	combout => \uart_comm|os_count[2]~4_combout\);

-- Location: FF_X47_Y15_N56
\uart_comm|rx_state.ready_st\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \uart_comm|os_count[2]~4_combout\,
	clrn => \reset~input_o\,
	ena => \uart_comm|os_pulse~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_comm|rx_state.ready_st~q\);

-- Location: LABCELL_X48_Y15_N36
\uart_comm|os_count[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart_comm|os_count[2]~1_combout\ = (\uart_comm|os_pulse~q\ & !\uart_comm|rx_state.ready_st~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000000110000001100000011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \uart_comm|ALT_INV_os_pulse~q\,
	datac => \uart_comm|ALT_INV_rx_state.ready_st~q\,
	combout => \uart_comm|os_count[2]~1_combout\);

-- Location: LABCELL_X48_Y15_N12
\uart_comm|os_count[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart_comm|os_count[2]~2_combout\ = ( \uart_comm|os_count\(2) & ( \uart_comm|rx_count\(3) & ( (!\uart_comm|os_count[2]~1_combout\) # ((!\uart_comm|Add2~0_combout\ & (!\uart_comm|os_count[2]~0_combout\)) # (\uart_comm|Add2~0_combout\ & 
-- ((\uart_comm|rx_state.receive~q\)))) ) ) ) # ( !\uart_comm|os_count\(2) & ( \uart_comm|rx_count\(3) & ( (\uart_comm|Add2~0_combout\ & (\uart_comm|os_count[2]~1_combout\ & !\uart_comm|os_count[2]~0_combout\)) ) ) ) # ( \uart_comm|os_count\(2) & ( 
-- !\uart_comm|rx_count\(3) & ( (!\uart_comm|os_count[2]~1_combout\) # ((!\uart_comm|Add2~0_combout\ & !\uart_comm|os_count[2]~0_combout\)) ) ) ) # ( !\uart_comm|os_count\(2) & ( !\uart_comm|rx_count\(3) & ( (\uart_comm|Add2~0_combout\ & 
-- (\uart_comm|os_count[2]~1_combout\ & !\uart_comm|os_count[2]~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010000111011001110110000010000000100001110110011111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uart_comm|ALT_INV_Add2~0_combout\,
	datab => \uart_comm|ALT_INV_os_count[2]~1_combout\,
	datac => \uart_comm|ALT_INV_os_count[2]~0_combout\,
	datad => \uart_comm|ALT_INV_rx_state.receive~q\,
	datae => \uart_comm|ALT_INV_os_count\(2),
	dataf => \uart_comm|ALT_INV_rx_count\(3),
	combout => \uart_comm|os_count[2]~2_combout\);

-- Location: FF_X48_Y15_N14
\uart_comm|os_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \uart_comm|os_count[2]~2_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_comm|os_count\(2));

-- Location: LABCELL_X48_Y15_N30
\uart_comm|rx_buffer[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart_comm|rx_buffer[1]~0_combout\ = ( \uart_comm|rx_state.receive~q\ & ( (\uart_comm|os_count\(2) & (\uart_comm|os_count\(1) & \uart_comm|os_count\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000110000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \uart_comm|ALT_INV_os_count\(2),
	datac => \uart_comm|ALT_INV_os_count\(1),
	datad => \uart_comm|ALT_INV_os_count\(0),
	dataf => \uart_comm|ALT_INV_rx_state.receive~q\,
	combout => \uart_comm|rx_buffer[1]~0_combout\);

-- Location: LABCELL_X48_Y15_N45
\uart_comm|Selector9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart_comm|Selector9~0_combout\ = (!\uart_comm|rx_count\(0) & \uart_comm|rx_state.receive~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uart_comm|ALT_INV_rx_count\(0),
	datac => \uart_comm|ALT_INV_rx_state.receive~q\,
	combout => \uart_comm|Selector9~0_combout\);

-- Location: LABCELL_X48_Y15_N54
\uart_comm|rx_count[3]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart_comm|rx_count[3]~2_combout\ = ( \uart_comm|rx_state.idle~q\ & ( \uart_comm|rx_buffer[1]~0_combout\ & ( (!\uart_comm|rx_count\(3) & \uart_comm|os_pulse~q\) ) ) ) # ( !\uart_comm|rx_state.idle~q\ & ( \uart_comm|rx_buffer[1]~0_combout\ & ( 
-- (\uart_comm|os_pulse~q\ & ((!\uart_comm|rx_count\(3)) # ((!\rx~input_o\ & \uart_comm|os_count\(2))))) ) ) ) # ( !\uart_comm|rx_state.idle~q\ & ( !\uart_comm|rx_buffer[1]~0_combout\ & ( (!\rx~input_o\ & (\uart_comm|os_count\(2) & \uart_comm|os_pulse~q\)) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100010000000000000000000000000111100100000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_rx~input_o\,
	datab => \uart_comm|ALT_INV_os_count\(2),
	datac => \uart_comm|ALT_INV_rx_count\(3),
	datad => \uart_comm|ALT_INV_os_pulse~q\,
	datae => \uart_comm|ALT_INV_rx_state.idle~q\,
	dataf => \uart_comm|ALT_INV_rx_buffer[1]~0_combout\,
	combout => \uart_comm|rx_count[3]~2_combout\);

-- Location: FF_X48_Y15_N38
\uart_comm|rx_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \uart_comm|Selector9~0_combout\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \uart_comm|rx_count[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_comm|rx_count\(0));

-- Location: LABCELL_X48_Y15_N51
\uart_comm|Selector8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart_comm|Selector8~0_combout\ = ( \uart_comm|rx_count\(0) & ( (\uart_comm|rx_state.receive~q\ & !\uart_comm|rx_count\(1)) ) ) # ( !\uart_comm|rx_count\(0) & ( (\uart_comm|rx_state.receive~q\ & \uart_comm|rx_count\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100110011000000000011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \uart_comm|ALT_INV_rx_state.receive~q\,
	datad => \uart_comm|ALT_INV_rx_count\(1),
	dataf => \uart_comm|ALT_INV_rx_count\(0),
	combout => \uart_comm|Selector8~0_combout\);

-- Location: FF_X48_Y15_N53
\uart_comm|rx_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \uart_comm|Selector8~0_combout\,
	clrn => \reset~input_o\,
	ena => \uart_comm|rx_count[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_comm|rx_count\(1));

-- Location: LABCELL_X48_Y15_N42
\uart_comm|Selector7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart_comm|Selector7~0_combout\ = ( \uart_comm|rx_count\(0) & ( (\uart_comm|rx_state.receive~q\ & (!\uart_comm|rx_count\(1) $ (!\uart_comm|rx_count\(2)))) ) ) # ( !\uart_comm|rx_count\(0) & ( (\uart_comm|rx_state.receive~q\ & \uart_comm|rx_count\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100000011001100000000001100110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \uart_comm|ALT_INV_rx_state.receive~q\,
	datac => \uart_comm|ALT_INV_rx_count\(1),
	datad => \uart_comm|ALT_INV_rx_count\(2),
	dataf => \uart_comm|ALT_INV_rx_count\(0),
	combout => \uart_comm|Selector7~0_combout\);

-- Location: FF_X48_Y15_N41
\uart_comm|rx_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \uart_comm|Selector7~0_combout\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \uart_comm|rx_count[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_comm|rx_count\(2));

-- Location: LABCELL_X48_Y15_N48
\uart_comm|rx_count[3]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart_comm|rx_count[3]~0_combout\ = ( \uart_comm|rx_count\(3) & ( (\uart_comm|rx_state.receive~q\ & ((!\uart_comm|rx_count\(0)) # ((!\uart_comm|rx_count\(1)) # (!\uart_comm|rx_count\(2))))) ) ) # ( !\uart_comm|rx_count\(3) & ( (\uart_comm|rx_count\(0) & 
-- (\uart_comm|rx_state.receive~q\ & (\uart_comm|rx_count\(1) & \uart_comm|rx_count\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000100110011001100100011001100110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uart_comm|ALT_INV_rx_count\(0),
	datab => \uart_comm|ALT_INV_rx_state.receive~q\,
	datac => \uart_comm|ALT_INV_rx_count\(1),
	datad => \uart_comm|ALT_INV_rx_count\(2),
	dataf => \uart_comm|ALT_INV_rx_count\(3),
	combout => \uart_comm|rx_count[3]~0_combout\);

-- Location: LABCELL_X48_Y15_N39
\uart_comm|Selector5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart_comm|Selector5~0_combout\ = ( \uart_comm|os_count\(2) & ( (!\uart_comm|rx_state.idle~q\ & !\rx~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010100000101000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uart_comm|ALT_INV_rx_state.idle~q\,
	datac => \ALT_INV_rx~input_o\,
	dataf => \uart_comm|ALT_INV_os_count\(2),
	combout => \uart_comm|Selector5~0_combout\);

-- Location: LABCELL_X48_Y15_N18
\uart_comm|rx_count[3]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart_comm|rx_count[3]~1_combout\ = ( \uart_comm|Selector5~0_combout\ & ( (!\uart_comm|os_pulse~q\ & (\uart_comm|rx_count\(3))) # (\uart_comm|os_pulse~q\ & ((\uart_comm|rx_count[3]~0_combout\))) ) ) # ( !\uart_comm|Selector5~0_combout\ & ( 
-- ((\uart_comm|rx_buffer[1]~0_combout\ & (\uart_comm|rx_count[3]~0_combout\ & \uart_comm|os_pulse~q\))) # (\uart_comm|rx_count\(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010111010101010101011101010101000011110101010100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uart_comm|ALT_INV_rx_count\(3),
	datab => \uart_comm|ALT_INV_rx_buffer[1]~0_combout\,
	datac => \uart_comm|ALT_INV_rx_count[3]~0_combout\,
	datad => \uart_comm|ALT_INV_os_pulse~q\,
	dataf => \uart_comm|ALT_INV_Selector5~0_combout\,
	combout => \uart_comm|rx_count[3]~1_combout\);

-- Location: FF_X48_Y15_N20
\uart_comm|rx_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \uart_comm|rx_count[3]~1_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_comm|rx_count\(3));

-- Location: LABCELL_X48_Y15_N21
\uart_comm|os_count[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart_comm|os_count[0]~3_combout\ = ( \uart_comm|os_count[2]~0_combout\ & ( (!\uart_comm|os_count[2]~1_combout\ & (((\uart_comm|os_count\(0))))) # (\uart_comm|os_count[2]~1_combout\ & (\uart_comm|rx_buffer[1]~0_combout\ & (!\uart_comm|rx_count\(3) $ 
-- (\uart_comm|os_count\(0))))) ) ) # ( !\uart_comm|os_count[2]~0_combout\ & ( (!\uart_comm|rx_buffer[1]~0_combout\ & ((!\uart_comm|os_count[2]~1_combout\ $ (!\uart_comm|os_count\(0))))) # (\uart_comm|rx_buffer[1]~0_combout\ & (\uart_comm|os_count\(0) & 
-- ((!\uart_comm|os_count[2]~1_combout\) # (\uart_comm|rx_count\(3))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110011110001000011001111000100000010111100010000001011110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uart_comm|ALT_INV_rx_count\(3),
	datab => \uart_comm|ALT_INV_rx_buffer[1]~0_combout\,
	datac => \uart_comm|ALT_INV_os_count[2]~1_combout\,
	datad => \uart_comm|ALT_INV_os_count\(0),
	dataf => \uart_comm|ALT_INV_os_count[2]~0_combout\,
	combout => \uart_comm|os_count[0]~3_combout\);

-- Location: FF_X48_Y15_N23
\uart_comm|os_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \uart_comm|os_count[0]~3_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_comm|os_count\(0));

-- Location: LABCELL_X47_Y15_N39
\uart_comm|Add2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart_comm|Add2~0_combout\ = ( \uart_comm|os_count\(0) & ( \uart_comm|os_count\(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \uart_comm|ALT_INV_os_count\(0),
	dataf => \uart_comm|ALT_INV_os_count\(1),
	combout => \uart_comm|Add2~0_combout\);

-- Location: LABCELL_X47_Y15_N18
\uart_comm|Selector5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart_comm|Selector5~1_combout\ = ( \uart_comm|rx_state.receive~q\ & ( \uart_comm|os_count\(2) & ( (!\uart_comm|Add2~0_combout\) # ((!\uart_comm|rx_count\(3)) # ((!\rx~input_o\ & !\uart_comm|rx_state.idle~q\))) ) ) ) # ( !\uart_comm|rx_state.receive~q\ & 
-- ( \uart_comm|os_count\(2) & ( (!\rx~input_o\ & !\uart_comm|rx_state.idle~q\) ) ) ) # ( \uart_comm|rx_state.receive~q\ & ( !\uart_comm|os_count\(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111110100000101000001111111111101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_rx~input_o\,
	datab => \uart_comm|ALT_INV_Add2~0_combout\,
	datac => \uart_comm|ALT_INV_rx_state.idle~q\,
	datad => \uart_comm|ALT_INV_rx_count\(3),
	datae => \uart_comm|ALT_INV_rx_state.receive~q\,
	dataf => \uart_comm|ALT_INV_os_count\(2),
	combout => \uart_comm|Selector5~1_combout\);

-- Location: FF_X47_Y15_N20
\uart_comm|rx_state.receive\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \uart_comm|Selector5~1_combout\,
	clrn => \reset~input_o\,
	ena => \uart_comm|os_pulse~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_comm|rx_state.receive~q\);

-- Location: LABCELL_X47_Y15_N48
\uart_comm|rx_ready_aux~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart_comm|rx_ready_aux~0_combout\ = ( \uart_comm|rx_ready_aux~q\ & ( \uart_comm|rx_count\(3) & ( \uart_comm|rx_state.receive~q\ ) ) ) # ( !\uart_comm|rx_ready_aux~q\ & ( \uart_comm|rx_count\(3) & ( (\uart_comm|rx_state.receive~q\ & 
-- (\uart_comm|os_count\(1) & (\uart_comm|os_count\(0) & \uart_comm|os_count\(2)))) ) ) ) # ( \uart_comm|rx_ready_aux~q\ & ( !\uart_comm|rx_count\(3) & ( \uart_comm|rx_state.receive~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010100000000000000010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uart_comm|ALT_INV_rx_state.receive~q\,
	datab => \uart_comm|ALT_INV_os_count\(1),
	datac => \uart_comm|ALT_INV_os_count\(0),
	datad => \uart_comm|ALT_INV_os_count\(2),
	datae => \uart_comm|ALT_INV_rx_ready_aux~q\,
	dataf => \uart_comm|ALT_INV_rx_count\(3),
	combout => \uart_comm|rx_ready_aux~0_combout\);

-- Location: FF_X47_Y15_N49
\uart_comm|rx_ready_aux\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \uart_comm|rx_ready_aux~0_combout\,
	clrn => \reset~input_o\,
	ena => \uart_comm|os_pulse~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_comm|rx_ready_aux~q\);

-- Location: FF_X49_Y14_N1
tx_start : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \tx_start~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_start~q\);

-- Location: LABCELL_X48_Y14_N24
\uart_comm|tx_busy~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart_comm|tx_busy~0_combout\ = ( !\tx_start~DUPLICATE_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_tx_start~DUPLICATE_q\,
	combout => \uart_comm|tx_busy~0_combout\);

-- Location: FF_X48_Y14_N25
\uart_comm|tx_busy\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \uart_comm|tx_busy~0_combout\,
	clrn => \reset~input_o\,
	ena => \uart_comm|ALT_INV_tx_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_comm|tx_busy~q\);

-- Location: MLABCELL_X49_Y14_N0
\tx_start~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \tx_start~0_combout\ = ( \tx_start~q\ & ( \uart_comm|tx_busy~q\ & ( \uart_comm|rx_ready_aux~q\ ) ) ) # ( !\tx_start~q\ & ( \uart_comm|tx_busy~q\ & ( \uart_comm|rx_ready_aux~q\ ) ) ) # ( \tx_start~q\ & ( !\uart_comm|tx_busy~q\ & ( 
-- \uart_comm|rx_ready_aux~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \uart_comm|ALT_INV_rx_ready_aux~q\,
	datae => \ALT_INV_tx_start~q\,
	dataf => \uart_comm|ALT_INV_tx_busy~q\,
	combout => \tx_start~0_combout\);

-- Location: FF_X49_Y14_N2
\tx_start~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \tx_start~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_start~DUPLICATE_q\);

-- Location: MLABCELL_X49_Y14_N39
\uart_comm|tx_count[3]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart_comm|tx_count[3]~1_combout\ = ( \uart_comm|tx_state~q\ ) # ( !\uart_comm|tx_state~q\ & ( \tx_start~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_tx_start~DUPLICATE_q\,
	dataf => \uart_comm|ALT_INV_tx_state~q\,
	combout => \uart_comm|tx_count[3]~1_combout\);

-- Location: FF_X49_Y14_N22
\uart_comm|tx_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \uart_comm|tx_count~4_combout\,
	clrn => \reset~input_o\,
	ena => \uart_comm|tx_count[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_comm|tx_count\(0));

-- Location: MLABCELL_X49_Y14_N21
\uart_comm|tx_count~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart_comm|tx_count~4_combout\ = ( \uart_comm|tx_state~q\ & ( !\uart_comm|baud_pulse~q\ $ (!\uart_comm|tx_count\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011110011000011001111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \uart_comm|ALT_INV_baud_pulse~q\,
	datad => \uart_comm|ALT_INV_tx_count\(0),
	dataf => \uart_comm|ALT_INV_tx_state~q\,
	combout => \uart_comm|tx_count~4_combout\);

-- Location: FF_X49_Y14_N23
\uart_comm|tx_count[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \uart_comm|tx_count~4_combout\,
	clrn => \reset~input_o\,
	ena => \uart_comm|tx_count[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_comm|tx_count[0]~DUPLICATE_q\);

-- Location: MLABCELL_X49_Y14_N36
\uart_comm|tx_count~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart_comm|tx_count~3_combout\ = ( \uart_comm|tx_count\(0) & ( (\uart_comm|tx_state~q\ & (!\uart_comm|baud_pulse~q\ $ (!\uart_comm|tx_count\(1)))) ) ) # ( !\uart_comm|tx_count\(0) & ( (\uart_comm|tx_state~q\ & \uart_comm|tx_count\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000011000011000000001100001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \uart_comm|ALT_INV_baud_pulse~q\,
	datac => \uart_comm|ALT_INV_tx_state~q\,
	datad => \uart_comm|ALT_INV_tx_count\(1),
	dataf => \uart_comm|ALT_INV_tx_count\(0),
	combout => \uart_comm|tx_count~3_combout\);

-- Location: FF_X49_Y14_N37
\uart_comm|tx_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \uart_comm|tx_count~3_combout\,
	clrn => \reset~input_o\,
	ena => \uart_comm|tx_count[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_comm|tx_count\(1));

-- Location: MLABCELL_X49_Y14_N18
\uart_comm|tx_count~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart_comm|tx_count~2_combout\ = ( \uart_comm|tx_count\(1) & ( (\uart_comm|tx_state~q\ & (!\uart_comm|tx_count\(2) $ (((!\uart_comm|baud_pulse~q\) # (!\uart_comm|tx_count[0]~DUPLICATE_q\))))) ) ) # ( !\uart_comm|tx_count\(1) & ( (\uart_comm|tx_state~q\ & 
-- \uart_comm|tx_count\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100000001010101000000000101010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uart_comm|ALT_INV_tx_state~q\,
	datab => \uart_comm|ALT_INV_baud_pulse~q\,
	datac => \uart_comm|ALT_INV_tx_count[0]~DUPLICATE_q\,
	datad => \uart_comm|ALT_INV_tx_count\(2),
	dataf => \uart_comm|ALT_INV_tx_count\(1),
	combout => \uart_comm|tx_count~2_combout\);

-- Location: FF_X49_Y14_N20
\uart_comm|tx_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \uart_comm|tx_count~2_combout\,
	clrn => \reset~input_o\,
	ena => \uart_comm|tx_count[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_comm|tx_count\(2));

-- Location: MLABCELL_X49_Y14_N12
\uart_comm|tx_count~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart_comm|tx_count~0_combout\ = ( \uart_comm|tx_count\(3) & ( \uart_comm|tx_state~q\ & ( (!\uart_comm|tx_count[0]~DUPLICATE_q\) # ((!\uart_comm|tx_count\(1)) # ((!\uart_comm|tx_count\(2)) # (!\uart_comm|baud_pulse~q\))) ) ) ) # ( !\uart_comm|tx_count\(3) 
-- & ( \uart_comm|tx_state~q\ & ( (\uart_comm|tx_count[0]~DUPLICATE_q\ & (\uart_comm|tx_count\(1) & (\uart_comm|tx_count\(2) & \uart_comm|baud_pulse~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000011111111111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uart_comm|ALT_INV_tx_count[0]~DUPLICATE_q\,
	datab => \uart_comm|ALT_INV_tx_count\(1),
	datac => \uart_comm|ALT_INV_tx_count\(2),
	datad => \uart_comm|ALT_INV_baud_pulse~q\,
	datae => \uart_comm|ALT_INV_tx_count\(3),
	dataf => \uart_comm|ALT_INV_tx_state~q\,
	combout => \uart_comm|tx_count~0_combout\);

-- Location: FF_X49_Y14_N14
\uart_comm|tx_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \uart_comm|tx_count~0_combout\,
	clrn => \reset~input_o\,
	ena => \uart_comm|tx_count[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_comm|tx_count\(3));

-- Location: MLABCELL_X49_Y14_N54
\uart_comm|LessThan5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart_comm|LessThan5~0_combout\ = ( \uart_comm|tx_count[0]~DUPLICATE_q\ & ( \uart_comm|tx_count\(1) & ( (!\uart_comm|tx_count\(3)) # ((\uart_comm|baud_pulse~q\ & \uart_comm|tx_count\(2))) ) ) ) # ( !\uart_comm|tx_count[0]~DUPLICATE_q\ & ( 
-- \uart_comm|tx_count\(1) & ( (!\uart_comm|tx_count\(3)) # ((!\uart_comm|baud_pulse~q\ & !\uart_comm|tx_count\(2))) ) ) ) # ( \uart_comm|tx_count[0]~DUPLICATE_q\ & ( !\uart_comm|tx_count\(1) & ( (!\uart_comm|tx_count\(2)) # (!\uart_comm|tx_count\(3)) ) ) ) 
-- # ( !\uart_comm|tx_count[0]~DUPLICATE_q\ & ( !\uart_comm|tx_count\(1) & ( (!\uart_comm|tx_count\(2)) # (!\uart_comm|tx_count\(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111110000111111111111000011111111110000001111111100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \uart_comm|ALT_INV_baud_pulse~q\,
	datac => \uart_comm|ALT_INV_tx_count\(2),
	datad => \uart_comm|ALT_INV_tx_count\(3),
	datae => \uart_comm|ALT_INV_tx_count[0]~DUPLICATE_q\,
	dataf => \uart_comm|ALT_INV_tx_count\(1),
	combout => \uart_comm|LessThan5~0_combout\);

-- Location: FF_X49_Y14_N56
\uart_comm|tx_state\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \uart_comm|LessThan5~0_combout\,
	asdata => \tx_start~q\,
	clrn => \reset~input_o\,
	sload => \uart_comm|ALT_INV_tx_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_comm|tx_state~q\);

-- Location: LABCELL_X48_Y15_N9
\uart_comm|rx_buffer[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart_comm|rx_buffer[1]~1_combout\ = ( \uart_comm|os_pulse~q\ & ( \uart_comm|rx_buffer[1]~0_combout\ & ( (\reset~input_o\ & !\uart_comm|rx_count\(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_reset~input_o\,
	datad => \uart_comm|ALT_INV_rx_count\(3),
	datae => \uart_comm|ALT_INV_os_pulse~q\,
	dataf => \uart_comm|ALT_INV_rx_buffer[1]~0_combout\,
	combout => \uart_comm|rx_buffer[1]~1_combout\);

-- Location: FF_X47_Y15_N17
\uart_comm|rx_buffer[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \rx~input_o\,
	sload => VCC,
	ena => \uart_comm|rx_buffer[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_comm|rx_buffer\(8));

-- Location: FF_X47_Y15_N11
\uart_comm|rx_buffer[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \uart_comm|rx_buffer\(8),
	sload => VCC,
	ena => \uart_comm|rx_buffer[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_comm|rx_buffer\(7));

-- Location: FF_X47_Y15_N38
\uart_comm|rx_buffer[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \uart_comm|rx_buffer\(7),
	sload => VCC,
	ena => \uart_comm|rx_buffer[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_comm|rx_buffer\(6));

-- Location: FF_X47_Y15_N35
\uart_comm|rx_buffer[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \uart_comm|rx_buffer\(6),
	sload => VCC,
	ena => \uart_comm|rx_buffer[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_comm|rx_buffer\(5));

-- Location: FF_X47_Y15_N32
\uart_comm|rx_buffer[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \uart_comm|rx_buffer\(5),
	sload => VCC,
	ena => \uart_comm|rx_buffer[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_comm|rx_buffer\(4));

-- Location: FF_X47_Y15_N29
\uart_comm|rx_buffer[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \uart_comm|rx_buffer\(4),
	sload => VCC,
	ena => \uart_comm|rx_buffer[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_comm|rx_buffer\(3));

-- Location: FF_X47_Y15_N47
\uart_comm|rx_buffer[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \uart_comm|rx_buffer\(3),
	sload => VCC,
	ena => \uart_comm|rx_buffer[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_comm|rx_buffer\(2));

-- Location: FF_X47_Y15_N13
\uart_comm|rx_buffer[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \uart_comm|rx_buffer\(2),
	sload => VCC,
	ena => \uart_comm|rx_buffer[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_comm|rx_buffer\(1));

-- Location: LABCELL_X48_Y15_N0
\uart_comm|rx_data[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart_comm|rx_data[0]~0_combout\ = ( \uart_comm|os_count\(0) & ( \uart_comm|rx_state.receive~q\ & ( (\uart_comm|rx_count\(3) & (\uart_comm|os_count\(2) & (\uart_comm|os_count\(1) & \uart_comm|os_pulse~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uart_comm|ALT_INV_rx_count\(3),
	datab => \uart_comm|ALT_INV_os_count\(2),
	datac => \uart_comm|ALT_INV_os_count\(1),
	datad => \uart_comm|ALT_INV_os_pulse~q\,
	datae => \uart_comm|ALT_INV_os_count\(0),
	dataf => \uart_comm|ALT_INV_rx_state.receive~q\,
	combout => \uart_comm|rx_data[0]~0_combout\);

-- Location: FF_X48_Y15_N4
\uart_comm|rx_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \uart_comm|rx_buffer\(1),
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \uart_comm|rx_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_comm|rx_data\(0));

-- Location: LABCELL_X48_Y14_N39
\teste[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \teste[0]~feeder_combout\ = ( \uart_comm|rx_data\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \uart_comm|ALT_INV_rx_data\(0),
	combout => \teste[0]~feeder_combout\);

-- Location: FF_X48_Y14_N26
\uart_comm|tx_busy~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \uart_comm|tx_busy~0_combout\,
	clrn => \reset~input_o\,
	ena => \uart_comm|ALT_INV_tx_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_comm|tx_busy~DUPLICATE_q\);

-- Location: LABCELL_X48_Y14_N45
\tx_data[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \tx_data[0]~0_combout\ = ( \uart_comm|rx_ready_aux~q\ & ( \uart_comm|tx_busy~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \uart_comm|ALT_INV_tx_busy~DUPLICATE_q\,
	dataf => \uart_comm|ALT_INV_rx_ready_aux~q\,
	combout => \tx_data[0]~0_combout\);

-- Location: FF_X48_Y14_N41
\teste[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \teste[0]~feeder_combout\,
	ena => \tx_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => teste(0));

-- Location: FF_X48_Y14_N22
\tx_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => teste(0),
	sload => VCC,
	ena => \tx_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tx_data(0));

-- Location: FF_X48_Y15_N34
\uart_comm|rx_data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \uart_comm|rx_buffer\(3),
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \uart_comm|rx_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_comm|rx_data\(2));

-- Location: LABCELL_X48_Y14_N3
\teste[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \teste[2]~feeder_combout\ = ( \uart_comm|rx_data\(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \uart_comm|ALT_INV_rx_data\(2),
	combout => \teste[2]~feeder_combout\);

-- Location: FF_X48_Y14_N5
\teste[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \teste[2]~feeder_combout\,
	ena => \tx_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => teste(2));

-- Location: FF_X48_Y14_N1
\tx_data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => teste(2),
	sload => VCC,
	ena => \tx_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tx_data(2));

-- Location: FF_X48_Y15_N44
\uart_comm|rx_data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \uart_comm|rx_buffer\(4),
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \uart_comm|rx_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_comm|rx_data\(3));

-- Location: FF_X48_Y14_N46
\teste[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \uart_comm|rx_data\(3),
	sload => VCC,
	ena => \tx_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => teste(3));

-- Location: FF_X48_Y14_N43
\tx_data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => teste(3),
	sload => VCC,
	ena => \tx_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tx_data(3));

-- Location: FF_X48_Y15_N7
\uart_comm|rx_data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \uart_comm|rx_buffer\(6),
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \uart_comm|rx_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_comm|rx_data\(5));

-- Location: LABCELL_X48_Y14_N9
\teste[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \teste[5]~feeder_combout\ = ( \uart_comm|rx_data\(5) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \uart_comm|ALT_INV_rx_data\(5),
	combout => \teste[5]~feeder_combout\);

-- Location: FF_X48_Y14_N11
\teste[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \teste[5]~feeder_combout\,
	ena => \tx_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => teste(5));

-- Location: LABCELL_X48_Y14_N6
\tx_data[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \tx_data[5]~feeder_combout\ = teste(5)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_teste(5),
	combout => \tx_data[5]~feeder_combout\);

-- Location: FF_X48_Y14_N7
\tx_data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \tx_data[5]~feeder_combout\,
	ena => \tx_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tx_data(5));

-- Location: FF_X48_Y15_N58
\uart_comm|rx_data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \uart_comm|rx_buffer\(7),
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \uart_comm|rx_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_comm|rx_data\(6));

-- Location: FF_X48_Y14_N53
\teste[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \uart_comm|rx_data\(6),
	sload => VCC,
	ena => \tx_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => teste(6));

-- Location: FF_X48_Y14_N49
\tx_data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => teste(6),
	sload => VCC,
	ena => \tx_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tx_data(6));

-- Location: FF_X48_Y15_N47
\uart_comm|rx_data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \uart_comm|rx_buffer\(8),
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \uart_comm|rx_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_comm|rx_data\(7));

-- Location: FF_X48_Y14_N35
\teste[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \uart_comm|rx_data\(7),
	sload => VCC,
	ena => \tx_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => teste(7));

-- Location: LABCELL_X48_Y14_N30
\tx_data[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \tx_data[7]~feeder_combout\ = teste(7)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_teste(7),
	combout => \tx_data[7]~feeder_combout\);

-- Location: FF_X48_Y14_N31
\tx_data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \tx_data[7]~feeder_combout\,
	ena => \tx_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tx_data(7));

-- Location: MLABCELL_X49_Y14_N30
\uart_comm|tx_buffer~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart_comm|tx_buffer~10_combout\ = ( !tx_data(7) & ( !\uart_comm|tx_state~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \uart_comm|ALT_INV_tx_state~q\,
	dataf => ALT_INV_tx_data(7),
	combout => \uart_comm|tx_buffer~10_combout\);

-- Location: MLABCELL_X49_Y14_N33
\uart_comm|tx_buffer[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart_comm|tx_buffer[0]~1_combout\ = ( \uart_comm|baud_pulse~q\ & ( (\reset~input_o\ & ((\tx_start~DUPLICATE_q\) # (\uart_comm|tx_state~q\))) ) ) # ( !\uart_comm|baud_pulse~q\ & ( (!\uart_comm|tx_state~q\ & (\reset~input_o\ & \tx_start~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001010000000000000101000000101000011110000010100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uart_comm|ALT_INV_tx_state~q\,
	datac => \ALT_INV_reset~input_o\,
	datad => \ALT_INV_tx_start~DUPLICATE_q\,
	dataf => \uart_comm|ALT_INV_baud_pulse~q\,
	combout => \uart_comm|tx_buffer[0]~1_combout\);

-- Location: FF_X49_Y14_N32
\uart_comm|tx_buffer[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \uart_comm|tx_buffer~10_combout\,
	ena => \uart_comm|tx_buffer[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_comm|tx_buffer\(9));

-- Location: MLABCELL_X49_Y14_N9
\uart_comm|tx_buffer~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart_comm|tx_buffer~9_combout\ = ( \uart_comm|tx_buffer\(9) & ( (!tx_data(6)) # (\uart_comm|tx_state~q\) ) ) # ( !\uart_comm|tx_buffer\(9) & ( (!tx_data(6) & !\uart_comm|tx_state~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000011110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_tx_data(6),
	datad => \uart_comm|ALT_INV_tx_state~q\,
	dataf => \uart_comm|ALT_INV_tx_buffer\(9),
	combout => \uart_comm|tx_buffer~9_combout\);

-- Location: FF_X49_Y14_N11
\uart_comm|tx_buffer[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \uart_comm|tx_buffer~9_combout\,
	ena => \uart_comm|tx_buffer[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_comm|tx_buffer\(8));

-- Location: MLABCELL_X49_Y14_N6
\uart_comm|tx_buffer~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart_comm|tx_buffer~8_combout\ = ( \uart_comm|tx_buffer\(8) & ( (!tx_data(5)) # (\uart_comm|tx_state~q\) ) ) # ( !\uart_comm|tx_buffer\(8) & ( (!\uart_comm|tx_state~q\ & !tx_data(5)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000011111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \uart_comm|ALT_INV_tx_state~q\,
	datad => ALT_INV_tx_data(5),
	dataf => \uart_comm|ALT_INV_tx_buffer\(8),
	combout => \uart_comm|tx_buffer~8_combout\);

-- Location: FF_X49_Y14_N8
\uart_comm|tx_buffer[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \uart_comm|tx_buffer~8_combout\,
	ena => \uart_comm|tx_buffer[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_comm|tx_buffer\(7));

-- Location: FF_X48_Y15_N56
\uart_comm|rx_data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \uart_comm|rx_buffer\(5),
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \uart_comm|rx_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_comm|rx_data\(4));

-- Location: FF_X48_Y14_N17
\teste[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \uart_comm|rx_data\(4),
	sload => VCC,
	ena => \tx_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => teste(4));

-- Location: FF_X48_Y14_N13
\tx_data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => teste(4),
	sload => VCC,
	ena => \tx_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tx_data(4));

-- Location: MLABCELL_X49_Y14_N27
\uart_comm|tx_buffer~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart_comm|tx_buffer~7_combout\ = (!\uart_comm|tx_state~q\ & ((!tx_data(4)))) # (\uart_comm|tx_state~q\ & (\uart_comm|tx_buffer\(7)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010111100000101101011110000010110101111000001011010111100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uart_comm|ALT_INV_tx_state~q\,
	datac => \uart_comm|ALT_INV_tx_buffer\(7),
	datad => ALT_INV_tx_data(4),
	combout => \uart_comm|tx_buffer~7_combout\);

-- Location: FF_X49_Y14_N28
\uart_comm|tx_buffer[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \uart_comm|tx_buffer~7_combout\,
	ena => \uart_comm|tx_buffer[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_comm|tx_buffer\(6));

-- Location: MLABCELL_X49_Y14_N24
\uart_comm|tx_buffer~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart_comm|tx_buffer~6_combout\ = ( \uart_comm|tx_buffer\(6) & ( (!tx_data(3)) # (\uart_comm|tx_state~q\) ) ) # ( !\uart_comm|tx_buffer\(6) & ( (!\uart_comm|tx_state~q\ & !tx_data(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000011111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \uart_comm|ALT_INV_tx_state~q\,
	datad => ALT_INV_tx_data(3),
	dataf => \uart_comm|ALT_INV_tx_buffer\(6),
	combout => \uart_comm|tx_buffer~6_combout\);

-- Location: FF_X49_Y14_N25
\uart_comm|tx_buffer[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \uart_comm|tx_buffer~6_combout\,
	ena => \uart_comm|tx_buffer[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_comm|tx_buffer\(5));

-- Location: MLABCELL_X49_Y14_N45
\uart_comm|tx_buffer~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart_comm|tx_buffer~5_combout\ = ( \uart_comm|tx_buffer\(5) & ( (!tx_data(2)) # (\uart_comm|tx_state~q\) ) ) # ( !\uart_comm|tx_buffer\(5) & ( (!tx_data(2) & !\uart_comm|tx_state~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000011110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_tx_data(2),
	datad => \uart_comm|ALT_INV_tx_state~q\,
	dataf => \uart_comm|ALT_INV_tx_buffer\(5),
	combout => \uart_comm|tx_buffer~5_combout\);

-- Location: FF_X49_Y14_N47
\uart_comm|tx_buffer[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \uart_comm|tx_buffer~5_combout\,
	ena => \uart_comm|tx_buffer[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_comm|tx_buffer\(4));

-- Location: FF_X48_Y15_N1
\uart_comm|rx_data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \uart_comm|rx_buffer\(2),
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \uart_comm|rx_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_comm|rx_data\(1));

-- Location: LABCELL_X48_Y14_N57
\teste[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \teste[1]~feeder_combout\ = ( \uart_comm|rx_data\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \uart_comm|ALT_INV_rx_data\(1),
	combout => \teste[1]~feeder_combout\);

-- Location: FF_X48_Y14_N59
\teste[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \teste[1]~feeder_combout\,
	ena => \tx_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => teste(1));

-- Location: FF_X48_Y14_N19
\tx_data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => teste(1),
	sload => VCC,
	ena => \tx_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tx_data(1));

-- Location: MLABCELL_X49_Y14_N42
\uart_comm|tx_buffer~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart_comm|tx_buffer~4_combout\ = ( tx_data(1) & ( (\uart_comm|tx_buffer\(4) & \uart_comm|tx_state~q\) ) ) # ( !tx_data(1) & ( (!\uart_comm|tx_state~q\) # (\uart_comm|tx_buffer\(4)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100110011111111110011001100000000001100110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \uart_comm|ALT_INV_tx_buffer\(4),
	datad => \uart_comm|ALT_INV_tx_state~q\,
	dataf => ALT_INV_tx_data(1),
	combout => \uart_comm|tx_buffer~4_combout\);

-- Location: FF_X49_Y14_N44
\uart_comm|tx_buffer[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \uart_comm|tx_buffer~4_combout\,
	ena => \uart_comm|tx_buffer[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_comm|tx_buffer\(3));

-- Location: MLABCELL_X49_Y14_N51
\uart_comm|tx_buffer~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart_comm|tx_buffer~3_combout\ = ( \uart_comm|tx_buffer\(3) & ( (!tx_data(0)) # (\uart_comm|tx_state~q\) ) ) # ( !\uart_comm|tx_buffer\(3) & ( (!\uart_comm|tx_state~q\ & !tx_data(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000000000101010100000000011111111010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uart_comm|ALT_INV_tx_state~q\,
	datad => ALT_INV_tx_data(0),
	dataf => \uart_comm|ALT_INV_tx_buffer\(3),
	combout => \uart_comm|tx_buffer~3_combout\);

-- Location: FF_X49_Y14_N52
\uart_comm|tx_buffer[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \uart_comm|tx_buffer~3_combout\,
	ena => \uart_comm|tx_buffer[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_comm|tx_buffer\(2));

-- Location: LABCELL_X50_Y14_N12
\uart_comm|tx_buffer~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart_comm|tx_buffer~2_combout\ = ( \uart_comm|tx_state~q\ & ( \uart_comm|tx_buffer\(2) ) ) # ( !\uart_comm|tx_state~q\ & ( \uart_comm|tx_buffer\(2) ) ) # ( !\uart_comm|tx_state~q\ & ( !\uart_comm|tx_buffer\(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \uart_comm|ALT_INV_tx_state~q\,
	dataf => \uart_comm|ALT_INV_tx_buffer\(2),
	combout => \uart_comm|tx_buffer~2_combout\);

-- Location: FF_X50_Y14_N13
\uart_comm|tx_buffer[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \uart_comm|tx_buffer~2_combout\,
	ena => \uart_comm|tx_buffer[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_comm|tx_buffer\(1));

-- Location: MLABCELL_X49_Y14_N48
\uart_comm|tx_buffer~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart_comm|tx_buffer~0_combout\ = ( \uart_comm|tx_buffer\(1) & ( \uart_comm|tx_state~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \uart_comm|ALT_INV_tx_state~q\,
	dataf => \uart_comm|ALT_INV_tx_buffer\(1),
	combout => \uart_comm|tx_buffer~0_combout\);

-- Location: FF_X49_Y14_N49
\uart_comm|tx_buffer[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \uart_comm|tx_buffer~0_combout\,
	ena => \uart_comm|tx_buffer[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_comm|tx_buffer\(0));

-- Location: FF_X49_Y14_N58
\uart_comm|tx\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \uart_comm|tx_buffer\(0),
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_comm|tx~q\);

-- Location: LABCELL_X32_Y39_N0
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



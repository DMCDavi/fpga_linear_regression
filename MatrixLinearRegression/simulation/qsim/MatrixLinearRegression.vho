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

-- DATE "12/01/2023 17:20:56"

-- 
-- Device: Altera 5CEBA4F23C7 Package FBGA484
-- 

-- 
-- This VHDL file should be used for Questa Intel FPGA (VHDL) only
-- 

LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	MatrixLinearRegression IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	init_transmission : IN std_logic;
	rx : IN std_logic;
	tx : OUT std_logic;
	digit : OUT std_logic_vector(15 DOWNTO 0);
	aa : OUT std_logic_vector(15 DOWNTO 0);
	bb : OUT std_logic_vector(15 DOWNTO 0)
	);
END MatrixLinearRegression;

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
SIGNAL ww_init_transmission : std_logic;
SIGNAL ww_rx : std_logic;
SIGNAL ww_tx : std_logic;
SIGNAL ww_digit : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_aa : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_bb : std_logic_vector(15 DOWNTO 0);
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \init_transmission~input_o\ : std_logic;
SIGNAL \rx~input_o\ : std_logic;
SIGNAL \tx~output_o\ : std_logic;
SIGNAL \digit[0]~output_o\ : std_logic;
SIGNAL \digit[1]~output_o\ : std_logic;
SIGNAL \digit[2]~output_o\ : std_logic;
SIGNAL \digit[3]~output_o\ : std_logic;
SIGNAL \digit[4]~output_o\ : std_logic;
SIGNAL \digit[5]~output_o\ : std_logic;
SIGNAL \digit[6]~output_o\ : std_logic;
SIGNAL \digit[7]~output_o\ : std_logic;
SIGNAL \digit[8]~output_o\ : std_logic;
SIGNAL \digit[9]~output_o\ : std_logic;
SIGNAL \digit[10]~output_o\ : std_logic;
SIGNAL \digit[11]~output_o\ : std_logic;
SIGNAL \digit[12]~output_o\ : std_logic;
SIGNAL \digit[13]~output_o\ : std_logic;
SIGNAL \digit[14]~output_o\ : std_logic;
SIGNAL \digit[15]~output_o\ : std_logic;
SIGNAL \aa[0]~output_o\ : std_logic;
SIGNAL \aa[1]~output_o\ : std_logic;
SIGNAL \aa[2]~output_o\ : std_logic;
SIGNAL \aa[3]~output_o\ : std_logic;
SIGNAL \aa[4]~output_o\ : std_logic;
SIGNAL \aa[5]~output_o\ : std_logic;
SIGNAL \aa[6]~output_o\ : std_logic;
SIGNAL \aa[7]~output_o\ : std_logic;
SIGNAL \aa[8]~output_o\ : std_logic;
SIGNAL \aa[9]~output_o\ : std_logic;
SIGNAL \aa[10]~output_o\ : std_logic;
SIGNAL \aa[11]~output_o\ : std_logic;
SIGNAL \aa[12]~output_o\ : std_logic;
SIGNAL \aa[13]~output_o\ : std_logic;
SIGNAL \aa[14]~output_o\ : std_logic;
SIGNAL \aa[15]~output_o\ : std_logic;
SIGNAL \bb[0]~output_o\ : std_logic;
SIGNAL \bb[1]~output_o\ : std_logic;
SIGNAL \bb[2]~output_o\ : std_logic;
SIGNAL \bb[3]~output_o\ : std_logic;
SIGNAL \bb[4]~output_o\ : std_logic;
SIGNAL \bb[5]~output_o\ : std_logic;
SIGNAL \bb[6]~output_o\ : std_logic;
SIGNAL \bb[7]~output_o\ : std_logic;
SIGNAL \bb[8]~output_o\ : std_logic;
SIGNAL \bb[9]~output_o\ : std_logic;
SIGNAL \bb[10]~output_o\ : std_logic;
SIGNAL \bb[11]~output_o\ : std_logic;
SIGNAL \bb[12]~output_o\ : std_logic;
SIGNAL \bb[13]~output_o\ : std_logic;
SIGNAL \bb[14]~output_o\ : std_logic;
SIGNAL \bb[15]~output_o\ : std_logic;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_init_transmission <= init_transmission;
ww_rx <= rx;
tx <= ww_tx;
digit <= ww_digit;
aa <= ww_aa;
bb <= ww_bb;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\tx~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \tx~output_o\);

\digit[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \digit[0]~output_o\);

\digit[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \digit[1]~output_o\);

\digit[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \digit[2]~output_o\);

\digit[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \digit[3]~output_o\);

\digit[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \digit[4]~output_o\);

\digit[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \digit[5]~output_o\);

\digit[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \digit[6]~output_o\);

\digit[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \digit[7]~output_o\);

\digit[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \digit[8]~output_o\);

\digit[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \digit[9]~output_o\);

\digit[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \digit[10]~output_o\);

\digit[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \digit[11]~output_o\);

\digit[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \digit[12]~output_o\);

\digit[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \digit[13]~output_o\);

\digit[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \digit[14]~output_o\);

\digit[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \digit[15]~output_o\);

\aa[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \aa[0]~output_o\);

\aa[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \aa[1]~output_o\);

\aa[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \aa[2]~output_o\);

\aa[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \aa[3]~output_o\);

\aa[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \aa[4]~output_o\);

\aa[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \aa[5]~output_o\);

\aa[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \aa[6]~output_o\);

\aa[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \aa[7]~output_o\);

\aa[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \aa[8]~output_o\);

\aa[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \aa[9]~output_o\);

\aa[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \aa[10]~output_o\);

\aa[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \aa[11]~output_o\);

\aa[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \aa[12]~output_o\);

\aa[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \aa[13]~output_o\);

\aa[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \aa[14]~output_o\);

\aa[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \aa[15]~output_o\);

\bb[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \bb[0]~output_o\);

\bb[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \bb[1]~output_o\);

\bb[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \bb[2]~output_o\);

\bb[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \bb[3]~output_o\);

\bb[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \bb[4]~output_o\);

\bb[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \bb[5]~output_o\);

\bb[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \bb[6]~output_o\);

\bb[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \bb[7]~output_o\);

\bb[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \bb[8]~output_o\);

\bb[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \bb[9]~output_o\);

\bb[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \bb[10]~output_o\);

\bb[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \bb[11]~output_o\);

\bb[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \bb[12]~output_o\);

\bb[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \bb[13]~output_o\);

\bb[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \bb[14]~output_o\);

\bb[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \bb[15]~output_o\);

\clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

\reset~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

\init_transmission~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_init_transmission,
	o => \init_transmission~input_o\);

\rx~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rx,
	o => \rx~input_o\);

ww_tx <= \tx~output_o\;

ww_digit(0) <= \digit[0]~output_o\;

ww_digit(1) <= \digit[1]~output_o\;

ww_digit(2) <= \digit[2]~output_o\;

ww_digit(3) <= \digit[3]~output_o\;

ww_digit(4) <= \digit[4]~output_o\;

ww_digit(5) <= \digit[5]~output_o\;

ww_digit(6) <= \digit[6]~output_o\;

ww_digit(7) <= \digit[7]~output_o\;

ww_digit(8) <= \digit[8]~output_o\;

ww_digit(9) <= \digit[9]~output_o\;

ww_digit(10) <= \digit[10]~output_o\;

ww_digit(11) <= \digit[11]~output_o\;

ww_digit(12) <= \digit[12]~output_o\;

ww_digit(13) <= \digit[13]~output_o\;

ww_digit(14) <= \digit[14]~output_o\;

ww_digit(15) <= \digit[15]~output_o\;

ww_aa(0) <= \aa[0]~output_o\;

ww_aa(1) <= \aa[1]~output_o\;

ww_aa(2) <= \aa[2]~output_o\;

ww_aa(3) <= \aa[3]~output_o\;

ww_aa(4) <= \aa[4]~output_o\;

ww_aa(5) <= \aa[5]~output_o\;

ww_aa(6) <= \aa[6]~output_o\;

ww_aa(7) <= \aa[7]~output_o\;

ww_aa(8) <= \aa[8]~output_o\;

ww_aa(9) <= \aa[9]~output_o\;

ww_aa(10) <= \aa[10]~output_o\;

ww_aa(11) <= \aa[11]~output_o\;

ww_aa(12) <= \aa[12]~output_o\;

ww_aa(13) <= \aa[13]~output_o\;

ww_aa(14) <= \aa[14]~output_o\;

ww_aa(15) <= \aa[15]~output_o\;

ww_bb(0) <= \bb[0]~output_o\;

ww_bb(1) <= \bb[1]~output_o\;

ww_bb(2) <= \bb[2]~output_o\;

ww_bb(3) <= \bb[3]~output_o\;

ww_bb(4) <= \bb[4]~output_o\;

ww_bb(5) <= \bb[5]~output_o\;

ww_bb(6) <= \bb[6]~output_o\;

ww_bb(7) <= \bb[7]~output_o\;

ww_bb(8) <= \bb[8]~output_o\;

ww_bb(9) <= \bb[9]~output_o\;

ww_bb(10) <= \bb[10]~output_o\;

ww_bb(11) <= \bb[11]~output_o\;

ww_bb(12) <= \bb[12]~output_o\;

ww_bb(13) <= \bb[13]~output_o\;

ww_bb(14) <= \bb[14]~output_o\;

ww_bb(15) <= \bb[15]~output_o\;
END structure;



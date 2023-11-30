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

-- DATE "11/30/2023 10:44:23"

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
	digit : BUFFER std_logic_vector(6 DOWNTO 0)
	);
END MatrixLinearRegression;

-- Design Ports Information
-- tx	=>  Location: PIN_T17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- digit[0]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- digit[1]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- digit[2]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- digit[3]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- digit[4]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- digit[5]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- digit[6]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
SIGNAL ww_digit : std_logic_vector(6 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \freq|Add0~49_sumout\ : std_logic;
SIGNAL \freq|Add0~62\ : std_logic;
SIGNAL \freq|Add0~85_sumout\ : std_logic;
SIGNAL \freq|Add0~86\ : std_logic;
SIGNAL \freq|Add0~45_sumout\ : std_logic;
SIGNAL \freq|Add0~46\ : std_logic;
SIGNAL \freq|Add0~9_sumout\ : std_logic;
SIGNAL \freq|Add0~10\ : std_logic;
SIGNAL \freq|Add0~65_sumout\ : std_logic;
SIGNAL \freq|Add0~66\ : std_logic;
SIGNAL \freq|Add0~69_sumout\ : std_logic;
SIGNAL \freq|iterations[11]~DUPLICATE_q\ : std_logic;
SIGNAL \freq|Add0~70\ : std_logic;
SIGNAL \freq|Add0~73_sumout\ : std_logic;
SIGNAL \freq|Add0~74\ : std_logic;
SIGNAL \freq|Add0~5_sumout\ : std_logic;
SIGNAL \freq|Add0~6\ : std_logic;
SIGNAL \freq|Add0~41_sumout\ : std_logic;
SIGNAL \freq|Add0~42\ : std_logic;
SIGNAL \freq|Add0~37_sumout\ : std_logic;
SIGNAL \freq|Add0~38\ : std_logic;
SIGNAL \freq|Add0~53_sumout\ : std_logic;
SIGNAL \freq|Add0~54\ : std_logic;
SIGNAL \freq|Add0~33_sumout\ : std_logic;
SIGNAL \freq|Add0~34\ : std_logic;
SIGNAL \freq|Add0~97_sumout\ : std_logic;
SIGNAL \freq|Add0~98\ : std_logic;
SIGNAL \freq|Add0~89_sumout\ : std_logic;
SIGNAL \freq|Add0~90\ : std_logic;
SIGNAL \freq|Add0~81_sumout\ : std_logic;
SIGNAL \freq|Equal0~4_combout\ : std_logic;
SIGNAL \freq|Add0~82\ : std_logic;
SIGNAL \freq|Add0~77_sumout\ : std_logic;
SIGNAL \freq|Add0~78\ : std_logic;
SIGNAL \freq|Add0~21_sumout\ : std_logic;
SIGNAL \freq|Add0~22\ : std_logic;
SIGNAL \freq|Add0~25_sumout\ : std_logic;
SIGNAL \freq|Add0~26\ : std_logic;
SIGNAL \freq|Add0~29_sumout\ : std_logic;
SIGNAL \freq|Add0~30\ : std_logic;
SIGNAL \freq|Add0~1_sumout\ : std_logic;
SIGNAL \freq|Equal0~0_combout\ : std_logic;
SIGNAL \freq|Equal0~2_combout\ : std_logic;
SIGNAL \freq|Equal0~1_combout\ : std_logic;
SIGNAL \freq|Equal0~5_combout\ : std_logic;
SIGNAL \freq|Add0~50\ : std_logic;
SIGNAL \freq|Add0~93_sumout\ : std_logic;
SIGNAL \freq|iterations[1]~DUPLICATE_q\ : std_logic;
SIGNAL \freq|Add0~94\ : std_logic;
SIGNAL \freq|Add0~101_sumout\ : std_logic;
SIGNAL \freq|Add0~102\ : std_logic;
SIGNAL \freq|Add0~13_sumout\ : std_logic;
SIGNAL \freq|Add0~14\ : std_logic;
SIGNAL \freq|Add0~17_sumout\ : std_logic;
SIGNAL \freq|iterations[4]~DUPLICATE_q\ : std_logic;
SIGNAL \freq|Add0~18\ : std_logic;
SIGNAL \freq|Add0~57_sumout\ : std_logic;
SIGNAL \freq|Add0~58\ : std_logic;
SIGNAL \freq|Add0~61_sumout\ : std_logic;
SIGNAL \freq|Equal0~3_combout\ : std_logic;
SIGNAL \freq|local_out~0_combout\ : std_logic;
SIGNAL \freq|local_out~q\ : std_logic;
SIGNAL \uart_comm|Add0~33_sumout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \uart_comm|Add0~34\ : std_logic;
SIGNAL \uart_comm|Add0~29_sumout\ : std_logic;
SIGNAL \uart_comm|Add0~30\ : std_logic;
SIGNAL \uart_comm|Add0~25_sumout\ : std_logic;
SIGNAL \uart_comm|Add0~26\ : std_logic;
SIGNAL \uart_comm|Add0~21_sumout\ : std_logic;
SIGNAL \uart_comm|Add0~22\ : std_logic;
SIGNAL \uart_comm|Add0~17_sumout\ : std_logic;
SIGNAL \uart_comm|Add0~18\ : std_logic;
SIGNAL \uart_comm|Add0~13_sumout\ : std_logic;
SIGNAL \uart_comm|Add0~14\ : std_logic;
SIGNAL \uart_comm|Add0~9_sumout\ : std_logic;
SIGNAL \uart_comm|Add0~10\ : std_logic;
SIGNAL \uart_comm|Add0~5_sumout\ : std_logic;
SIGNAL \uart_comm|Add0~6\ : std_logic;
SIGNAL \uart_comm|Add0~1_sumout\ : std_logic;
SIGNAL \uart_comm|LessThan0~0_combout\ : std_logic;
SIGNAL \uart_comm|LessThan0~1_combout\ : std_logic;
SIGNAL \uart_comm|count_os~2_combout\ : std_logic;
SIGNAL \uart_comm|count_os[4]~DUPLICATE_q\ : std_logic;
SIGNAL \uart_comm|count_os~4_combout\ : std_logic;
SIGNAL \uart_comm|count_os~1_combout\ : std_logic;
SIGNAL \uart_comm|count_os~0_combout\ : std_logic;
SIGNAL \uart_comm|count_os~3_combout\ : std_logic;
SIGNAL \uart_comm|LessThan1~0_combout\ : std_logic;
SIGNAL \uart_comm|os_pulse~q\ : std_logic;
SIGNAL \uart_comm|os_count[3]~1_combout\ : std_logic;
SIGNAL \uart_comm|Selector10~0_combout\ : std_logic;
SIGNAL \rx~input_o\ : std_logic;
SIGNAL \uart_comm|rx_count[3]~2_combout\ : std_logic;
SIGNAL \uart_comm|Selector9~0_combout\ : std_logic;
SIGNAL \uart_comm|Selector8~0_combout\ : std_logic;
SIGNAL \uart_comm|rx_count[3]~0_combout\ : std_logic;
SIGNAL \uart_comm|Selector6~0_combout\ : std_logic;
SIGNAL \uart_comm|rx_count[3]~1_combout\ : std_logic;
SIGNAL \uart_comm|Add2~0_combout\ : std_logic;
SIGNAL \uart_comm|os_count[2]~3_combout\ : std_logic;
SIGNAL \uart_comm|LessThan3~0_combout\ : std_logic;
SIGNAL \uart_comm|os_count[3]~2_combout\ : std_logic;
SIGNAL \uart_comm|os_count[3]~0_combout\ : std_logic;
SIGNAL \uart_comm|os_count[1]~5_combout\ : std_logic;
SIGNAL \uart_comm|rx_buffer[4]~0_combout\ : std_logic;
SIGNAL \uart_comm|os_count[0]~4_combout\ : std_logic;
SIGNAL \uart_comm|os_count[3]~6_combout\ : std_logic;
SIGNAL \uart_comm|rx_state.ready_st~q\ : std_logic;
SIGNAL \uart_comm|Selector5~0_combout\ : std_logic;
SIGNAL \uart_comm|rx_state.idle~q\ : std_logic;
SIGNAL \uart_comm|rx_ready_aux~0_combout\ : std_logic;
SIGNAL \uart_comm|Selector6~1_combout\ : std_logic;
SIGNAL \uart_comm|rx_state.receive~q\ : std_logic;
SIGNAL \uart_comm|rx_ready_aux~1_combout\ : std_logic;
SIGNAL \uart_comm|rx_ready_aux~feeder_combout\ : std_logic;
SIGNAL \uart_comm|rx_ready_aux~q\ : std_logic;
SIGNAL \uart_comm|rx_buffer[8]~feeder_combout\ : std_logic;
SIGNAL \uart_comm|rx_buffer[4]~1_combout\ : std_logic;
SIGNAL \uart_comm|rx_buffer[6]~feeder_combout\ : std_logic;
SIGNAL \uart_comm|rx_data[3]~0_combout\ : std_logic;
SIGNAL \p1:counter[0]~DUPLICATE_q\ : std_logic;
SIGNAL \p1:counter[0]~0_combout\ : std_logic;
SIGNAL \p1:counter[0]~q\ : std_logic;
SIGNAL \Add0~1_sumout\ : std_logic;
SIGNAL \p1:counter[1]~q\ : std_logic;
SIGNAL \Add0~2\ : std_logic;
SIGNAL \Add0~85_sumout\ : std_logic;
SIGNAL \p1:counter[2]~q\ : std_logic;
SIGNAL \Add0~86\ : std_logic;
SIGNAL \Add0~89_sumout\ : std_logic;
SIGNAL \p1:counter[3]~q\ : std_logic;
SIGNAL \Add0~90\ : std_logic;
SIGNAL \Add0~93_sumout\ : std_logic;
SIGNAL \p1:counter[4]~q\ : std_logic;
SIGNAL \Add0~94\ : std_logic;
SIGNAL \Add0~97_sumout\ : std_logic;
SIGNAL \p1:counter[5]~q\ : std_logic;
SIGNAL \Add0~98\ : std_logic;
SIGNAL \Add0~101_sumout\ : std_logic;
SIGNAL \p1:counter[6]~q\ : std_logic;
SIGNAL \Add0~102\ : std_logic;
SIGNAL \Add0~53_sumout\ : std_logic;
SIGNAL \p1:counter[7]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~54\ : std_logic;
SIGNAL \Add0~105_sumout\ : std_logic;
SIGNAL \p1:counter[8]~q\ : std_logic;
SIGNAL \Add0~106\ : std_logic;
SIGNAL \Add0~109_sumout\ : std_logic;
SIGNAL \p1:counter[9]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~110\ : std_logic;
SIGNAL \Add0~113_sumout\ : std_logic;
SIGNAL \p1:counter[10]~q\ : std_logic;
SIGNAL \Add0~114\ : std_logic;
SIGNAL \Add0~117_sumout\ : std_logic;
SIGNAL \p1:counter[11]~q\ : std_logic;
SIGNAL \Add0~118\ : std_logic;
SIGNAL \Add0~121_sumout\ : std_logic;
SIGNAL \p1:counter[12]~q\ : std_logic;
SIGNAL \Add0~122\ : std_logic;
SIGNAL \Add0~57_sumout\ : std_logic;
SIGNAL \p1:counter[13]~q\ : std_logic;
SIGNAL \Add0~58\ : std_logic;
SIGNAL \Add0~65_sumout\ : std_logic;
SIGNAL \p1:counter[14]~q\ : std_logic;
SIGNAL \Add0~66\ : std_logic;
SIGNAL \Add0~69_sumout\ : std_logic;
SIGNAL \p1:counter[15]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~70\ : std_logic;
SIGNAL \Add0~73_sumout\ : std_logic;
SIGNAL \p1:counter[16]~q\ : std_logic;
SIGNAL \Add0~74\ : std_logic;
SIGNAL \Add0~77_sumout\ : std_logic;
SIGNAL \p1:counter[17]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~78\ : std_logic;
SIGNAL \Add0~81_sumout\ : std_logic;
SIGNAL \p1:counter[18]~q\ : std_logic;
SIGNAL \Add0~82\ : std_logic;
SIGNAL \Add0~61_sumout\ : std_logic;
SIGNAL \p1:counter[19]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~62\ : std_logic;
SIGNAL \Add0~29_sumout\ : std_logic;
SIGNAL \p1:counter[20]~q\ : std_logic;
SIGNAL \Add0~30\ : std_logic;
SIGNAL \Add0~33_sumout\ : std_logic;
SIGNAL \p1:counter[21]~q\ : std_logic;
SIGNAL \Add0~34\ : std_logic;
SIGNAL \Add0~37_sumout\ : std_logic;
SIGNAL \p1:counter[22]~q\ : std_logic;
SIGNAL \Add0~38\ : std_logic;
SIGNAL \Add0~41_sumout\ : std_logic;
SIGNAL \p1:counter[23]~q\ : std_logic;
SIGNAL \Add0~42\ : std_logic;
SIGNAL \Add0~45_sumout\ : std_logic;
SIGNAL \p1:counter[24]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~46\ : std_logic;
SIGNAL \Add0~49_sumout\ : std_logic;
SIGNAL \p1:counter[25]~q\ : std_logic;
SIGNAL \Add0~50\ : std_logic;
SIGNAL \Add0~9_sumout\ : std_logic;
SIGNAL \p1:counter[26]~q\ : std_logic;
SIGNAL \Add0~10\ : std_logic;
SIGNAL \Add0~13_sumout\ : std_logic;
SIGNAL \p1:counter[27]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~14\ : std_logic;
SIGNAL \Add0~17_sumout\ : std_logic;
SIGNAL \p1:counter[28]~q\ : std_logic;
SIGNAL \p1:counter[26]~DUPLICATE_q\ : std_logic;
SIGNAL \p1:counter[27]~q\ : std_logic;
SIGNAL \Add0~18\ : std_logic;
SIGNAL \Add0~21_sumout\ : std_logic;
SIGNAL \p1:counter[29]~q\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~25_sumout\ : std_logic;
SIGNAL \p1:counter[30]~q\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \p1:counter[24]~q\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \p1:counter[19]~q\ : std_logic;
SIGNAL \p1:counter[7]~q\ : std_logic;
SIGNAL \p1:counter[9]~q\ : std_logic;
SIGNAL \LessThan0~4_combout\ : std_logic;
SIGNAL \LessThan0~3_combout\ : std_logic;
SIGNAL \p1:counter[14]~DUPLICATE_q\ : std_logic;
SIGNAL \p1:counter[15]~q\ : std_logic;
SIGNAL \p1:counter[18]~DUPLICATE_q\ : std_logic;
SIGNAL \p1:counter[17]~q\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \LessThan0~5_combout\ : std_logic;
SIGNAL \LessThan0~6_combout\ : std_logic;
SIGNAL \p1:counter[31]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~26\ : std_logic;
SIGNAL \Add0~5_sumout\ : std_logic;
SIGNAL \p1:counter[31]~q\ : std_logic;
SIGNAL \Decoder0~0_combout\ : std_logic;
SIGNAL \X[1][2][1]~q\ : std_logic;
SIGNAL \p2:counter[21]~DUPLICATE_q\ : std_logic;
SIGNAL \p2:counter[0]~DUPLICATE_q\ : std_logic;
SIGNAL \p2:counter[0]~0_combout\ : std_logic;
SIGNAL \p2:counter[0]~q\ : std_logic;
SIGNAL \Add1~2\ : std_logic;
SIGNAL \Add1~113_sumout\ : std_logic;
SIGNAL \p2:counter[2]~DUPLICATE_q\ : std_logic;
SIGNAL \Add1~114\ : std_logic;
SIGNAL \Add1~109_sumout\ : std_logic;
SIGNAL \p2:counter[3]~DUPLICATE_q\ : std_logic;
SIGNAL \Add1~110\ : std_logic;
SIGNAL \Add1~105_sumout\ : std_logic;
SIGNAL \p2:counter[4]~q\ : std_logic;
SIGNAL \Add1~106\ : std_logic;
SIGNAL \Add1~53_sumout\ : std_logic;
SIGNAL \p2:counter[5]~DUPLICATE_q\ : std_logic;
SIGNAL \Add1~54\ : std_logic;
SIGNAL \Add1~101_sumout\ : std_logic;
SIGNAL \p2:counter[6]~q\ : std_logic;
SIGNAL \Add1~102\ : std_logic;
SIGNAL \Add1~97_sumout\ : std_logic;
SIGNAL \p2:counter[7]~q\ : std_logic;
SIGNAL \Add1~98\ : std_logic;
SIGNAL \Add1~93_sumout\ : std_logic;
SIGNAL \p2:counter[8]~DUPLICATE_q\ : std_logic;
SIGNAL \Add1~94\ : std_logic;
SIGNAL \Add1~89_sumout\ : std_logic;
SIGNAL \p2:counter[9]~q\ : std_logic;
SIGNAL \Add1~90\ : std_logic;
SIGNAL \Add1~85_sumout\ : std_logic;
SIGNAL \p2:counter[10]~DUPLICATE_q\ : std_logic;
SIGNAL \Add1~86\ : std_logic;
SIGNAL \Add1~117_sumout\ : std_logic;
SIGNAL \p2:counter[11]~q\ : std_logic;
SIGNAL \Add1~118\ : std_logic;
SIGNAL \Add1~121_sumout\ : std_logic;
SIGNAL \p2:counter[12]~DUPLICATE_q\ : std_logic;
SIGNAL \Add1~122\ : std_logic;
SIGNAL \Add1~57_sumout\ : std_logic;
SIGNAL \p2:counter[13]~q\ : std_logic;
SIGNAL \Add1~58\ : std_logic;
SIGNAL \Add1~65_sumout\ : std_logic;
SIGNAL \p2:counter[14]~q\ : std_logic;
SIGNAL \Add1~66\ : std_logic;
SIGNAL \Add1~69_sumout\ : std_logic;
SIGNAL \p2:counter[15]~DUPLICATE_q\ : std_logic;
SIGNAL \Add1~70\ : std_logic;
SIGNAL \Add1~73_sumout\ : std_logic;
SIGNAL \p2:counter[16]~q\ : std_logic;
SIGNAL \Add1~74\ : std_logic;
SIGNAL \Add1~77_sumout\ : std_logic;
SIGNAL \p2:counter[17]~DUPLICATE_q\ : std_logic;
SIGNAL \Add1~78\ : std_logic;
SIGNAL \Add1~81_sumout\ : std_logic;
SIGNAL \p2:counter[18]~DUPLICATE_q\ : std_logic;
SIGNAL \Add1~82\ : std_logic;
SIGNAL \Add1~61_sumout\ : std_logic;
SIGNAL \p2:counter[19]~DUPLICATE_q\ : std_logic;
SIGNAL \Add1~62\ : std_logic;
SIGNAL \Add1~29_sumout\ : std_logic;
SIGNAL \p2:counter[20]~DUPLICATE_q\ : std_logic;
SIGNAL \Add1~30\ : std_logic;
SIGNAL \Add1~33_sumout\ : std_logic;
SIGNAL \p2:counter[21]~q\ : std_logic;
SIGNAL \Add1~34\ : std_logic;
SIGNAL \Add1~37_sumout\ : std_logic;
SIGNAL \p2:counter[22]~q\ : std_logic;
SIGNAL \Add1~38\ : std_logic;
SIGNAL \Add1~41_sumout\ : std_logic;
SIGNAL \p2:counter[23]~q\ : std_logic;
SIGNAL \Add1~42\ : std_logic;
SIGNAL \Add1~45_sumout\ : std_logic;
SIGNAL \p2:counter[24]~q\ : std_logic;
SIGNAL \Add1~46\ : std_logic;
SIGNAL \Add1~49_sumout\ : std_logic;
SIGNAL \p2:counter[25]~q\ : std_logic;
SIGNAL \p2:counter[20]~q\ : std_logic;
SIGNAL \LessThan2~1_combout\ : std_logic;
SIGNAL \Add1~50\ : std_logic;
SIGNAL \Add1~9_sumout\ : std_logic;
SIGNAL \p2:counter[26]~q\ : std_logic;
SIGNAL \Add1~10\ : std_logic;
SIGNAL \Add1~13_sumout\ : std_logic;
SIGNAL \p2:counter[27]~DUPLICATE_q\ : std_logic;
SIGNAL \Add1~14\ : std_logic;
SIGNAL \Add1~17_sumout\ : std_logic;
SIGNAL \p2:counter[28]~q\ : std_logic;
SIGNAL \Add1~18\ : std_logic;
SIGNAL \Add1~21_sumout\ : std_logic;
SIGNAL \p2:counter[29]~q\ : std_logic;
SIGNAL \Add1~22\ : std_logic;
SIGNAL \Add1~25_sumout\ : std_logic;
SIGNAL \p2:counter[30]~q\ : std_logic;
SIGNAL \Add1~26\ : std_logic;
SIGNAL \Add1~5_sumout\ : std_logic;
SIGNAL \p2:counter[31]~q\ : std_logic;
SIGNAL \p2:counter[26]~DUPLICATE_q\ : std_logic;
SIGNAL \p2:counter[27]~q\ : std_logic;
SIGNAL \LessThan2~0_combout\ : std_logic;
SIGNAL \p2:counter[19]~q\ : std_logic;
SIGNAL \p2:counter[5]~q\ : std_logic;
SIGNAL \p2:counter[10]~q\ : std_logic;
SIGNAL \p2:counter[8]~q\ : std_logic;
SIGNAL \LessThan2~3_combout\ : std_logic;
SIGNAL \p2:counter[18]~q\ : std_logic;
SIGNAL \p2:counter[17]~q\ : std_logic;
SIGNAL \p2:counter[15]~q\ : std_logic;
SIGNAL \LessThan2~2_combout\ : std_logic;
SIGNAL \p2:counter[12]~q\ : std_logic;
SIGNAL \p2:counter[11]~DUPLICATE_q\ : std_logic;
SIGNAL \p2:counter[2]~q\ : std_logic;
SIGNAL \p2:counter[3]~q\ : std_logic;
SIGNAL \LessThan2~4_combout\ : std_logic;
SIGNAL \LessThan2~5_combout\ : std_logic;
SIGNAL \LessThan2~6_combout\ : std_logic;
SIGNAL \p2:counter[1]~DUPLICATE_q\ : std_logic;
SIGNAL \Add1~1_sumout\ : std_logic;
SIGNAL \p2:counter[1]~q\ : std_logic;
SIGNAL \Decoder0~1_combout\ : std_logic;
SIGNAL \X[1][1][1]~q\ : std_logic;
SIGNAL \digit~1_combout\ : std_logic;
SIGNAL \X[1][2][0]~q\ : std_logic;
SIGNAL \X[1][1][0]~q\ : std_logic;
SIGNAL \digit~0_combout\ : std_logic;
SIGNAL \uart_comm|rx_data[3]~feeder_combout\ : std_logic;
SIGNAL \X[1][2][3]~q\ : std_logic;
SIGNAL \X[1][1][3]~q\ : std_logic;
SIGNAL \digit~3_combout\ : std_logic;
SIGNAL \uart_comm|rx_data[2]~feeder_combout\ : std_logic;
SIGNAL \X[1][1][2]~q\ : std_logic;
SIGNAL \X[1][2][2]~q\ : std_logic;
SIGNAL \digit~2_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \digit[0]~reg0_q\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \digit[1]~reg0_q\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \digit[2]~reg0_q\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \digit[3]~reg0_q\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \digit[4]~reg0_q\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \digit[5]~reg0_q\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \digit[6]~reg0_q\ : std_logic;
SIGNAL \uart_comm|count_baud\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \freq|iterations\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \uart_comm|rx_data\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \uart_comm|rx_buffer\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \uart_comm|rx_count\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \uart_comm|os_count\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \uart_comm|count_os\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \ALT_INV_p1:counter[15]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_p1:counter[14]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_p1:counter[19]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_p1:counter[7]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_p1:counter[24]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_p1:counter[27]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_p1:counter[26]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_p1:counter[31]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_p1:counter[0]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_p2:counter[12]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_p2:counter[11]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_p2:counter[2]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_p2:counter[3]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_p2:counter[8]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_p2:counter[10]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_p2:counter[18]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_p2:counter[17]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_p2:counter[15]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_p2:counter[19]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_p2:counter[5]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_p2:counter[21]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_p2:counter[20]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_p2:counter[27]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_p2:counter[26]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_p2:counter[0]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_p2:counter[1]~DUPLICATE_q\ : std_logic;
SIGNAL \freq|ALT_INV_iterations[1]~DUPLICATE_q\ : std_logic;
SIGNAL \freq|ALT_INV_iterations[11]~DUPLICATE_q\ : std_logic;
SIGNAL \freq|ALT_INV_iterations[4]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_rx~input_o\ : std_logic;
SIGNAL \ALT_INV_reset~input_o\ : std_logic;
SIGNAL \uart_comm|ALT_INV_rx_buffer\ : std_logic_vector(7 DOWNTO 3);
SIGNAL \uart_comm|ALT_INV_count_os\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \uart_comm|ALT_INV_Add2~0_combout\ : std_logic;
SIGNAL \uart_comm|ALT_INV_os_count[3]~1_combout\ : std_logic;
SIGNAL \uart_comm|ALT_INV_rx_state.ready_st~q\ : std_logic;
SIGNAL \uart_comm|ALT_INV_os_count[3]~0_combout\ : std_logic;
SIGNAL \uart_comm|ALT_INV_LessThan3~0_combout\ : std_logic;
SIGNAL \uart_comm|ALT_INV_LessThan0~1_combout\ : std_logic;
SIGNAL \uart_comm|ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL \uart_comm|ALT_INV_rx_count[3]~0_combout\ : std_logic;
SIGNAL \uart_comm|ALT_INV_rx_count\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \uart_comm|ALT_INV_Selector6~0_combout\ : std_logic;
SIGNAL \uart_comm|ALT_INV_rx_state.idle~q\ : std_logic;
SIGNAL \ALT_INV_LessThan0~6_combout\ : std_logic;
SIGNAL \uart_comm|ALT_INV_rx_ready_aux~1_combout\ : std_logic;
SIGNAL \uart_comm|ALT_INV_rx_ready_aux~0_combout\ : std_logic;
SIGNAL \uart_comm|ALT_INV_rx_buffer[4]~0_combout\ : std_logic;
SIGNAL \uart_comm|ALT_INV_rx_state.receive~q\ : std_logic;
SIGNAL \uart_comm|ALT_INV_os_count\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \uart_comm|ALT_INV_os_pulse~q\ : std_logic;
SIGNAL \freq|ALT_INV_Equal0~4_combout\ : std_logic;
SIGNAL \freq|ALT_INV_Equal0~3_combout\ : std_logic;
SIGNAL \freq|ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \freq|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \freq|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~5_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~4_combout\ : std_logic;
SIGNAL \ALT_INV_p1:counter[12]~q\ : std_logic;
SIGNAL \ALT_INV_p1:counter[11]~q\ : std_logic;
SIGNAL \ALT_INV_p1:counter[10]~q\ : std_logic;
SIGNAL \ALT_INV_p1:counter[9]~q\ : std_logic;
SIGNAL \ALT_INV_p1:counter[8]~q\ : std_logic;
SIGNAL \ALT_INV_LessThan0~3_combout\ : std_logic;
SIGNAL \ALT_INV_p1:counter[6]~q\ : std_logic;
SIGNAL \ALT_INV_p1:counter[5]~q\ : std_logic;
SIGNAL \ALT_INV_p1:counter[4]~q\ : std_logic;
SIGNAL \ALT_INV_p1:counter[3]~q\ : std_logic;
SIGNAL \ALT_INV_p1:counter[2]~q\ : std_logic;
SIGNAL \uart_comm|ALT_INV_count_os[4]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_p1:counter[9]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_p1:counter[18]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_p1:counter[17]~DUPLICATE_q\ : std_logic;
SIGNAL \freq|ALT_INV_iterations\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \ALT_INV_LessThan0~2_combout\ : std_logic;
SIGNAL \ALT_INV_p1:counter[18]~q\ : std_logic;
SIGNAL \ALT_INV_p1:counter[17]~q\ : std_logic;
SIGNAL \ALT_INV_p1:counter[16]~q\ : std_logic;
SIGNAL \ALT_INV_p1:counter[15]~q\ : std_logic;
SIGNAL \ALT_INV_p1:counter[14]~q\ : std_logic;
SIGNAL \ALT_INV_p1:counter[19]~q\ : std_logic;
SIGNAL \ALT_INV_p1:counter[13]~q\ : std_logic;
SIGNAL \ALT_INV_p1:counter[7]~q\ : std_logic;
SIGNAL \ALT_INV_LessThan0~1_combout\ : std_logic;
SIGNAL \ALT_INV_p1:counter[25]~q\ : std_logic;
SIGNAL \ALT_INV_p1:counter[24]~q\ : std_logic;
SIGNAL \ALT_INV_p1:counter[23]~q\ : std_logic;
SIGNAL \ALT_INV_p1:counter[22]~q\ : std_logic;
SIGNAL \ALT_INV_p1:counter[21]~q\ : std_logic;
SIGNAL \ALT_INV_p1:counter[20]~q\ : std_logic;
SIGNAL \ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL \ALT_INV_p1:counter[30]~q\ : std_logic;
SIGNAL \ALT_INV_p1:counter[29]~q\ : std_logic;
SIGNAL \ALT_INV_p1:counter[28]~q\ : std_logic;
SIGNAL \ALT_INV_p1:counter[27]~q\ : std_logic;
SIGNAL \ALT_INV_p1:counter[26]~q\ : std_logic;
SIGNAL \ALT_INV_p1:counter[31]~q\ : std_logic;
SIGNAL \ALT_INV_p1:counter[1]~q\ : std_logic;
SIGNAL \ALT_INV_p1:counter[0]~q\ : std_logic;
SIGNAL \uart_comm|ALT_INV_rx_ready_aux~q\ : std_logic;
SIGNAL \ALT_INV_LessThan2~6_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan2~5_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan2~4_combout\ : std_logic;
SIGNAL \ALT_INV_p2:counter[12]~q\ : std_logic;
SIGNAL \ALT_INV_p2:counter[11]~q\ : std_logic;
SIGNAL \ALT_INV_p2:counter[2]~q\ : std_logic;
SIGNAL \ALT_INV_p2:counter[3]~q\ : std_logic;
SIGNAL \ALT_INV_p2:counter[4]~q\ : std_logic;
SIGNAL \ALT_INV_LessThan2~3_combout\ : std_logic;
SIGNAL \ALT_INV_p2:counter[6]~q\ : std_logic;
SIGNAL \ALT_INV_p2:counter[7]~q\ : std_logic;
SIGNAL \ALT_INV_p2:counter[8]~q\ : std_logic;
SIGNAL \ALT_INV_p2:counter[9]~q\ : std_logic;
SIGNAL \ALT_INV_p2:counter[10]~q\ : std_logic;
SIGNAL \ALT_INV_LessThan2~2_combout\ : std_logic;
SIGNAL \ALT_INV_p2:counter[18]~q\ : std_logic;
SIGNAL \ALT_INV_p2:counter[17]~q\ : std_logic;
SIGNAL \ALT_INV_p2:counter[16]~q\ : std_logic;
SIGNAL \ALT_INV_p2:counter[15]~q\ : std_logic;
SIGNAL \ALT_INV_p2:counter[14]~q\ : std_logic;
SIGNAL \ALT_INV_p2:counter[19]~q\ : std_logic;
SIGNAL \ALT_INV_p2:counter[13]~q\ : std_logic;
SIGNAL \ALT_INV_p2:counter[5]~q\ : std_logic;
SIGNAL \ALT_INV_LessThan2~1_combout\ : std_logic;
SIGNAL \ALT_INV_p2:counter[25]~q\ : std_logic;
SIGNAL \ALT_INV_p2:counter[24]~q\ : std_logic;
SIGNAL \ALT_INV_p2:counter[23]~q\ : std_logic;
SIGNAL \ALT_INV_p2:counter[22]~q\ : std_logic;
SIGNAL \ALT_INV_p2:counter[21]~q\ : std_logic;
SIGNAL \ALT_INV_p2:counter[20]~q\ : std_logic;
SIGNAL \ALT_INV_LessThan2~0_combout\ : std_logic;
SIGNAL \ALT_INV_p2:counter[30]~q\ : std_logic;
SIGNAL \ALT_INV_p2:counter[29]~q\ : std_logic;
SIGNAL \ALT_INV_p2:counter[28]~q\ : std_logic;
SIGNAL \ALT_INV_p2:counter[27]~q\ : std_logic;
SIGNAL \ALT_INV_p2:counter[26]~q\ : std_logic;
SIGNAL \ALT_INV_p2:counter[31]~q\ : std_logic;
SIGNAL \ALT_INV_p2:counter[0]~q\ : std_logic;
SIGNAL \freq|ALT_INV_local_out~q\ : std_logic;
SIGNAL \ALT_INV_digit~3_combout\ : std_logic;
SIGNAL \ALT_INV_X[1][1][3]~q\ : std_logic;
SIGNAL \ALT_INV_X[1][2][3]~q\ : std_logic;
SIGNAL \ALT_INV_digit~2_combout\ : std_logic;
SIGNAL \ALT_INV_X[1][1][2]~q\ : std_logic;
SIGNAL \ALT_INV_X[1][2][2]~q\ : std_logic;
SIGNAL \ALT_INV_digit~1_combout\ : std_logic;
SIGNAL \ALT_INV_X[1][1][1]~q\ : std_logic;
SIGNAL \ALT_INV_X[1][2][1]~q\ : std_logic;
SIGNAL \ALT_INV_digit~0_combout\ : std_logic;
SIGNAL \ALT_INV_X[1][1][0]~q\ : std_logic;
SIGNAL \ALT_INV_X[1][2][0]~q\ : std_logic;
SIGNAL \ALT_INV_p2:counter[1]~q\ : std_logic;
SIGNAL \uart_comm|ALT_INV_count_baud\ : std_logic_vector(8 DOWNTO 0);

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_rx <= rx;
tx <= ww_tx;
digit <= ww_digit;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_p1:counter[15]~DUPLICATE_q\ <= NOT \p1:counter[15]~DUPLICATE_q\;
\ALT_INV_p1:counter[14]~DUPLICATE_q\ <= NOT \p1:counter[14]~DUPLICATE_q\;
\ALT_INV_p1:counter[19]~DUPLICATE_q\ <= NOT \p1:counter[19]~DUPLICATE_q\;
\ALT_INV_p1:counter[7]~DUPLICATE_q\ <= NOT \p1:counter[7]~DUPLICATE_q\;
\ALT_INV_p1:counter[24]~DUPLICATE_q\ <= NOT \p1:counter[24]~DUPLICATE_q\;
\ALT_INV_p1:counter[27]~DUPLICATE_q\ <= NOT \p1:counter[27]~DUPLICATE_q\;
\ALT_INV_p1:counter[26]~DUPLICATE_q\ <= NOT \p1:counter[26]~DUPLICATE_q\;
\ALT_INV_p1:counter[31]~DUPLICATE_q\ <= NOT \p1:counter[31]~DUPLICATE_q\;
\ALT_INV_p1:counter[0]~DUPLICATE_q\ <= NOT \p1:counter[0]~DUPLICATE_q\;
\ALT_INV_p2:counter[12]~DUPLICATE_q\ <= NOT \p2:counter[12]~DUPLICATE_q\;
\ALT_INV_p2:counter[11]~DUPLICATE_q\ <= NOT \p2:counter[11]~DUPLICATE_q\;
\ALT_INV_p2:counter[2]~DUPLICATE_q\ <= NOT \p2:counter[2]~DUPLICATE_q\;
\ALT_INV_p2:counter[3]~DUPLICATE_q\ <= NOT \p2:counter[3]~DUPLICATE_q\;
\ALT_INV_p2:counter[8]~DUPLICATE_q\ <= NOT \p2:counter[8]~DUPLICATE_q\;
\ALT_INV_p2:counter[10]~DUPLICATE_q\ <= NOT \p2:counter[10]~DUPLICATE_q\;
\ALT_INV_p2:counter[18]~DUPLICATE_q\ <= NOT \p2:counter[18]~DUPLICATE_q\;
\ALT_INV_p2:counter[17]~DUPLICATE_q\ <= NOT \p2:counter[17]~DUPLICATE_q\;
\ALT_INV_p2:counter[15]~DUPLICATE_q\ <= NOT \p2:counter[15]~DUPLICATE_q\;
\ALT_INV_p2:counter[19]~DUPLICATE_q\ <= NOT \p2:counter[19]~DUPLICATE_q\;
\ALT_INV_p2:counter[5]~DUPLICATE_q\ <= NOT \p2:counter[5]~DUPLICATE_q\;
\ALT_INV_p2:counter[21]~DUPLICATE_q\ <= NOT \p2:counter[21]~DUPLICATE_q\;
\ALT_INV_p2:counter[20]~DUPLICATE_q\ <= NOT \p2:counter[20]~DUPLICATE_q\;
\ALT_INV_p2:counter[27]~DUPLICATE_q\ <= NOT \p2:counter[27]~DUPLICATE_q\;
\ALT_INV_p2:counter[26]~DUPLICATE_q\ <= NOT \p2:counter[26]~DUPLICATE_q\;
\ALT_INV_p2:counter[0]~DUPLICATE_q\ <= NOT \p2:counter[0]~DUPLICATE_q\;
\ALT_INV_p2:counter[1]~DUPLICATE_q\ <= NOT \p2:counter[1]~DUPLICATE_q\;
\freq|ALT_INV_iterations[1]~DUPLICATE_q\ <= NOT \freq|iterations[1]~DUPLICATE_q\;
\freq|ALT_INV_iterations[11]~DUPLICATE_q\ <= NOT \freq|iterations[11]~DUPLICATE_q\;
\freq|ALT_INV_iterations[4]~DUPLICATE_q\ <= NOT \freq|iterations[4]~DUPLICATE_q\;
\ALT_INV_rx~input_o\ <= NOT \rx~input_o\;
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;
\uart_comm|ALT_INV_rx_buffer\(7) <= NOT \uart_comm|rx_buffer\(7);
\uart_comm|ALT_INV_count_os\(0) <= NOT \uart_comm|count_os\(0);
\uart_comm|ALT_INV_Add2~0_combout\ <= NOT \uart_comm|Add2~0_combout\;
\uart_comm|ALT_INV_os_count[3]~1_combout\ <= NOT \uart_comm|os_count[3]~1_combout\;
\uart_comm|ALT_INV_rx_state.ready_st~q\ <= NOT \uart_comm|rx_state.ready_st~q\;
\uart_comm|ALT_INV_os_count[3]~0_combout\ <= NOT \uart_comm|os_count[3]~0_combout\;
\uart_comm|ALT_INV_LessThan3~0_combout\ <= NOT \uart_comm|LessThan3~0_combout\;
\uart_comm|ALT_INV_count_os\(3) <= NOT \uart_comm|count_os\(3);
\uart_comm|ALT_INV_count_os\(1) <= NOT \uart_comm|count_os\(1);
\uart_comm|ALT_INV_count_os\(2) <= NOT \uart_comm|count_os\(2);
\uart_comm|ALT_INV_LessThan0~1_combout\ <= NOT \uart_comm|LessThan0~1_combout\;
\uart_comm|ALT_INV_LessThan0~0_combout\ <= NOT \uart_comm|LessThan0~0_combout\;
\uart_comm|ALT_INV_count_os\(4) <= NOT \uart_comm|count_os\(4);
\uart_comm|ALT_INV_rx_count[3]~0_combout\ <= NOT \uart_comm|rx_count[3]~0_combout\;
\uart_comm|ALT_INV_rx_count\(1) <= NOT \uart_comm|rx_count\(1);
\uart_comm|ALT_INV_rx_count\(0) <= NOT \uart_comm|rx_count\(0);
\uart_comm|ALT_INV_rx_count\(2) <= NOT \uart_comm|rx_count\(2);
\uart_comm|ALT_INV_Selector6~0_combout\ <= NOT \uart_comm|Selector6~0_combout\;
\uart_comm|ALT_INV_rx_state.idle~q\ <= NOT \uart_comm|rx_state.idle~q\;
\uart_comm|ALT_INV_rx_buffer\(4) <= NOT \uart_comm|rx_buffer\(4);
\uart_comm|ALT_INV_rx_buffer\(3) <= NOT \uart_comm|rx_buffer\(3);
\ALT_INV_LessThan0~6_combout\ <= NOT \LessThan0~6_combout\;
\uart_comm|ALT_INV_rx_ready_aux~1_combout\ <= NOT \uart_comm|rx_ready_aux~1_combout\;
\uart_comm|ALT_INV_rx_ready_aux~0_combout\ <= NOT \uart_comm|rx_ready_aux~0_combout\;
\uart_comm|ALT_INV_rx_buffer[4]~0_combout\ <= NOT \uart_comm|rx_buffer[4]~0_combout\;
\uart_comm|ALT_INV_rx_state.receive~q\ <= NOT \uart_comm|rx_state.receive~q\;
\uart_comm|ALT_INV_os_count\(1) <= NOT \uart_comm|os_count\(1);
\uart_comm|ALT_INV_os_count\(0) <= NOT \uart_comm|os_count\(0);
\uart_comm|ALT_INV_os_count\(2) <= NOT \uart_comm|os_count\(2);
\uart_comm|ALT_INV_os_count\(3) <= NOT \uart_comm|os_count\(3);
\uart_comm|ALT_INV_os_pulse~q\ <= NOT \uart_comm|os_pulse~q\;
\uart_comm|ALT_INV_rx_count\(3) <= NOT \uart_comm|rx_count\(3);
\freq|ALT_INV_Equal0~4_combout\ <= NOT \freq|Equal0~4_combout\;
\freq|ALT_INV_Equal0~3_combout\ <= NOT \freq|Equal0~3_combout\;
\freq|ALT_INV_Equal0~2_combout\ <= NOT \freq|Equal0~2_combout\;
\freq|ALT_INV_Equal0~1_combout\ <= NOT \freq|Equal0~1_combout\;
\freq|ALT_INV_Equal0~0_combout\ <= NOT \freq|Equal0~0_combout\;
\ALT_INV_LessThan0~5_combout\ <= NOT \LessThan0~5_combout\;
\ALT_INV_LessThan0~4_combout\ <= NOT \LessThan0~4_combout\;
\ALT_INV_p1:counter[12]~q\ <= NOT \p1:counter[12]~q\;
\ALT_INV_p1:counter[11]~q\ <= NOT \p1:counter[11]~q\;
\ALT_INV_p1:counter[10]~q\ <= NOT \p1:counter[10]~q\;
\ALT_INV_p1:counter[9]~q\ <= NOT \p1:counter[9]~q\;
\ALT_INV_p1:counter[8]~q\ <= NOT \p1:counter[8]~q\;
\ALT_INV_LessThan0~3_combout\ <= NOT \LessThan0~3_combout\;
\ALT_INV_p1:counter[6]~q\ <= NOT \p1:counter[6]~q\;
\ALT_INV_p1:counter[5]~q\ <= NOT \p1:counter[5]~q\;
\ALT_INV_p1:counter[4]~q\ <= NOT \p1:counter[4]~q\;
\ALT_INV_p1:counter[3]~q\ <= NOT \p1:counter[3]~q\;
\ALT_INV_p1:counter[2]~q\ <= NOT \p1:counter[2]~q\;
\uart_comm|ALT_INV_count_os[4]~DUPLICATE_q\ <= NOT \uart_comm|count_os[4]~DUPLICATE_q\;
\ALT_INV_p1:counter[9]~DUPLICATE_q\ <= NOT \p1:counter[9]~DUPLICATE_q\;
\ALT_INV_p1:counter[18]~DUPLICATE_q\ <= NOT \p1:counter[18]~DUPLICATE_q\;
\ALT_INV_p1:counter[17]~DUPLICATE_q\ <= NOT \p1:counter[17]~DUPLICATE_q\;
\freq|ALT_INV_iterations\(2) <= NOT \freq|iterations\(2);
\freq|ALT_INV_iterations\(18) <= NOT \freq|iterations\(18);
\freq|ALT_INV_iterations\(1) <= NOT \freq|iterations\(1);
\freq|ALT_INV_iterations\(19) <= NOT \freq|iterations\(19);
\freq|ALT_INV_iterations\(7) <= NOT \freq|iterations\(7);
\freq|ALT_INV_iterations\(20) <= NOT \freq|iterations\(20);
\freq|ALT_INV_iterations\(21) <= NOT \freq|iterations\(21);
\freq|ALT_INV_iterations\(12) <= NOT \freq|iterations\(12);
\freq|ALT_INV_iterations\(11) <= NOT \freq|iterations\(11);
\freq|ALT_INV_iterations\(10) <= NOT \freq|iterations\(10);
\freq|ALT_INV_iterations\(6) <= NOT \freq|iterations\(6);
\freq|ALT_INV_iterations\(5) <= NOT \freq|iterations\(5);
\freq|ALT_INV_iterations\(16) <= NOT \freq|iterations\(16);
\freq|ALT_INV_iterations\(0) <= NOT \freq|iterations\(0);
\freq|ALT_INV_iterations\(8) <= NOT \freq|iterations\(8);
\freq|ALT_INV_iterations\(14) <= NOT \freq|iterations\(14);
\freq|ALT_INV_iterations\(15) <= NOT \freq|iterations\(15);
\freq|ALT_INV_iterations\(17) <= NOT \freq|iterations\(17);
\freq|ALT_INV_iterations\(24) <= NOT \freq|iterations\(24);
\freq|ALT_INV_iterations\(23) <= NOT \freq|iterations\(23);
\freq|ALT_INV_iterations\(22) <= NOT \freq|iterations\(22);
\freq|ALT_INV_iterations\(4) <= NOT \freq|iterations\(4);
\freq|ALT_INV_iterations\(3) <= NOT \freq|iterations\(3);
\freq|ALT_INV_iterations\(9) <= NOT \freq|iterations\(9);
\freq|ALT_INV_iterations\(13) <= NOT \freq|iterations\(13);
\freq|ALT_INV_iterations\(25) <= NOT \freq|iterations\(25);
\ALT_INV_LessThan0~2_combout\ <= NOT \LessThan0~2_combout\;
\ALT_INV_p1:counter[18]~q\ <= NOT \p1:counter[18]~q\;
\ALT_INV_p1:counter[17]~q\ <= NOT \p1:counter[17]~q\;
\ALT_INV_p1:counter[16]~q\ <= NOT \p1:counter[16]~q\;
\ALT_INV_p1:counter[15]~q\ <= NOT \p1:counter[15]~q\;
\ALT_INV_p1:counter[14]~q\ <= NOT \p1:counter[14]~q\;
\ALT_INV_p1:counter[19]~q\ <= NOT \p1:counter[19]~q\;
\ALT_INV_p1:counter[13]~q\ <= NOT \p1:counter[13]~q\;
\ALT_INV_p1:counter[7]~q\ <= NOT \p1:counter[7]~q\;
\ALT_INV_LessThan0~1_combout\ <= NOT \LessThan0~1_combout\;
\ALT_INV_p1:counter[25]~q\ <= NOT \p1:counter[25]~q\;
\ALT_INV_p1:counter[24]~q\ <= NOT \p1:counter[24]~q\;
\ALT_INV_p1:counter[23]~q\ <= NOT \p1:counter[23]~q\;
\ALT_INV_p1:counter[22]~q\ <= NOT \p1:counter[22]~q\;
\ALT_INV_p1:counter[21]~q\ <= NOT \p1:counter[21]~q\;
\ALT_INV_p1:counter[20]~q\ <= NOT \p1:counter[20]~q\;
\ALT_INV_LessThan0~0_combout\ <= NOT \LessThan0~0_combout\;
\ALT_INV_p1:counter[30]~q\ <= NOT \p1:counter[30]~q\;
\ALT_INV_p1:counter[29]~q\ <= NOT \p1:counter[29]~q\;
\ALT_INV_p1:counter[28]~q\ <= NOT \p1:counter[28]~q\;
\ALT_INV_p1:counter[27]~q\ <= NOT \p1:counter[27]~q\;
\ALT_INV_p1:counter[26]~q\ <= NOT \p1:counter[26]~q\;
\ALT_INV_p1:counter[31]~q\ <= NOT \p1:counter[31]~q\;
\ALT_INV_p1:counter[1]~q\ <= NOT \p1:counter[1]~q\;
\ALT_INV_p1:counter[0]~q\ <= NOT \p1:counter[0]~q\;
\uart_comm|ALT_INV_rx_ready_aux~q\ <= NOT \uart_comm|rx_ready_aux~q\;
\ALT_INV_LessThan2~6_combout\ <= NOT \LessThan2~6_combout\;
\ALT_INV_LessThan2~5_combout\ <= NOT \LessThan2~5_combout\;
\ALT_INV_LessThan2~4_combout\ <= NOT \LessThan2~4_combout\;
\ALT_INV_p2:counter[12]~q\ <= NOT \p2:counter[12]~q\;
\ALT_INV_p2:counter[11]~q\ <= NOT \p2:counter[11]~q\;
\ALT_INV_p2:counter[2]~q\ <= NOT \p2:counter[2]~q\;
\ALT_INV_p2:counter[3]~q\ <= NOT \p2:counter[3]~q\;
\ALT_INV_p2:counter[4]~q\ <= NOT \p2:counter[4]~q\;
\ALT_INV_LessThan2~3_combout\ <= NOT \LessThan2~3_combout\;
\ALT_INV_p2:counter[6]~q\ <= NOT \p2:counter[6]~q\;
\ALT_INV_p2:counter[7]~q\ <= NOT \p2:counter[7]~q\;
\ALT_INV_p2:counter[8]~q\ <= NOT \p2:counter[8]~q\;
\ALT_INV_p2:counter[9]~q\ <= NOT \p2:counter[9]~q\;
\ALT_INV_p2:counter[10]~q\ <= NOT \p2:counter[10]~q\;
\ALT_INV_LessThan2~2_combout\ <= NOT \LessThan2~2_combout\;
\ALT_INV_p2:counter[18]~q\ <= NOT \p2:counter[18]~q\;
\ALT_INV_p2:counter[17]~q\ <= NOT \p2:counter[17]~q\;
\ALT_INV_p2:counter[16]~q\ <= NOT \p2:counter[16]~q\;
\ALT_INV_p2:counter[15]~q\ <= NOT \p2:counter[15]~q\;
\ALT_INV_p2:counter[14]~q\ <= NOT \p2:counter[14]~q\;
\ALT_INV_p2:counter[19]~q\ <= NOT \p2:counter[19]~q\;
\ALT_INV_p2:counter[13]~q\ <= NOT \p2:counter[13]~q\;
\ALT_INV_p2:counter[5]~q\ <= NOT \p2:counter[5]~q\;
\ALT_INV_LessThan2~1_combout\ <= NOT \LessThan2~1_combout\;
\ALT_INV_p2:counter[25]~q\ <= NOT \p2:counter[25]~q\;
\ALT_INV_p2:counter[24]~q\ <= NOT \p2:counter[24]~q\;
\ALT_INV_p2:counter[23]~q\ <= NOT \p2:counter[23]~q\;
\ALT_INV_p2:counter[22]~q\ <= NOT \p2:counter[22]~q\;
\ALT_INV_p2:counter[21]~q\ <= NOT \p2:counter[21]~q\;
\ALT_INV_p2:counter[20]~q\ <= NOT \p2:counter[20]~q\;
\ALT_INV_LessThan2~0_combout\ <= NOT \LessThan2~0_combout\;
\ALT_INV_p2:counter[30]~q\ <= NOT \p2:counter[30]~q\;
\ALT_INV_p2:counter[29]~q\ <= NOT \p2:counter[29]~q\;
\ALT_INV_p2:counter[28]~q\ <= NOT \p2:counter[28]~q\;
\ALT_INV_p2:counter[27]~q\ <= NOT \p2:counter[27]~q\;
\ALT_INV_p2:counter[26]~q\ <= NOT \p2:counter[26]~q\;
\ALT_INV_p2:counter[31]~q\ <= NOT \p2:counter[31]~q\;
\ALT_INV_p2:counter[0]~q\ <= NOT \p2:counter[0]~q\;
\freq|ALT_INV_local_out~q\ <= NOT \freq|local_out~q\;
\ALT_INV_digit~3_combout\ <= NOT \digit~3_combout\;
\ALT_INV_X[1][1][3]~q\ <= NOT \X[1][1][3]~q\;
\ALT_INV_X[1][2][3]~q\ <= NOT \X[1][2][3]~q\;
\ALT_INV_digit~2_combout\ <= NOT \digit~2_combout\;
\ALT_INV_X[1][1][2]~q\ <= NOT \X[1][1][2]~q\;
\ALT_INV_X[1][2][2]~q\ <= NOT \X[1][2][2]~q\;
\ALT_INV_digit~1_combout\ <= NOT \digit~1_combout\;
\ALT_INV_X[1][1][1]~q\ <= NOT \X[1][1][1]~q\;
\ALT_INV_X[1][2][1]~q\ <= NOT \X[1][2][1]~q\;
\ALT_INV_digit~0_combout\ <= NOT \digit~0_combout\;
\ALT_INV_X[1][1][0]~q\ <= NOT \X[1][1][0]~q\;
\ALT_INV_X[1][2][0]~q\ <= NOT \X[1][2][0]~q\;
\ALT_INV_p2:counter[1]~q\ <= NOT \p2:counter[1]~q\;
\uart_comm|ALT_INV_count_baud\(0) <= NOT \uart_comm|count_baud\(0);
\uart_comm|ALT_INV_count_baud\(1) <= NOT \uart_comm|count_baud\(1);
\uart_comm|ALT_INV_count_baud\(2) <= NOT \uart_comm|count_baud\(2);
\uart_comm|ALT_INV_count_baud\(3) <= NOT \uart_comm|count_baud\(3);
\uart_comm|ALT_INV_count_baud\(4) <= NOT \uart_comm|count_baud\(4);
\uart_comm|ALT_INV_count_baud\(5) <= NOT \uart_comm|count_baud\(5);
\uart_comm|ALT_INV_count_baud\(6) <= NOT \uart_comm|count_baud\(6);
\uart_comm|ALT_INV_count_baud\(7) <= NOT \uart_comm|count_baud\(7);
\uart_comm|ALT_INV_count_baud\(8) <= NOT \uart_comm|count_baud\(8);

-- Location: IOOBUF_X54_Y14_N62
\tx~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_tx);

-- Location: IOOBUF_X46_Y0_N36
\digit[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \digit[0]~reg0_q\,
	devoe => ww_devoe,
	o => ww_digit(0));

-- Location: IOOBUF_X50_Y0_N53
\digit[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \digit[1]~reg0_q\,
	devoe => ww_devoe,
	o => ww_digit(1));

-- Location: IOOBUF_X48_Y0_N93
\digit[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \digit[2]~reg0_q\,
	devoe => ww_devoe,
	o => ww_digit(2));

-- Location: IOOBUF_X50_Y0_N36
\digit[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \digit[3]~reg0_q\,
	devoe => ww_devoe,
	o => ww_digit(3));

-- Location: IOOBUF_X48_Y0_N76
\digit[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \digit[4]~reg0_q\,
	devoe => ww_devoe,
	o => ww_digit(4));

-- Location: IOOBUF_X51_Y0_N36
\digit[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \digit[5]~reg0_q\,
	devoe => ww_devoe,
	o => ww_digit(5));

-- Location: IOOBUF_X52_Y0_N53
\digit[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \digit[6]~reg0_q\,
	devoe => ww_devoe,
	o => ww_digit(6));

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

-- Location: LABCELL_X47_Y5_N30
\freq|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \freq|Add0~49_sumout\ = SUM(( \freq|iterations\(0) ) + ( VCC ) + ( !VCC ))
-- \freq|Add0~50\ = CARRY(( \freq|iterations\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \freq|ALT_INV_iterations\(0),
	cin => GND,
	sumout => \freq|Add0~49_sumout\,
	cout => \freq|Add0~50\);

-- Location: LABCELL_X47_Y5_N48
\freq|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \freq|Add0~61_sumout\ = SUM(( \freq|iterations\(6) ) + ( GND ) + ( \freq|Add0~58\ ))
-- \freq|Add0~62\ = CARRY(( \freq|iterations\(6) ) + ( GND ) + ( \freq|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \freq|ALT_INV_iterations\(6),
	cin => \freq|Add0~58\,
	sumout => \freq|Add0~61_sumout\,
	cout => \freq|Add0~62\);

-- Location: LABCELL_X47_Y5_N51
\freq|Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \freq|Add0~85_sumout\ = SUM(( \freq|iterations\(7) ) + ( GND ) + ( \freq|Add0~62\ ))
-- \freq|Add0~86\ = CARRY(( \freq|iterations\(7) ) + ( GND ) + ( \freq|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \freq|ALT_INV_iterations\(7),
	cin => \freq|Add0~62\,
	sumout => \freq|Add0~85_sumout\,
	cout => \freq|Add0~86\);

-- Location: FF_X47_Y5_N53
\freq|iterations[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \freq|Add0~85_sumout\,
	sclr => \freq|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq|iterations\(7));

-- Location: FF_X47_Y5_N34
\freq|iterations[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \freq|Add0~93_sumout\,
	sclr => \freq|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq|iterations\(1));

-- Location: LABCELL_X47_Y5_N54
\freq|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \freq|Add0~45_sumout\ = SUM(( \freq|iterations\(8) ) + ( GND ) + ( \freq|Add0~86\ ))
-- \freq|Add0~46\ = CARRY(( \freq|iterations\(8) ) + ( GND ) + ( \freq|Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \freq|ALT_INV_iterations\(8),
	cin => \freq|Add0~86\,
	sumout => \freq|Add0~45_sumout\,
	cout => \freq|Add0~46\);

-- Location: FF_X47_Y5_N56
\freq|iterations[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \freq|Add0~45_sumout\,
	sclr => \freq|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq|iterations\(8));

-- Location: LABCELL_X47_Y5_N57
\freq|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \freq|Add0~9_sumout\ = SUM(( \freq|iterations\(9) ) + ( GND ) + ( \freq|Add0~46\ ))
-- \freq|Add0~10\ = CARRY(( \freq|iterations\(9) ) + ( GND ) + ( \freq|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \freq|ALT_INV_iterations\(9),
	cin => \freq|Add0~46\,
	sumout => \freq|Add0~9_sumout\,
	cout => \freq|Add0~10\);

-- Location: FF_X47_Y5_N58
\freq|iterations[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \freq|Add0~9_sumout\,
	sclr => \freq|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq|iterations\(9));

-- Location: LABCELL_X47_Y4_N0
\freq|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \freq|Add0~65_sumout\ = SUM(( \freq|iterations\(10) ) + ( GND ) + ( \freq|Add0~10\ ))
-- \freq|Add0~66\ = CARRY(( \freq|iterations\(10) ) + ( GND ) + ( \freq|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \freq|ALT_INV_iterations\(10),
	cin => \freq|Add0~10\,
	sumout => \freq|Add0~65_sumout\,
	cout => \freq|Add0~66\);

-- Location: FF_X47_Y4_N2
\freq|iterations[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \freq|Add0~65_sumout\,
	sclr => \freq|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq|iterations\(10));

-- Location: LABCELL_X47_Y4_N3
\freq|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \freq|Add0~69_sumout\ = SUM(( \freq|iterations[11]~DUPLICATE_q\ ) + ( GND ) + ( \freq|Add0~66\ ))
-- \freq|Add0~70\ = CARRY(( \freq|iterations[11]~DUPLICATE_q\ ) + ( GND ) + ( \freq|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \freq|ALT_INV_iterations[11]~DUPLICATE_q\,
	cin => \freq|Add0~66\,
	sumout => \freq|Add0~69_sumout\,
	cout => \freq|Add0~70\);

-- Location: FF_X47_Y4_N5
\freq|iterations[11]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \freq|Add0~69_sumout\,
	sclr => \freq|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq|iterations[11]~DUPLICATE_q\);

-- Location: LABCELL_X47_Y4_N6
\freq|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \freq|Add0~73_sumout\ = SUM(( \freq|iterations\(12) ) + ( GND ) + ( \freq|Add0~70\ ))
-- \freq|Add0~74\ = CARRY(( \freq|iterations\(12) ) + ( GND ) + ( \freq|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \freq|ALT_INV_iterations\(12),
	cin => \freq|Add0~70\,
	sumout => \freq|Add0~73_sumout\,
	cout => \freq|Add0~74\);

-- Location: FF_X47_Y4_N7
\freq|iterations[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \freq|Add0~73_sumout\,
	sclr => \freq|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq|iterations\(12));

-- Location: LABCELL_X47_Y4_N9
\freq|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \freq|Add0~5_sumout\ = SUM(( \freq|iterations\(13) ) + ( GND ) + ( \freq|Add0~74\ ))
-- \freq|Add0~6\ = CARRY(( \freq|iterations\(13) ) + ( GND ) + ( \freq|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \freq|ALT_INV_iterations\(13),
	cin => \freq|Add0~74\,
	sumout => \freq|Add0~5_sumout\,
	cout => \freq|Add0~6\);

-- Location: FF_X47_Y4_N11
\freq|iterations[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \freq|Add0~5_sumout\,
	sclr => \freq|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq|iterations\(13));

-- Location: LABCELL_X47_Y4_N12
\freq|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \freq|Add0~41_sumout\ = SUM(( \freq|iterations\(14) ) + ( GND ) + ( \freq|Add0~6\ ))
-- \freq|Add0~42\ = CARRY(( \freq|iterations\(14) ) + ( GND ) + ( \freq|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \freq|ALT_INV_iterations\(14),
	cin => \freq|Add0~6\,
	sumout => \freq|Add0~41_sumout\,
	cout => \freq|Add0~42\);

-- Location: FF_X47_Y4_N14
\freq|iterations[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \freq|Add0~41_sumout\,
	sclr => \freq|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq|iterations\(14));

-- Location: LABCELL_X47_Y4_N15
\freq|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \freq|Add0~37_sumout\ = SUM(( \freq|iterations\(15) ) + ( GND ) + ( \freq|Add0~42\ ))
-- \freq|Add0~38\ = CARRY(( \freq|iterations\(15) ) + ( GND ) + ( \freq|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \freq|ALT_INV_iterations\(15),
	cin => \freq|Add0~42\,
	sumout => \freq|Add0~37_sumout\,
	cout => \freq|Add0~38\);

-- Location: FF_X47_Y4_N17
\freq|iterations[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \freq|Add0~37_sumout\,
	sclr => \freq|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq|iterations\(15));

-- Location: LABCELL_X47_Y4_N18
\freq|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \freq|Add0~53_sumout\ = SUM(( \freq|iterations\(16) ) + ( GND ) + ( \freq|Add0~38\ ))
-- \freq|Add0~54\ = CARRY(( \freq|iterations\(16) ) + ( GND ) + ( \freq|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \freq|ALT_INV_iterations\(16),
	cin => \freq|Add0~38\,
	sumout => \freq|Add0~53_sumout\,
	cout => \freq|Add0~54\);

-- Location: FF_X47_Y4_N20
\freq|iterations[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \freq|Add0~53_sumout\,
	sclr => \freq|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq|iterations\(16));

-- Location: LABCELL_X47_Y4_N21
\freq|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \freq|Add0~33_sumout\ = SUM(( \freq|iterations\(17) ) + ( GND ) + ( \freq|Add0~54\ ))
-- \freq|Add0~34\ = CARRY(( \freq|iterations\(17) ) + ( GND ) + ( \freq|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \freq|ALT_INV_iterations\(17),
	cin => \freq|Add0~54\,
	sumout => \freq|Add0~33_sumout\,
	cout => \freq|Add0~34\);

-- Location: FF_X47_Y4_N23
\freq|iterations[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \freq|Add0~33_sumout\,
	sclr => \freq|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq|iterations\(17));

-- Location: LABCELL_X47_Y4_N24
\freq|Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \freq|Add0~97_sumout\ = SUM(( \freq|iterations\(18) ) + ( GND ) + ( \freq|Add0~34\ ))
-- \freq|Add0~98\ = CARRY(( \freq|iterations\(18) ) + ( GND ) + ( \freq|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \freq|ALT_INV_iterations\(18),
	cin => \freq|Add0~34\,
	sumout => \freq|Add0~97_sumout\,
	cout => \freq|Add0~98\);

-- Location: FF_X47_Y4_N26
\freq|iterations[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \freq|Add0~97_sumout\,
	sclr => \freq|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq|iterations\(18));

-- Location: LABCELL_X47_Y4_N27
\freq|Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \freq|Add0~89_sumout\ = SUM(( \freq|iterations\(19) ) + ( GND ) + ( \freq|Add0~98\ ))
-- \freq|Add0~90\ = CARRY(( \freq|iterations\(19) ) + ( GND ) + ( \freq|Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \freq|ALT_INV_iterations\(19),
	cin => \freq|Add0~98\,
	sumout => \freq|Add0~89_sumout\,
	cout => \freq|Add0~90\);

-- Location: FF_X47_Y4_N28
\freq|iterations[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \freq|Add0~89_sumout\,
	sclr => \freq|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq|iterations\(19));

-- Location: LABCELL_X47_Y4_N30
\freq|Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \freq|Add0~81_sumout\ = SUM(( \freq|iterations\(20) ) + ( GND ) + ( \freq|Add0~90\ ))
-- \freq|Add0~82\ = CARRY(( \freq|iterations\(20) ) + ( GND ) + ( \freq|Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \freq|ALT_INV_iterations\(20),
	cin => \freq|Add0~90\,
	sumout => \freq|Add0~81_sumout\,
	cout => \freq|Add0~82\);

-- Location: FF_X47_Y4_N31
\freq|iterations[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \freq|Add0~81_sumout\,
	sclr => \freq|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq|iterations\(20));

-- Location: LABCELL_X47_Y5_N6
\freq|Equal0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \freq|Equal0~4_combout\ = ( \freq|iterations\(19) & ( !\freq|iterations\(18) & ( (!\freq|iterations\(7) & (\freq|iterations\(1) & (\freq|iterations\(2) & \freq|iterations\(20)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000001000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \freq|ALT_INV_iterations\(7),
	datab => \freq|ALT_INV_iterations\(1),
	datac => \freq|ALT_INV_iterations\(2),
	datad => \freq|ALT_INV_iterations\(20),
	datae => \freq|ALT_INV_iterations\(19),
	dataf => \freq|ALT_INV_iterations\(18),
	combout => \freq|Equal0~4_combout\);

-- Location: LABCELL_X47_Y4_N33
\freq|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \freq|Add0~77_sumout\ = SUM(( \freq|iterations\(21) ) + ( GND ) + ( \freq|Add0~82\ ))
-- \freq|Add0~78\ = CARRY(( \freq|iterations\(21) ) + ( GND ) + ( \freq|Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \freq|ALT_INV_iterations\(21),
	cin => \freq|Add0~82\,
	sumout => \freq|Add0~77_sumout\,
	cout => \freq|Add0~78\);

-- Location: FF_X47_Y4_N35
\freq|iterations[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \freq|Add0~77_sumout\,
	sclr => \freq|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq|iterations\(21));

-- Location: LABCELL_X47_Y4_N36
\freq|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \freq|Add0~21_sumout\ = SUM(( \freq|iterations\(22) ) + ( GND ) + ( \freq|Add0~78\ ))
-- \freq|Add0~22\ = CARRY(( \freq|iterations\(22) ) + ( GND ) + ( \freq|Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \freq|ALT_INV_iterations\(22),
	cin => \freq|Add0~78\,
	sumout => \freq|Add0~21_sumout\,
	cout => \freq|Add0~22\);

-- Location: FF_X47_Y4_N38
\freq|iterations[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \freq|Add0~21_sumout\,
	sclr => \freq|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq|iterations\(22));

-- Location: LABCELL_X47_Y4_N39
\freq|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \freq|Add0~25_sumout\ = SUM(( \freq|iterations\(23) ) + ( GND ) + ( \freq|Add0~22\ ))
-- \freq|Add0~26\ = CARRY(( \freq|iterations\(23) ) + ( GND ) + ( \freq|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \freq|ALT_INV_iterations\(23),
	cin => \freq|Add0~22\,
	sumout => \freq|Add0~25_sumout\,
	cout => \freq|Add0~26\);

-- Location: FF_X47_Y4_N40
\freq|iterations[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \freq|Add0~25_sumout\,
	sclr => \freq|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq|iterations\(23));

-- Location: LABCELL_X47_Y4_N42
\freq|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \freq|Add0~29_sumout\ = SUM(( \freq|iterations\(24) ) + ( GND ) + ( \freq|Add0~26\ ))
-- \freq|Add0~30\ = CARRY(( \freq|iterations\(24) ) + ( GND ) + ( \freq|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \freq|ALT_INV_iterations\(24),
	cin => \freq|Add0~26\,
	sumout => \freq|Add0~29_sumout\,
	cout => \freq|Add0~30\);

-- Location: FF_X47_Y4_N43
\freq|iterations[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \freq|Add0~29_sumout\,
	sclr => \freq|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq|iterations\(24));

-- Location: LABCELL_X47_Y4_N45
\freq|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \freq|Add0~1_sumout\ = SUM(( \freq|iterations\(25) ) + ( GND ) + ( \freq|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \freq|ALT_INV_iterations\(25),
	cin => \freq|Add0~30\,
	sumout => \freq|Add0~1_sumout\);

-- Location: FF_X47_Y4_N47
\freq|iterations[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \freq|Add0~1_sumout\,
	sclr => \freq|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq|iterations\(25));

-- Location: LABCELL_X47_Y4_N48
\freq|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \freq|Equal0~0_combout\ = ( \freq|iterations\(25) & ( \freq|iterations\(13) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \freq|ALT_INV_iterations\(25),
	dataf => \freq|ALT_INV_iterations\(13),
	combout => \freq|Equal0~0_combout\);

-- Location: LABCELL_X47_Y4_N54
\freq|Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \freq|Equal0~2_combout\ = ( \freq|iterations\(0) & ( !\freq|iterations\(8) & ( (!\freq|iterations\(16) & (\freq|iterations\(14) & (\freq|iterations\(17) & \freq|iterations\(15)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000001000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \freq|ALT_INV_iterations\(16),
	datab => \freq|ALT_INV_iterations\(14),
	datac => \freq|ALT_INV_iterations\(17),
	datad => \freq|ALT_INV_iterations\(15),
	datae => \freq|ALT_INV_iterations\(0),
	dataf => \freq|ALT_INV_iterations\(8),
	combout => \freq|Equal0~2_combout\);

-- Location: FF_X47_Y5_N44
\freq|iterations[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \freq|Add0~17_sumout\,
	sclr => \freq|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq|iterations\(4));

-- Location: LABCELL_X47_Y5_N18
\freq|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \freq|Equal0~1_combout\ = ( \freq|iterations\(23) & ( !\freq|iterations\(24) & ( (\freq|iterations\(4) & (\freq|iterations\(3) & (!\freq|iterations\(9) & \freq|iterations\(22)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000001000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \freq|ALT_INV_iterations\(4),
	datab => \freq|ALT_INV_iterations\(3),
	datac => \freq|ALT_INV_iterations\(9),
	datad => \freq|ALT_INV_iterations\(22),
	datae => \freq|ALT_INV_iterations\(23),
	dataf => \freq|ALT_INV_iterations\(24),
	combout => \freq|Equal0~1_combout\);

-- Location: LABCELL_X47_Y5_N12
\freq|Equal0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \freq|Equal0~5_combout\ = ( \freq|Equal0~2_combout\ & ( \freq|Equal0~1_combout\ & ( (\freq|Equal0~4_combout\ & (\freq|Equal0~3_combout\ & \freq|Equal0~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \freq|ALT_INV_Equal0~4_combout\,
	datac => \freq|ALT_INV_Equal0~3_combout\,
	datad => \freq|ALT_INV_Equal0~0_combout\,
	datae => \freq|ALT_INV_Equal0~2_combout\,
	dataf => \freq|ALT_INV_Equal0~1_combout\,
	combout => \freq|Equal0~5_combout\);

-- Location: FF_X47_Y5_N32
\freq|iterations[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \freq|Add0~49_sumout\,
	sclr => \freq|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq|iterations\(0));

-- Location: LABCELL_X47_Y5_N33
\freq|Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \freq|Add0~93_sumout\ = SUM(( \freq|iterations[1]~DUPLICATE_q\ ) + ( GND ) + ( \freq|Add0~50\ ))
-- \freq|Add0~94\ = CARRY(( \freq|iterations[1]~DUPLICATE_q\ ) + ( GND ) + ( \freq|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \freq|ALT_INV_iterations[1]~DUPLICATE_q\,
	cin => \freq|Add0~50\,
	sumout => \freq|Add0~93_sumout\,
	cout => \freq|Add0~94\);

-- Location: FF_X47_Y5_N35
\freq|iterations[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \freq|Add0~93_sumout\,
	sclr => \freq|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq|iterations[1]~DUPLICATE_q\);

-- Location: LABCELL_X47_Y5_N36
\freq|Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \freq|Add0~101_sumout\ = SUM(( \freq|iterations\(2) ) + ( GND ) + ( \freq|Add0~94\ ))
-- \freq|Add0~102\ = CARRY(( \freq|iterations\(2) ) + ( GND ) + ( \freq|Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \freq|ALT_INV_iterations\(2),
	cin => \freq|Add0~94\,
	sumout => \freq|Add0~101_sumout\,
	cout => \freq|Add0~102\);

-- Location: FF_X47_Y5_N38
\freq|iterations[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \freq|Add0~101_sumout\,
	sclr => \freq|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq|iterations\(2));

-- Location: LABCELL_X47_Y5_N39
\freq|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \freq|Add0~13_sumout\ = SUM(( \freq|iterations\(3) ) + ( GND ) + ( \freq|Add0~102\ ))
-- \freq|Add0~14\ = CARRY(( \freq|iterations\(3) ) + ( GND ) + ( \freq|Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \freq|ALT_INV_iterations\(3),
	cin => \freq|Add0~102\,
	sumout => \freq|Add0~13_sumout\,
	cout => \freq|Add0~14\);

-- Location: FF_X47_Y5_N41
\freq|iterations[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \freq|Add0~13_sumout\,
	sclr => \freq|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq|iterations\(3));

-- Location: LABCELL_X47_Y5_N42
\freq|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \freq|Add0~17_sumout\ = SUM(( \freq|iterations[4]~DUPLICATE_q\ ) + ( GND ) + ( \freq|Add0~14\ ))
-- \freq|Add0~18\ = CARRY(( \freq|iterations[4]~DUPLICATE_q\ ) + ( GND ) + ( \freq|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \freq|ALT_INV_iterations[4]~DUPLICATE_q\,
	cin => \freq|Add0~14\,
	sumout => \freq|Add0~17_sumout\,
	cout => \freq|Add0~18\);

-- Location: FF_X47_Y5_N43
\freq|iterations[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \freq|Add0~17_sumout\,
	sclr => \freq|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq|iterations[4]~DUPLICATE_q\);

-- Location: LABCELL_X47_Y5_N45
\freq|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \freq|Add0~57_sumout\ = SUM(( \freq|iterations\(5) ) + ( GND ) + ( \freq|Add0~18\ ))
-- \freq|Add0~58\ = CARRY(( \freq|iterations\(5) ) + ( GND ) + ( \freq|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \freq|ALT_INV_iterations\(5),
	cin => \freq|Add0~18\,
	sumout => \freq|Add0~57_sumout\,
	cout => \freq|Add0~58\);

-- Location: FF_X47_Y5_N47
\freq|iterations[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \freq|Add0~57_sumout\,
	sclr => \freq|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq|iterations\(5));

-- Location: FF_X47_Y5_N50
\freq|iterations[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \freq|Add0~61_sumout\,
	sclr => \freq|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq|iterations\(6));

-- Location: FF_X47_Y4_N4
\freq|iterations[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \freq|Add0~69_sumout\,
	sclr => \freq|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq|iterations\(11));

-- Location: LABCELL_X47_Y5_N0
\freq|Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \freq|Equal0~3_combout\ = ( \freq|iterations\(21) & ( \freq|iterations\(12) & ( (\freq|iterations\(6) & (\freq|iterations\(5) & (!\freq|iterations\(11) & !\freq|iterations\(10)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \freq|ALT_INV_iterations\(6),
	datab => \freq|ALT_INV_iterations\(5),
	datac => \freq|ALT_INV_iterations\(11),
	datad => \freq|ALT_INV_iterations\(10),
	datae => \freq|ALT_INV_iterations\(21),
	dataf => \freq|ALT_INV_iterations\(12),
	combout => \freq|Equal0~3_combout\);

-- Location: LABCELL_X47_Y5_N24
\freq|local_out~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \freq|local_out~0_combout\ = ( \freq|Equal0~2_combout\ & ( \freq|local_out~q\ & ( (!\freq|Equal0~3_combout\) # ((!\freq|Equal0~4_combout\) # ((!\freq|Equal0~1_combout\) # (!\freq|Equal0~0_combout\))) ) ) ) # ( !\freq|Equal0~2_combout\ & ( 
-- \freq|local_out~q\ ) ) # ( \freq|Equal0~2_combout\ & ( !\freq|local_out~q\ & ( (\freq|Equal0~3_combout\ & (\freq|Equal0~4_combout\ & (\freq|Equal0~1_combout\ & \freq|Equal0~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000111111111111111111111111111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \freq|ALT_INV_Equal0~3_combout\,
	datab => \freq|ALT_INV_Equal0~4_combout\,
	datac => \freq|ALT_INV_Equal0~1_combout\,
	datad => \freq|ALT_INV_Equal0~0_combout\,
	datae => \freq|ALT_INV_Equal0~2_combout\,
	dataf => \freq|ALT_INV_local_out~q\,
	combout => \freq|local_out~0_combout\);

-- Location: FF_X47_Y5_N29
\freq|local_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \freq|local_out~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq|local_out~q\);

-- Location: MLABCELL_X49_Y3_N0
\uart_comm|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart_comm|Add0~33_sumout\ = SUM(( \uart_comm|count_baud\(0) ) + ( VCC ) + ( !VCC ))
-- \uart_comm|Add0~34\ = CARRY(( \uart_comm|count_baud\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \uart_comm|ALT_INV_count_baud\(0),
	cin => GND,
	sumout => \uart_comm|Add0~33_sumout\,
	cout => \uart_comm|Add0~34\);

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

-- Location: FF_X49_Y3_N1
\uart_comm|count_baud[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \uart_comm|Add0~33_sumout\,
	clrn => \reset~input_o\,
	sclr => \uart_comm|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_comm|count_baud\(0));

-- Location: MLABCELL_X49_Y3_N3
\uart_comm|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart_comm|Add0~29_sumout\ = SUM(( \uart_comm|count_baud\(1) ) + ( GND ) + ( \uart_comm|Add0~34\ ))
-- \uart_comm|Add0~30\ = CARRY(( \uart_comm|count_baud\(1) ) + ( GND ) + ( \uart_comm|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \uart_comm|ALT_INV_count_baud\(1),
	cin => \uart_comm|Add0~34\,
	sumout => \uart_comm|Add0~29_sumout\,
	cout => \uart_comm|Add0~30\);

-- Location: FF_X49_Y3_N5
\uart_comm|count_baud[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \uart_comm|Add0~29_sumout\,
	clrn => \reset~input_o\,
	sclr => \uart_comm|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_comm|count_baud\(1));

-- Location: MLABCELL_X49_Y3_N6
\uart_comm|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart_comm|Add0~25_sumout\ = SUM(( \uart_comm|count_baud\(2) ) + ( GND ) + ( \uart_comm|Add0~30\ ))
-- \uart_comm|Add0~26\ = CARRY(( \uart_comm|count_baud\(2) ) + ( GND ) + ( \uart_comm|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \uart_comm|ALT_INV_count_baud\(2),
	cin => \uart_comm|Add0~30\,
	sumout => \uart_comm|Add0~25_sumout\,
	cout => \uart_comm|Add0~26\);

-- Location: FF_X49_Y3_N8
\uart_comm|count_baud[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \uart_comm|Add0~25_sumout\,
	clrn => \reset~input_o\,
	sclr => \uart_comm|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_comm|count_baud\(2));

-- Location: MLABCELL_X49_Y3_N9
\uart_comm|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart_comm|Add0~21_sumout\ = SUM(( \uart_comm|count_baud\(3) ) + ( GND ) + ( \uart_comm|Add0~26\ ))
-- \uart_comm|Add0~22\ = CARRY(( \uart_comm|count_baud\(3) ) + ( GND ) + ( \uart_comm|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \uart_comm|ALT_INV_count_baud\(3),
	cin => \uart_comm|Add0~26\,
	sumout => \uart_comm|Add0~21_sumout\,
	cout => \uart_comm|Add0~22\);

-- Location: FF_X49_Y3_N11
\uart_comm|count_baud[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \uart_comm|Add0~21_sumout\,
	clrn => \reset~input_o\,
	sclr => \uart_comm|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_comm|count_baud\(3));

-- Location: MLABCELL_X49_Y3_N12
\uart_comm|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart_comm|Add0~17_sumout\ = SUM(( \uart_comm|count_baud\(4) ) + ( GND ) + ( \uart_comm|Add0~22\ ))
-- \uart_comm|Add0~18\ = CARRY(( \uart_comm|count_baud\(4) ) + ( GND ) + ( \uart_comm|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \uart_comm|ALT_INV_count_baud\(4),
	cin => \uart_comm|Add0~22\,
	sumout => \uart_comm|Add0~17_sumout\,
	cout => \uart_comm|Add0~18\);

-- Location: FF_X49_Y3_N13
\uart_comm|count_baud[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \uart_comm|Add0~17_sumout\,
	clrn => \reset~input_o\,
	sclr => \uart_comm|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_comm|count_baud\(4));

-- Location: MLABCELL_X49_Y3_N15
\uart_comm|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart_comm|Add0~13_sumout\ = SUM(( \uart_comm|count_baud\(5) ) + ( GND ) + ( \uart_comm|Add0~18\ ))
-- \uart_comm|Add0~14\ = CARRY(( \uart_comm|count_baud\(5) ) + ( GND ) + ( \uart_comm|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \uart_comm|ALT_INV_count_baud\(5),
	cin => \uart_comm|Add0~18\,
	sumout => \uart_comm|Add0~13_sumout\,
	cout => \uart_comm|Add0~14\);

-- Location: FF_X49_Y3_N17
\uart_comm|count_baud[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \uart_comm|Add0~13_sumout\,
	clrn => \reset~input_o\,
	sclr => \uart_comm|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_comm|count_baud\(5));

-- Location: MLABCELL_X49_Y3_N18
\uart_comm|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart_comm|Add0~9_sumout\ = SUM(( \uart_comm|count_baud\(6) ) + ( GND ) + ( \uart_comm|Add0~14\ ))
-- \uart_comm|Add0~10\ = CARRY(( \uart_comm|count_baud\(6) ) + ( GND ) + ( \uart_comm|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \uart_comm|ALT_INV_count_baud\(6),
	cin => \uart_comm|Add0~14\,
	sumout => \uart_comm|Add0~9_sumout\,
	cout => \uart_comm|Add0~10\);

-- Location: FF_X49_Y3_N20
\uart_comm|count_baud[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \uart_comm|Add0~9_sumout\,
	clrn => \reset~input_o\,
	sclr => \uart_comm|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_comm|count_baud\(6));

-- Location: MLABCELL_X49_Y3_N21
\uart_comm|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart_comm|Add0~5_sumout\ = SUM(( \uart_comm|count_baud\(7) ) + ( GND ) + ( \uart_comm|Add0~10\ ))
-- \uart_comm|Add0~6\ = CARRY(( \uart_comm|count_baud\(7) ) + ( GND ) + ( \uart_comm|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \uart_comm|ALT_INV_count_baud\(7),
	cin => \uart_comm|Add0~10\,
	sumout => \uart_comm|Add0~5_sumout\,
	cout => \uart_comm|Add0~6\);

-- Location: FF_X49_Y3_N23
\uart_comm|count_baud[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \uart_comm|Add0~5_sumout\,
	clrn => \reset~input_o\,
	sclr => \uart_comm|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_comm|count_baud\(7));

-- Location: MLABCELL_X49_Y3_N24
\uart_comm|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart_comm|Add0~1_sumout\ = SUM(( \uart_comm|count_baud\(8) ) + ( GND ) + ( \uart_comm|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \uart_comm|ALT_INV_count_baud\(8),
	cin => \uart_comm|Add0~6\,
	sumout => \uart_comm|Add0~1_sumout\);

-- Location: FF_X49_Y3_N26
\uart_comm|count_baud[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \uart_comm|Add0~1_sumout\,
	clrn => \reset~input_o\,
	sclr => \uart_comm|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_comm|count_baud\(8));

-- Location: MLABCELL_X49_Y3_N36
\uart_comm|LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart_comm|LessThan0~0_combout\ = ( !\uart_comm|count_baud\(1) & ( !\uart_comm|count_baud\(3) & ( (!\uart_comm|count_baud\(0) & !\uart_comm|count_baud\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \uart_comm|ALT_INV_count_baud\(0),
	datad => \uart_comm|ALT_INV_count_baud\(2),
	datae => \uart_comm|ALT_INV_count_baud\(1),
	dataf => \uart_comm|ALT_INV_count_baud\(3),
	combout => \uart_comm|LessThan0~0_combout\);

-- Location: MLABCELL_X49_Y3_N30
\uart_comm|LessThan0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart_comm|LessThan0~1_combout\ = ( \uart_comm|LessThan0~0_combout\ & ( \uart_comm|count_baud\(6) & ( (\uart_comm|count_baud\(7) & \uart_comm|count_baud\(8)) ) ) ) # ( !\uart_comm|LessThan0~0_combout\ & ( \uart_comm|count_baud\(6) & ( 
-- (\uart_comm|count_baud\(7) & \uart_comm|count_baud\(8)) ) ) ) # ( !\uart_comm|LessThan0~0_combout\ & ( !\uart_comm|count_baud\(6) & ( (\uart_comm|count_baud\(7) & (\uart_comm|count_baud\(4) & (\uart_comm|count_baud\(8) & \uart_comm|count_baud\(5)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000000000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uart_comm|ALT_INV_count_baud\(7),
	datab => \uart_comm|ALT_INV_count_baud\(4),
	datac => \uart_comm|ALT_INV_count_baud\(8),
	datad => \uart_comm|ALT_INV_count_baud\(5),
	datae => \uart_comm|ALT_INV_LessThan0~0_combout\,
	dataf => \uart_comm|ALT_INV_count_baud\(6),
	combout => \uart_comm|LessThan0~1_combout\);

-- Location: MLABCELL_X49_Y3_N54
\uart_comm|count_os~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart_comm|count_os~2_combout\ = ( \uart_comm|count_os\(1) & ( !\uart_comm|LessThan0~1_combout\ & ( (!\uart_comm|count_os\(0) & ((!\uart_comm|count_os\(4)) # (!\uart_comm|count_os\(3)))) ) ) ) # ( !\uart_comm|count_os\(1) & ( 
-- !\uart_comm|LessThan0~1_combout\ & ( (\uart_comm|count_os\(0) & ((!\uart_comm|count_os\(4)) # ((!\uart_comm|count_os\(2)) # (!\uart_comm|count_os\(3))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110010110011001000100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uart_comm|ALT_INV_count_os\(4),
	datab => \uart_comm|ALT_INV_count_os\(0),
	datac => \uart_comm|ALT_INV_count_os\(2),
	datad => \uart_comm|ALT_INV_count_os\(3),
	datae => \uart_comm|ALT_INV_count_os\(1),
	dataf => \uart_comm|ALT_INV_LessThan0~1_combout\,
	combout => \uart_comm|count_os~2_combout\);

-- Location: FF_X49_Y3_N56
\uart_comm|count_os[1]\ : dffeas
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
	q => \uart_comm|count_os\(1));

-- Location: FF_X49_Y3_N49
\uart_comm|count_os[4]~DUPLICATE\ : dffeas
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
	q => \uart_comm|count_os[4]~DUPLICATE_q\);

-- Location: MLABCELL_X49_Y5_N48
\uart_comm|count_os~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart_comm|count_os~4_combout\ = ( \uart_comm|count_os\(0) & ( \uart_comm|count_os\(2) & ( \uart_comm|LessThan0~1_combout\ ) ) ) # ( !\uart_comm|count_os\(0) & ( \uart_comm|count_os\(2) & ( ((!\uart_comm|count_os\(3)) # 
-- (!\uart_comm|count_os[4]~DUPLICATE_q\)) # (\uart_comm|LessThan0~1_combout\) ) ) ) # ( \uart_comm|count_os\(0) & ( !\uart_comm|count_os\(2) & ( \uart_comm|LessThan0~1_combout\ ) ) ) # ( !\uart_comm|count_os\(0) & ( !\uart_comm|count_os\(2) & ( 
-- ((!\uart_comm|count_os\(1)) # ((!\uart_comm|count_os\(3)) # (!\uart_comm|count_os[4]~DUPLICATE_q\))) # (\uart_comm|LessThan0~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111101010101010101010111111111111101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uart_comm|ALT_INV_LessThan0~1_combout\,
	datab => \uart_comm|ALT_INV_count_os\(1),
	datac => \uart_comm|ALT_INV_count_os\(3),
	datad => \uart_comm|ALT_INV_count_os[4]~DUPLICATE_q\,
	datae => \uart_comm|ALT_INV_count_os\(0),
	dataf => \uart_comm|ALT_INV_count_os\(2),
	combout => \uart_comm|count_os~4_combout\);

-- Location: FF_X49_Y5_N50
\uart_comm|count_os[0]\ : dffeas
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
	q => \uart_comm|count_os\(0));

-- Location: MLABCELL_X49_Y5_N42
\uart_comm|count_os~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart_comm|count_os~1_combout\ = ( \uart_comm|count_os\(2) & ( !\uart_comm|LessThan0~1_combout\ & ( (!\uart_comm|count_os\(0) & (((!\uart_comm|count_os\(3)) # (!\uart_comm|count_os[4]~DUPLICATE_q\)))) # (\uart_comm|count_os\(0) & (!\uart_comm|count_os\(1) 
-- & ((!\uart_comm|count_os\(3)) # (!\uart_comm|count_os[4]~DUPLICATE_q\)))) ) ) ) # ( !\uart_comm|count_os\(2) & ( !\uart_comm|LessThan0~1_combout\ & ( (\uart_comm|count_os\(0) & (\uart_comm|count_os\(1) & ((!\uart_comm|count_os\(3)) # 
-- (!\uart_comm|count_os[4]~DUPLICATE_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010000111011101110000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uart_comm|ALT_INV_count_os\(0),
	datab => \uart_comm|ALT_INV_count_os\(1),
	datac => \uart_comm|ALT_INV_count_os\(3),
	datad => \uart_comm|ALT_INV_count_os[4]~DUPLICATE_q\,
	datae => \uart_comm|ALT_INV_count_os\(2),
	dataf => \uart_comm|ALT_INV_LessThan0~1_combout\,
	combout => \uart_comm|count_os~1_combout\);

-- Location: FF_X49_Y5_N44
\uart_comm|count_os[2]\ : dffeas
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
	q => \uart_comm|count_os\(2));

-- Location: MLABCELL_X49_Y3_N48
\uart_comm|count_os~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart_comm|count_os~0_combout\ = ( \uart_comm|count_os\(4) & ( !\uart_comm|LessThan0~1_combout\ & ( (!\uart_comm|count_os\(3)) # ((!\uart_comm|count_os\(2) & !\uart_comm|count_os\(1))) ) ) ) # ( !\uart_comm|count_os\(4) & ( 
-- !\uart_comm|LessThan0~1_combout\ & ( (\uart_comm|count_os\(2) & (\uart_comm|count_os\(3) & (\uart_comm|count_os\(1) & \uart_comm|count_os\(0)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001111011001110110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uart_comm|ALT_INV_count_os\(2),
	datab => \uart_comm|ALT_INV_count_os\(3),
	datac => \uart_comm|ALT_INV_count_os\(1),
	datad => \uart_comm|ALT_INV_count_os\(0),
	datae => \uart_comm|ALT_INV_count_os\(4),
	dataf => \uart_comm|ALT_INV_LessThan0~1_combout\,
	combout => \uart_comm|count_os~0_combout\);

-- Location: FF_X49_Y3_N50
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

-- Location: MLABCELL_X49_Y3_N42
\uart_comm|count_os~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart_comm|count_os~3_combout\ = ( \uart_comm|count_os\(3) & ( !\uart_comm|LessThan0~1_combout\ & ( (!\uart_comm|count_os\(4) & ((!\uart_comm|count_os\(0)) # ((!\uart_comm|count_os\(1)) # (!\uart_comm|count_os\(2))))) # (\uart_comm|count_os\(4) & 
-- (((!\uart_comm|count_os\(1) & !\uart_comm|count_os\(2))))) ) ) ) # ( !\uart_comm|count_os\(3) & ( !\uart_comm|LessThan0~1_combout\ & ( (\uart_comm|count_os\(0) & (\uart_comm|count_os\(1) & \uart_comm|count_os\(2))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011111110101010100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uart_comm|ALT_INV_count_os\(4),
	datab => \uart_comm|ALT_INV_count_os\(0),
	datac => \uart_comm|ALT_INV_count_os\(1),
	datad => \uart_comm|ALT_INV_count_os\(2),
	datae => \uart_comm|ALT_INV_count_os\(3),
	dataf => \uart_comm|ALT_INV_LessThan0~1_combout\,
	combout => \uart_comm|count_os~3_combout\);

-- Location: FF_X49_Y3_N43
\uart_comm|count_os[3]\ : dffeas
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
	q => \uart_comm|count_os\(3));

-- Location: LABCELL_X48_Y3_N48
\uart_comm|LessThan1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart_comm|LessThan1~0_combout\ = ( !\uart_comm|LessThan0~1_combout\ & ( (\uart_comm|count_os\(3) & (\uart_comm|count_os\(4) & ((\uart_comm|count_os\(2)) # (\uart_comm|count_os\(1))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010101000000000001010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uart_comm|ALT_INV_count_os\(3),
	datab => \uart_comm|ALT_INV_count_os\(1),
	datac => \uart_comm|ALT_INV_count_os\(2),
	datad => \uart_comm|ALT_INV_count_os\(4),
	dataf => \uart_comm|ALT_INV_LessThan0~1_combout\,
	combout => \uart_comm|LessThan1~0_combout\);

-- Location: FF_X48_Y3_N50
\uart_comm|os_pulse\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \uart_comm|LessThan1~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_comm|os_pulse~q\);

-- Location: LABCELL_X48_Y3_N42
\uart_comm|os_count[3]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart_comm|os_count[3]~1_combout\ = ( \uart_comm|os_pulse~q\ & ( !\uart_comm|rx_state.ready_st~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \uart_comm|ALT_INV_rx_state.ready_st~q\,
	dataf => \uart_comm|ALT_INV_os_pulse~q\,
	combout => \uart_comm|os_count[3]~1_combout\);

-- Location: LABCELL_X48_Y3_N21
\uart_comm|Selector10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart_comm|Selector10~0_combout\ = ( \uart_comm|rx_state.receive~q\ & ( !\uart_comm|rx_count\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \uart_comm|ALT_INV_rx_count\(0),
	dataf => \uart_comm|ALT_INV_rx_state.receive~q\,
	combout => \uart_comm|Selector10~0_combout\);

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

-- Location: LABCELL_X48_Y3_N36
\uart_comm|rx_count[3]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart_comm|rx_count[3]~2_combout\ = ( \uart_comm|rx_state.idle~q\ & ( \uart_comm|rx_buffer[4]~0_combout\ & ( (\uart_comm|os_pulse~q\ & !\uart_comm|rx_count\(3)) ) ) ) # ( !\uart_comm|rx_state.idle~q\ & ( \uart_comm|rx_buffer[4]~0_combout\ & ( 
-- (\uart_comm|os_pulse~q\ & ((!\uart_comm|rx_count\(3)) # ((\uart_comm|os_count\(3) & !\rx~input_o\)))) ) ) ) # ( !\uart_comm|rx_state.idle~q\ & ( !\uart_comm|rx_buffer[4]~0_combout\ & ( (\uart_comm|os_pulse~q\ & (\uart_comm|os_count\(3) & !\rx~input_o\)) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010000000000000000000001010101000100000101010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uart_comm|ALT_INV_os_pulse~q\,
	datab => \uart_comm|ALT_INV_os_count\(3),
	datac => \ALT_INV_rx~input_o\,
	datad => \uart_comm|ALT_INV_rx_count\(3),
	datae => \uart_comm|ALT_INV_rx_state.idle~q\,
	dataf => \uart_comm|ALT_INV_rx_buffer[4]~0_combout\,
	combout => \uart_comm|rx_count[3]~2_combout\);

-- Location: FF_X48_Y3_N23
\uart_comm|rx_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \uart_comm|Selector10~0_combout\,
	clrn => \reset~input_o\,
	ena => \uart_comm|rx_count[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_comm|rx_count\(0));

-- Location: LABCELL_X47_Y3_N6
\uart_comm|Selector9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart_comm|Selector9~0_combout\ = ( \uart_comm|rx_state.receive~q\ & ( \uart_comm|rx_count\(1) & ( !\uart_comm|rx_count\(0) ) ) ) # ( \uart_comm|rx_state.receive~q\ & ( !\uart_comm|rx_count\(1) & ( \uart_comm|rx_count\(0) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \uart_comm|ALT_INV_rx_count\(0),
	datae => \uart_comm|ALT_INV_rx_state.receive~q\,
	dataf => \uart_comm|ALT_INV_rx_count\(1),
	combout => \uart_comm|Selector9~0_combout\);

-- Location: FF_X48_Y3_N47
\uart_comm|rx_count[1]\ : dffeas
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
	q => \uart_comm|rx_count\(1));

-- Location: LABCELL_X47_Y3_N27
\uart_comm|Selector8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart_comm|Selector8~0_combout\ = ( \uart_comm|rx_state.receive~q\ & ( \uart_comm|rx_count\(2) & ( (!\uart_comm|rx_count\(1)) # (!\uart_comm|rx_count\(0)) ) ) ) # ( \uart_comm|rx_state.receive~q\ & ( !\uart_comm|rx_count\(2) & ( (\uart_comm|rx_count\(1) & 
-- \uart_comm|rx_count\(0)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000101010100000000000000001111111110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uart_comm|ALT_INV_rx_count\(1),
	datad => \uart_comm|ALT_INV_rx_count\(0),
	datae => \uart_comm|ALT_INV_rx_state.receive~q\,
	dataf => \uart_comm|ALT_INV_rx_count\(2),
	combout => \uart_comm|Selector8~0_combout\);

-- Location: FF_X48_Y3_N41
\uart_comm|rx_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \uart_comm|Selector8~0_combout\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \uart_comm|rx_count[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_comm|rx_count\(2));

-- Location: LABCELL_X47_Y3_N12
\uart_comm|rx_count[3]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart_comm|rx_count[3]~0_combout\ = ( \uart_comm|rx_count\(0) & ( \uart_comm|rx_count\(2) & ( (\uart_comm|rx_state.receive~q\ & (!\uart_comm|rx_count\(1) $ (!\uart_comm|rx_count\(3)))) ) ) ) # ( !\uart_comm|rx_count\(0) & ( \uart_comm|rx_count\(2) & ( 
-- (\uart_comm|rx_state.receive~q\ & \uart_comm|rx_count\(3)) ) ) ) # ( \uart_comm|rx_count\(0) & ( !\uart_comm|rx_count\(2) & ( (\uart_comm|rx_state.receive~q\ & \uart_comm|rx_count\(3)) ) ) ) # ( !\uart_comm|rx_count\(0) & ( !\uart_comm|rx_count\(2) & ( 
-- (\uart_comm|rx_state.receive~q\ & \uart_comm|rx_count\(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000011000000110001001000010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uart_comm|ALT_INV_rx_count\(1),
	datab => \uart_comm|ALT_INV_rx_state.receive~q\,
	datac => \uart_comm|ALT_INV_rx_count\(3),
	datae => \uart_comm|ALT_INV_rx_count\(0),
	dataf => \uart_comm|ALT_INV_rx_count\(2),
	combout => \uart_comm|rx_count[3]~0_combout\);

-- Location: LABCELL_X48_Y3_N6
\uart_comm|Selector6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart_comm|Selector6~0_combout\ = ( !\uart_comm|rx_state.idle~q\ & ( (\uart_comm|os_count\(3) & !\rx~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \uart_comm|ALT_INV_os_count\(3),
	datac => \ALT_INV_rx~input_o\,
	dataf => \uart_comm|ALT_INV_rx_state.idle~q\,
	combout => \uart_comm|Selector6~0_combout\);

-- Location: LABCELL_X48_Y3_N30
\uart_comm|rx_count[3]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart_comm|rx_count[3]~1_combout\ = ( \uart_comm|Selector6~0_combout\ & ( (!\uart_comm|os_pulse~q\ & (\uart_comm|rx_count\(3))) # (\uart_comm|os_pulse~q\ & ((\uart_comm|rx_count[3]~0_combout\))) ) ) # ( !\uart_comm|Selector6~0_combout\ & ( 
-- ((\uart_comm|rx_buffer[4]~0_combout\ & (\uart_comm|os_pulse~q\ & \uart_comm|rx_count[3]~0_combout\))) # (\uart_comm|rx_count\(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110111001100110011011100110000001111110011000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uart_comm|ALT_INV_rx_buffer[4]~0_combout\,
	datab => \uart_comm|ALT_INV_rx_count\(3),
	datac => \uart_comm|ALT_INV_os_pulse~q\,
	datad => \uart_comm|ALT_INV_rx_count[3]~0_combout\,
	dataf => \uart_comm|ALT_INV_Selector6~0_combout\,
	combout => \uart_comm|rx_count[3]~1_combout\);

-- Location: FF_X48_Y3_N32
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

-- Location: LABCELL_X48_Y3_N51
\uart_comm|Add2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart_comm|Add2~0_combout\ = ( \uart_comm|os_count\(0) & ( \uart_comm|os_count\(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \uart_comm|ALT_INV_os_count\(1),
	dataf => \uart_comm|ALT_INV_os_count\(0),
	combout => \uart_comm|Add2~0_combout\);

-- Location: LABCELL_X48_Y3_N57
\uart_comm|os_count[2]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart_comm|os_count[2]~3_combout\ = ( \uart_comm|os_count\(2) & ( \uart_comm|Add2~0_combout\ & ( (!\uart_comm|os_count[3]~1_combout\) # ((\uart_comm|rx_count\(3) & \uart_comm|rx_buffer[4]~0_combout\)) ) ) ) # ( !\uart_comm|os_count\(2) & ( 
-- \uart_comm|Add2~0_combout\ & ( (\uart_comm|os_count[3]~1_combout\ & ((!\uart_comm|os_count[3]~0_combout\ & ((!\uart_comm|rx_buffer[4]~0_combout\))) # (\uart_comm|os_count[3]~0_combout\ & (!\uart_comm|rx_count\(3) & \uart_comm|rx_buffer[4]~0_combout\)))) ) 
-- ) ) # ( \uart_comm|os_count\(2) & ( !\uart_comm|Add2~0_combout\ & ( (!\uart_comm|os_count[3]~1_combout\) # ((!\uart_comm|os_count[3]~0_combout\ & ((!\uart_comm|rx_buffer[4]~0_combout\) # (\uart_comm|rx_count\(3)))) # (\uart_comm|os_count[3]~0_combout\ & 
-- ((\uart_comm|rx_buffer[4]~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110101111011100001010000001001111000011110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uart_comm|ALT_INV_os_count[3]~0_combout\,
	datab => \uart_comm|ALT_INV_rx_count\(3),
	datac => \uart_comm|ALT_INV_os_count[3]~1_combout\,
	datad => \uart_comm|ALT_INV_rx_buffer[4]~0_combout\,
	datae => \uart_comm|ALT_INV_os_count\(2),
	dataf => \uart_comm|ALT_INV_Add2~0_combout\,
	combout => \uart_comm|os_count[2]~3_combout\);

-- Location: FF_X48_Y3_N59
\uart_comm|os_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \uart_comm|os_count[2]~3_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_comm|os_count\(2));

-- Location: LABCELL_X48_Y3_N27
\uart_comm|LessThan3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart_comm|LessThan3~0_combout\ = ( \uart_comm|os_count\(1) & ( (\uart_comm|os_count\(0) & \uart_comm|os_count\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uart_comm|ALT_INV_os_count\(0),
	datac => \uart_comm|ALT_INV_os_count\(2),
	dataf => \uart_comm|ALT_INV_os_count\(1),
	combout => \uart_comm|LessThan3~0_combout\);

-- Location: LABCELL_X48_Y3_N12
\uart_comm|os_count[3]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart_comm|os_count[3]~2_combout\ = ( \uart_comm|os_count\(3) & ( \uart_comm|LessThan3~0_combout\ & ( (!\uart_comm|os_count[3]~1_combout\) # ((\uart_comm|rx_count\(3) & \uart_comm|rx_state.receive~q\)) ) ) ) # ( !\uart_comm|os_count\(3) & ( 
-- \uart_comm|LessThan3~0_combout\ & ( (\uart_comm|os_count[3]~1_combout\ & !\uart_comm|os_count[3]~0_combout\) ) ) ) # ( \uart_comm|os_count\(3) & ( !\uart_comm|LessThan3~0_combout\ & ( (!\uart_comm|os_count[3]~1_combout\) # 
-- (!\uart_comm|os_count[3]~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110101111101001010000010100001010101010111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uart_comm|ALT_INV_os_count[3]~1_combout\,
	datab => \uart_comm|ALT_INV_rx_count\(3),
	datac => \uart_comm|ALT_INV_os_count[3]~0_combout\,
	datad => \uart_comm|ALT_INV_rx_state.receive~q\,
	datae => \uart_comm|ALT_INV_os_count\(3),
	dataf => \uart_comm|ALT_INV_LessThan3~0_combout\,
	combout => \uart_comm|os_count[3]~2_combout\);

-- Location: FF_X48_Y3_N14
\uart_comm|os_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \uart_comm|os_count[3]~2_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_comm|os_count\(3));

-- Location: LABCELL_X48_Y3_N0
\uart_comm|os_count[3]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart_comm|os_count[3]~0_combout\ = ( !\uart_comm|rx_state.idle~q\ & ( (\rx~input_o\) # (\uart_comm|os_count\(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100111111001111110011111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \uart_comm|ALT_INV_os_count\(3),
	datac => \ALT_INV_rx~input_o\,
	dataf => \uart_comm|ALT_INV_rx_state.idle~q\,
	combout => \uart_comm|os_count[3]~0_combout\);

-- Location: LABCELL_X48_Y3_N54
\uart_comm|os_count[1]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart_comm|os_count[1]~5_combout\ = ( \uart_comm|os_count\(1) & ( \uart_comm|os_count\(0) & ( (!\uart_comm|os_count[3]~1_combout\) # ((\uart_comm|rx_count\(3) & \uart_comm|rx_buffer[4]~0_combout\)) ) ) ) # ( !\uart_comm|os_count\(1) & ( 
-- \uart_comm|os_count\(0) & ( (\uart_comm|os_count[3]~1_combout\ & ((!\uart_comm|os_count[3]~0_combout\ & ((!\uart_comm|rx_buffer[4]~0_combout\))) # (\uart_comm|os_count[3]~0_combout\ & (!\uart_comm|rx_count\(3) & \uart_comm|rx_buffer[4]~0_combout\)))) ) ) 
-- ) # ( \uart_comm|os_count\(1) & ( !\uart_comm|os_count\(0) & ( (!\uart_comm|os_count[3]~1_combout\) # ((!\uart_comm|os_count[3]~0_combout\ & ((!\uart_comm|rx_buffer[4]~0_combout\) # (\uart_comm|rx_count\(3)))) # (\uart_comm|os_count[3]~0_combout\ & 
-- ((\uart_comm|rx_buffer[4]~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111010011100000000101001001111111100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uart_comm|ALT_INV_os_count[3]~0_combout\,
	datab => \uart_comm|ALT_INV_rx_count\(3),
	datac => \uart_comm|ALT_INV_rx_buffer[4]~0_combout\,
	datad => \uart_comm|ALT_INV_os_count[3]~1_combout\,
	datae => \uart_comm|ALT_INV_os_count\(1),
	dataf => \uart_comm|ALT_INV_os_count\(0),
	combout => \uart_comm|os_count[1]~5_combout\);

-- Location: FF_X48_Y3_N56
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

-- Location: LABCELL_X48_Y3_N18
\uart_comm|rx_buffer[4]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart_comm|rx_buffer[4]~0_combout\ = ( \uart_comm|os_count\(3) & ( (\uart_comm|os_count\(1) & (\uart_comm|rx_state.receive~q\ & (\uart_comm|os_count\(0) & \uart_comm|os_count\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uart_comm|ALT_INV_os_count\(1),
	datab => \uart_comm|ALT_INV_rx_state.receive~q\,
	datac => \uart_comm|ALT_INV_os_count\(0),
	datad => \uart_comm|ALT_INV_os_count\(2),
	dataf => \uart_comm|ALT_INV_os_count\(3),
	combout => \uart_comm|rx_buffer[4]~0_combout\);

-- Location: LABCELL_X48_Y3_N33
\uart_comm|os_count[0]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart_comm|os_count[0]~4_combout\ = ( \uart_comm|os_count[3]~1_combout\ & ( (!\uart_comm|rx_buffer[4]~0_combout\ & (((!\uart_comm|os_count[3]~0_combout\ & !\uart_comm|os_count\(0))))) # (\uart_comm|rx_buffer[4]~0_combout\ & ((!\uart_comm|rx_count\(3) & 
-- (\uart_comm|os_count[3]~0_combout\ & !\uart_comm|os_count\(0))) # (\uart_comm|rx_count\(3) & ((\uart_comm|os_count\(0)))))) ) ) # ( !\uart_comm|os_count[3]~1_combout\ & ( \uart_comm|os_count\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111110100100000100011010010000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uart_comm|ALT_INV_rx_buffer[4]~0_combout\,
	datab => \uart_comm|ALT_INV_rx_count\(3),
	datac => \uart_comm|ALT_INV_os_count[3]~0_combout\,
	datad => \uart_comm|ALT_INV_os_count\(0),
	dataf => \uart_comm|ALT_INV_os_count[3]~1_combout\,
	combout => \uart_comm|os_count[0]~4_combout\);

-- Location: FF_X48_Y3_N35
\uart_comm|os_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \uart_comm|os_count[0]~4_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_comm|os_count\(0));

-- Location: MLABCELL_X49_Y5_N12
\uart_comm|os_count[3]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart_comm|os_count[3]~6_combout\ = ( \uart_comm|os_count\(1) & ( \uart_comm|rx_count\(3) & ( (\uart_comm|rx_state.receive~q\ & (\uart_comm|os_count\(0) & (\uart_comm|os_count\(3) & \uart_comm|os_count\(2)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uart_comm|ALT_INV_rx_state.receive~q\,
	datab => \uart_comm|ALT_INV_os_count\(0),
	datac => \uart_comm|ALT_INV_os_count\(3),
	datad => \uart_comm|ALT_INV_os_count\(2),
	datae => \uart_comm|ALT_INV_os_count\(1),
	dataf => \uart_comm|ALT_INV_rx_count\(3),
	combout => \uart_comm|os_count[3]~6_combout\);

-- Location: FF_X49_Y5_N14
\uart_comm|rx_state.ready_st\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \uart_comm|os_count[3]~6_combout\,
	clrn => \reset~input_o\,
	ena => \uart_comm|os_pulse~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_comm|rx_state.ready_st~q\);

-- Location: LABCELL_X48_Y3_N45
\uart_comm|Selector5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart_comm|Selector5~0_combout\ = ( \uart_comm|rx_state.idle~q\ & ( !\uart_comm|rx_state.ready_st~q\ ) ) # ( !\uart_comm|rx_state.idle~q\ & ( (!\uart_comm|rx_state.ready_st~q\ & (!\rx~input_o\ & \uart_comm|os_count\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uart_comm|ALT_INV_rx_state.ready_st~q\,
	datab => \ALT_INV_rx~input_o\,
	datac => \uart_comm|ALT_INV_os_count\(3),
	dataf => \uart_comm|ALT_INV_rx_state.idle~q\,
	combout => \uart_comm|Selector5~0_combout\);

-- Location: FF_X48_Y3_N29
\uart_comm|rx_state.idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \uart_comm|Selector5~0_combout\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \uart_comm|os_pulse~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_comm|rx_state.idle~q\);

-- Location: LABCELL_X48_Y3_N3
\uart_comm|rx_ready_aux~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart_comm|rx_ready_aux~0_combout\ = ( \uart_comm|rx_count\(3) & ( (\uart_comm|os_count\(0) & (\uart_comm|os_count\(3) & (\uart_comm|os_count\(2) & \uart_comm|os_count\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uart_comm|ALT_INV_os_count\(0),
	datab => \uart_comm|ALT_INV_os_count\(3),
	datac => \uart_comm|ALT_INV_os_count\(2),
	datad => \uart_comm|ALT_INV_os_count\(1),
	dataf => \uart_comm|ALT_INV_rx_count\(3),
	combout => \uart_comm|rx_ready_aux~0_combout\);

-- Location: LABCELL_X48_Y3_N9
\uart_comm|Selector6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart_comm|Selector6~1_combout\ = ( \uart_comm|rx_ready_aux~0_combout\ & ( (!\uart_comm|rx_state.idle~q\ & (\uart_comm|os_count\(3) & !\rx~input_o\)) ) ) # ( !\uart_comm|rx_ready_aux~0_combout\ & ( ((!\uart_comm|rx_state.idle~q\ & (\uart_comm|os_count\(3) 
-- & !\rx~input_o\))) # (\uart_comm|rx_state.receive~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000011111111001000001111111100100000001000000010000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uart_comm|ALT_INV_rx_state.idle~q\,
	datab => \uart_comm|ALT_INV_os_count\(3),
	datac => \ALT_INV_rx~input_o\,
	datad => \uart_comm|ALT_INV_rx_state.receive~q\,
	dataf => \uart_comm|ALT_INV_rx_ready_aux~0_combout\,
	combout => \uart_comm|Selector6~1_combout\);

-- Location: FF_X48_Y3_N11
\uart_comm|rx_state.receive\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \uart_comm|Selector6~1_combout\,
	clrn => \reset~input_o\,
	ena => \uart_comm|os_pulse~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_comm|rx_state.receive~q\);

-- Location: MLABCELL_X49_Y5_N6
\uart_comm|rx_ready_aux~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart_comm|rx_ready_aux~1_combout\ = ( \uart_comm|rx_ready_aux~0_combout\ & ( \uart_comm|rx_ready_aux~q\ & ( \uart_comm|rx_state.receive~q\ ) ) ) # ( !\uart_comm|rx_ready_aux~0_combout\ & ( \uart_comm|rx_ready_aux~q\ & ( \uart_comm|rx_state.receive~q\ ) ) 
-- ) # ( \uart_comm|rx_ready_aux~0_combout\ & ( !\uart_comm|rx_ready_aux~q\ & ( \uart_comm|rx_state.receive~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \uart_comm|ALT_INV_rx_state.receive~q\,
	datae => \uart_comm|ALT_INV_rx_ready_aux~0_combout\,
	dataf => \uart_comm|ALT_INV_rx_ready_aux~q\,
	combout => \uart_comm|rx_ready_aux~1_combout\);

-- Location: MLABCELL_X49_Y5_N21
\uart_comm|rx_ready_aux~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart_comm|rx_ready_aux~feeder_combout\ = ( \uart_comm|rx_ready_aux~1_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \uart_comm|ALT_INV_rx_ready_aux~1_combout\,
	combout => \uart_comm|rx_ready_aux~feeder_combout\);

-- Location: FF_X49_Y5_N23
\uart_comm|rx_ready_aux\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \uart_comm|rx_ready_aux~feeder_combout\,
	clrn => \reset~input_o\,
	ena => \uart_comm|os_pulse~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_comm|rx_ready_aux~q\);

-- Location: LABCELL_X47_Y3_N30
\uart_comm|rx_buffer[8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart_comm|rx_buffer[8]~feeder_combout\ = ( \rx~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_rx~input_o\,
	combout => \uart_comm|rx_buffer[8]~feeder_combout\);

-- Location: LABCELL_X47_Y3_N3
\uart_comm|rx_buffer[4]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart_comm|rx_buffer[4]~1_combout\ = ( \uart_comm|rx_buffer[4]~0_combout\ & ( (\reset~input_o\ & (\uart_comm|os_pulse~q\ & !\uart_comm|rx_count\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000101000000000000010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reset~input_o\,
	datac => \uart_comm|ALT_INV_os_pulse~q\,
	datad => \uart_comm|ALT_INV_rx_count\(3),
	dataf => \uart_comm|ALT_INV_rx_buffer[4]~0_combout\,
	combout => \uart_comm|rx_buffer[4]~1_combout\);

-- Location: FF_X47_Y3_N32
\uart_comm|rx_buffer[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \uart_comm|rx_buffer[8]~feeder_combout\,
	ena => \uart_comm|rx_buffer[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_comm|rx_buffer\(8));

-- Location: FF_X47_Y3_N4
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
	ena => \uart_comm|rx_buffer[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_comm|rx_buffer\(7));

-- Location: LABCELL_X47_Y3_N48
\uart_comm|rx_buffer[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart_comm|rx_buffer[6]~feeder_combout\ = ( \uart_comm|rx_buffer\(7) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \uart_comm|ALT_INV_rx_buffer\(7),
	combout => \uart_comm|rx_buffer[6]~feeder_combout\);

-- Location: FF_X47_Y3_N50
\uart_comm|rx_buffer[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \uart_comm|rx_buffer[6]~feeder_combout\,
	ena => \uart_comm|rx_buffer[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_comm|rx_buffer\(6));

-- Location: FF_X47_Y3_N23
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
	ena => \uart_comm|rx_buffer[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_comm|rx_buffer\(5));

-- Location: FF_X47_Y3_N44
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
	ena => \uart_comm|rx_buffer[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_comm|rx_buffer\(4));

-- Location: FF_X47_Y3_N2
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
	ena => \uart_comm|rx_buffer[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_comm|rx_buffer\(3));

-- Location: FF_X47_Y3_N56
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
	ena => \uart_comm|rx_buffer[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_comm|rx_buffer\(2));

-- Location: LABCELL_X48_Y3_N24
\uart_comm|rx_data[3]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart_comm|rx_data[3]~0_combout\ = ( \uart_comm|rx_buffer[4]~0_combout\ & ( (\uart_comm|rx_count\(3) & \uart_comm|os_pulse~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \uart_comm|ALT_INV_rx_count\(3),
	datac => \uart_comm|ALT_INV_os_pulse~q\,
	dataf => \uart_comm|ALT_INV_rx_buffer[4]~0_combout\,
	combout => \uart_comm|rx_data[3]~0_combout\);

-- Location: FF_X48_Y4_N37
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
	ena => \uart_comm|rx_data[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_comm|rx_data\(1));

-- Location: FF_X50_Y4_N50
\p1:counter[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uart_comm|rx_ready_aux~q\,
	asdata => \p1:counter[0]~0_combout\,
	clrn => \ALT_INV_LessThan0~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1:counter[0]~DUPLICATE_q\);

-- Location: LABCELL_X50_Y4_N39
\p1:counter[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1:counter[0]~0_combout\ = ( !\p1:counter[0]~DUPLICATE_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_p1:counter[0]~DUPLICATE_q\,
	combout => \p1:counter[0]~0_combout\);

-- Location: FF_X50_Y4_N49
\p1:counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uart_comm|rx_ready_aux~q\,
	asdata => \p1:counter[0]~0_combout\,
	clrn => \ALT_INV_LessThan0~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1:counter[0]~q\);

-- Location: LABCELL_X50_Y5_N0
\Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~1_sumout\ = SUM(( !\p1:counter[0]~q\ ) + ( \p1:counter[1]~q\ ) + ( !VCC ))
-- \Add0~2\ = CARRY(( !\p1:counter[0]~q\ ) + ( \p1:counter[1]~q\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_p1:counter[1]~q\,
	datad => \ALT_INV_p1:counter[0]~q\,
	cin => GND,
	sumout => \Add0~1_sumout\,
	cout => \Add0~2\);

-- Location: FF_X50_Y5_N1
\p1:counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uart_comm|rx_ready_aux~q\,
	d => \Add0~1_sumout\,
	clrn => \ALT_INV_LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1:counter[1]~q\);

-- Location: LABCELL_X50_Y5_N3
\Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~85_sumout\ = SUM(( \p1:counter[2]~q\ ) + ( GND ) + ( \Add0~2\ ))
-- \Add0~86\ = CARRY(( \p1:counter[2]~q\ ) + ( GND ) + ( \Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_p1:counter[2]~q\,
	cin => \Add0~2\,
	sumout => \Add0~85_sumout\,
	cout => \Add0~86\);

-- Location: FF_X50_Y5_N5
\p1:counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uart_comm|rx_ready_aux~q\,
	d => \Add0~85_sumout\,
	clrn => \ALT_INV_LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1:counter[2]~q\);

-- Location: LABCELL_X50_Y5_N6
\Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~89_sumout\ = SUM(( \p1:counter[3]~q\ ) + ( GND ) + ( \Add0~86\ ))
-- \Add0~90\ = CARRY(( \p1:counter[3]~q\ ) + ( GND ) + ( \Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_p1:counter[3]~q\,
	cin => \Add0~86\,
	sumout => \Add0~89_sumout\,
	cout => \Add0~90\);

-- Location: FF_X50_Y5_N7
\p1:counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uart_comm|rx_ready_aux~q\,
	d => \Add0~89_sumout\,
	clrn => \ALT_INV_LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1:counter[3]~q\);

-- Location: LABCELL_X50_Y5_N9
\Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~93_sumout\ = SUM(( \p1:counter[4]~q\ ) + ( GND ) + ( \Add0~90\ ))
-- \Add0~94\ = CARRY(( \p1:counter[4]~q\ ) + ( GND ) + ( \Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_p1:counter[4]~q\,
	cin => \Add0~90\,
	sumout => \Add0~93_sumout\,
	cout => \Add0~94\);

-- Location: FF_X50_Y5_N11
\p1:counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uart_comm|rx_ready_aux~q\,
	d => \Add0~93_sumout\,
	clrn => \ALT_INV_LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1:counter[4]~q\);

-- Location: LABCELL_X50_Y5_N12
\Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~97_sumout\ = SUM(( \p1:counter[5]~q\ ) + ( GND ) + ( \Add0~94\ ))
-- \Add0~98\ = CARRY(( \p1:counter[5]~q\ ) + ( GND ) + ( \Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_p1:counter[5]~q\,
	cin => \Add0~94\,
	sumout => \Add0~97_sumout\,
	cout => \Add0~98\);

-- Location: FF_X50_Y5_N14
\p1:counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uart_comm|rx_ready_aux~q\,
	d => \Add0~97_sumout\,
	clrn => \ALT_INV_LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1:counter[5]~q\);

-- Location: LABCELL_X50_Y5_N15
\Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~101_sumout\ = SUM(( \p1:counter[6]~q\ ) + ( GND ) + ( \Add0~98\ ))
-- \Add0~102\ = CARRY(( \p1:counter[6]~q\ ) + ( GND ) + ( \Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_p1:counter[6]~q\,
	cin => \Add0~98\,
	sumout => \Add0~101_sumout\,
	cout => \Add0~102\);

-- Location: FF_X50_Y5_N16
\p1:counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uart_comm|rx_ready_aux~q\,
	d => \Add0~101_sumout\,
	clrn => \ALT_INV_LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1:counter[6]~q\);

-- Location: LABCELL_X50_Y5_N18
\Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~53_sumout\ = SUM(( \p1:counter[7]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~102\ ))
-- \Add0~54\ = CARRY(( \p1:counter[7]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_p1:counter[7]~DUPLICATE_q\,
	cin => \Add0~102\,
	sumout => \Add0~53_sumout\,
	cout => \Add0~54\);

-- Location: FF_X50_Y5_N20
\p1:counter[7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uart_comm|rx_ready_aux~q\,
	d => \Add0~53_sumout\,
	clrn => \ALT_INV_LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1:counter[7]~DUPLICATE_q\);

-- Location: LABCELL_X50_Y5_N21
\Add0~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~105_sumout\ = SUM(( \p1:counter[8]~q\ ) + ( GND ) + ( \Add0~54\ ))
-- \Add0~106\ = CARRY(( \p1:counter[8]~q\ ) + ( GND ) + ( \Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_p1:counter[8]~q\,
	cin => \Add0~54\,
	sumout => \Add0~105_sumout\,
	cout => \Add0~106\);

-- Location: FF_X50_Y5_N23
\p1:counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uart_comm|rx_ready_aux~q\,
	d => \Add0~105_sumout\,
	clrn => \ALT_INV_LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1:counter[8]~q\);

-- Location: LABCELL_X50_Y5_N24
\Add0~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~109_sumout\ = SUM(( \p1:counter[9]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~106\ ))
-- \Add0~110\ = CARRY(( \p1:counter[9]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_p1:counter[9]~DUPLICATE_q\,
	cin => \Add0~106\,
	sumout => \Add0~109_sumout\,
	cout => \Add0~110\);

-- Location: FF_X50_Y5_N25
\p1:counter[9]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uart_comm|rx_ready_aux~q\,
	d => \Add0~109_sumout\,
	clrn => \ALT_INV_LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1:counter[9]~DUPLICATE_q\);

-- Location: LABCELL_X50_Y5_N27
\Add0~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~113_sumout\ = SUM(( \p1:counter[10]~q\ ) + ( GND ) + ( \Add0~110\ ))
-- \Add0~114\ = CARRY(( \p1:counter[10]~q\ ) + ( GND ) + ( \Add0~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_p1:counter[10]~q\,
	cin => \Add0~110\,
	sumout => \Add0~113_sumout\,
	cout => \Add0~114\);

-- Location: FF_X50_Y5_N29
\p1:counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uart_comm|rx_ready_aux~q\,
	d => \Add0~113_sumout\,
	clrn => \ALT_INV_LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1:counter[10]~q\);

-- Location: LABCELL_X50_Y5_N30
\Add0~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~117_sumout\ = SUM(( \p1:counter[11]~q\ ) + ( GND ) + ( \Add0~114\ ))
-- \Add0~118\ = CARRY(( \p1:counter[11]~q\ ) + ( GND ) + ( \Add0~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_p1:counter[11]~q\,
	cin => \Add0~114\,
	sumout => \Add0~117_sumout\,
	cout => \Add0~118\);

-- Location: FF_X50_Y5_N32
\p1:counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uart_comm|rx_ready_aux~q\,
	d => \Add0~117_sumout\,
	clrn => \ALT_INV_LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1:counter[11]~q\);

-- Location: LABCELL_X50_Y5_N33
\Add0~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~121_sumout\ = SUM(( \p1:counter[12]~q\ ) + ( GND ) + ( \Add0~118\ ))
-- \Add0~122\ = CARRY(( \p1:counter[12]~q\ ) + ( GND ) + ( \Add0~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_p1:counter[12]~q\,
	cin => \Add0~118\,
	sumout => \Add0~121_sumout\,
	cout => \Add0~122\);

-- Location: FF_X50_Y5_N35
\p1:counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uart_comm|rx_ready_aux~q\,
	d => \Add0~121_sumout\,
	clrn => \ALT_INV_LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1:counter[12]~q\);

-- Location: LABCELL_X50_Y5_N36
\Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~57_sumout\ = SUM(( \p1:counter[13]~q\ ) + ( GND ) + ( \Add0~122\ ))
-- \Add0~58\ = CARRY(( \p1:counter[13]~q\ ) + ( GND ) + ( \Add0~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_p1:counter[13]~q\,
	cin => \Add0~122\,
	sumout => \Add0~57_sumout\,
	cout => \Add0~58\);

-- Location: FF_X50_Y5_N38
\p1:counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uart_comm|rx_ready_aux~q\,
	d => \Add0~57_sumout\,
	clrn => \ALT_INV_LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1:counter[13]~q\);

-- Location: LABCELL_X50_Y5_N39
\Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~65_sumout\ = SUM(( \p1:counter[14]~q\ ) + ( GND ) + ( \Add0~58\ ))
-- \Add0~66\ = CARRY(( \p1:counter[14]~q\ ) + ( GND ) + ( \Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_p1:counter[14]~q\,
	cin => \Add0~58\,
	sumout => \Add0~65_sumout\,
	cout => \Add0~66\);

-- Location: FF_X50_Y5_N40
\p1:counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uart_comm|rx_ready_aux~q\,
	d => \Add0~65_sumout\,
	clrn => \ALT_INV_LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1:counter[14]~q\);

-- Location: LABCELL_X50_Y5_N42
\Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~69_sumout\ = SUM(( \p1:counter[15]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~66\ ))
-- \Add0~70\ = CARRY(( \p1:counter[15]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_p1:counter[15]~DUPLICATE_q\,
	cin => \Add0~66\,
	sumout => \Add0~69_sumout\,
	cout => \Add0~70\);

-- Location: FF_X50_Y5_N44
\p1:counter[15]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uart_comm|rx_ready_aux~q\,
	d => \Add0~69_sumout\,
	clrn => \ALT_INV_LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1:counter[15]~DUPLICATE_q\);

-- Location: LABCELL_X50_Y5_N45
\Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~73_sumout\ = SUM(( \p1:counter[16]~q\ ) + ( GND ) + ( \Add0~70\ ))
-- \Add0~74\ = CARRY(( \p1:counter[16]~q\ ) + ( GND ) + ( \Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_p1:counter[16]~q\,
	cin => \Add0~70\,
	sumout => \Add0~73_sumout\,
	cout => \Add0~74\);

-- Location: FF_X50_Y5_N46
\p1:counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uart_comm|rx_ready_aux~q\,
	d => \Add0~73_sumout\,
	clrn => \ALT_INV_LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1:counter[16]~q\);

-- Location: LABCELL_X50_Y5_N48
\Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~77_sumout\ = SUM(( \p1:counter[17]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~74\ ))
-- \Add0~78\ = CARRY(( \p1:counter[17]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_p1:counter[17]~DUPLICATE_q\,
	cin => \Add0~74\,
	sumout => \Add0~77_sumout\,
	cout => \Add0~78\);

-- Location: FF_X50_Y5_N49
\p1:counter[17]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uart_comm|rx_ready_aux~q\,
	d => \Add0~77_sumout\,
	clrn => \ALT_INV_LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1:counter[17]~DUPLICATE_q\);

-- Location: LABCELL_X50_Y5_N51
\Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~81_sumout\ = SUM(( \p1:counter[18]~q\ ) + ( GND ) + ( \Add0~78\ ))
-- \Add0~82\ = CARRY(( \p1:counter[18]~q\ ) + ( GND ) + ( \Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_p1:counter[18]~q\,
	cin => \Add0~78\,
	sumout => \Add0~81_sumout\,
	cout => \Add0~82\);

-- Location: FF_X50_Y5_N53
\p1:counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uart_comm|rx_ready_aux~q\,
	d => \Add0~81_sumout\,
	clrn => \ALT_INV_LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1:counter[18]~q\);

-- Location: LABCELL_X50_Y5_N54
\Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~61_sumout\ = SUM(( \p1:counter[19]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~82\ ))
-- \Add0~62\ = CARRY(( \p1:counter[19]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_p1:counter[19]~DUPLICATE_q\,
	cin => \Add0~82\,
	sumout => \Add0~61_sumout\,
	cout => \Add0~62\);

-- Location: FF_X50_Y5_N55
\p1:counter[19]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uart_comm|rx_ready_aux~q\,
	d => \Add0~61_sumout\,
	clrn => \ALT_INV_LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1:counter[19]~DUPLICATE_q\);

-- Location: LABCELL_X50_Y5_N57
\Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~29_sumout\ = SUM(( \p1:counter[20]~q\ ) + ( GND ) + ( \Add0~62\ ))
-- \Add0~30\ = CARRY(( \p1:counter[20]~q\ ) + ( GND ) + ( \Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_p1:counter[20]~q\,
	cin => \Add0~62\,
	sumout => \Add0~29_sumout\,
	cout => \Add0~30\);

-- Location: FF_X50_Y5_N58
\p1:counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uart_comm|rx_ready_aux~q\,
	d => \Add0~29_sumout\,
	clrn => \ALT_INV_LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1:counter[20]~q\);

-- Location: LABCELL_X50_Y4_N0
\Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~33_sumout\ = SUM(( \p1:counter[21]~q\ ) + ( GND ) + ( \Add0~30\ ))
-- \Add0~34\ = CARRY(( \p1:counter[21]~q\ ) + ( GND ) + ( \Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_p1:counter[21]~q\,
	cin => \Add0~30\,
	sumout => \Add0~33_sumout\,
	cout => \Add0~34\);

-- Location: FF_X50_Y4_N2
\p1:counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uart_comm|rx_ready_aux~q\,
	d => \Add0~33_sumout\,
	clrn => \ALT_INV_LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1:counter[21]~q\);

-- Location: LABCELL_X50_Y4_N3
\Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~37_sumout\ = SUM(( \p1:counter[22]~q\ ) + ( GND ) + ( \Add0~34\ ))
-- \Add0~38\ = CARRY(( \p1:counter[22]~q\ ) + ( GND ) + ( \Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_p1:counter[22]~q\,
	cin => \Add0~34\,
	sumout => \Add0~37_sumout\,
	cout => \Add0~38\);

-- Location: FF_X50_Y4_N5
\p1:counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uart_comm|rx_ready_aux~q\,
	d => \Add0~37_sumout\,
	clrn => \ALT_INV_LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1:counter[22]~q\);

-- Location: LABCELL_X50_Y4_N6
\Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~41_sumout\ = SUM(( \p1:counter[23]~q\ ) + ( GND ) + ( \Add0~38\ ))
-- \Add0~42\ = CARRY(( \p1:counter[23]~q\ ) + ( GND ) + ( \Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_p1:counter[23]~q\,
	cin => \Add0~38\,
	sumout => \Add0~41_sumout\,
	cout => \Add0~42\);

-- Location: FF_X50_Y4_N8
\p1:counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uart_comm|rx_ready_aux~q\,
	d => \Add0~41_sumout\,
	clrn => \ALT_INV_LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1:counter[23]~q\);

-- Location: LABCELL_X50_Y4_N9
\Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~45_sumout\ = SUM(( \p1:counter[24]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~42\ ))
-- \Add0~46\ = CARRY(( \p1:counter[24]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_p1:counter[24]~DUPLICATE_q\,
	cin => \Add0~42\,
	sumout => \Add0~45_sumout\,
	cout => \Add0~46\);

-- Location: FF_X50_Y4_N10
\p1:counter[24]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uart_comm|rx_ready_aux~q\,
	d => \Add0~45_sumout\,
	clrn => \ALT_INV_LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1:counter[24]~DUPLICATE_q\);

-- Location: LABCELL_X50_Y4_N12
\Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~49_sumout\ = SUM(( \p1:counter[25]~q\ ) + ( GND ) + ( \Add0~46\ ))
-- \Add0~50\ = CARRY(( \p1:counter[25]~q\ ) + ( GND ) + ( \Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_p1:counter[25]~q\,
	cin => \Add0~46\,
	sumout => \Add0~49_sumout\,
	cout => \Add0~50\);

-- Location: FF_X50_Y4_N14
\p1:counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uart_comm|rx_ready_aux~q\,
	d => \Add0~49_sumout\,
	clrn => \ALT_INV_LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1:counter[25]~q\);

-- Location: LABCELL_X50_Y4_N15
\Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~9_sumout\ = SUM(( \p1:counter[26]~q\ ) + ( GND ) + ( \Add0~50\ ))
-- \Add0~10\ = CARRY(( \p1:counter[26]~q\ ) + ( GND ) + ( \Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_p1:counter[26]~q\,
	cin => \Add0~50\,
	sumout => \Add0~9_sumout\,
	cout => \Add0~10\);

-- Location: FF_X50_Y4_N16
\p1:counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uart_comm|rx_ready_aux~q\,
	d => \Add0~9_sumout\,
	clrn => \ALT_INV_LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1:counter[26]~q\);

-- Location: LABCELL_X50_Y4_N18
\Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~13_sumout\ = SUM(( \p1:counter[27]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~10\ ))
-- \Add0~14\ = CARRY(( \p1:counter[27]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_p1:counter[27]~DUPLICATE_q\,
	cin => \Add0~10\,
	sumout => \Add0~13_sumout\,
	cout => \Add0~14\);

-- Location: FF_X50_Y4_N19
\p1:counter[27]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uart_comm|rx_ready_aux~q\,
	d => \Add0~13_sumout\,
	clrn => \ALT_INV_LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1:counter[27]~DUPLICATE_q\);

-- Location: LABCELL_X50_Y4_N21
\Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~17_sumout\ = SUM(( \p1:counter[28]~q\ ) + ( GND ) + ( \Add0~14\ ))
-- \Add0~18\ = CARRY(( \p1:counter[28]~q\ ) + ( GND ) + ( \Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_p1:counter[28]~q\,
	cin => \Add0~14\,
	sumout => \Add0~17_sumout\,
	cout => \Add0~18\);

-- Location: FF_X50_Y4_N23
\p1:counter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uart_comm|rx_ready_aux~q\,
	d => \Add0~17_sumout\,
	clrn => \ALT_INV_LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1:counter[28]~q\);

-- Location: FF_X50_Y4_N17
\p1:counter[26]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uart_comm|rx_ready_aux~q\,
	d => \Add0~9_sumout\,
	clrn => \ALT_INV_LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1:counter[26]~DUPLICATE_q\);

-- Location: FF_X50_Y4_N20
\p1:counter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uart_comm|rx_ready_aux~q\,
	d => \Add0~13_sumout\,
	clrn => \ALT_INV_LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1:counter[27]~q\);

-- Location: LABCELL_X50_Y4_N24
\Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~21_sumout\ = SUM(( \p1:counter[29]~q\ ) + ( GND ) + ( \Add0~18\ ))
-- \Add0~22\ = CARRY(( \p1:counter[29]~q\ ) + ( GND ) + ( \Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_p1:counter[29]~q\,
	cin => \Add0~18\,
	sumout => \Add0~21_sumout\,
	cout => \Add0~22\);

-- Location: FF_X50_Y4_N26
\p1:counter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uart_comm|rx_ready_aux~q\,
	d => \Add0~21_sumout\,
	clrn => \ALT_INV_LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1:counter[29]~q\);

-- Location: LABCELL_X50_Y4_N27
\Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~25_sumout\ = SUM(( \p1:counter[30]~q\ ) + ( GND ) + ( \Add0~22\ ))
-- \Add0~26\ = CARRY(( \p1:counter[30]~q\ ) + ( GND ) + ( \Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_p1:counter[30]~q\,
	cin => \Add0~22\,
	sumout => \Add0~25_sumout\,
	cout => \Add0~26\);

-- Location: FF_X50_Y4_N29
\p1:counter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uart_comm|rx_ready_aux~q\,
	d => \Add0~25_sumout\,
	clrn => \ALT_INV_LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1:counter[30]~q\);

-- Location: LABCELL_X50_Y4_N36
\LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = ( !\p1:counter[29]~q\ & ( (!\p1:counter[28]~q\ & (!\p1:counter[26]~DUPLICATE_q\ & (!\p1:counter[27]~q\ & !\p1:counter[30]~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_p1:counter[28]~q\,
	datab => \ALT_INV_p1:counter[26]~DUPLICATE_q\,
	datac => \ALT_INV_p1:counter[27]~q\,
	datad => \ALT_INV_p1:counter[30]~q\,
	dataf => \ALT_INV_p1:counter[29]~q\,
	combout => \LessThan0~0_combout\);

-- Location: FF_X50_Y4_N11
\p1:counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uart_comm|rx_ready_aux~q\,
	d => \Add0~45_sumout\,
	clrn => \ALT_INV_LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1:counter[24]~q\);

-- Location: MLABCELL_X49_Y4_N33
\LessThan0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = ( !\p1:counter[23]~q\ & ( !\p1:counter[20]~q\ & ( (!\p1:counter[21]~q\ & (!\p1:counter[22]~q\ & (!\p1:counter[25]~q\ & !\p1:counter[24]~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_p1:counter[21]~q\,
	datab => \ALT_INV_p1:counter[22]~q\,
	datac => \ALT_INV_p1:counter[25]~q\,
	datad => \ALT_INV_p1:counter[24]~q\,
	datae => \ALT_INV_p1:counter[23]~q\,
	dataf => \ALT_INV_p1:counter[20]~q\,
	combout => \LessThan0~1_combout\);

-- Location: FF_X50_Y5_N56
\p1:counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uart_comm|rx_ready_aux~q\,
	d => \Add0~61_sumout\,
	clrn => \ALT_INV_LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1:counter[19]~q\);

-- Location: FF_X50_Y5_N19
\p1:counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uart_comm|rx_ready_aux~q\,
	d => \Add0~53_sumout\,
	clrn => \ALT_INV_LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1:counter[7]~q\);

-- Location: FF_X50_Y5_N26
\p1:counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uart_comm|rx_ready_aux~q\,
	d => \Add0~109_sumout\,
	clrn => \ALT_INV_LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1:counter[9]~q\);

-- Location: MLABCELL_X49_Y5_N0
\LessThan0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~4_combout\ = ( !\p1:counter[8]~q\ & ( !\p1:counter[11]~q\ & ( (!\p1:counter[12]~q\ & (!\p1:counter[10]~q\ & !\p1:counter[9]~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_p1:counter[12]~q\,
	datac => \ALT_INV_p1:counter[10]~q\,
	datad => \ALT_INV_p1:counter[9]~q\,
	datae => \ALT_INV_p1:counter[8]~q\,
	dataf => \ALT_INV_p1:counter[11]~q\,
	combout => \LessThan0~4_combout\);

-- Location: LABCELL_X50_Y4_N57
\LessThan0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~3_combout\ = ( !\p1:counter[2]~q\ & ( !\p1:counter[6]~q\ & ( (!\p1:counter[3]~q\ & (!\p1:counter[5]~q\ & !\p1:counter[4]~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_p1:counter[3]~q\,
	datac => \ALT_INV_p1:counter[5]~q\,
	datad => \ALT_INV_p1:counter[4]~q\,
	datae => \ALT_INV_p1:counter[2]~q\,
	dataf => \ALT_INV_p1:counter[6]~q\,
	combout => \LessThan0~3_combout\);

-- Location: FF_X50_Y5_N41
\p1:counter[14]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uart_comm|rx_ready_aux~q\,
	d => \Add0~65_sumout\,
	clrn => \ALT_INV_LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1:counter[14]~DUPLICATE_q\);

-- Location: FF_X50_Y5_N43
\p1:counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uart_comm|rx_ready_aux~q\,
	d => \Add0~69_sumout\,
	clrn => \ALT_INV_LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1:counter[15]~q\);

-- Location: FF_X50_Y5_N52
\p1:counter[18]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uart_comm|rx_ready_aux~q\,
	d => \Add0~81_sumout\,
	clrn => \ALT_INV_LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1:counter[18]~DUPLICATE_q\);

-- Location: FF_X50_Y5_N50
\p1:counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uart_comm|rx_ready_aux~q\,
	d => \Add0~77_sumout\,
	clrn => \ALT_INV_LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1:counter[17]~q\);

-- Location: MLABCELL_X49_Y4_N15
\LessThan0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = ( !\p1:counter[17]~q\ & ( (!\p1:counter[14]~DUPLICATE_q\ & (!\p1:counter[16]~q\ & (!\p1:counter[15]~q\ & !\p1:counter[18]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_p1:counter[14]~DUPLICATE_q\,
	datab => \ALT_INV_p1:counter[16]~q\,
	datac => \ALT_INV_p1:counter[15]~q\,
	datad => \ALT_INV_p1:counter[18]~DUPLICATE_q\,
	dataf => \ALT_INV_p1:counter[17]~q\,
	combout => \LessThan0~2_combout\);

-- Location: LABCELL_X50_Y4_N42
\LessThan0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~5_combout\ = ( \LessThan0~3_combout\ & ( \LessThan0~2_combout\ & ( (!\p1:counter[19]~q\ & (!\p1:counter[7]~q\ & (!\p1:counter[13]~q\ & \LessThan0~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_p1:counter[19]~q\,
	datab => \ALT_INV_p1:counter[7]~q\,
	datac => \ALT_INV_p1:counter[13]~q\,
	datad => \ALT_INV_LessThan0~4_combout\,
	datae => \ALT_INV_LessThan0~3_combout\,
	dataf => \ALT_INV_LessThan0~2_combout\,
	combout => \LessThan0~5_combout\);

-- Location: LABCELL_X50_Y4_N51
\LessThan0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~6_combout\ = ( \LessThan0~1_combout\ & ( \LessThan0~5_combout\ & ( (!\p1:counter[31]~q\ & ((!\LessThan0~0_combout\) # ((\p1:counter[1]~q\ & !\p1:counter[0]~DUPLICATE_q\)))) ) ) ) # ( !\LessThan0~1_combout\ & ( \LessThan0~5_combout\ & ( 
-- !\p1:counter[31]~q\ ) ) ) # ( \LessThan0~1_combout\ & ( !\LessThan0~5_combout\ & ( !\p1:counter[31]~q\ ) ) ) # ( !\LessThan0~1_combout\ & ( !\LessThan0~5_combout\ & ( !\p1:counter[31]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000111100001011000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan0~0_combout\,
	datab => \ALT_INV_p1:counter[1]~q\,
	datac => \ALT_INV_p1:counter[31]~q\,
	datad => \ALT_INV_p1:counter[0]~DUPLICATE_q\,
	datae => \ALT_INV_LessThan0~1_combout\,
	dataf => \ALT_INV_LessThan0~5_combout\,
	combout => \LessThan0~6_combout\);

-- Location: FF_X50_Y4_N31
\p1:counter[31]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uart_comm|rx_ready_aux~q\,
	d => \Add0~5_sumout\,
	clrn => \ALT_INV_LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1:counter[31]~DUPLICATE_q\);

-- Location: LABCELL_X50_Y4_N30
\Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~5_sumout\ = SUM(( \p1:counter[31]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_p1:counter[31]~DUPLICATE_q\,
	cin => \Add0~26\,
	sumout => \Add0~5_sumout\);

-- Location: FF_X50_Y4_N32
\p1:counter[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uart_comm|rx_ready_aux~q\,
	d => \Add0~5_sumout\,
	clrn => \ALT_INV_LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1:counter[31]~q\);

-- Location: MLABCELL_X49_Y4_N48
\Decoder0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Decoder0~0_combout\ = ( \p1:counter[0]~DUPLICATE_q\ & ( \LessThan0~5_combout\ & ( (\p1:counter[1]~q\ & (((\LessThan0~0_combout\ & \LessThan0~1_combout\)) # (\p1:counter[31]~q\))) ) ) ) # ( \p1:counter[0]~DUPLICATE_q\ & ( !\LessThan0~5_combout\ & ( 
-- (\p1:counter[31]~q\ & \p1:counter[1]~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000101010100000000000000000000000001010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_p1:counter[31]~q\,
	datab => \ALT_INV_LessThan0~0_combout\,
	datac => \ALT_INV_LessThan0~1_combout\,
	datad => \ALT_INV_p1:counter[1]~q\,
	datae => \ALT_INV_p1:counter[0]~DUPLICATE_q\,
	dataf => \ALT_INV_LessThan0~5_combout\,
	combout => \Decoder0~0_combout\);

-- Location: FF_X49_Y4_N49
\X[1][2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uart_comm|rx_ready_aux~q\,
	asdata => \uart_comm|rx_data\(1),
	sload => VCC,
	ena => \Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \X[1][2][1]~q\);

-- Location: FF_X48_Y4_N1
\p2:counter[21]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freq|local_out~q\,
	d => \Add1~33_sumout\,
	clrn => \ALT_INV_LessThan2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p2:counter[21]~DUPLICATE_q\);

-- Location: FF_X48_Y4_N43
\p2:counter[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freq|local_out~q\,
	asdata => \p2:counter[0]~0_combout\,
	clrn => \ALT_INV_LessThan2~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p2:counter[0]~DUPLICATE_q\);

-- Location: LABCELL_X48_Y4_N57
\p2:counter[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \p2:counter[0]~0_combout\ = !\p2:counter[0]~DUPLICATE_q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_p2:counter[0]~DUPLICATE_q\,
	combout => \p2:counter[0]~0_combout\);

-- Location: FF_X48_Y4_N44
\p2:counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freq|local_out~q\,
	asdata => \p2:counter[0]~0_combout\,
	clrn => \ALT_INV_LessThan2~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p2:counter[0]~q\);

-- Location: LABCELL_X48_Y5_N0
\Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~1_sumout\ = SUM(( !\p2:counter[0]~q\ ) + ( \p2:counter[1]~DUPLICATE_q\ ) + ( !VCC ))
-- \Add1~2\ = CARRY(( !\p2:counter[0]~q\ ) + ( \p2:counter[1]~DUPLICATE_q\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_p2:counter[1]~DUPLICATE_q\,
	datad => \ALT_INV_p2:counter[0]~q\,
	cin => GND,
	sumout => \Add1~1_sumout\,
	cout => \Add1~2\);

-- Location: LABCELL_X48_Y5_N3
\Add1~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~113_sumout\ = SUM(( \p2:counter[2]~DUPLICATE_q\ ) + ( GND ) + ( \Add1~2\ ))
-- \Add1~114\ = CARRY(( \p2:counter[2]~DUPLICATE_q\ ) + ( GND ) + ( \Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_p2:counter[2]~DUPLICATE_q\,
	cin => \Add1~2\,
	sumout => \Add1~113_sumout\,
	cout => \Add1~114\);

-- Location: FF_X48_Y5_N5
\p2:counter[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freq|local_out~q\,
	d => \Add1~113_sumout\,
	clrn => \ALT_INV_LessThan2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p2:counter[2]~DUPLICATE_q\);

-- Location: LABCELL_X48_Y5_N6
\Add1~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~109_sumout\ = SUM(( \p2:counter[3]~DUPLICATE_q\ ) + ( GND ) + ( \Add1~114\ ))
-- \Add1~110\ = CARRY(( \p2:counter[3]~DUPLICATE_q\ ) + ( GND ) + ( \Add1~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_p2:counter[3]~DUPLICATE_q\,
	cin => \Add1~114\,
	sumout => \Add1~109_sumout\,
	cout => \Add1~110\);

-- Location: FF_X48_Y5_N8
\p2:counter[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freq|local_out~q\,
	d => \Add1~109_sumout\,
	clrn => \ALT_INV_LessThan2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p2:counter[3]~DUPLICATE_q\);

-- Location: LABCELL_X48_Y5_N9
\Add1~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~105_sumout\ = SUM(( \p2:counter[4]~q\ ) + ( GND ) + ( \Add1~110\ ))
-- \Add1~106\ = CARRY(( \p2:counter[4]~q\ ) + ( GND ) + ( \Add1~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_p2:counter[4]~q\,
	cin => \Add1~110\,
	sumout => \Add1~105_sumout\,
	cout => \Add1~106\);

-- Location: FF_X48_Y5_N10
\p2:counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freq|local_out~q\,
	d => \Add1~105_sumout\,
	clrn => \ALT_INV_LessThan2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p2:counter[4]~q\);

-- Location: LABCELL_X48_Y5_N12
\Add1~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~53_sumout\ = SUM(( \p2:counter[5]~DUPLICATE_q\ ) + ( GND ) + ( \Add1~106\ ))
-- \Add1~54\ = CARRY(( \p2:counter[5]~DUPLICATE_q\ ) + ( GND ) + ( \Add1~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_p2:counter[5]~DUPLICATE_q\,
	cin => \Add1~106\,
	sumout => \Add1~53_sumout\,
	cout => \Add1~54\);

-- Location: FF_X48_Y5_N14
\p2:counter[5]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freq|local_out~q\,
	d => \Add1~53_sumout\,
	clrn => \ALT_INV_LessThan2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p2:counter[5]~DUPLICATE_q\);

-- Location: LABCELL_X48_Y5_N15
\Add1~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~101_sumout\ = SUM(( \p2:counter[6]~q\ ) + ( GND ) + ( \Add1~54\ ))
-- \Add1~102\ = CARRY(( \p2:counter[6]~q\ ) + ( GND ) + ( \Add1~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_p2:counter[6]~q\,
	cin => \Add1~54\,
	sumout => \Add1~101_sumout\,
	cout => \Add1~102\);

-- Location: FF_X48_Y5_N16
\p2:counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freq|local_out~q\,
	d => \Add1~101_sumout\,
	clrn => \ALT_INV_LessThan2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p2:counter[6]~q\);

-- Location: LABCELL_X48_Y5_N18
\Add1~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~97_sumout\ = SUM(( \p2:counter[7]~q\ ) + ( GND ) + ( \Add1~102\ ))
-- \Add1~98\ = CARRY(( \p2:counter[7]~q\ ) + ( GND ) + ( \Add1~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_p2:counter[7]~q\,
	cin => \Add1~102\,
	sumout => \Add1~97_sumout\,
	cout => \Add1~98\);

-- Location: FF_X48_Y5_N19
\p2:counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freq|local_out~q\,
	d => \Add1~97_sumout\,
	clrn => \ALT_INV_LessThan2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p2:counter[7]~q\);

-- Location: LABCELL_X48_Y5_N21
\Add1~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~93_sumout\ = SUM(( \p2:counter[8]~DUPLICATE_q\ ) + ( GND ) + ( \Add1~98\ ))
-- \Add1~94\ = CARRY(( \p2:counter[8]~DUPLICATE_q\ ) + ( GND ) + ( \Add1~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_p2:counter[8]~DUPLICATE_q\,
	cin => \Add1~98\,
	sumout => \Add1~93_sumout\,
	cout => \Add1~94\);

-- Location: FF_X48_Y5_N23
\p2:counter[8]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freq|local_out~q\,
	d => \Add1~93_sumout\,
	clrn => \ALT_INV_LessThan2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p2:counter[8]~DUPLICATE_q\);

-- Location: LABCELL_X48_Y5_N24
\Add1~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~89_sumout\ = SUM(( \p2:counter[9]~q\ ) + ( GND ) + ( \Add1~94\ ))
-- \Add1~90\ = CARRY(( \p2:counter[9]~q\ ) + ( GND ) + ( \Add1~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_p2:counter[9]~q\,
	cin => \Add1~94\,
	sumout => \Add1~89_sumout\,
	cout => \Add1~90\);

-- Location: FF_X48_Y5_N25
\p2:counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freq|local_out~q\,
	d => \Add1~89_sumout\,
	clrn => \ALT_INV_LessThan2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p2:counter[9]~q\);

-- Location: LABCELL_X48_Y5_N27
\Add1~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~85_sumout\ = SUM(( \p2:counter[10]~DUPLICATE_q\ ) + ( GND ) + ( \Add1~90\ ))
-- \Add1~86\ = CARRY(( \p2:counter[10]~DUPLICATE_q\ ) + ( GND ) + ( \Add1~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_p2:counter[10]~DUPLICATE_q\,
	cin => \Add1~90\,
	sumout => \Add1~85_sumout\,
	cout => \Add1~86\);

-- Location: FF_X48_Y5_N29
\p2:counter[10]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freq|local_out~q\,
	d => \Add1~85_sumout\,
	clrn => \ALT_INV_LessThan2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p2:counter[10]~DUPLICATE_q\);

-- Location: LABCELL_X48_Y5_N30
\Add1~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~117_sumout\ = SUM(( \p2:counter[11]~q\ ) + ( GND ) + ( \Add1~86\ ))
-- \Add1~118\ = CARRY(( \p2:counter[11]~q\ ) + ( GND ) + ( \Add1~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_p2:counter[11]~q\,
	cin => \Add1~86\,
	sumout => \Add1~117_sumout\,
	cout => \Add1~118\);

-- Location: FF_X48_Y5_N32
\p2:counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freq|local_out~q\,
	d => \Add1~117_sumout\,
	clrn => \ALT_INV_LessThan2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p2:counter[11]~q\);

-- Location: LABCELL_X48_Y5_N33
\Add1~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~121_sumout\ = SUM(( \p2:counter[12]~DUPLICATE_q\ ) + ( GND ) + ( \Add1~118\ ))
-- \Add1~122\ = CARRY(( \p2:counter[12]~DUPLICATE_q\ ) + ( GND ) + ( \Add1~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_p2:counter[12]~DUPLICATE_q\,
	cin => \Add1~118\,
	sumout => \Add1~121_sumout\,
	cout => \Add1~122\);

-- Location: FF_X48_Y5_N35
\p2:counter[12]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freq|local_out~q\,
	d => \Add1~121_sumout\,
	clrn => \ALT_INV_LessThan2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p2:counter[12]~DUPLICATE_q\);

-- Location: LABCELL_X48_Y5_N36
\Add1~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~57_sumout\ = SUM(( \p2:counter[13]~q\ ) + ( GND ) + ( \Add1~122\ ))
-- \Add1~58\ = CARRY(( \p2:counter[13]~q\ ) + ( GND ) + ( \Add1~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_p2:counter[13]~q\,
	cin => \Add1~122\,
	sumout => \Add1~57_sumout\,
	cout => \Add1~58\);

-- Location: FF_X48_Y5_N38
\p2:counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freq|local_out~q\,
	d => \Add1~57_sumout\,
	clrn => \ALT_INV_LessThan2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p2:counter[13]~q\);

-- Location: LABCELL_X48_Y5_N39
\Add1~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~65_sumout\ = SUM(( GND ) + ( \p2:counter[14]~q\ ) + ( \Add1~58\ ))
-- \Add1~66\ = CARRY(( GND ) + ( \p2:counter[14]~q\ ) + ( \Add1~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_p2:counter[14]~q\,
	cin => \Add1~58\,
	sumout => \Add1~65_sumout\,
	cout => \Add1~66\);

-- Location: FF_X48_Y5_N40
\p2:counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freq|local_out~q\,
	d => \Add1~65_sumout\,
	clrn => \ALT_INV_LessThan2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p2:counter[14]~q\);

-- Location: LABCELL_X48_Y5_N42
\Add1~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~69_sumout\ = SUM(( \p2:counter[15]~DUPLICATE_q\ ) + ( GND ) + ( \Add1~66\ ))
-- \Add1~70\ = CARRY(( \p2:counter[15]~DUPLICATE_q\ ) + ( GND ) + ( \Add1~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_p2:counter[15]~DUPLICATE_q\,
	cin => \Add1~66\,
	sumout => \Add1~69_sumout\,
	cout => \Add1~70\);

-- Location: FF_X48_Y5_N44
\p2:counter[15]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freq|local_out~q\,
	d => \Add1~69_sumout\,
	clrn => \ALT_INV_LessThan2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p2:counter[15]~DUPLICATE_q\);

-- Location: LABCELL_X48_Y5_N45
\Add1~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~73_sumout\ = SUM(( \p2:counter[16]~q\ ) + ( GND ) + ( \Add1~70\ ))
-- \Add1~74\ = CARRY(( \p2:counter[16]~q\ ) + ( GND ) + ( \Add1~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_p2:counter[16]~q\,
	cin => \Add1~70\,
	sumout => \Add1~73_sumout\,
	cout => \Add1~74\);

-- Location: FF_X48_Y5_N46
\p2:counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freq|local_out~q\,
	d => \Add1~73_sumout\,
	clrn => \ALT_INV_LessThan2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p2:counter[16]~q\);

-- Location: LABCELL_X48_Y5_N48
\Add1~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~77_sumout\ = SUM(( \p2:counter[17]~DUPLICATE_q\ ) + ( GND ) + ( \Add1~74\ ))
-- \Add1~78\ = CARRY(( \p2:counter[17]~DUPLICATE_q\ ) + ( GND ) + ( \Add1~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_p2:counter[17]~DUPLICATE_q\,
	cin => \Add1~74\,
	sumout => \Add1~77_sumout\,
	cout => \Add1~78\);

-- Location: FF_X48_Y5_N50
\p2:counter[17]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freq|local_out~q\,
	d => \Add1~77_sumout\,
	clrn => \ALT_INV_LessThan2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p2:counter[17]~DUPLICATE_q\);

-- Location: LABCELL_X48_Y5_N51
\Add1~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~81_sumout\ = SUM(( \p2:counter[18]~DUPLICATE_q\ ) + ( GND ) + ( \Add1~78\ ))
-- \Add1~82\ = CARRY(( \p2:counter[18]~DUPLICATE_q\ ) + ( GND ) + ( \Add1~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_p2:counter[18]~DUPLICATE_q\,
	cin => \Add1~78\,
	sumout => \Add1~81_sumout\,
	cout => \Add1~82\);

-- Location: FF_X48_Y5_N53
\p2:counter[18]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freq|local_out~q\,
	d => \Add1~81_sumout\,
	clrn => \ALT_INV_LessThan2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p2:counter[18]~DUPLICATE_q\);

-- Location: LABCELL_X48_Y5_N54
\Add1~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~61_sumout\ = SUM(( \p2:counter[19]~DUPLICATE_q\ ) + ( GND ) + ( \Add1~82\ ))
-- \Add1~62\ = CARRY(( \p2:counter[19]~DUPLICATE_q\ ) + ( GND ) + ( \Add1~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_p2:counter[19]~DUPLICATE_q\,
	cin => \Add1~82\,
	sumout => \Add1~61_sumout\,
	cout => \Add1~62\);

-- Location: FF_X48_Y5_N55
\p2:counter[19]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freq|local_out~q\,
	d => \Add1~61_sumout\,
	clrn => \ALT_INV_LessThan2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p2:counter[19]~DUPLICATE_q\);

-- Location: LABCELL_X48_Y5_N57
\Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~29_sumout\ = SUM(( \p2:counter[20]~DUPLICATE_q\ ) + ( GND ) + ( \Add1~62\ ))
-- \Add1~30\ = CARRY(( \p2:counter[20]~DUPLICATE_q\ ) + ( GND ) + ( \Add1~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_p2:counter[20]~DUPLICATE_q\,
	cin => \Add1~62\,
	sumout => \Add1~29_sumout\,
	cout => \Add1~30\);

-- Location: FF_X48_Y5_N58
\p2:counter[20]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freq|local_out~q\,
	d => \Add1~29_sumout\,
	clrn => \ALT_INV_LessThan2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p2:counter[20]~DUPLICATE_q\);

-- Location: LABCELL_X48_Y4_N0
\Add1~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~33_sumout\ = SUM(( \p2:counter[21]~DUPLICATE_q\ ) + ( GND ) + ( \Add1~30\ ))
-- \Add1~34\ = CARRY(( \p2:counter[21]~DUPLICATE_q\ ) + ( GND ) + ( \Add1~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_p2:counter[21]~DUPLICATE_q\,
	cin => \Add1~30\,
	sumout => \Add1~33_sumout\,
	cout => \Add1~34\);

-- Location: FF_X48_Y4_N2
\p2:counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freq|local_out~q\,
	d => \Add1~33_sumout\,
	clrn => \ALT_INV_LessThan2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p2:counter[21]~q\);

-- Location: LABCELL_X48_Y4_N3
\Add1~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~37_sumout\ = SUM(( \p2:counter[22]~q\ ) + ( GND ) + ( \Add1~34\ ))
-- \Add1~38\ = CARRY(( \p2:counter[22]~q\ ) + ( GND ) + ( \Add1~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_p2:counter[22]~q\,
	cin => \Add1~34\,
	sumout => \Add1~37_sumout\,
	cout => \Add1~38\);

-- Location: FF_X48_Y4_N5
\p2:counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freq|local_out~q\,
	d => \Add1~37_sumout\,
	clrn => \ALT_INV_LessThan2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p2:counter[22]~q\);

-- Location: LABCELL_X48_Y4_N6
\Add1~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~41_sumout\ = SUM(( \p2:counter[23]~q\ ) + ( GND ) + ( \Add1~38\ ))
-- \Add1~42\ = CARRY(( \p2:counter[23]~q\ ) + ( GND ) + ( \Add1~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_p2:counter[23]~q\,
	cin => \Add1~38\,
	sumout => \Add1~41_sumout\,
	cout => \Add1~42\);

-- Location: FF_X48_Y4_N8
\p2:counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freq|local_out~q\,
	d => \Add1~41_sumout\,
	clrn => \ALT_INV_LessThan2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p2:counter[23]~q\);

-- Location: LABCELL_X48_Y4_N9
\Add1~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~45_sumout\ = SUM(( \p2:counter[24]~q\ ) + ( GND ) + ( \Add1~42\ ))
-- \Add1~46\ = CARRY(( \p2:counter[24]~q\ ) + ( GND ) + ( \Add1~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_p2:counter[24]~q\,
	cin => \Add1~42\,
	sumout => \Add1~45_sumout\,
	cout => \Add1~46\);

-- Location: FF_X48_Y4_N10
\p2:counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freq|local_out~q\,
	d => \Add1~45_sumout\,
	clrn => \ALT_INV_LessThan2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p2:counter[24]~q\);

-- Location: LABCELL_X48_Y4_N12
\Add1~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~49_sumout\ = SUM(( \p2:counter[25]~q\ ) + ( GND ) + ( \Add1~46\ ))
-- \Add1~50\ = CARRY(( \p2:counter[25]~q\ ) + ( GND ) + ( \Add1~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_p2:counter[25]~q\,
	cin => \Add1~46\,
	sumout => \Add1~49_sumout\,
	cout => \Add1~50\);

-- Location: FF_X48_Y4_N14
\p2:counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freq|local_out~q\,
	d => \Add1~49_sumout\,
	clrn => \ALT_INV_LessThan2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p2:counter[25]~q\);

-- Location: FF_X48_Y5_N59
\p2:counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freq|local_out~q\,
	d => \Add1~29_sumout\,
	clrn => \ALT_INV_LessThan2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p2:counter[20]~q\);

-- Location: LABCELL_X48_Y4_N39
\LessThan2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan2~1_combout\ = ( !\p2:counter[24]~q\ & ( !\p2:counter[20]~q\ & ( (!\p2:counter[21]~q\ & (!\p2:counter[23]~q\ & (!\p2:counter[25]~q\ & !\p2:counter[22]~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_p2:counter[21]~q\,
	datab => \ALT_INV_p2:counter[23]~q\,
	datac => \ALT_INV_p2:counter[25]~q\,
	datad => \ALT_INV_p2:counter[22]~q\,
	datae => \ALT_INV_p2:counter[24]~q\,
	dataf => \ALT_INV_p2:counter[20]~q\,
	combout => \LessThan2~1_combout\);

-- Location: LABCELL_X48_Y4_N15
\Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~9_sumout\ = SUM(( \p2:counter[26]~q\ ) + ( GND ) + ( \Add1~50\ ))
-- \Add1~10\ = CARRY(( \p2:counter[26]~q\ ) + ( GND ) + ( \Add1~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_p2:counter[26]~q\,
	cin => \Add1~50\,
	sumout => \Add1~9_sumout\,
	cout => \Add1~10\);

-- Location: FF_X48_Y4_N16
\p2:counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freq|local_out~q\,
	d => \Add1~9_sumout\,
	clrn => \ALT_INV_LessThan2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p2:counter[26]~q\);

-- Location: LABCELL_X48_Y4_N18
\Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~13_sumout\ = SUM(( \p2:counter[27]~DUPLICATE_q\ ) + ( GND ) + ( \Add1~10\ ))
-- \Add1~14\ = CARRY(( \p2:counter[27]~DUPLICATE_q\ ) + ( GND ) + ( \Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_p2:counter[27]~DUPLICATE_q\,
	cin => \Add1~10\,
	sumout => \Add1~13_sumout\,
	cout => \Add1~14\);

-- Location: FF_X48_Y4_N19
\p2:counter[27]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freq|local_out~q\,
	d => \Add1~13_sumout\,
	clrn => \ALT_INV_LessThan2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p2:counter[27]~DUPLICATE_q\);

-- Location: LABCELL_X48_Y4_N21
\Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~17_sumout\ = SUM(( \p2:counter[28]~q\ ) + ( GND ) + ( \Add1~14\ ))
-- \Add1~18\ = CARRY(( \p2:counter[28]~q\ ) + ( GND ) + ( \Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_p2:counter[28]~q\,
	cin => \Add1~14\,
	sumout => \Add1~17_sumout\,
	cout => \Add1~18\);

-- Location: FF_X48_Y4_N23
\p2:counter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freq|local_out~q\,
	d => \Add1~17_sumout\,
	clrn => \ALT_INV_LessThan2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p2:counter[28]~q\);

-- Location: LABCELL_X48_Y4_N24
\Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~21_sumout\ = SUM(( \p2:counter[29]~q\ ) + ( GND ) + ( \Add1~18\ ))
-- \Add1~22\ = CARRY(( \p2:counter[29]~q\ ) + ( GND ) + ( \Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_p2:counter[29]~q\,
	cin => \Add1~18\,
	sumout => \Add1~21_sumout\,
	cout => \Add1~22\);

-- Location: FF_X48_Y4_N26
\p2:counter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freq|local_out~q\,
	d => \Add1~21_sumout\,
	clrn => \ALT_INV_LessThan2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p2:counter[29]~q\);

-- Location: LABCELL_X48_Y4_N27
\Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~25_sumout\ = SUM(( \p2:counter[30]~q\ ) + ( GND ) + ( \Add1~22\ ))
-- \Add1~26\ = CARRY(( \p2:counter[30]~q\ ) + ( GND ) + ( \Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_p2:counter[30]~q\,
	cin => \Add1~22\,
	sumout => \Add1~25_sumout\,
	cout => \Add1~26\);

-- Location: FF_X48_Y4_N29
\p2:counter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freq|local_out~q\,
	d => \Add1~25_sumout\,
	clrn => \ALT_INV_LessThan2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p2:counter[30]~q\);

-- Location: LABCELL_X48_Y4_N30
\Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~5_sumout\ = SUM(( \p2:counter[31]~q\ ) + ( GND ) + ( \Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_p2:counter[31]~q\,
	cin => \Add1~26\,
	sumout => \Add1~5_sumout\);

-- Location: FF_X48_Y4_N32
\p2:counter[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freq|local_out~q\,
	d => \Add1~5_sumout\,
	clrn => \ALT_INV_LessThan2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p2:counter[31]~q\);

-- Location: FF_X48_Y4_N17
\p2:counter[26]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freq|local_out~q\,
	d => \Add1~9_sumout\,
	clrn => \ALT_INV_LessThan2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p2:counter[26]~DUPLICATE_q\);

-- Location: FF_X48_Y4_N20
\p2:counter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freq|local_out~q\,
	d => \Add1~13_sumout\,
	clrn => \ALT_INV_LessThan2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p2:counter[27]~q\);

-- Location: LABCELL_X48_Y4_N54
\LessThan2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan2~0_combout\ = ( !\p2:counter[29]~q\ & ( (!\p2:counter[28]~q\ & (!\p2:counter[26]~DUPLICATE_q\ & (!\p2:counter[27]~q\ & !\p2:counter[30]~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_p2:counter[28]~q\,
	datab => \ALT_INV_p2:counter[26]~DUPLICATE_q\,
	datac => \ALT_INV_p2:counter[27]~q\,
	datad => \ALT_INV_p2:counter[30]~q\,
	dataf => \ALT_INV_p2:counter[29]~q\,
	combout => \LessThan2~0_combout\);

-- Location: FF_X48_Y5_N56
\p2:counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freq|local_out~q\,
	d => \Add1~61_sumout\,
	clrn => \ALT_INV_LessThan2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p2:counter[19]~q\);

-- Location: FF_X48_Y5_N13
\p2:counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freq|local_out~q\,
	d => \Add1~53_sumout\,
	clrn => \ALT_INV_LessThan2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p2:counter[5]~q\);

-- Location: FF_X48_Y5_N28
\p2:counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freq|local_out~q\,
	d => \Add1~85_sumout\,
	clrn => \ALT_INV_LessThan2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p2:counter[10]~q\);

-- Location: FF_X48_Y5_N22
\p2:counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freq|local_out~q\,
	d => \Add1~93_sumout\,
	clrn => \ALT_INV_LessThan2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p2:counter[8]~q\);

-- Location: MLABCELL_X49_Y5_N57
\LessThan2~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan2~3_combout\ = ( !\p2:counter[8]~q\ & ( !\p2:counter[7]~q\ & ( (!\p2:counter[9]~q\ & (!\p2:counter[6]~q\ & !\p2:counter[10]~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_p2:counter[9]~q\,
	datac => \ALT_INV_p2:counter[6]~q\,
	datad => \ALT_INV_p2:counter[10]~q\,
	datae => \ALT_INV_p2:counter[8]~q\,
	dataf => \ALT_INV_p2:counter[7]~q\,
	combout => \LessThan2~3_combout\);

-- Location: FF_X48_Y5_N52
\p2:counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freq|local_out~q\,
	d => \Add1~81_sumout\,
	clrn => \ALT_INV_LessThan2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p2:counter[18]~q\);

-- Location: FF_X48_Y5_N49
\p2:counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freq|local_out~q\,
	d => \Add1~77_sumout\,
	clrn => \ALT_INV_LessThan2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p2:counter[17]~q\);

-- Location: FF_X48_Y5_N43
\p2:counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freq|local_out~q\,
	d => \Add1~69_sumout\,
	clrn => \ALT_INV_LessThan2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p2:counter[15]~q\);

-- Location: MLABCELL_X49_Y5_N36
\LessThan2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan2~2_combout\ = ( !\p2:counter[15]~q\ & ( !\p2:counter[14]~q\ & ( (!\p2:counter[18]~q\ & (!\p2:counter[16]~q\ & !\p2:counter[17]~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_p2:counter[18]~q\,
	datac => \ALT_INV_p2:counter[16]~q\,
	datad => \ALT_INV_p2:counter[17]~q\,
	datae => \ALT_INV_p2:counter[15]~q\,
	dataf => \ALT_INV_p2:counter[14]~q\,
	combout => \LessThan2~2_combout\);

-- Location: FF_X48_Y5_N34
\p2:counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freq|local_out~q\,
	d => \Add1~121_sumout\,
	clrn => \ALT_INV_LessThan2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p2:counter[12]~q\);

-- Location: FF_X48_Y5_N31
\p2:counter[11]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freq|local_out~q\,
	d => \Add1~117_sumout\,
	clrn => \ALT_INV_LessThan2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p2:counter[11]~DUPLICATE_q\);

-- Location: FF_X48_Y5_N4
\p2:counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freq|local_out~q\,
	d => \Add1~113_sumout\,
	clrn => \ALT_INV_LessThan2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p2:counter[2]~q\);

-- Location: FF_X48_Y5_N7
\p2:counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freq|local_out~q\,
	d => \Add1~109_sumout\,
	clrn => \ALT_INV_LessThan2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p2:counter[3]~q\);

-- Location: MLABCELL_X49_Y5_N24
\LessThan2~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan2~4_combout\ = ( !\p2:counter[3]~q\ & ( !\p2:counter[4]~q\ & ( (!\p2:counter[12]~q\ & (!\p2:counter[11]~DUPLICATE_q\ & !\p2:counter[2]~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_p2:counter[12]~q\,
	datac => \ALT_INV_p2:counter[11]~DUPLICATE_q\,
	datad => \ALT_INV_p2:counter[2]~q\,
	datae => \ALT_INV_p2:counter[3]~q\,
	dataf => \ALT_INV_p2:counter[4]~q\,
	combout => \LessThan2~4_combout\);

-- Location: MLABCELL_X49_Y5_N30
\LessThan2~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan2~5_combout\ = ( \LessThan2~2_combout\ & ( \LessThan2~4_combout\ & ( (!\p2:counter[13]~q\ & (!\p2:counter[19]~q\ & (!\p2:counter[5]~q\ & \LessThan2~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_p2:counter[13]~q\,
	datab => \ALT_INV_p2:counter[19]~q\,
	datac => \ALT_INV_p2:counter[5]~q\,
	datad => \ALT_INV_LessThan2~3_combout\,
	datae => \ALT_INV_LessThan2~2_combout\,
	dataf => \ALT_INV_LessThan2~4_combout\,
	combout => \LessThan2~5_combout\);

-- Location: LABCELL_X48_Y4_N45
\LessThan2~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan2~6_combout\ = ( \p2:counter[0]~DUPLICATE_q\ & ( \LessThan2~5_combout\ & ( (!\p2:counter[31]~q\ & ((!\LessThan2~1_combout\) # (!\LessThan2~0_combout\))) ) ) ) # ( !\p2:counter[0]~DUPLICATE_q\ & ( \LessThan2~5_combout\ & ( (!\p2:counter[31]~q\ & 
-- (((!\LessThan2~1_combout\) # (!\LessThan2~0_combout\)) # (\p2:counter[1]~q\))) ) ) ) # ( \p2:counter[0]~DUPLICATE_q\ & ( !\LessThan2~5_combout\ & ( !\p2:counter[31]~q\ ) ) ) # ( !\p2:counter[0]~DUPLICATE_q\ & ( !\LessThan2~5_combout\ & ( 
-- !\p2:counter[31]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000110100001111000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_p2:counter[1]~q\,
	datab => \ALT_INV_LessThan2~1_combout\,
	datac => \ALT_INV_p2:counter[31]~q\,
	datad => \ALT_INV_LessThan2~0_combout\,
	datae => \ALT_INV_p2:counter[0]~DUPLICATE_q\,
	dataf => \ALT_INV_LessThan2~5_combout\,
	combout => \LessThan2~6_combout\);

-- Location: FF_X48_Y5_N2
\p2:counter[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freq|local_out~q\,
	d => \Add1~1_sumout\,
	clrn => \ALT_INV_LessThan2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p2:counter[1]~DUPLICATE_q\);

-- Location: FF_X48_Y5_N1
\p2:counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freq|local_out~q\,
	d => \Add1~1_sumout\,
	clrn => \ALT_INV_LessThan2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p2:counter[1]~q\);

-- Location: MLABCELL_X49_Y4_N27
\Decoder0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Decoder0~1_combout\ = ( !\p1:counter[0]~DUPLICATE_q\ & ( \LessThan0~5_combout\ & ( (!\p1:counter[1]~q\ & (((\LessThan0~1_combout\ & \LessThan0~0_combout\)) # (\p1:counter[31]~q\))) ) ) ) # ( !\p1:counter[0]~DUPLICATE_q\ & ( !\LessThan0~5_combout\ & ( 
-- (!\p1:counter[1]~q\ & \p1:counter[31]~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000000000000000000100110011000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan0~1_combout\,
	datab => \ALT_INV_p1:counter[1]~q\,
	datac => \ALT_INV_LessThan0~0_combout\,
	datad => \ALT_INV_p1:counter[31]~q\,
	datae => \ALT_INV_p1:counter[0]~DUPLICATE_q\,
	dataf => \ALT_INV_LessThan0~5_combout\,
	combout => \Decoder0~1_combout\);

-- Location: FF_X49_Y4_N55
\X[1][1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uart_comm|rx_ready_aux~q\,
	asdata => \uart_comm|rx_data\(1),
	sload => VCC,
	ena => \Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \X[1][1][1]~q\);

-- Location: MLABCELL_X49_Y4_N9
\digit~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \digit~1_combout\ = ( \X[1][1][1]~q\ & ( (!\p2:counter[1]~q\) # (\X[1][2][1]~q\) ) ) # ( !\X[1][1][1]~q\ & ( (\X[1][2][1]~q\ & \p2:counter[1]~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_X[1][2][1]~q\,
	datad => \ALT_INV_p2:counter[1]~q\,
	dataf => \ALT_INV_X[1][1][1]~q\,
	combout => \digit~1_combout\);

-- Location: FF_X47_Y3_N37
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
	ena => \uart_comm|rx_buffer[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_comm|rx_buffer\(1));

-- Location: FF_X48_Y4_N59
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
	ena => \uart_comm|rx_data[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_comm|rx_data\(0));

-- Location: FF_X49_Y4_N25
\X[1][2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uart_comm|rx_ready_aux~q\,
	asdata => \uart_comm|rx_data\(0),
	sload => VCC,
	ena => \Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \X[1][2][0]~q\);

-- Location: FF_X49_Y4_N17
\X[1][1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uart_comm|rx_ready_aux~q\,
	asdata => \uart_comm|rx_data\(0),
	sload => VCC,
	ena => \Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \X[1][1][0]~q\);

-- Location: MLABCELL_X49_Y4_N21
\digit~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \digit~0_combout\ = ( \X[1][1][0]~q\ & ( (!\p2:counter[1]~q\) # (\X[1][2][0]~q\) ) ) # ( !\X[1][1][0]~q\ & ( (\X[1][2][0]~q\ & \p2:counter[1]~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111111111001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_X[1][2][0]~q\,
	datad => \ALT_INV_p2:counter[1]~q\,
	dataf => \ALT_INV_X[1][1][0]~q\,
	combout => \digit~0_combout\);

-- Location: LABCELL_X48_Y4_N51
\uart_comm|rx_data[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart_comm|rx_data[3]~feeder_combout\ = ( \uart_comm|rx_buffer\(4) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \uart_comm|ALT_INV_rx_buffer\(4),
	combout => \uart_comm|rx_data[3]~feeder_combout\);

-- Location: FF_X48_Y4_N53
\uart_comm|rx_data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \uart_comm|rx_data[3]~feeder_combout\,
	clrn => \reset~input_o\,
	ena => \uart_comm|rx_data[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_comm|rx_data\(3));

-- Location: FF_X49_Y4_N28
\X[1][2][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uart_comm|rx_ready_aux~q\,
	asdata => \uart_comm|rx_data\(3),
	sload => VCC,
	ena => \Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \X[1][2][3]~q\);

-- Location: FF_X49_Y4_N13
\X[1][1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uart_comm|rx_ready_aux~q\,
	asdata => \uart_comm|rx_data\(3),
	sload => VCC,
	ena => \Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \X[1][1][3]~q\);

-- Location: MLABCELL_X49_Y4_N36
\digit~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \digit~3_combout\ = ( \X[1][1][3]~q\ & ( (!\p2:counter[1]~q\) # (\X[1][2][3]~q\) ) ) # ( !\X[1][1][3]~q\ & ( (\X[1][2][3]~q\ & \p2:counter[1]~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111111111001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_X[1][2][3]~q\,
	datad => \ALT_INV_p2:counter[1]~q\,
	dataf => \ALT_INV_X[1][1][3]~q\,
	combout => \digit~3_combout\);

-- Location: LABCELL_X48_Y4_N48
\uart_comm|rx_data[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart_comm|rx_data[2]~feeder_combout\ = ( \uart_comm|rx_buffer\(3) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \uart_comm|ALT_INV_rx_buffer\(3),
	combout => \uart_comm|rx_data[2]~feeder_combout\);

-- Location: FF_X48_Y4_N49
\uart_comm|rx_data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \uart_comm|rx_data[2]~feeder_combout\,
	clrn => \reset~input_o\,
	ena => \uart_comm|rx_data[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_comm|rx_data\(2));

-- Location: FF_X49_Y4_N32
\X[1][1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uart_comm|rx_ready_aux~q\,
	asdata => \uart_comm|rx_data\(2),
	sload => VCC,
	ena => \Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \X[1][1][2]~q\);

-- Location: FF_X49_Y4_N53
\X[1][2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uart_comm|rx_ready_aux~q\,
	asdata => \uart_comm|rx_data\(2),
	sload => VCC,
	ena => \Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \X[1][2][2]~q\);

-- Location: MLABCELL_X49_Y4_N57
\digit~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \digit~2_combout\ = ( \p2:counter[1]~q\ & ( \X[1][2][2]~q\ ) ) # ( !\p2:counter[1]~q\ & ( \X[1][1][2]~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000000001111111100110011001100110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_X[1][1][2]~q\,
	datad => \ALT_INV_X[1][2][2]~q\,
	datae => \ALT_INV_p2:counter[1]~q\,
	combout => \digit~2_combout\);

-- Location: MLABCELL_X49_Y4_N6
\Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = ( \digit~2_combout\ & ( (\digit~1_combout\ & (\digit~0_combout\ & !\digit~3_combout\)) ) ) # ( !\digit~2_combout\ & ( (!\digit~1_combout\ & !\digit~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000000000101010100000000000010001000000000001000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_digit~1_combout\,
	datab => \ALT_INV_digit~0_combout\,
	datad => \ALT_INV_digit~3_combout\,
	dataf => \ALT_INV_digit~2_combout\,
	combout => \Mux6~0_combout\);

-- Location: FF_X49_Y4_N7
\digit[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freq|local_out~q\,
	d => \Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \digit[0]~reg0_q\);

-- Location: MLABCELL_X49_Y4_N18
\Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = ( !\digit~3_combout\ & ( (!\digit~1_combout\ & (\digit~0_combout\ & !\digit~2_combout\)) # (\digit~1_combout\ & ((!\digit~2_combout\) # (\digit~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111100000101010111110000010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_digit~1_combout\,
	datac => \ALT_INV_digit~0_combout\,
	datad => \ALT_INV_digit~2_combout\,
	dataf => \ALT_INV_digit~3_combout\,
	combout => \Mux5~0_combout\);

-- Location: FF_X49_Y4_N19
\digit[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freq|local_out~q\,
	d => \Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \digit[1]~reg0_q\);

-- Location: MLABCELL_X49_Y4_N3
\Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = ( \digit~2_combout\ & ( (!\digit~1_combout\) # (\digit~0_combout\) ) ) # ( !\digit~2_combout\ & ( \digit~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001110111011101110111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_digit~1_combout\,
	datab => \ALT_INV_digit~0_combout\,
	dataf => \ALT_INV_digit~2_combout\,
	combout => \Mux4~0_combout\);

-- Location: FF_X49_Y4_N5
\digit[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freq|local_out~q\,
	d => \Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \digit[2]~reg0_q\);

-- Location: MLABCELL_X49_Y4_N39
\Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = ( \digit~2_combout\ & ( (!\digit~3_combout\ & (!\digit~1_combout\ $ (\digit~0_combout\))) ) ) # ( !\digit~2_combout\ & ( (!\digit~1_combout\ & (\digit~0_combout\ & !\digit~3_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000000000010100000000010100101000000001010010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_digit~1_combout\,
	datac => \ALT_INV_digit~0_combout\,
	datad => \ALT_INV_digit~3_combout\,
	dataf => \ALT_INV_digit~2_combout\,
	combout => \Mux3~0_combout\);

-- Location: FF_X49_Y4_N40
\digit[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freq|local_out~q\,
	d => \Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \digit[3]~reg0_q\);

-- Location: MLABCELL_X49_Y4_N0
\Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = ( !\digit~2_combout\ & ( (\digit~1_combout\ & !\digit~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_digit~1_combout\,
	datab => \ALT_INV_digit~0_combout\,
	dataf => \ALT_INV_digit~2_combout\,
	combout => \Mux2~0_combout\);

-- Location: FF_X49_Y4_N2
\digit[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freq|local_out~q\,
	d => \Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \digit[4]~reg0_q\);

-- Location: MLABCELL_X49_Y4_N45
\Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = ( \digit~2_combout\ & ( !\digit~1_combout\ $ (!\digit~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_digit~1_combout\,
	datab => \ALT_INV_digit~0_combout\,
	dataf => \ALT_INV_digit~2_combout\,
	combout => \Mux1~0_combout\);

-- Location: FF_X49_Y4_N47
\digit[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freq|local_out~q\,
	d => \Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \digit[5]~reg0_q\);

-- Location: MLABCELL_X49_Y4_N42
\Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = ( !\digit~3_combout\ & ( (!\digit~1_combout\ & (!\digit~0_combout\ $ (!\digit~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001010001000001000101000100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_digit~1_combout\,
	datab => \ALT_INV_digit~0_combout\,
	datad => \ALT_INV_digit~2_combout\,
	dataf => \ALT_INV_digit~3_combout\,
	combout => \Mux0~0_combout\);

-- Location: FF_X49_Y4_N43
\digit[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freq|local_out~q\,
	d => \Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \digit[6]~reg0_q\);

-- Location: LABCELL_X35_Y15_N3
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



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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "11/25/2023 17:06:19"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          MatrixLinearRegression
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY MatrixLinearRegression_vhd_vec_tst IS
END MatrixLinearRegression_vhd_vec_tst;
ARCHITECTURE MatrixLinearRegression_arch OF MatrixLinearRegression_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL b1 : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL b2 : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL x11 : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL x12 : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL x21 : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL x22 : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL y1 : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL y2 : STD_LOGIC_VECTOR(15 DOWNTO 0);
COMPONENT MatrixLinearRegression
	PORT (
	b1 : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	b2 : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	x11 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	x12 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	x21 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	x22 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	y1 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	y2 : IN STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : MatrixLinearRegression
	PORT MAP (
-- list connections between master ports and signals
	b1 => b1,
	b2 => b2,
	x11 => x11,
	x12 => x12,
	x21 => x21,
	x22 => x22,
	y1 => y1,
	y2 => y2
	);
-- x11[15]
t_prcs_x11_15: PROCESS
BEGIN
	x11(15) <= '0';
WAIT;
END PROCESS t_prcs_x11_15;
-- x11[14]
t_prcs_x11_14: PROCESS
BEGIN
	x11(14) <= '0';
WAIT;
END PROCESS t_prcs_x11_14;
-- x11[13]
t_prcs_x11_13: PROCESS
BEGIN
	x11(13) <= '0';
WAIT;
END PROCESS t_prcs_x11_13;
-- x11[12]
t_prcs_x11_12: PROCESS
BEGIN
	x11(12) <= '0';
WAIT;
END PROCESS t_prcs_x11_12;
-- x11[11]
t_prcs_x11_11: PROCESS
BEGIN
	x11(11) <= '0';
WAIT;
END PROCESS t_prcs_x11_11;
-- x11[10]
t_prcs_x11_10: PROCESS
BEGIN
	x11(10) <= '0';
WAIT;
END PROCESS t_prcs_x11_10;
-- x11[9]
t_prcs_x11_9: PROCESS
BEGIN
	x11(9) <= '0';
WAIT;
END PROCESS t_prcs_x11_9;
-- x11[8]
t_prcs_x11_8: PROCESS
BEGIN
	x11(8) <= '0';
WAIT;
END PROCESS t_prcs_x11_8;
-- x11[7]
t_prcs_x11_7: PROCESS
BEGIN
	x11(7) <= '0';
WAIT;
END PROCESS t_prcs_x11_7;
-- x11[6]
t_prcs_x11_6: PROCESS
BEGIN
	x11(6) <= '0';
WAIT;
END PROCESS t_prcs_x11_6;
-- x11[5]
t_prcs_x11_5: PROCESS
BEGIN
	x11(5) <= '0';
WAIT;
END PROCESS t_prcs_x11_5;
-- x11[4]
t_prcs_x11_4: PROCESS
BEGIN
	x11(4) <= '0';
WAIT;
END PROCESS t_prcs_x11_4;
-- x11[3]
t_prcs_x11_3: PROCESS
BEGIN
	x11(3) <= '0';
WAIT;
END PROCESS t_prcs_x11_3;
-- x11[2]
t_prcs_x11_2: PROCESS
BEGIN
	x11(2) <= '0';
WAIT;
END PROCESS t_prcs_x11_2;
-- x11[1]
t_prcs_x11_1: PROCESS
BEGIN
	x11(1) <= '0';
WAIT;
END PROCESS t_prcs_x11_1;
-- x11[0]
t_prcs_x11_0: PROCESS
BEGIN
	x11(0) <= '1';
WAIT;
END PROCESS t_prcs_x11_0;
-- x12[15]
t_prcs_x12_15: PROCESS
BEGIN
	x12(15) <= '0';
WAIT;
END PROCESS t_prcs_x12_15;
-- x12[14]
t_prcs_x12_14: PROCESS
BEGIN
	x12(14) <= '0';
WAIT;
END PROCESS t_prcs_x12_14;
-- x12[13]
t_prcs_x12_13: PROCESS
BEGIN
	x12(13) <= '0';
WAIT;
END PROCESS t_prcs_x12_13;
-- x12[12]
t_prcs_x12_12: PROCESS
BEGIN
	x12(12) <= '0';
WAIT;
END PROCESS t_prcs_x12_12;
-- x12[11]
t_prcs_x12_11: PROCESS
BEGIN
	x12(11) <= '0';
WAIT;
END PROCESS t_prcs_x12_11;
-- x12[10]
t_prcs_x12_10: PROCESS
BEGIN
	x12(10) <= '0';
WAIT;
END PROCESS t_prcs_x12_10;
-- x12[9]
t_prcs_x12_9: PROCESS
BEGIN
	x12(9) <= '0';
WAIT;
END PROCESS t_prcs_x12_9;
-- x12[8]
t_prcs_x12_8: PROCESS
BEGIN
	x12(8) <= '0';
WAIT;
END PROCESS t_prcs_x12_8;
-- x12[7]
t_prcs_x12_7: PROCESS
BEGIN
	x12(7) <= '0';
WAIT;
END PROCESS t_prcs_x12_7;
-- x12[6]
t_prcs_x12_6: PROCESS
BEGIN
	x12(6) <= '0';
WAIT;
END PROCESS t_prcs_x12_6;
-- x12[5]
t_prcs_x12_5: PROCESS
BEGIN
	x12(5) <= '0';
WAIT;
END PROCESS t_prcs_x12_5;
-- x12[4]
t_prcs_x12_4: PROCESS
BEGIN
	x12(4) <= '0';
WAIT;
END PROCESS t_prcs_x12_4;
-- x12[3]
t_prcs_x12_3: PROCESS
BEGIN
	x12(3) <= '0';
WAIT;
END PROCESS t_prcs_x12_3;
-- x12[2]
t_prcs_x12_2: PROCESS
BEGIN
	x12(2) <= '0';
WAIT;
END PROCESS t_prcs_x12_2;
-- x12[1]
t_prcs_x12_1: PROCESS
BEGIN
	x12(1) <= '1';
WAIT;
END PROCESS t_prcs_x12_1;
-- x12[0]
t_prcs_x12_0: PROCESS
BEGIN
	x12(0) <= '0';
WAIT;
END PROCESS t_prcs_x12_0;
-- x21[15]
t_prcs_x21_15: PROCESS
BEGIN
	x21(15) <= '0';
WAIT;
END PROCESS t_prcs_x21_15;
-- x21[14]
t_prcs_x21_14: PROCESS
BEGIN
	x21(14) <= '0';
WAIT;
END PROCESS t_prcs_x21_14;
-- x21[13]
t_prcs_x21_13: PROCESS
BEGIN
	x21(13) <= '0';
WAIT;
END PROCESS t_prcs_x21_13;
-- x21[12]
t_prcs_x21_12: PROCESS
BEGIN
	x21(12) <= '0';
WAIT;
END PROCESS t_prcs_x21_12;
-- x21[11]
t_prcs_x21_11: PROCESS
BEGIN
	x21(11) <= '0';
WAIT;
END PROCESS t_prcs_x21_11;
-- x21[10]
t_prcs_x21_10: PROCESS
BEGIN
	x21(10) <= '0';
WAIT;
END PROCESS t_prcs_x21_10;
-- x21[9]
t_prcs_x21_9: PROCESS
BEGIN
	x21(9) <= '0';
WAIT;
END PROCESS t_prcs_x21_9;
-- x21[8]
t_prcs_x21_8: PROCESS
BEGIN
	x21(8) <= '0';
WAIT;
END PROCESS t_prcs_x21_8;
-- x21[7]
t_prcs_x21_7: PROCESS
BEGIN
	x21(7) <= '0';
WAIT;
END PROCESS t_prcs_x21_7;
-- x21[6]
t_prcs_x21_6: PROCESS
BEGIN
	x21(6) <= '0';
WAIT;
END PROCESS t_prcs_x21_6;
-- x21[5]
t_prcs_x21_5: PROCESS
BEGIN
	x21(5) <= '0';
WAIT;
END PROCESS t_prcs_x21_5;
-- x21[4]
t_prcs_x21_4: PROCESS
BEGIN
	x21(4) <= '0';
WAIT;
END PROCESS t_prcs_x21_4;
-- x21[3]
t_prcs_x21_3: PROCESS
BEGIN
	x21(3) <= '0';
WAIT;
END PROCESS t_prcs_x21_3;
-- x21[2]
t_prcs_x21_2: PROCESS
BEGIN
	x21(2) <= '0';
WAIT;
END PROCESS t_prcs_x21_2;
-- x21[1]
t_prcs_x21_1: PROCESS
BEGIN
	x21(1) <= '1';
WAIT;
END PROCESS t_prcs_x21_1;
-- x21[0]
t_prcs_x21_0: PROCESS
BEGIN
	x21(0) <= '1';
WAIT;
END PROCESS t_prcs_x21_0;
-- x22[15]
t_prcs_x22_15: PROCESS
BEGIN
	x22(15) <= '0';
WAIT;
END PROCESS t_prcs_x22_15;
-- x22[14]
t_prcs_x22_14: PROCESS
BEGIN
	x22(14) <= '0';
WAIT;
END PROCESS t_prcs_x22_14;
-- x22[13]
t_prcs_x22_13: PROCESS
BEGIN
	x22(13) <= '0';
WAIT;
END PROCESS t_prcs_x22_13;
-- x22[12]
t_prcs_x22_12: PROCESS
BEGIN
	x22(12) <= '0';
WAIT;
END PROCESS t_prcs_x22_12;
-- x22[11]
t_prcs_x22_11: PROCESS
BEGIN
	x22(11) <= '0';
WAIT;
END PROCESS t_prcs_x22_11;
-- x22[10]
t_prcs_x22_10: PROCESS
BEGIN
	x22(10) <= '0';
WAIT;
END PROCESS t_prcs_x22_10;
-- x22[9]
t_prcs_x22_9: PROCESS
BEGIN
	x22(9) <= '0';
WAIT;
END PROCESS t_prcs_x22_9;
-- x22[8]
t_prcs_x22_8: PROCESS
BEGIN
	x22(8) <= '0';
WAIT;
END PROCESS t_prcs_x22_8;
-- x22[7]
t_prcs_x22_7: PROCESS
BEGIN
	x22(7) <= '0';
WAIT;
END PROCESS t_prcs_x22_7;
-- x22[6]
t_prcs_x22_6: PROCESS
BEGIN
	x22(6) <= '0';
WAIT;
END PROCESS t_prcs_x22_6;
-- x22[5]
t_prcs_x22_5: PROCESS
BEGIN
	x22(5) <= '0';
WAIT;
END PROCESS t_prcs_x22_5;
-- x22[4]
t_prcs_x22_4: PROCESS
BEGIN
	x22(4) <= '0';
WAIT;
END PROCESS t_prcs_x22_4;
-- x22[3]
t_prcs_x22_3: PROCESS
BEGIN
	x22(3) <= '0';
WAIT;
END PROCESS t_prcs_x22_3;
-- x22[2]
t_prcs_x22_2: PROCESS
BEGIN
	x22(2) <= '1';
WAIT;
END PROCESS t_prcs_x22_2;
-- x22[1]
t_prcs_x22_1: PROCESS
BEGIN
	x22(1) <= '0';
WAIT;
END PROCESS t_prcs_x22_1;
-- x22[0]
t_prcs_x22_0: PROCESS
BEGIN
	x22(0) <= '0';
WAIT;
END PROCESS t_prcs_x22_0;
-- y1[15]
t_prcs_y1_15: PROCESS
BEGIN
	y1(15) <= '0';
WAIT;
END PROCESS t_prcs_y1_15;
-- y1[14]
t_prcs_y1_14: PROCESS
BEGIN
	y1(14) <= '0';
WAIT;
END PROCESS t_prcs_y1_14;
-- y1[13]
t_prcs_y1_13: PROCESS
BEGIN
	y1(13) <= '0';
WAIT;
END PROCESS t_prcs_y1_13;
-- y1[12]
t_prcs_y1_12: PROCESS
BEGIN
	y1(12) <= '0';
WAIT;
END PROCESS t_prcs_y1_12;
-- y1[11]
t_prcs_y1_11: PROCESS
BEGIN
	y1(11) <= '0';
WAIT;
END PROCESS t_prcs_y1_11;
-- y1[10]
t_prcs_y1_10: PROCESS
BEGIN
	y1(10) <= '0';
WAIT;
END PROCESS t_prcs_y1_10;
-- y1[9]
t_prcs_y1_9: PROCESS
BEGIN
	y1(9) <= '0';
WAIT;
END PROCESS t_prcs_y1_9;
-- y1[8]
t_prcs_y1_8: PROCESS
BEGIN
	y1(8) <= '0';
WAIT;
END PROCESS t_prcs_y1_8;
-- y1[7]
t_prcs_y1_7: PROCESS
BEGIN
	y1(7) <= '0';
WAIT;
END PROCESS t_prcs_y1_7;
-- y1[6]
t_prcs_y1_6: PROCESS
BEGIN
	y1(6) <= '0';
WAIT;
END PROCESS t_prcs_y1_6;
-- y1[5]
t_prcs_y1_5: PROCESS
BEGIN
	y1(5) <= '0';
WAIT;
END PROCESS t_prcs_y1_5;
-- y1[4]
t_prcs_y1_4: PROCESS
BEGIN
	y1(4) <= '0';
WAIT;
END PROCESS t_prcs_y1_4;
-- y1[3]
t_prcs_y1_3: PROCESS
BEGIN
	y1(3) <= '0';
WAIT;
END PROCESS t_prcs_y1_3;
-- y1[2]
t_prcs_y1_2: PROCESS
BEGIN
	y1(2) <= '1';
WAIT;
END PROCESS t_prcs_y1_2;
-- y1[1]
t_prcs_y1_1: PROCESS
BEGIN
	y1(1) <= '0';
WAIT;
END PROCESS t_prcs_y1_1;
-- y1[0]
t_prcs_y1_0: PROCESS
BEGIN
	y1(0) <= '1';
WAIT;
END PROCESS t_prcs_y1_0;
-- y2[15]
t_prcs_y2_15: PROCESS
BEGIN
	y2(15) <= '0';
WAIT;
END PROCESS t_prcs_y2_15;
-- y2[14]
t_prcs_y2_14: PROCESS
BEGIN
	y2(14) <= '0';
WAIT;
END PROCESS t_prcs_y2_14;
-- y2[13]
t_prcs_y2_13: PROCESS
BEGIN
	y2(13) <= '0';
WAIT;
END PROCESS t_prcs_y2_13;
-- y2[12]
t_prcs_y2_12: PROCESS
BEGIN
	y2(12) <= '0';
WAIT;
END PROCESS t_prcs_y2_12;
-- y2[11]
t_prcs_y2_11: PROCESS
BEGIN
	y2(11) <= '0';
WAIT;
END PROCESS t_prcs_y2_11;
-- y2[10]
t_prcs_y2_10: PROCESS
BEGIN
	y2(10) <= '0';
WAIT;
END PROCESS t_prcs_y2_10;
-- y2[9]
t_prcs_y2_9: PROCESS
BEGIN
	y2(9) <= '0';
WAIT;
END PROCESS t_prcs_y2_9;
-- y2[8]
t_prcs_y2_8: PROCESS
BEGIN
	y2(8) <= '0';
WAIT;
END PROCESS t_prcs_y2_8;
-- y2[7]
t_prcs_y2_7: PROCESS
BEGIN
	y2(7) <= '0';
WAIT;
END PROCESS t_prcs_y2_7;
-- y2[6]
t_prcs_y2_6: PROCESS
BEGIN
	y2(6) <= '0';
WAIT;
END PROCESS t_prcs_y2_6;
-- y2[5]
t_prcs_y2_5: PROCESS
BEGIN
	y2(5) <= '0';
WAIT;
END PROCESS t_prcs_y2_5;
-- y2[4]
t_prcs_y2_4: PROCESS
BEGIN
	y2(4) <= '0';
WAIT;
END PROCESS t_prcs_y2_4;
-- y2[3]
t_prcs_y2_3: PROCESS
BEGIN
	y2(3) <= '1';
WAIT;
END PROCESS t_prcs_y2_3;
-- y2[2]
t_prcs_y2_2: PROCESS
BEGIN
	y2(2) <= '0';
WAIT;
END PROCESS t_prcs_y2_2;
-- y2[1]
t_prcs_y2_1: PROCESS
BEGIN
	y2(1) <= '1';
WAIT;
END PROCESS t_prcs_y2_1;
-- y2[0]
t_prcs_y2_0: PROCESS
BEGIN
	y2(0) <= '1';
WAIT;
END PROCESS t_prcs_y2_0;
END MatrixLinearRegression_arch;

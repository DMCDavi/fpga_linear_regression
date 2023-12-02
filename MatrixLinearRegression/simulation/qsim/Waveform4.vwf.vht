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
-- Generated on "12/01/2023 17:15:01"
                                                             
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
SIGNAL clk : STD_LOGIC;
SIGNAL digit : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL init_transmission : STD_LOGIC;
SIGNAL reset : STD_LOGIC;
SIGNAL rx : STD_LOGIC;
SIGNAL tx : STD_LOGIC;
COMPONENT MatrixLinearRegression
	PORT (
	clk : IN STD_LOGIC;
	digit : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	init_transmission : IN STD_LOGIC;
	reset : IN STD_LOGIC;
	rx : IN STD_LOGIC;
	tx : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : MatrixLinearRegression
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	digit => digit,
	init_transmission => init_transmission,
	reset => reset,
	rx => rx,
	tx => tx
	);
END MatrixLinearRegression_arch;

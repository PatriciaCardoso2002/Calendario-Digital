-- Copyright (C) 2017  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "06/08/2021 11:45:19"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          SyncGen
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY SyncGen_vhd_vec_tst IS
END SyncGen_vhd_vec_tst;
ARCHITECTURE SyncGen_arch OF SyncGen_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clock_50 : STD_LOGIC;
SIGNAL pulseOut0 : STD_LOGIC;
SIGNAL pulseOut1 : STD_LOGIC;
SIGNAL pulseOut2 : STD_LOGIC;
COMPONENT SyncGen
	PORT (
	clock_50 : IN STD_LOGIC;
	pulseOut0 : BUFFER STD_LOGIC;
	pulseOut1 : BUFFER STD_LOGIC;
	pulseOut2 : BUFFER STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : SyncGen
	PORT MAP (
-- list connections between master ports and signals
	clock_50 => clock_50,
	pulseOut0 => pulseOut0,
	pulseOut1 => pulseOut1,
	pulseOut2 => pulseOut2
	);

-- clock_50
t_prcs_clock_50: PROCESS
BEGIN
LOOP
	clock_50 <= '0';
	WAIT FOR 5000 ps;
	clock_50 <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clock_50;
END SyncGen_arch;

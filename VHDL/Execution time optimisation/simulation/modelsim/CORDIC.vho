-- Copyright (C) 2018  Intel Corporation. All rights reserved.
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

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "05/19/2021 12:43:40"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_P28,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	CORDIC_time IS
    PORT (
	i_x : IN std_logic_vector(15 DOWNTO 0);
	i_y : IN std_logic_vector(15 DOWNTO 0);
	o_z : OUT std_logic_vector(15 DOWNTO 0);
	i_enable_cordic : IN std_logic;
	o_done : OUT std_logic;
	clk_in : IN std_logic;
	state_LED : OUT std_logic_vector(3 DOWNTO 0);
	LUT_TEST : OUT std_logic_vector(15 DOWNTO 0)
	);
END CORDIC_time;

-- Design Ports Information
-- i_x[0]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_x[1]	=>  Location: PIN_D23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_x[2]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_x[3]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_x[4]	=>  Location: PIN_V4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_x[5]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_x[6]	=>  Location: PIN_F26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_x[7]	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_x[8]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_x[9]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_x[10]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_x[11]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_x[12]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_x[13]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_x[14]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_x[15]	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_y[0]	=>  Location: PIN_AE7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_y[1]	=>  Location: PIN_AE26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_y[2]	=>  Location: PIN_AF12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_y[3]	=>  Location: PIN_U24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_y[4]	=>  Location: PIN_AE6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_y[5]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_y[6]	=>  Location: PIN_W3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_y[7]	=>  Location: PIN_H8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_y[8]	=>  Location: PIN_AB24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_y[9]	=>  Location: PIN_AC24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_y[10]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_y[11]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_y[12]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_y[13]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_y[14]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_y[15]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_z[0]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_z[1]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_z[2]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_z[3]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_z[4]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_z[5]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_z[6]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_z[7]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_z[8]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_z[9]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_z[10]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_z[11]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_z[12]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_z[13]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_z[14]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_z[15]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_done	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- state_LED[0]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- state_LED[1]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- state_LED[2]	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- state_LED[3]	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LUT_TEST[0]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LUT_TEST[1]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LUT_TEST[2]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LUT_TEST[3]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LUT_TEST[4]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LUT_TEST[5]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LUT_TEST[6]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LUT_TEST[7]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LUT_TEST[8]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LUT_TEST[9]	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LUT_TEST[10]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LUT_TEST[11]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LUT_TEST[12]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LUT_TEST[13]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LUT_TEST[14]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LUT_TEST[15]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_in	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_enable_cordic	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF CORDIC_time IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_i_x : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_i_y : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_o_z : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_i_enable_cordic : std_logic;
SIGNAL ww_o_done : std_logic;
SIGNAL ww_clk_in : std_logic;
SIGNAL ww_state_LED : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_LUT_TEST : std_logic_vector(15 DOWNTO 0);
SIGNAL \clk_in~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clock_divider_x|tmp~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \i_mem_enable_Y~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \i_mem_enable_X~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \i_x[0]~input_o\ : std_logic;
SIGNAL \i_x[1]~input_o\ : std_logic;
SIGNAL \i_x[2]~input_o\ : std_logic;
SIGNAL \i_x[3]~input_o\ : std_logic;
SIGNAL \i_x[4]~input_o\ : std_logic;
SIGNAL \i_x[5]~input_o\ : std_logic;
SIGNAL \i_x[6]~input_o\ : std_logic;
SIGNAL \i_x[7]~input_o\ : std_logic;
SIGNAL \i_x[8]~input_o\ : std_logic;
SIGNAL \i_x[9]~input_o\ : std_logic;
SIGNAL \i_x[10]~input_o\ : std_logic;
SIGNAL \i_x[11]~input_o\ : std_logic;
SIGNAL \i_x[12]~input_o\ : std_logic;
SIGNAL \i_x[13]~input_o\ : std_logic;
SIGNAL \i_x[14]~input_o\ : std_logic;
SIGNAL \i_x[15]~input_o\ : std_logic;
SIGNAL \i_y[0]~input_o\ : std_logic;
SIGNAL \i_y[1]~input_o\ : std_logic;
SIGNAL \i_y[2]~input_o\ : std_logic;
SIGNAL \i_y[3]~input_o\ : std_logic;
SIGNAL \i_y[4]~input_o\ : std_logic;
SIGNAL \i_y[5]~input_o\ : std_logic;
SIGNAL \i_y[6]~input_o\ : std_logic;
SIGNAL \i_y[7]~input_o\ : std_logic;
SIGNAL \i_y[8]~input_o\ : std_logic;
SIGNAL \i_y[9]~input_o\ : std_logic;
SIGNAL \i_y[10]~input_o\ : std_logic;
SIGNAL \i_y[11]~input_o\ : std_logic;
SIGNAL \i_y[12]~input_o\ : std_logic;
SIGNAL \i_y[13]~input_o\ : std_logic;
SIGNAL \i_y[14]~input_o\ : std_logic;
SIGNAL \i_y[15]~input_o\ : std_logic;
SIGNAL \o_z[0]~output_o\ : std_logic;
SIGNAL \o_z[1]~output_o\ : std_logic;
SIGNAL \o_z[2]~output_o\ : std_logic;
SIGNAL \o_z[3]~output_o\ : std_logic;
SIGNAL \o_z[4]~output_o\ : std_logic;
SIGNAL \o_z[5]~output_o\ : std_logic;
SIGNAL \o_z[6]~output_o\ : std_logic;
SIGNAL \o_z[7]~output_o\ : std_logic;
SIGNAL \o_z[8]~output_o\ : std_logic;
SIGNAL \o_z[9]~output_o\ : std_logic;
SIGNAL \o_z[10]~output_o\ : std_logic;
SIGNAL \o_z[11]~output_o\ : std_logic;
SIGNAL \o_z[12]~output_o\ : std_logic;
SIGNAL \o_z[13]~output_o\ : std_logic;
SIGNAL \o_z[14]~output_o\ : std_logic;
SIGNAL \o_z[15]~output_o\ : std_logic;
SIGNAL \o_done~output_o\ : std_logic;
SIGNAL \state_LED[0]~output_o\ : std_logic;
SIGNAL \state_LED[1]~output_o\ : std_logic;
SIGNAL \state_LED[2]~output_o\ : std_logic;
SIGNAL \state_LED[3]~output_o\ : std_logic;
SIGNAL \LUT_TEST[0]~output_o\ : std_logic;
SIGNAL \LUT_TEST[1]~output_o\ : std_logic;
SIGNAL \LUT_TEST[2]~output_o\ : std_logic;
SIGNAL \LUT_TEST[3]~output_o\ : std_logic;
SIGNAL \LUT_TEST[4]~output_o\ : std_logic;
SIGNAL \LUT_TEST[5]~output_o\ : std_logic;
SIGNAL \LUT_TEST[6]~output_o\ : std_logic;
SIGNAL \LUT_TEST[7]~output_o\ : std_logic;
SIGNAL \LUT_TEST[8]~output_o\ : std_logic;
SIGNAL \LUT_TEST[9]~output_o\ : std_logic;
SIGNAL \LUT_TEST[10]~output_o\ : std_logic;
SIGNAL \LUT_TEST[11]~output_o\ : std_logic;
SIGNAL \LUT_TEST[12]~output_o\ : std_logic;
SIGNAL \LUT_TEST[13]~output_o\ : std_logic;
SIGNAL \LUT_TEST[14]~output_o\ : std_logic;
SIGNAL \LUT_TEST[15]~output_o\ : std_logic;
SIGNAL \clk_in~input_o\ : std_logic;
SIGNAL \clk_in~inputclkctrl_outclk\ : std_logic;
SIGNAL \clock_divider_x|Add0~0_combout\ : std_logic;
SIGNAL \clock_divider_x|count[0]~7_combout\ : std_logic;
SIGNAL \clock_divider_x|Add0~1\ : std_logic;
SIGNAL \clock_divider_x|Add0~2_combout\ : std_logic;
SIGNAL \clock_divider_x|Add0~3\ : std_logic;
SIGNAL \clock_divider_x|Add0~4_combout\ : std_logic;
SIGNAL \clock_divider_x|Add0~5\ : std_logic;
SIGNAL \clock_divider_x|Add0~6_combout\ : std_logic;
SIGNAL \clock_divider_x|Add0~7\ : std_logic;
SIGNAL \clock_divider_x|Add0~8_combout\ : std_logic;
SIGNAL \clock_divider_x|count~6_combout\ : std_logic;
SIGNAL \clock_divider_x|Add0~9\ : std_logic;
SIGNAL \clock_divider_x|Add0~10_combout\ : std_logic;
SIGNAL \clock_divider_x|Add0~11\ : std_logic;
SIGNAL \clock_divider_x|Add0~12_combout\ : std_logic;
SIGNAL \clock_divider_x|Add0~13\ : std_logic;
SIGNAL \clock_divider_x|Add0~14_combout\ : std_logic;
SIGNAL \clock_divider_x|count~5_combout\ : std_logic;
SIGNAL \clock_divider_x|Add0~15\ : std_logic;
SIGNAL \clock_divider_x|Add0~16_combout\ : std_logic;
SIGNAL \clock_divider_x|Add0~17\ : std_logic;
SIGNAL \clock_divider_x|Add0~18_combout\ : std_logic;
SIGNAL \clock_divider_x|Add0~19\ : std_logic;
SIGNAL \clock_divider_x|Add0~20_combout\ : std_logic;
SIGNAL \clock_divider_x|Add0~21\ : std_logic;
SIGNAL \clock_divider_x|Add0~22_combout\ : std_logic;
SIGNAL \clock_divider_x|Add0~23\ : std_logic;
SIGNAL \clock_divider_x|Add0~25\ : std_logic;
SIGNAL \clock_divider_x|Add0~26_combout\ : std_logic;
SIGNAL \clock_divider_x|Add0~27\ : std_logic;
SIGNAL \clock_divider_x|Add0~28_combout\ : std_logic;
SIGNAL \clock_divider_x|count~3_combout\ : std_logic;
SIGNAL \clock_divider_x|Add0~29\ : std_logic;
SIGNAL \clock_divider_x|Add0~30_combout\ : std_logic;
SIGNAL \clock_divider_x|count~2_combout\ : std_logic;
SIGNAL \clock_divider_x|Add0~31\ : std_logic;
SIGNAL \clock_divider_x|Add0~32_combout\ : std_logic;
SIGNAL \clock_divider_x|count~1_combout\ : std_logic;
SIGNAL \clock_divider_x|Add0~33\ : std_logic;
SIGNAL \clock_divider_x|Add0~34_combout\ : std_logic;
SIGNAL \clock_divider_x|count~0_combout\ : std_logic;
SIGNAL \clock_divider_x|Add0~35\ : std_logic;
SIGNAL \clock_divider_x|Add0~36_combout\ : std_logic;
SIGNAL \clock_divider_x|Add0~37\ : std_logic;
SIGNAL \clock_divider_x|Add0~38_combout\ : std_logic;
SIGNAL \clock_divider_x|Equal0~3_combout\ : std_logic;
SIGNAL \clock_divider_x|Add0~39\ : std_logic;
SIGNAL \clock_divider_x|Add0~40_combout\ : std_logic;
SIGNAL \clock_divider_x|Add0~41\ : std_logic;
SIGNAL \clock_divider_x|Add0~42_combout\ : std_logic;
SIGNAL \clock_divider_x|Add0~43\ : std_logic;
SIGNAL \clock_divider_x|Add0~44_combout\ : std_logic;
SIGNAL \clock_divider_x|Add0~45\ : std_logic;
SIGNAL \clock_divider_x|Add0~46_combout\ : std_logic;
SIGNAL \clock_divider_x|Add0~47\ : std_logic;
SIGNAL \clock_divider_x|Add0~48_combout\ : std_logic;
SIGNAL \clock_divider_x|Add0~49\ : std_logic;
SIGNAL \clock_divider_x|Add0~50_combout\ : std_logic;
SIGNAL \clock_divider_x|Add0~51\ : std_logic;
SIGNAL \clock_divider_x|Add0~52_combout\ : std_logic;
SIGNAL \clock_divider_x|Add0~53\ : std_logic;
SIGNAL \clock_divider_x|Add0~54_combout\ : std_logic;
SIGNAL \clock_divider_x|Add0~55\ : std_logic;
SIGNAL \clock_divider_x|Add0~56_combout\ : std_logic;
SIGNAL \clock_divider_x|Add0~57\ : std_logic;
SIGNAL \clock_divider_x|Add0~58_combout\ : std_logic;
SIGNAL \clock_divider_x|Add0~59\ : std_logic;
SIGNAL \clock_divider_x|Add0~60_combout\ : std_logic;
SIGNAL \clock_divider_x|Add0~61\ : std_logic;
SIGNAL \clock_divider_x|Add0~62_combout\ : std_logic;
SIGNAL \clock_divider_x|Equal0~0_combout\ : std_logic;
SIGNAL \clock_divider_x|Equal0~1_combout\ : std_logic;
SIGNAL \clock_divider_x|Equal0~2_combout\ : std_logic;
SIGNAL \clock_divider_x|Equal0~4_combout\ : std_logic;
SIGNAL \clock_divider_x|Add0~24_combout\ : std_logic;
SIGNAL \clock_divider_x|count~4_combout\ : std_logic;
SIGNAL \clock_divider_x|Equal0~5_combout\ : std_logic;
SIGNAL \clock_divider_x|Equal0~6_combout\ : std_logic;
SIGNAL \clock_divider_x|Equal0~7_combout\ : std_logic;
SIGNAL \clock_divider_x|Equal0~8_combout\ : std_logic;
SIGNAL \clock_divider_x|Equal0~9_combout\ : std_logic;
SIGNAL \clock_divider_x|tmp~0_combout\ : std_logic;
SIGNAL \clock_divider_x|tmp~q\ : std_logic;
SIGNAL \clock_divider_x|tmp~clkctrl_outclk\ : std_logic;
SIGNAL \i_enable_cordic~input_o\ : std_logic;
SIGNAL \Debounce_INST|OP1~feeder_combout\ : std_logic;
SIGNAL \Debounce_INST|OP1~q\ : std_logic;
SIGNAL \Debounce_INST|OP2~feeder_combout\ : std_logic;
SIGNAL \Debounce_INST|OP2~q\ : std_logic;
SIGNAL \Debounce_INST|OP_DATA~1_combout\ : std_logic;
SIGNAL \Debounce_INST|OP3~q\ : std_logic;
SIGNAL \Debounce_INST|OP4~feeder_combout\ : std_logic;
SIGNAL \Debounce_INST|OP4~q\ : std_logic;
SIGNAL \Debounce_INST|OP5~q\ : std_logic;
SIGNAL \Debounce_INST|OP6~q\ : std_logic;
SIGNAL \Debounce_INST|OP_DATA~0_combout\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \state.idle~q\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \Selector6~0_combout\ : std_logic;
SIGNAL \i_reset~q\ : std_logic;
SIGNAL \iteration_counter_INST|cnt[0]~0_combout\ : std_logic;
SIGNAL \iteration_counter_INST|cnt[0]~1_combout\ : std_logic;
SIGNAL \iteration_counter_INST|cnt[1]~2_combout\ : std_logic;
SIGNAL \iteration_counter_INST|Add0~0_combout\ : std_logic;
SIGNAL \iteration_counter_INST|cnt[2]~3_combout\ : std_logic;
SIGNAL \iteration_counter_INST|cnt[3]~4_combout\ : std_logic;
SIGNAL \iteration_counter_INST|cnt[3]~5_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Selector3~1_combout\ : std_logic;
SIGNAL \state.run~q\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \state.done~q\ : std_logic;
SIGNAL \Selector54~0_combout\ : std_logic;
SIGNAL \LUT_16_INST|rom~0_combout\ : std_logic;
SIGNAL \bit_shift_INST_x|ShiftRight0~15_combout\ : std_logic;
SIGNAL \LUT_16_INST|rom~14_combout\ : std_logic;
SIGNAL \bit_shift_INST_x|ShiftRight0~17_combout\ : std_logic;
SIGNAL \bit_shift_INST_y|ShiftRight0~22_combout\ : std_logic;
SIGNAL \bit_shift_INST_y|ShiftRight0~23_combout\ : std_logic;
SIGNAL \bit_shift_INST_y|ShiftRight0~25_combout\ : std_logic;
SIGNAL \bit_shift_INST_y|ShiftRight0~26_combout\ : std_logic;
SIGNAL \bit_shift_INST_y|ShiftRight0~30_combout\ : std_logic;
SIGNAL \bit_shift_INST_x|ShiftRight0~70_combout\ : std_logic;
SIGNAL \bit_shift_INST_y|ShiftRight0~41_combout\ : std_logic;
SIGNAL \bit_shift_INST_x|ShiftRight0~39_combout\ : std_logic;
SIGNAL \bit_shift_INST_x|ShiftRight0~40_combout\ : std_logic;
SIGNAL \bit_shift_INST_x|ShiftRight0~12_combout\ : std_logic;
SIGNAL \bit_shift_INST_x|ShiftRight0~38_combout\ : std_logic;
SIGNAL \sign_inverter_INST_y|Add0~20_combout\ : std_logic;
SIGNAL \sign_inverter_INST_y|o_SI[10]~5_combout\ : std_logic;
SIGNAL \bit_shift_INST_y|ShiftRight0~47_combout\ : std_logic;
SIGNAL \bit_shift_INST_x|ShiftRight0~32_combout\ : std_logic;
SIGNAL \bit_shift_INST_x|ShiftRight0~48_combout\ : std_logic;
SIGNAL \bit_shift_INST_y|ShiftRight0~12_combout\ : std_logic;
SIGNAL \bit_shift_INST_y|ShiftRight0~52_combout\ : std_logic;
SIGNAL \bit_shift_INST_y|ShiftRight0~53_combout\ : std_logic;
SIGNAL \bit_shift_INST_y|ShiftRight0~54_combout\ : std_logic;
SIGNAL \bit_shift_INST_y|ShiftRight0~55_combout\ : std_logic;
SIGNAL \bit_shift_INST_x|ShiftRight0~22_combout\ : std_logic;
SIGNAL \bit_shift_INST_x|ShiftRight0~23_combout\ : std_logic;
SIGNAL \bit_shift_INST_x|ShiftRight0~25_combout\ : std_logic;
SIGNAL \bit_shift_INST_x|ShiftRight0~30_combout\ : std_logic;
SIGNAL \bit_shift_INST_y|ShiftRight0~13_combout\ : std_logic;
SIGNAL \bit_shift_INST_x|ShiftRight0~44_combout\ : std_logic;
SIGNAL \bit_shift_INST_x|ShiftRight0~46_combout\ : std_logic;
SIGNAL \sign_inverter_INST_y|o_SI[0]~15_combout\ : std_logic;
SIGNAL \r_xn[0]~16_combout\ : std_logic;
SIGNAL \bit_shift_INST_x|ShiftRight0~64_combout\ : std_logic;
SIGNAL \bit_shift_INST_x|ShiftRight0~65_combout\ : std_logic;
SIGNAL \bit_shift_INST_x|ShiftRight0~63_combout\ : std_logic;
SIGNAL \bit_shift_INST_x|ShiftRight0~66_combout\ : std_logic;
SIGNAL \sign_inverter_INST_x|o_SI[0]~15_combout\ : std_logic;
SIGNAL \r_yn[0]~16_combout\ : std_logic;
SIGNAL \bit_shift_INST_y|ShiftRight0~63_combout\ : std_logic;
SIGNAL \bit_shift_INST_y|ShiftRight0~64_combout\ : std_logic;
SIGNAL \bit_shift_INST_y|ShiftRight0~17_combout\ : std_logic;
SIGNAL \bit_shift_INST_y|ShiftRight0~32_combout\ : std_logic;
SIGNAL \bit_shift_INST_y|ShiftRight0~62_combout\ : std_logic;
SIGNAL \bit_shift_INST_y|ShiftRight0~65_combout\ : std_logic;
SIGNAL \sign_inverter_INST_y|Add0~1_cout\ : std_logic;
SIGNAL \sign_inverter_INST_y|Add0~2_combout\ : std_logic;
SIGNAL \sign_inverter_INST_y|o_SI[1]~14_combout\ : std_logic;
SIGNAL \r_xn[0]~17\ : std_logic;
SIGNAL \r_xn[1]~18_combout\ : std_logic;
SIGNAL \i_mem_enable_X~feeder_combout\ : std_logic;
SIGNAL \i_mem_enable_X~q\ : std_logic;
SIGNAL \i_mem_enable_X~clkctrl_outclk\ : std_logic;
SIGNAL \LUT_COUNTER[0]~32_combout\ : std_logic;
SIGNAL \LUT_COUNTER[0]~33\ : std_logic;
SIGNAL \LUT_COUNTER[1]~34_combout\ : std_logic;
SIGNAL \LUT_COUNTER[1]~35\ : std_logic;
SIGNAL \LUT_COUNTER[2]~36_combout\ : std_logic;
SIGNAL \LUT_COUNTER[2]~37\ : std_logic;
SIGNAL \LUT_COUNTER[3]~38_combout\ : std_logic;
SIGNAL \LUT_COUNTER[3]~39\ : std_logic;
SIGNAL \LUT_COUNTER[4]~40_combout\ : std_logic;
SIGNAL \LUT_COUNTER[4]~41\ : std_logic;
SIGNAL \LUT_COUNTER[5]~42_combout\ : std_logic;
SIGNAL \LUT_COUNTER[5]~43\ : std_logic;
SIGNAL \LUT_COUNTER[6]~44_combout\ : std_logic;
SIGNAL \LUT_COUNTER[6]~45\ : std_logic;
SIGNAL \LUT_COUNTER[7]~46_combout\ : std_logic;
SIGNAL \LUT_COUNTER[7]~47\ : std_logic;
SIGNAL \LUT_COUNTER[8]~48_combout\ : std_logic;
SIGNAL \LUT_COUNTER[8]~49\ : std_logic;
SIGNAL \LUT_COUNTER[9]~50_combout\ : std_logic;
SIGNAL \LUT_COUNTER[9]~51\ : std_logic;
SIGNAL \LUT_COUNTER[10]~52_combout\ : std_logic;
SIGNAL \LUT_COUNTER[10]~53\ : std_logic;
SIGNAL \LUT_COUNTER[11]~54_combout\ : std_logic;
SIGNAL \LUT_COUNTER[11]~55\ : std_logic;
SIGNAL \LUT_COUNTER[12]~56_combout\ : std_logic;
SIGNAL \LUT_COUNTER[12]~57\ : std_logic;
SIGNAL \LUT_COUNTER[13]~58_combout\ : std_logic;
SIGNAL \LUT_COUNTER[13]~59\ : std_logic;
SIGNAL \LUT_COUNTER[14]~60_combout\ : std_logic;
SIGNAL \LUT_COUNTER[14]~61\ : std_logic;
SIGNAL \LUT_COUNTER[15]~62_combout\ : std_logic;
SIGNAL \LUT_COUNTER[15]~63\ : std_logic;
SIGNAL \LUT_COUNTER[16]~64_combout\ : std_logic;
SIGNAL \LUT_COUNTER[16]~65\ : std_logic;
SIGNAL \LUT_COUNTER[17]~66_combout\ : std_logic;
SIGNAL \LUT_COUNTER[17]~67\ : std_logic;
SIGNAL \LUT_COUNTER[18]~68_combout\ : std_logic;
SIGNAL \LUT_COUNTER[18]~69\ : std_logic;
SIGNAL \LUT_COUNTER[19]~70_combout\ : std_logic;
SIGNAL \LUT_COUNTER[19]~71\ : std_logic;
SIGNAL \LUT_COUNTER[20]~72_combout\ : std_logic;
SIGNAL \LUT_COUNTER[20]~73\ : std_logic;
SIGNAL \LUT_COUNTER[21]~74_combout\ : std_logic;
SIGNAL \LUT_COUNTER[21]~75\ : std_logic;
SIGNAL \LUT_COUNTER[22]~76_combout\ : std_logic;
SIGNAL \LUT_COUNTER[22]~77\ : std_logic;
SIGNAL \LUT_COUNTER[23]~78_combout\ : std_logic;
SIGNAL \LUT_COUNTER[23]~79\ : std_logic;
SIGNAL \LUT_COUNTER[24]~80_combout\ : std_logic;
SIGNAL \LUT_COUNTER[24]~81\ : std_logic;
SIGNAL \LUT_COUNTER[25]~82_combout\ : std_logic;
SIGNAL \LUT_COUNTER[25]~83\ : std_logic;
SIGNAL \LUT_COUNTER[26]~84_combout\ : std_logic;
SIGNAL \LUT_COUNTER[26]~85\ : std_logic;
SIGNAL \LUT_COUNTER[27]~86_combout\ : std_logic;
SIGNAL \LUT_COUNTER[27]~87\ : std_logic;
SIGNAL \LUT_COUNTER[28]~88_combout\ : std_logic;
SIGNAL \LUT_COUNTER[28]~89\ : std_logic;
SIGNAL \LUT_COUNTER[29]~90_combout\ : std_logic;
SIGNAL \LUT_COUNTER[29]~91\ : std_logic;
SIGNAL \LUT_COUNTER[30]~92_combout\ : std_logic;
SIGNAL \LUT_COUNTER[30]~93\ : std_logic;
SIGNAL \LUT_COUNTER[31]~94_combout\ : std_logic;
SIGNAL \LessThan0~5_combout\ : std_logic;
SIGNAL \LessThan0~6_combout\ : std_logic;
SIGNAL \LessThan0~7_combout\ : std_logic;
SIGNAL \LessThan0~3_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~4_combout\ : std_logic;
SIGNAL \LessThan0~8_combout\ : std_logic;
SIGNAL \LUT_X_INST|o_LUT_X[11]~feeder_combout\ : std_logic;
SIGNAL \sign_inverter_INST_y|Add0~6_combout\ : std_logic;
SIGNAL \sign_inverter_INST_y|o_SI[3]~12_combout\ : std_logic;
SIGNAL \r_xn[1]~19\ : std_logic;
SIGNAL \r_xn[2]~21\ : std_logic;
SIGNAL \r_xn[3]~22_combout\ : std_logic;
SIGNAL \bit_shift_INST_x|ShiftRight0~53_combout\ : std_logic;
SIGNAL \bit_shift_INST_x|ShiftRight0~60_combout\ : std_logic;
SIGNAL \bit_shift_INST_x|ShiftRight0~61_combout\ : std_logic;
SIGNAL \bit_shift_INST_x|ShiftRight0~62_combout\ : std_logic;
SIGNAL \sign_inverter_INST_x|Add0~1_cout\ : std_logic;
SIGNAL \sign_inverter_INST_x|Add0~2_combout\ : std_logic;
SIGNAL \sign_inverter_INST_x|o_SI[1]~14_combout\ : std_logic;
SIGNAL \r_yn[0]~17\ : std_logic;
SIGNAL \r_yn[1]~18_combout\ : std_logic;
SIGNAL \bit_shift_INST_y|ShiftRight0~59_combout\ : std_logic;
SIGNAL \bit_shift_INST_y|ShiftRight0~60_combout\ : std_logic;
SIGNAL \bit_shift_INST_y|ShiftRight0~61_combout\ : std_logic;
SIGNAL \sign_inverter_INST_y|Add0~3\ : std_logic;
SIGNAL \sign_inverter_INST_y|Add0~4_combout\ : std_logic;
SIGNAL \sign_inverter_INST_y|o_SI[2]~13_combout\ : std_logic;
SIGNAL \r_xn[2]~20_combout\ : std_logic;
SIGNAL \bit_shift_INST_x|ShiftRight0~57_combout\ : std_logic;
SIGNAL \bit_shift_INST_x|ShiftRight0~58_combout\ : std_logic;
SIGNAL \bit_shift_INST_x|ShiftRight0~59_combout\ : std_logic;
SIGNAL \sign_inverter_INST_x|Add0~3\ : std_logic;
SIGNAL \sign_inverter_INST_x|Add0~4_combout\ : std_logic;
SIGNAL \sign_inverter_INST_x|o_SI[2]~13_combout\ : std_logic;
SIGNAL \r_yn[1]~19\ : std_logic;
SIGNAL \r_yn[2]~20_combout\ : std_logic;
SIGNAL \bit_shift_INST_y|ShiftRight0~56_combout\ : std_logic;
SIGNAL \bit_shift_INST_y|ShiftRight0~38_combout\ : std_logic;
SIGNAL \bit_shift_INST_y|ShiftRight0~39_combout\ : std_logic;
SIGNAL \bit_shift_INST_y|ShiftRight0~57_combout\ : std_logic;
SIGNAL \bit_shift_INST_y|ShiftRight0~58_combout\ : std_logic;
SIGNAL \sign_inverter_INST_y|Add0~5\ : std_logic;
SIGNAL \sign_inverter_INST_y|Add0~7\ : std_logic;
SIGNAL \sign_inverter_INST_y|Add0~8_combout\ : std_logic;
SIGNAL \sign_inverter_INST_y|o_SI[4]~11_combout\ : std_logic;
SIGNAL \r_xn[3]~23\ : std_logic;
SIGNAL \r_xn[4]~24_combout\ : std_logic;
SIGNAL \bit_shift_INST_x|ShiftRight0~49_combout\ : std_logic;
SIGNAL \bit_shift_INST_x|ShiftRight0~50_combout\ : std_logic;
SIGNAL \bit_shift_INST_x|ShiftRight0~51_combout\ : std_logic;
SIGNAL \bit_shift_INST_x|ShiftRight0~52_combout\ : std_logic;
SIGNAL \sign_inverter_INST_x|Add0~5\ : std_logic;
SIGNAL \sign_inverter_INST_x|Add0~7\ : std_logic;
SIGNAL \sign_inverter_INST_x|Add0~8_combout\ : std_logic;
SIGNAL \sign_inverter_INST_x|o_SI[4]~11_combout\ : std_logic;
SIGNAL \r_yn[2]~21\ : std_logic;
SIGNAL \r_yn[3]~23\ : std_logic;
SIGNAL \r_yn[4]~24_combout\ : std_logic;
SIGNAL \i_mem_enable_Y~feeder_combout\ : std_logic;
SIGNAL \i_mem_enable_Y~q\ : std_logic;
SIGNAL \i_mem_enable_Y~clkctrl_outclk\ : std_logic;
SIGNAL \LUT_Y_INST|o_LUT_Y[12]~0_combout\ : std_logic;
SIGNAL \bit_shift_INST_x|ShiftRight0~27_combout\ : std_logic;
SIGNAL \bit_shift_INST_x|ShiftRight0~33_combout\ : std_logic;
SIGNAL \bit_shift_INST_x|ShiftRight0~43_combout\ : std_logic;
SIGNAL \bit_shift_INST_x|ShiftRight0~42_combout\ : std_logic;
SIGNAL \bit_shift_INST_x|ShiftRight0~47_combout\ : std_logic;
SIGNAL \sign_inverter_INST_x|Add0~9\ : std_logic;
SIGNAL \sign_inverter_INST_x|Add0~10_combout\ : std_logic;
SIGNAL \sign_inverter_INST_x|o_SI[5]~10_combout\ : std_logic;
SIGNAL \r_yn[4]~25\ : std_logic;
SIGNAL \r_yn[5]~26_combout\ : std_logic;
SIGNAL \bit_shift_INST_y|ShiftRight0~48_combout\ : std_logic;
SIGNAL \bit_shift_INST_y|ShiftRight0~49_combout\ : std_logic;
SIGNAL \bit_shift_INST_y|ShiftRight0~50_combout\ : std_logic;
SIGNAL \bit_shift_INST_y|ShiftRight0~51_combout\ : std_logic;
SIGNAL \sign_inverter_INST_y|Add0~9\ : std_logic;
SIGNAL \sign_inverter_INST_y|Add0~10_combout\ : std_logic;
SIGNAL \sign_inverter_INST_y|o_SI[5]~10_combout\ : std_logic;
SIGNAL \r_xn[4]~25\ : std_logic;
SIGNAL \r_xn[5]~26_combout\ : std_logic;
SIGNAL \r_xn[5]~27\ : std_logic;
SIGNAL \r_xn[6]~29\ : std_logic;
SIGNAL \r_xn[7]~31\ : std_logic;
SIGNAL \r_xn[8]~33\ : std_logic;
SIGNAL \r_xn[9]~35\ : std_logic;
SIGNAL \r_xn[10]~36_combout\ : std_logic;
SIGNAL \bit_shift_INST_x|ShiftRight0~24_combout\ : std_logic;
SIGNAL \bit_shift_INST_x|ShiftRight0~72_combout\ : std_logic;
SIGNAL \bit_shift_INST_x|ShiftRight0~41_combout\ : std_logic;
SIGNAL \sign_inverter_INST_x|Add0~11\ : std_logic;
SIGNAL \sign_inverter_INST_x|Add0~12_combout\ : std_logic;
SIGNAL \sign_inverter_INST_x|o_SI[6]~9_combout\ : std_logic;
SIGNAL \r_yn[5]~27\ : std_logic;
SIGNAL \r_yn[6]~28_combout\ : std_logic;
SIGNAL \bit_shift_INST_y|ShiftRight0~44_combout\ : std_logic;
SIGNAL \bit_shift_INST_y|ShiftRight0~43_combout\ : std_logic;
SIGNAL \bit_shift_INST_y|ShiftRight0~45_combout\ : std_logic;
SIGNAL \bit_shift_INST_y|ShiftRight0~27_combout\ : std_logic;
SIGNAL \bit_shift_INST_y|ShiftRight0~42_combout\ : std_logic;
SIGNAL \bit_shift_INST_y|ShiftRight0~46_combout\ : std_logic;
SIGNAL \sign_inverter_INST_y|Add0~11\ : std_logic;
SIGNAL \sign_inverter_INST_y|Add0~13\ : std_logic;
SIGNAL \sign_inverter_INST_y|Add0~14_combout\ : std_logic;
SIGNAL \sign_inverter_INST_y|o_SI[7]~8_combout\ : std_logic;
SIGNAL \r_xn[7]~30_combout\ : std_logic;
SIGNAL \bit_shift_INST_x|ShiftRight0~36_combout\ : std_logic;
SIGNAL \bit_shift_INST_x|ShiftRight0~37_combout\ : std_logic;
SIGNAL \bit_shift_INST_x|ShiftRight0~71_combout\ : std_logic;
SIGNAL \sign_inverter_INST_x|Add0~13\ : std_logic;
SIGNAL \sign_inverter_INST_x|Add0~14_combout\ : std_logic;
SIGNAL \sign_inverter_INST_x|o_SI[7]~8_combout\ : std_logic;
SIGNAL \r_yn[6]~29\ : std_logic;
SIGNAL \r_yn[7]~30_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \bit_shift_INST_y|ShiftRight0~35_combout\ : std_logic;
SIGNAL \bit_shift_INST_y|ShiftRight0~36_combout\ : std_logic;
SIGNAL \bit_shift_INST_y|ShiftRight0~69_combout\ : std_logic;
SIGNAL \bit_shift_INST_y|ShiftRight0~70_combout\ : std_logic;
SIGNAL \sign_inverter_INST_y|Add0~15\ : std_logic;
SIGNAL \sign_inverter_INST_y|Add0~16_combout\ : std_logic;
SIGNAL \sign_inverter_INST_y|o_SI[8]~7_combout\ : std_logic;
SIGNAL \r_xn[8]~32_combout\ : std_logic;
SIGNAL \bit_shift_INST_x|ShiftRight0~34_combout\ : std_logic;
SIGNAL \bit_shift_INST_x|ShiftRight0~35_combout\ : std_logic;
SIGNAL \bit_shift_INST_x|ShiftRight0~68_combout\ : std_logic;
SIGNAL \bit_shift_INST_x|ShiftRight0~69_combout\ : std_logic;
SIGNAL \sign_inverter_INST_x|Add0~15\ : std_logic;
SIGNAL \sign_inverter_INST_x|Add0~16_combout\ : std_logic;
SIGNAL \sign_inverter_INST_x|o_SI[8]~7_combout\ : std_logic;
SIGNAL \r_yn[7]~31\ : std_logic;
SIGNAL \r_yn[8]~32_combout\ : std_logic;
SIGNAL \bit_shift_INST_y|ShiftRight0~33_combout\ : std_logic;
SIGNAL \bit_shift_INST_y|ShiftRight0~34_combout\ : std_logic;
SIGNAL \bit_shift_INST_y|ShiftRight0~67_combout\ : std_logic;
SIGNAL \bit_shift_INST_y|ShiftRight0~68_combout\ : std_logic;
SIGNAL \sign_inverter_INST_y|Add0~17\ : std_logic;
SIGNAL \sign_inverter_INST_y|Add0~18_combout\ : std_logic;
SIGNAL \sign_inverter_INST_y|o_SI[9]~6_combout\ : std_logic;
SIGNAL \r_xn[9]~34_combout\ : std_logic;
SIGNAL \bit_shift_INST_x|ShiftRight0~28_combout\ : std_logic;
SIGNAL \bit_shift_INST_x|ShiftRight0~29_combout\ : std_logic;
SIGNAL \bit_shift_INST_x|ShiftRight0~31_combout\ : std_logic;
SIGNAL \sign_inverter_INST_x|Add0~17\ : std_logic;
SIGNAL \sign_inverter_INST_x|Add0~18_combout\ : std_logic;
SIGNAL \sign_inverter_INST_x|o_SI[9]~6_combout\ : std_logic;
SIGNAL \r_yn[8]~33\ : std_logic;
SIGNAL \r_yn[9]~34_combout\ : std_logic;
SIGNAL \LUT_Y_INST|o_LUT_Y[9]~feeder_combout\ : std_logic;
SIGNAL \bit_shift_INST_y|ShiftRight0~28_combout\ : std_logic;
SIGNAL \bit_shift_INST_y|ShiftRight0~29_combout\ : std_logic;
SIGNAL \bit_shift_INST_y|ShiftRight0~31_combout\ : std_logic;
SIGNAL \sign_inverter_INST_y|Add0~19\ : std_logic;
SIGNAL \sign_inverter_INST_y|Add0~21\ : std_logic;
SIGNAL \sign_inverter_INST_y|Add0~22_combout\ : std_logic;
SIGNAL \sign_inverter_INST_y|o_SI[11]~4_combout\ : std_logic;
SIGNAL \r_xn[10]~37\ : std_logic;
SIGNAL \r_xn[11]~38_combout\ : std_logic;
SIGNAL \bit_shift_INST_x|ShiftRight0~20_combout\ : std_logic;
SIGNAL \bit_shift_INST_x|ShiftRight0~21_combout\ : std_logic;
SIGNAL \bit_shift_INST_x|ShiftRight0~67_combout\ : std_logic;
SIGNAL \sign_inverter_INST_x|Add0~19\ : std_logic;
SIGNAL \sign_inverter_INST_x|Add0~21\ : std_logic;
SIGNAL \sign_inverter_INST_x|Add0~22_combout\ : std_logic;
SIGNAL \sign_inverter_INST_x|o_SI[11]~4_combout\ : std_logic;
SIGNAL \r_yn[9]~35\ : std_logic;
SIGNAL \r_yn[10]~37\ : std_logic;
SIGNAL \r_yn[11]~38_combout\ : std_logic;
SIGNAL \bit_shift_INST_y|ShiftRight0~20_combout\ : std_logic;
SIGNAL \bit_shift_INST_y|ShiftRight0~21_combout\ : std_logic;
SIGNAL \bit_shift_INST_y|ShiftRight0~66_combout\ : std_logic;
SIGNAL \sign_inverter_INST_y|Add0~23\ : std_logic;
SIGNAL \sign_inverter_INST_y|Add0~24_combout\ : std_logic;
SIGNAL \sign_inverter_INST_y|o_SI[12]~3_combout\ : std_logic;
SIGNAL \r_xn[11]~39\ : std_logic;
SIGNAL \r_xn[12]~40_combout\ : std_logic;
SIGNAL \LUT_X_INST|o_LUT_X[12]~0_combout\ : std_logic;
SIGNAL \bit_shift_INST_x|ShiftRight0~18_combout\ : std_logic;
SIGNAL \bit_shift_INST_x|ShiftRight0~19_combout\ : std_logic;
SIGNAL \sign_inverter_INST_x|Add0~23\ : std_logic;
SIGNAL \sign_inverter_INST_x|Add0~24_combout\ : std_logic;
SIGNAL \sign_inverter_INST_x|o_SI[12]~3_combout\ : std_logic;
SIGNAL \r_yn[11]~39\ : std_logic;
SIGNAL \r_yn[12]~40_combout\ : std_logic;
SIGNAL \bit_shift_INST_y|ShiftRight0~18_combout\ : std_logic;
SIGNAL \bit_shift_INST_y|ShiftRight0~19_combout\ : std_logic;
SIGNAL \sign_inverter_INST_y|Add0~25\ : std_logic;
SIGNAL \sign_inverter_INST_y|Add0~26_combout\ : std_logic;
SIGNAL \sign_inverter_INST_y|o_SI[13]~2_combout\ : std_logic;
SIGNAL \r_xn[12]~41\ : std_logic;
SIGNAL \r_xn[13]~42_combout\ : std_logic;
SIGNAL \bit_shift_INST_x|ShiftRight0~14_combout\ : std_logic;
SIGNAL \bit_shift_INST_x|ShiftRight0~16_combout\ : std_logic;
SIGNAL \sign_inverter_INST_x|Add0~25\ : std_logic;
SIGNAL \sign_inverter_INST_x|Add0~26_combout\ : std_logic;
SIGNAL \sign_inverter_INST_x|o_SI[13]~2_combout\ : std_logic;
SIGNAL \r_yn[12]~41\ : std_logic;
SIGNAL \r_yn[13]~42_combout\ : std_logic;
SIGNAL \bit_shift_INST_y|ShiftRight0~15_combout\ : std_logic;
SIGNAL \bit_shift_INST_y|ShiftRight0~16_combout\ : std_logic;
SIGNAL \sign_inverter_INST_y|Add0~27\ : std_logic;
SIGNAL \sign_inverter_INST_y|Add0~28_combout\ : std_logic;
SIGNAL \sign_inverter_INST_y|o_SI[14]~1_combout\ : std_logic;
SIGNAL \r_xn[13]~43\ : std_logic;
SIGNAL \r_xn[14]~44_combout\ : std_logic;
SIGNAL \bit_shift_INST_x|ShiftRight0~13_combout\ : std_logic;
SIGNAL \sign_inverter_INST_x|Add0~27\ : std_logic;
SIGNAL \sign_inverter_INST_x|Add0~28_combout\ : std_logic;
SIGNAL \sign_inverter_INST_x|o_SI[14]~1_combout\ : std_logic;
SIGNAL \r_yn[13]~43\ : std_logic;
SIGNAL \r_yn[14]~44_combout\ : std_logic;
SIGNAL \bit_shift_INST_y|ShiftRight0~14_combout\ : std_logic;
SIGNAL \sign_inverter_INST_y|Add0~29\ : std_logic;
SIGNAL \sign_inverter_INST_y|Add0~30_combout\ : std_logic;
SIGNAL \sign_inverter_INST_y|o_SI[15]~0_combout\ : std_logic;
SIGNAL \r_xn[14]~45\ : std_logic;
SIGNAL \r_xn[15]~46_combout\ : std_logic;
SIGNAL \bit_shift_INST_x|ShiftRight0~26_combout\ : std_logic;
SIGNAL \sign_inverter_INST_x|Add0~20_combout\ : std_logic;
SIGNAL \sign_inverter_INST_x|o_SI[10]~5_combout\ : std_logic;
SIGNAL \r_yn[10]~36_combout\ : std_logic;
SIGNAL \bit_shift_INST_y|ShiftRight0~24_combout\ : std_logic;
SIGNAL \bit_shift_INST_y|ShiftRight0~71_combout\ : std_logic;
SIGNAL \bit_shift_INST_y|ShiftRight0~37_combout\ : std_logic;
SIGNAL \bit_shift_INST_y|ShiftRight0~40_combout\ : std_logic;
SIGNAL \sign_inverter_INST_y|Add0~12_combout\ : std_logic;
SIGNAL \sign_inverter_INST_y|o_SI[6]~9_combout\ : std_logic;
SIGNAL \r_xn[6]~28_combout\ : std_logic;
SIGNAL \bit_shift_INST_x|ShiftRight0~45_combout\ : std_logic;
SIGNAL \bit_shift_INST_x|ShiftRight0~55_combout\ : std_logic;
SIGNAL \bit_shift_INST_x|ShiftRight0~54_combout\ : std_logic;
SIGNAL \bit_shift_INST_x|ShiftRight0~56_combout\ : std_logic;
SIGNAL \sign_inverter_INST_x|Add0~6_combout\ : std_logic;
SIGNAL \sign_inverter_INST_x|o_SI[3]~12_combout\ : std_logic;
SIGNAL \r_yn[3]~22_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \Equal1~2_combout\ : std_logic;
SIGNAL \Equal1~3_combout\ : std_logic;
SIGNAL \sign_inverter_INST_z|Equal0~0_combout\ : std_logic;
SIGNAL \sign_inverter_INST_x|Add0~29\ : std_logic;
SIGNAL \sign_inverter_INST_x|Add0~30_combout\ : std_logic;
SIGNAL \sign_inverter_INST_x|o_SI[15]~0_combout\ : std_logic;
SIGNAL \r_yn[14]~45\ : std_logic;
SIGNAL \r_yn[15]~46_combout\ : std_logic;
SIGNAL \sign_inverter_INST_z|o_SI[0]~0_combout\ : std_logic;
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \Selector53~0_combout\ : std_logic;
SIGNAL \LUT_16_INST|rom~1_combout\ : std_logic;
SIGNAL \sign_inverter_INST_z|Add0~1_cout\ : std_logic;
SIGNAL \sign_inverter_INST_z|Add0~2_combout\ : std_logic;
SIGNAL \sign_inverter_INST_z|o_SI[1]~1_combout\ : std_logic;
SIGNAL \Add2~1\ : std_logic;
SIGNAL \Add2~2_combout\ : std_logic;
SIGNAL \Selector52~0_combout\ : std_logic;
SIGNAL \LUT_16_INST|rom~2_combout\ : std_logic;
SIGNAL \sign_inverter_INST_z|Add0~3\ : std_logic;
SIGNAL \sign_inverter_INST_z|Add0~4_combout\ : std_logic;
SIGNAL \sign_inverter_INST_z|o_SI[2]~2_combout\ : std_logic;
SIGNAL \Add2~3\ : std_logic;
SIGNAL \Add2~4_combout\ : std_logic;
SIGNAL \LUT_16_INST|rom~3_combout\ : std_logic;
SIGNAL \sign_inverter_INST_z|Add0~5\ : std_logic;
SIGNAL \sign_inverter_INST_z|Add0~6_combout\ : std_logic;
SIGNAL \sign_inverter_INST_z|o_SI[3]~3_combout\ : std_logic;
SIGNAL \Selector51~0_combout\ : std_logic;
SIGNAL \Add2~5\ : std_logic;
SIGNAL \Add2~6_combout\ : std_logic;
SIGNAL \LUT_16_INST|rom~4_combout\ : std_logic;
SIGNAL \sign_inverter_INST_z|Add0~7\ : std_logic;
SIGNAL \sign_inverter_INST_z|Add0~8_combout\ : std_logic;
SIGNAL \sign_inverter_INST_z|o_SI[4]~4_combout\ : std_logic;
SIGNAL \Selector50~0_combout\ : std_logic;
SIGNAL \Add2~7\ : std_logic;
SIGNAL \Add2~8_combout\ : std_logic;
SIGNAL \Selector49~0_combout\ : std_logic;
SIGNAL \LUT_16_INST|rom~5_combout\ : std_logic;
SIGNAL \sign_inverter_INST_z|Add0~9\ : std_logic;
SIGNAL \sign_inverter_INST_z|Add0~10_combout\ : std_logic;
SIGNAL \sign_inverter_INST_z|o_SI[5]~5_combout\ : std_logic;
SIGNAL \Add2~9\ : std_logic;
SIGNAL \Add2~10_combout\ : std_logic;
SIGNAL \Selector48~0_combout\ : std_logic;
SIGNAL \LUT_16_INST|rom~6_combout\ : std_logic;
SIGNAL \sign_inverter_INST_z|Add0~11\ : std_logic;
SIGNAL \sign_inverter_INST_z|Add0~12_combout\ : std_logic;
SIGNAL \sign_inverter_INST_z|o_SI[6]~6_combout\ : std_logic;
SIGNAL \Add2~11\ : std_logic;
SIGNAL \Add2~12_combout\ : std_logic;
SIGNAL \Selector47~0_combout\ : std_logic;
SIGNAL \LUT_16_INST|rom~7_combout\ : std_logic;
SIGNAL \sign_inverter_INST_z|Add0~13\ : std_logic;
SIGNAL \sign_inverter_INST_z|Add0~14_combout\ : std_logic;
SIGNAL \sign_inverter_INST_z|o_SI[7]~7_combout\ : std_logic;
SIGNAL \Add2~13\ : std_logic;
SIGNAL \Add2~14_combout\ : std_logic;
SIGNAL \Selector46~0_combout\ : std_logic;
SIGNAL \LUT_16_INST|rom~8_combout\ : std_logic;
SIGNAL \sign_inverter_INST_z|Add0~15\ : std_logic;
SIGNAL \sign_inverter_INST_z|Add0~16_combout\ : std_logic;
SIGNAL \sign_inverter_INST_z|o_SI[8]~8_combout\ : std_logic;
SIGNAL \Add2~15\ : std_logic;
SIGNAL \Add2~16_combout\ : std_logic;
SIGNAL \Selector45~0_combout\ : std_logic;
SIGNAL \LUT_16_INST|rom~9_combout\ : std_logic;
SIGNAL \sign_inverter_INST_z|Add0~17\ : std_logic;
SIGNAL \sign_inverter_INST_z|Add0~18_combout\ : std_logic;
SIGNAL \sign_inverter_INST_z|o_SI[9]~9_combout\ : std_logic;
SIGNAL \Add2~17\ : std_logic;
SIGNAL \Add2~18_combout\ : std_logic;
SIGNAL \LUT_16_INST|rom~10_combout\ : std_logic;
SIGNAL \sign_inverter_INST_z|Add0~19\ : std_logic;
SIGNAL \sign_inverter_INST_z|Add0~20_combout\ : std_logic;
SIGNAL \sign_inverter_INST_z|o_SI[10]~10_combout\ : std_logic;
SIGNAL \Selector44~0_combout\ : std_logic;
SIGNAL \Add2~19\ : std_logic;
SIGNAL \Add2~20_combout\ : std_logic;
SIGNAL \Selector43~0_combout\ : std_logic;
SIGNAL \LUT_16_INST|rom~11_combout\ : std_logic;
SIGNAL \sign_inverter_INST_z|Add0~21\ : std_logic;
SIGNAL \sign_inverter_INST_z|Add0~22_combout\ : std_logic;
SIGNAL \sign_inverter_INST_z|o_SI[11]~11_combout\ : std_logic;
SIGNAL \Add2~21\ : std_logic;
SIGNAL \Add2~22_combout\ : std_logic;
SIGNAL \LUT_16_INST|rom~12_combout\ : std_logic;
SIGNAL \sign_inverter_INST_z|Add0~23\ : std_logic;
SIGNAL \sign_inverter_INST_z|Add0~24_combout\ : std_logic;
SIGNAL \sign_inverter_INST_z|o_SI[12]~12_combout\ : std_logic;
SIGNAL \Selector42~0_combout\ : std_logic;
SIGNAL \Add2~23\ : std_logic;
SIGNAL \Add2~24_combout\ : std_logic;
SIGNAL \Selector41~0_combout\ : std_logic;
SIGNAL \LUT_16_INST|rom~13_combout\ : std_logic;
SIGNAL \sign_inverter_INST_z|Add0~25\ : std_logic;
SIGNAL \sign_inverter_INST_z|Add0~26_combout\ : std_logic;
SIGNAL \sign_inverter_INST_z|o_SI[13]~13_combout\ : std_logic;
SIGNAL \Add2~25\ : std_logic;
SIGNAL \Add2~26_combout\ : std_logic;
SIGNAL \sign_inverter_INST_z|Add0~27\ : std_logic;
SIGNAL \sign_inverter_INST_z|Add0~28_combout\ : std_logic;
SIGNAL \sign_inverter_INST_z|Add0~30_combout\ : std_logic;
SIGNAL \Selector40~0_combout\ : std_logic;
SIGNAL \Add2~27\ : std_logic;
SIGNAL \Add2~28_combout\ : std_logic;
SIGNAL \Selector39~0_combout\ : std_logic;
SIGNAL \sign_inverter_INST_z|Add0~29\ : std_logic;
SIGNAL \sign_inverter_INST_z|Add0~31_combout\ : std_logic;
SIGNAL \sign_inverter_INST_z|Add0~33_combout\ : std_logic;
SIGNAL \Add2~29\ : std_logic;
SIGNAL \Add2~30_combout\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \var_done~q\ : std_logic;
SIGNAL \state_LED[0]~reg0feeder_combout\ : std_logic;
SIGNAL \state_LED[0]~reg0_q\ : std_logic;
SIGNAL \state_LED[1]~0_combout\ : std_logic;
SIGNAL \state_LED[1]~reg0_q\ : std_logic;
SIGNAL \state_LED[2]~reg0feeder_combout\ : std_logic;
SIGNAL \state_LED[2]~reg0_q\ : std_logic;
SIGNAL \LUT_TEST[0]~reg0feeder_combout\ : std_logic;
SIGNAL \LUT_TEST[0]~reg0_q\ : std_logic;
SIGNAL \LUT_TEST[1]~reg0feeder_combout\ : std_logic;
SIGNAL \LUT_TEST[1]~reg0_q\ : std_logic;
SIGNAL \LUT_TEST[2]~reg0feeder_combout\ : std_logic;
SIGNAL \LUT_TEST[2]~reg0_q\ : std_logic;
SIGNAL \LUT_TEST[3]~reg0feeder_combout\ : std_logic;
SIGNAL \LUT_TEST[3]~reg0_q\ : std_logic;
SIGNAL \LUT_TEST[4]~reg0feeder_combout\ : std_logic;
SIGNAL \LUT_TEST[4]~reg0_q\ : std_logic;
SIGNAL \LUT_TEST[5]~reg0feeder_combout\ : std_logic;
SIGNAL \LUT_TEST[5]~reg0_q\ : std_logic;
SIGNAL \LUT_TEST[6]~reg0feeder_combout\ : std_logic;
SIGNAL \LUT_TEST[6]~reg0_q\ : std_logic;
SIGNAL \LUT_TEST[8]~reg0feeder_combout\ : std_logic;
SIGNAL \LUT_TEST[8]~reg0_q\ : std_logic;
SIGNAL \LUT_TEST[9]~reg0feeder_combout\ : std_logic;
SIGNAL \LUT_TEST[9]~reg0_q\ : std_logic;
SIGNAL \LUT_TEST[10]~reg0feeder_combout\ : std_logic;
SIGNAL \LUT_TEST[10]~reg0_q\ : std_logic;
SIGNAL \LUT_TEST[12]~reg0feeder_combout\ : std_logic;
SIGNAL \LUT_TEST[12]~reg0_q\ : std_logic;
SIGNAL \LUT_TEST[13]~reg0feeder_combout\ : std_logic;
SIGNAL \LUT_TEST[13]~reg0_q\ : std_logic;
SIGNAL r_yn : std_logic_vector(15 DOWNTO 0);
SIGNAL \LUT_Y_INST|o_LUT_Y\ : std_logic_vector(15 DOWNTO 0);
SIGNAL r_xn : std_logic_vector(15 DOWNTO 0);
SIGNAL LUT_COUNTER : std_logic_vector(31 DOWNTO 0);
SIGNAL r_zd : std_logic_vector(15 DOWNTO 0);
SIGNAL \clock_divider_x|count\ : std_logic_vector(31 DOWNTO 0);
SIGNAL r_zn : std_logic_vector(15 DOWNTO 0);
SIGNAL \iteration_counter_INST|cnt\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \LUT_X_INST|o_LUT_X\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \ALT_INV_state.run~q\ : std_logic;
SIGNAL \ALT_INV_state.done~q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_i_x <= i_x;
ww_i_y <= i_y;
o_z <= ww_o_z;
ww_i_enable_cordic <= i_enable_cordic;
o_done <= ww_o_done;
ww_clk_in <= clk_in;
state_LED <= ww_state_LED;
LUT_TEST <= ww_LUT_TEST;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk_in~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk_in~input_o\);

\clock_divider_x|tmp~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock_divider_x|tmp~q\);

\i_mem_enable_Y~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \i_mem_enable_Y~q\);

\i_mem_enable_X~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \i_mem_enable_X~q\);
\ALT_INV_state.run~q\ <= NOT \state.run~q\;
\ALT_INV_state.done~q\ <= NOT \state.done~q\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X65_Y73_N9
\o_z[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_zd(0),
	devoe => ww_devoe,
	o => \o_z[0]~output_o\);

-- Location: IOOBUF_X58_Y73_N2
\o_z[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_zd(1),
	devoe => ww_devoe,
	o => \o_z[1]~output_o\);

-- Location: IOOBUF_X67_Y73_N9
\o_z[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_zd(2),
	devoe => ww_devoe,
	o => \o_z[2]~output_o\);

-- Location: IOOBUF_X65_Y73_N16
\o_z[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_zd(3),
	devoe => ww_devoe,
	o => \o_z[3]~output_o\);

-- Location: IOOBUF_X65_Y73_N23
\o_z[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_zd(4),
	devoe => ww_devoe,
	o => \o_z[4]~output_o\);

-- Location: IOOBUF_X60_Y73_N23
\o_z[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_zd(5),
	devoe => ww_devoe,
	o => \o_z[5]~output_o\);

-- Location: IOOBUF_X83_Y73_N23
\o_z[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_zd(6),
	devoe => ww_devoe,
	o => \o_z[6]~output_o\);

-- Location: IOOBUF_X69_Y73_N2
\o_z[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_zd(7),
	devoe => ww_devoe,
	o => \o_z[7]~output_o\);

-- Location: IOOBUF_X72_Y73_N2
\o_z[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_zd(8),
	devoe => ww_devoe,
	o => \o_z[8]~output_o\);

-- Location: IOOBUF_X72_Y73_N9
\o_z[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_zd(9),
	devoe => ww_devoe,
	o => \o_z[9]~output_o\);

-- Location: IOOBUF_X87_Y73_N9
\o_z[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_zd(10),
	devoe => ww_devoe,
	o => \o_z[10]~output_o\);

-- Location: IOOBUF_X87_Y73_N16
\o_z[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_zd(11),
	devoe => ww_devoe,
	o => \o_z[11]~output_o\);

-- Location: IOOBUF_X107_Y73_N16
\o_z[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_zd(12),
	devoe => ww_devoe,
	o => \o_z[12]~output_o\);

-- Location: IOOBUF_X94_Y73_N9
\o_z[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_zd(13),
	devoe => ww_devoe,
	o => \o_z[13]~output_o\);

-- Location: IOOBUF_X94_Y73_N2
\o_z[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_zd(14),
	devoe => ww_devoe,
	o => \o_z[14]~output_o\);

-- Location: IOOBUF_X69_Y73_N16
\o_z[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_zd(15),
	devoe => ww_devoe,
	o => \o_z[15]~output_o\);

-- Location: IOOBUF_X67_Y73_N16
\o_done~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \var_done~q\,
	devoe => ww_devoe,
	o => \o_done~output_o\);

-- Location: IOOBUF_X107_Y73_N9
\state_LED[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \state_LED[0]~reg0_q\,
	devoe => ww_devoe,
	o => \state_LED[0]~output_o\);

-- Location: IOOBUF_X111_Y73_N9
\state_LED[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \state_LED[1]~reg0_q\,
	devoe => ww_devoe,
	o => \state_LED[1]~output_o\);

-- Location: IOOBUF_X83_Y73_N2
\state_LED[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \state_LED[2]~reg0_q\,
	devoe => ww_devoe,
	o => \state_LED[2]~output_o\);

-- Location: IOOBUF_X85_Y73_N23
\state_LED[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \state_LED[3]~output_o\);

-- Location: IOOBUF_X74_Y73_N16
\LUT_TEST[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LUT_TEST[0]~reg0_q\,
	devoe => ww_devoe,
	o => \LUT_TEST[0]~output_o\);

-- Location: IOOBUF_X60_Y73_N16
\LUT_TEST[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LUT_TEST[1]~reg0_q\,
	devoe => ww_devoe,
	o => \LUT_TEST[1]~output_o\);

-- Location: IOOBUF_X60_Y73_N9
\LUT_TEST[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LUT_TEST[2]~reg0_q\,
	devoe => ww_devoe,
	o => \LUT_TEST[2]~output_o\);

-- Location: IOOBUF_X72_Y73_N16
\LUT_TEST[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LUT_TEST[3]~reg0_q\,
	devoe => ww_devoe,
	o => \LUT_TEST[3]~output_o\);

-- Location: IOOBUF_X72_Y73_N23
\LUT_TEST[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LUT_TEST[4]~reg0_q\,
	devoe => ww_devoe,
	o => \LUT_TEST[4]~output_o\);

-- Location: IOOBUF_X62_Y73_N23
\LUT_TEST[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LUT_TEST[5]~reg0_q\,
	devoe => ww_devoe,
	o => \LUT_TEST[5]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\LUT_TEST[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LUT_TEST[6]~reg0_q\,
	devoe => ww_devoe,
	o => \LUT_TEST[6]~output_o\);

-- Location: IOOBUF_X65_Y0_N2
\LUT_TEST[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LUT_TEST[7]~output_o\);

-- Location: IOOBUF_X67_Y73_N2
\LUT_TEST[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LUT_TEST[8]~reg0_q\,
	devoe => ww_devoe,
	o => \LUT_TEST[8]~output_o\);

-- Location: IOOBUF_X74_Y73_N23
\LUT_TEST[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LUT_TEST[9]~reg0_q\,
	devoe => ww_devoe,
	o => \LUT_TEST[9]~output_o\);

-- Location: IOOBUF_X62_Y73_N16
\LUT_TEST[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LUT_TEST[10]~reg0_q\,
	devoe => ww_devoe,
	o => \LUT_TEST[10]~output_o\);

-- Location: IOOBUF_X0_Y24_N16
\LUT_TEST[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LUT_TEST[11]~output_o\);

-- Location: IOOBUF_X69_Y73_N23
\LUT_TEST[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LUT_TEST[12]~reg0_q\,
	devoe => ww_devoe,
	o => \LUT_TEST[12]~output_o\);

-- Location: IOOBUF_X60_Y73_N2
\LUT_TEST[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LUT_TEST[13]~reg0_q\,
	devoe => ww_devoe,
	o => \LUT_TEST[13]~output_o\);

-- Location: IOOBUF_X0_Y32_N23
\LUT_TEST[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LUT_TEST[14]~output_o\);

-- Location: IOOBUF_X5_Y73_N9
\LUT_TEST[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LUT_TEST[15]~output_o\);

-- Location: IOIBUF_X0_Y36_N15
\clk_in~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_in,
	o => \clk_in~input_o\);

-- Location: CLKCTRL_G4
\clk_in~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk_in~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk_in~inputclkctrl_outclk\);

-- Location: LCCOMB_X56_Y5_N0
\clock_divider_x|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_divider_x|Add0~0_combout\ = \clock_divider_x|count\(0) $ (GND)
-- \clock_divider_x|Add0~1\ = CARRY(!\clock_divider_x|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider_x|count\(0),
	datad => VCC,
	combout => \clock_divider_x|Add0~0_combout\,
	cout => \clock_divider_x|Add0~1\);

-- Location: LCCOMB_X55_Y5_N16
\clock_divider_x|count[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_divider_x|count[0]~7_combout\ = !\clock_divider_x|Add0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clock_divider_x|Add0~0_combout\,
	combout => \clock_divider_x|count[0]~7_combout\);

-- Location: FF_X56_Y5_N31
\clock_divider_x|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	asdata => \clock_divider_x|count[0]~7_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider_x|count\(0));

-- Location: LCCOMB_X56_Y5_N2
\clock_divider_x|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_divider_x|Add0~2_combout\ = (\clock_divider_x|count\(1) & (!\clock_divider_x|Add0~1\)) # (!\clock_divider_x|count\(1) & ((\clock_divider_x|Add0~1\) # (GND)))
-- \clock_divider_x|Add0~3\ = CARRY((!\clock_divider_x|Add0~1\) # (!\clock_divider_x|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_divider_x|count\(1),
	datad => VCC,
	cin => \clock_divider_x|Add0~1\,
	combout => \clock_divider_x|Add0~2_combout\,
	cout => \clock_divider_x|Add0~3\);

-- Location: FF_X56_Y5_N3
\clock_divider_x|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \clock_divider_x|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider_x|count\(1));

-- Location: LCCOMB_X56_Y5_N4
\clock_divider_x|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_divider_x|Add0~4_combout\ = (\clock_divider_x|count\(2) & (\clock_divider_x|Add0~3\ $ (GND))) # (!\clock_divider_x|count\(2) & (!\clock_divider_x|Add0~3\ & VCC))
-- \clock_divider_x|Add0~5\ = CARRY((\clock_divider_x|count\(2) & !\clock_divider_x|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_divider_x|count\(2),
	datad => VCC,
	cin => \clock_divider_x|Add0~3\,
	combout => \clock_divider_x|Add0~4_combout\,
	cout => \clock_divider_x|Add0~5\);

-- Location: FF_X56_Y5_N5
\clock_divider_x|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \clock_divider_x|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider_x|count\(2));

-- Location: LCCOMB_X56_Y5_N6
\clock_divider_x|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_divider_x|Add0~6_combout\ = (\clock_divider_x|count\(3) & (!\clock_divider_x|Add0~5\)) # (!\clock_divider_x|count\(3) & ((\clock_divider_x|Add0~5\) # (GND)))
-- \clock_divider_x|Add0~7\ = CARRY((!\clock_divider_x|Add0~5\) # (!\clock_divider_x|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider_x|count\(3),
	datad => VCC,
	cin => \clock_divider_x|Add0~5\,
	combout => \clock_divider_x|Add0~6_combout\,
	cout => \clock_divider_x|Add0~7\);

-- Location: FF_X56_Y5_N7
\clock_divider_x|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \clock_divider_x|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider_x|count\(3));

-- Location: LCCOMB_X56_Y5_N8
\clock_divider_x|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_divider_x|Add0~8_combout\ = (\clock_divider_x|count\(4) & (\clock_divider_x|Add0~7\ $ (GND))) # (!\clock_divider_x|count\(4) & (!\clock_divider_x|Add0~7\ & VCC))
-- \clock_divider_x|Add0~9\ = CARRY((\clock_divider_x|count\(4) & !\clock_divider_x|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_divider_x|count\(4),
	datad => VCC,
	cin => \clock_divider_x|Add0~7\,
	combout => \clock_divider_x|Add0~8_combout\,
	cout => \clock_divider_x|Add0~9\);

-- Location: LCCOMB_X57_Y5_N8
\clock_divider_x|count~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_divider_x|count~6_combout\ = (\clock_divider_x|Add0~8_combout\ & ((!\clock_divider_x|Equal0~4_combout\) # (!\clock_divider_x|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider_x|Equal0~9_combout\,
	datac => \clock_divider_x|Equal0~4_combout\,
	datad => \clock_divider_x|Add0~8_combout\,
	combout => \clock_divider_x|count~6_combout\);

-- Location: FF_X56_Y5_N1
\clock_divider_x|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	asdata => \clock_divider_x|count~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider_x|count\(4));

-- Location: LCCOMB_X56_Y5_N10
\clock_divider_x|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_divider_x|Add0~10_combout\ = (\clock_divider_x|count\(5) & (!\clock_divider_x|Add0~9\)) # (!\clock_divider_x|count\(5) & ((\clock_divider_x|Add0~9\) # (GND)))
-- \clock_divider_x|Add0~11\ = CARRY((!\clock_divider_x|Add0~9\) # (!\clock_divider_x|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider_x|count\(5),
	datad => VCC,
	cin => \clock_divider_x|Add0~9\,
	combout => \clock_divider_x|Add0~10_combout\,
	cout => \clock_divider_x|Add0~11\);

-- Location: FF_X56_Y5_N11
\clock_divider_x|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \clock_divider_x|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider_x|count\(5));

-- Location: LCCOMB_X56_Y5_N12
\clock_divider_x|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_divider_x|Add0~12_combout\ = (\clock_divider_x|count\(6) & (\clock_divider_x|Add0~11\ $ (GND))) # (!\clock_divider_x|count\(6) & (!\clock_divider_x|Add0~11\ & VCC))
-- \clock_divider_x|Add0~13\ = CARRY((\clock_divider_x|count\(6) & !\clock_divider_x|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider_x|count\(6),
	datad => VCC,
	cin => \clock_divider_x|Add0~11\,
	combout => \clock_divider_x|Add0~12_combout\,
	cout => \clock_divider_x|Add0~13\);

-- Location: FF_X56_Y5_N13
\clock_divider_x|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \clock_divider_x|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider_x|count\(6));

-- Location: LCCOMB_X56_Y5_N14
\clock_divider_x|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_divider_x|Add0~14_combout\ = (\clock_divider_x|count\(7) & (!\clock_divider_x|Add0~13\)) # (!\clock_divider_x|count\(7) & ((\clock_divider_x|Add0~13\) # (GND)))
-- \clock_divider_x|Add0~15\ = CARRY((!\clock_divider_x|Add0~13\) # (!\clock_divider_x|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_divider_x|count\(7),
	datad => VCC,
	cin => \clock_divider_x|Add0~13\,
	combout => \clock_divider_x|Add0~14_combout\,
	cout => \clock_divider_x|Add0~15\);

-- Location: LCCOMB_X57_Y5_N22
\clock_divider_x|count~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_divider_x|count~5_combout\ = (\clock_divider_x|Add0~14_combout\ & ((!\clock_divider_x|Equal0~4_combout\) # (!\clock_divider_x|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider_x|Equal0~9_combout\,
	datac => \clock_divider_x|Equal0~4_combout\,
	datad => \clock_divider_x|Add0~14_combout\,
	combout => \clock_divider_x|count~5_combout\);

-- Location: FF_X57_Y5_N23
\clock_divider_x|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \clock_divider_x|count~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider_x|count\(7));

-- Location: LCCOMB_X56_Y5_N16
\clock_divider_x|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_divider_x|Add0~16_combout\ = (\clock_divider_x|count\(8) & (\clock_divider_x|Add0~15\ $ (GND))) # (!\clock_divider_x|count\(8) & (!\clock_divider_x|Add0~15\ & VCC))
-- \clock_divider_x|Add0~17\ = CARRY((\clock_divider_x|count\(8) & !\clock_divider_x|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_divider_x|count\(8),
	datad => VCC,
	cin => \clock_divider_x|Add0~15\,
	combout => \clock_divider_x|Add0~16_combout\,
	cout => \clock_divider_x|Add0~17\);

-- Location: FF_X56_Y5_N17
\clock_divider_x|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \clock_divider_x|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider_x|count\(8));

-- Location: LCCOMB_X56_Y5_N18
\clock_divider_x|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_divider_x|Add0~18_combout\ = (\clock_divider_x|count\(9) & (!\clock_divider_x|Add0~17\)) # (!\clock_divider_x|count\(9) & ((\clock_divider_x|Add0~17\) # (GND)))
-- \clock_divider_x|Add0~19\ = CARRY((!\clock_divider_x|Add0~17\) # (!\clock_divider_x|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_divider_x|count\(9),
	datad => VCC,
	cin => \clock_divider_x|Add0~17\,
	combout => \clock_divider_x|Add0~18_combout\,
	cout => \clock_divider_x|Add0~19\);

-- Location: FF_X56_Y5_N19
\clock_divider_x|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \clock_divider_x|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider_x|count\(9));

-- Location: LCCOMB_X56_Y5_N20
\clock_divider_x|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_divider_x|Add0~20_combout\ = (\clock_divider_x|count\(10) & (\clock_divider_x|Add0~19\ $ (GND))) # (!\clock_divider_x|count\(10) & (!\clock_divider_x|Add0~19\ & VCC))
-- \clock_divider_x|Add0~21\ = CARRY((\clock_divider_x|count\(10) & !\clock_divider_x|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_divider_x|count\(10),
	datad => VCC,
	cin => \clock_divider_x|Add0~19\,
	combout => \clock_divider_x|Add0~20_combout\,
	cout => \clock_divider_x|Add0~21\);

-- Location: FF_X56_Y5_N21
\clock_divider_x|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \clock_divider_x|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider_x|count\(10));

-- Location: LCCOMB_X56_Y5_N22
\clock_divider_x|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_divider_x|Add0~22_combout\ = (\clock_divider_x|count\(11) & (!\clock_divider_x|Add0~21\)) # (!\clock_divider_x|count\(11) & ((\clock_divider_x|Add0~21\) # (GND)))
-- \clock_divider_x|Add0~23\ = CARRY((!\clock_divider_x|Add0~21\) # (!\clock_divider_x|count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider_x|count\(11),
	datad => VCC,
	cin => \clock_divider_x|Add0~21\,
	combout => \clock_divider_x|Add0~22_combout\,
	cout => \clock_divider_x|Add0~23\);

-- Location: FF_X56_Y5_N23
\clock_divider_x|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \clock_divider_x|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider_x|count\(11));

-- Location: LCCOMB_X56_Y5_N24
\clock_divider_x|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_divider_x|Add0~24_combout\ = (\clock_divider_x|count\(12) & (\clock_divider_x|Add0~23\ $ (GND))) # (!\clock_divider_x|count\(12) & (!\clock_divider_x|Add0~23\ & VCC))
-- \clock_divider_x|Add0~25\ = CARRY((\clock_divider_x|count\(12) & !\clock_divider_x|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider_x|count\(12),
	datad => VCC,
	cin => \clock_divider_x|Add0~23\,
	combout => \clock_divider_x|Add0~24_combout\,
	cout => \clock_divider_x|Add0~25\);

-- Location: LCCOMB_X56_Y5_N26
\clock_divider_x|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_divider_x|Add0~26_combout\ = (\clock_divider_x|count\(13) & (!\clock_divider_x|Add0~25\)) # (!\clock_divider_x|count\(13) & ((\clock_divider_x|Add0~25\) # (GND)))
-- \clock_divider_x|Add0~27\ = CARRY((!\clock_divider_x|Add0~25\) # (!\clock_divider_x|count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider_x|count\(13),
	datad => VCC,
	cin => \clock_divider_x|Add0~25\,
	combout => \clock_divider_x|Add0~26_combout\,
	cout => \clock_divider_x|Add0~27\);

-- Location: FF_X56_Y5_N27
\clock_divider_x|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \clock_divider_x|Add0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider_x|count\(13));

-- Location: LCCOMB_X56_Y5_N28
\clock_divider_x|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_divider_x|Add0~28_combout\ = (\clock_divider_x|count\(14) & (\clock_divider_x|Add0~27\ $ (GND))) # (!\clock_divider_x|count\(14) & (!\clock_divider_x|Add0~27\ & VCC))
-- \clock_divider_x|Add0~29\ = CARRY((\clock_divider_x|count\(14) & !\clock_divider_x|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider_x|count\(14),
	datad => VCC,
	cin => \clock_divider_x|Add0~27\,
	combout => \clock_divider_x|Add0~28_combout\,
	cout => \clock_divider_x|Add0~29\);

-- Location: LCCOMB_X57_Y5_N2
\clock_divider_x|count~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_divider_x|count~3_combout\ = (\clock_divider_x|Add0~28_combout\ & ((!\clock_divider_x|Equal0~4_combout\) # (!\clock_divider_x|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider_x|Equal0~9_combout\,
	datac => \clock_divider_x|Equal0~4_combout\,
	datad => \clock_divider_x|Add0~28_combout\,
	combout => \clock_divider_x|count~3_combout\);

-- Location: FF_X57_Y5_N3
\clock_divider_x|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \clock_divider_x|count~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider_x|count\(14));

-- Location: LCCOMB_X56_Y5_N30
\clock_divider_x|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_divider_x|Add0~30_combout\ = (\clock_divider_x|count\(15) & (!\clock_divider_x|Add0~29\)) # (!\clock_divider_x|count\(15) & ((\clock_divider_x|Add0~29\) # (GND)))
-- \clock_divider_x|Add0~31\ = CARRY((!\clock_divider_x|Add0~29\) # (!\clock_divider_x|count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_divider_x|count\(15),
	datad => VCC,
	cin => \clock_divider_x|Add0~29\,
	combout => \clock_divider_x|Add0~30_combout\,
	cout => \clock_divider_x|Add0~31\);

-- Location: LCCOMB_X57_Y5_N0
\clock_divider_x|count~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_divider_x|count~2_combout\ = (\clock_divider_x|Add0~30_combout\ & ((!\clock_divider_x|Equal0~4_combout\) # (!\clock_divider_x|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider_x|Equal0~9_combout\,
	datac => \clock_divider_x|Equal0~4_combout\,
	datad => \clock_divider_x|Add0~30_combout\,
	combout => \clock_divider_x|count~2_combout\);

-- Location: FF_X57_Y5_N1
\clock_divider_x|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \clock_divider_x|count~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider_x|count\(15));

-- Location: LCCOMB_X56_Y4_N0
\clock_divider_x|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_divider_x|Add0~32_combout\ = (\clock_divider_x|count\(16) & (\clock_divider_x|Add0~31\ $ (GND))) # (!\clock_divider_x|count\(16) & (!\clock_divider_x|Add0~31\ & VCC))
-- \clock_divider_x|Add0~33\ = CARRY((\clock_divider_x|count\(16) & !\clock_divider_x|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_divider_x|count\(16),
	datad => VCC,
	cin => \clock_divider_x|Add0~31\,
	combout => \clock_divider_x|Add0~32_combout\,
	cout => \clock_divider_x|Add0~33\);

-- Location: LCCOMB_X57_Y5_N24
\clock_divider_x|count~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_divider_x|count~1_combout\ = (\clock_divider_x|Add0~32_combout\ & ((!\clock_divider_x|Equal0~4_combout\) # (!\clock_divider_x|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider_x|Equal0~9_combout\,
	datac => \clock_divider_x|Equal0~4_combout\,
	datad => \clock_divider_x|Add0~32_combout\,
	combout => \clock_divider_x|count~1_combout\);

-- Location: FF_X57_Y5_N25
\clock_divider_x|count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \clock_divider_x|count~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider_x|count\(16));

-- Location: LCCOMB_X56_Y4_N2
\clock_divider_x|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_divider_x|Add0~34_combout\ = (\clock_divider_x|count\(17) & (!\clock_divider_x|Add0~33\)) # (!\clock_divider_x|count\(17) & ((\clock_divider_x|Add0~33\) # (GND)))
-- \clock_divider_x|Add0~35\ = CARRY((!\clock_divider_x|Add0~33\) # (!\clock_divider_x|count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider_x|count\(17),
	datad => VCC,
	cin => \clock_divider_x|Add0~33\,
	combout => \clock_divider_x|Add0~34_combout\,
	cout => \clock_divider_x|Add0~35\);

-- Location: LCCOMB_X57_Y5_N28
\clock_divider_x|count~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_divider_x|count~0_combout\ = (\clock_divider_x|Add0~34_combout\ & ((!\clock_divider_x|Equal0~4_combout\) # (!\clock_divider_x|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider_x|Equal0~9_combout\,
	datac => \clock_divider_x|Equal0~4_combout\,
	datad => \clock_divider_x|Add0~34_combout\,
	combout => \clock_divider_x|count~0_combout\);

-- Location: FF_X57_Y5_N29
\clock_divider_x|count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \clock_divider_x|count~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider_x|count\(17));

-- Location: LCCOMB_X56_Y4_N4
\clock_divider_x|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_divider_x|Add0~36_combout\ = (\clock_divider_x|count\(18) & (\clock_divider_x|Add0~35\ $ (GND))) # (!\clock_divider_x|count\(18) & (!\clock_divider_x|Add0~35\ & VCC))
-- \clock_divider_x|Add0~37\ = CARRY((\clock_divider_x|count\(18) & !\clock_divider_x|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_divider_x|count\(18),
	datad => VCC,
	cin => \clock_divider_x|Add0~35\,
	combout => \clock_divider_x|Add0~36_combout\,
	cout => \clock_divider_x|Add0~37\);

-- Location: FF_X56_Y4_N5
\clock_divider_x|count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \clock_divider_x|Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider_x|count\(18));

-- Location: LCCOMB_X56_Y4_N6
\clock_divider_x|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_divider_x|Add0~38_combout\ = (\clock_divider_x|count\(19) & (!\clock_divider_x|Add0~37\)) # (!\clock_divider_x|count\(19) & ((\clock_divider_x|Add0~37\) # (GND)))
-- \clock_divider_x|Add0~39\ = CARRY((!\clock_divider_x|Add0~37\) # (!\clock_divider_x|count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider_x|count\(19),
	datad => VCC,
	cin => \clock_divider_x|Add0~37\,
	combout => \clock_divider_x|Add0~38_combout\,
	cout => \clock_divider_x|Add0~39\);

-- Location: FF_X56_Y4_N7
\clock_divider_x|count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \clock_divider_x|Add0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider_x|count\(19));

-- Location: LCCOMB_X57_Y5_N6
\clock_divider_x|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_divider_x|Equal0~3_combout\ = (\clock_divider_x|count\(17) & (\clock_divider_x|count\(16) & (!\clock_divider_x|count\(19) & !\clock_divider_x|count\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider_x|count\(17),
	datab => \clock_divider_x|count\(16),
	datac => \clock_divider_x|count\(19),
	datad => \clock_divider_x|count\(18),
	combout => \clock_divider_x|Equal0~3_combout\);

-- Location: LCCOMB_X56_Y4_N8
\clock_divider_x|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_divider_x|Add0~40_combout\ = (\clock_divider_x|count\(20) & (\clock_divider_x|Add0~39\ $ (GND))) # (!\clock_divider_x|count\(20) & (!\clock_divider_x|Add0~39\ & VCC))
-- \clock_divider_x|Add0~41\ = CARRY((\clock_divider_x|count\(20) & !\clock_divider_x|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_divider_x|count\(20),
	datad => VCC,
	cin => \clock_divider_x|Add0~39\,
	combout => \clock_divider_x|Add0~40_combout\,
	cout => \clock_divider_x|Add0~41\);

-- Location: FF_X56_Y4_N9
\clock_divider_x|count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \clock_divider_x|Add0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider_x|count\(20));

-- Location: LCCOMB_X56_Y4_N10
\clock_divider_x|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_divider_x|Add0~42_combout\ = (\clock_divider_x|count\(21) & (!\clock_divider_x|Add0~41\)) # (!\clock_divider_x|count\(21) & ((\clock_divider_x|Add0~41\) # (GND)))
-- \clock_divider_x|Add0~43\ = CARRY((!\clock_divider_x|Add0~41\) # (!\clock_divider_x|count\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider_x|count\(21),
	datad => VCC,
	cin => \clock_divider_x|Add0~41\,
	combout => \clock_divider_x|Add0~42_combout\,
	cout => \clock_divider_x|Add0~43\);

-- Location: FF_X56_Y4_N11
\clock_divider_x|count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \clock_divider_x|Add0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider_x|count\(21));

-- Location: LCCOMB_X56_Y4_N12
\clock_divider_x|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_divider_x|Add0~44_combout\ = (\clock_divider_x|count\(22) & (\clock_divider_x|Add0~43\ $ (GND))) # (!\clock_divider_x|count\(22) & (!\clock_divider_x|Add0~43\ & VCC))
-- \clock_divider_x|Add0~45\ = CARRY((\clock_divider_x|count\(22) & !\clock_divider_x|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider_x|count\(22),
	datad => VCC,
	cin => \clock_divider_x|Add0~43\,
	combout => \clock_divider_x|Add0~44_combout\,
	cout => \clock_divider_x|Add0~45\);

-- Location: FF_X56_Y4_N13
\clock_divider_x|count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \clock_divider_x|Add0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider_x|count\(22));

-- Location: LCCOMB_X56_Y4_N14
\clock_divider_x|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_divider_x|Add0~46_combout\ = (\clock_divider_x|count\(23) & (!\clock_divider_x|Add0~45\)) # (!\clock_divider_x|count\(23) & ((\clock_divider_x|Add0~45\) # (GND)))
-- \clock_divider_x|Add0~47\ = CARRY((!\clock_divider_x|Add0~45\) # (!\clock_divider_x|count\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_divider_x|count\(23),
	datad => VCC,
	cin => \clock_divider_x|Add0~45\,
	combout => \clock_divider_x|Add0~46_combout\,
	cout => \clock_divider_x|Add0~47\);

-- Location: FF_X56_Y4_N15
\clock_divider_x|count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \clock_divider_x|Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider_x|count\(23));

-- Location: LCCOMB_X56_Y4_N16
\clock_divider_x|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_divider_x|Add0~48_combout\ = (\clock_divider_x|count\(24) & (\clock_divider_x|Add0~47\ $ (GND))) # (!\clock_divider_x|count\(24) & (!\clock_divider_x|Add0~47\ & VCC))
-- \clock_divider_x|Add0~49\ = CARRY((\clock_divider_x|count\(24) & !\clock_divider_x|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_divider_x|count\(24),
	datad => VCC,
	cin => \clock_divider_x|Add0~47\,
	combout => \clock_divider_x|Add0~48_combout\,
	cout => \clock_divider_x|Add0~49\);

-- Location: FF_X56_Y4_N17
\clock_divider_x|count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \clock_divider_x|Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider_x|count\(24));

-- Location: LCCOMB_X56_Y4_N18
\clock_divider_x|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_divider_x|Add0~50_combout\ = (\clock_divider_x|count\(25) & (!\clock_divider_x|Add0~49\)) # (!\clock_divider_x|count\(25) & ((\clock_divider_x|Add0~49\) # (GND)))
-- \clock_divider_x|Add0~51\ = CARRY((!\clock_divider_x|Add0~49\) # (!\clock_divider_x|count\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_divider_x|count\(25),
	datad => VCC,
	cin => \clock_divider_x|Add0~49\,
	combout => \clock_divider_x|Add0~50_combout\,
	cout => \clock_divider_x|Add0~51\);

-- Location: FF_X56_Y4_N19
\clock_divider_x|count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \clock_divider_x|Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider_x|count\(25));

-- Location: LCCOMB_X56_Y4_N20
\clock_divider_x|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_divider_x|Add0~52_combout\ = (\clock_divider_x|count\(26) & (\clock_divider_x|Add0~51\ $ (GND))) # (!\clock_divider_x|count\(26) & (!\clock_divider_x|Add0~51\ & VCC))
-- \clock_divider_x|Add0~53\ = CARRY((\clock_divider_x|count\(26) & !\clock_divider_x|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_divider_x|count\(26),
	datad => VCC,
	cin => \clock_divider_x|Add0~51\,
	combout => \clock_divider_x|Add0~52_combout\,
	cout => \clock_divider_x|Add0~53\);

-- Location: FF_X56_Y4_N21
\clock_divider_x|count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \clock_divider_x|Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider_x|count\(26));

-- Location: LCCOMB_X56_Y4_N22
\clock_divider_x|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_divider_x|Add0~54_combout\ = (\clock_divider_x|count\(27) & (!\clock_divider_x|Add0~53\)) # (!\clock_divider_x|count\(27) & ((\clock_divider_x|Add0~53\) # (GND)))
-- \clock_divider_x|Add0~55\ = CARRY((!\clock_divider_x|Add0~53\) # (!\clock_divider_x|count\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider_x|count\(27),
	datad => VCC,
	cin => \clock_divider_x|Add0~53\,
	combout => \clock_divider_x|Add0~54_combout\,
	cout => \clock_divider_x|Add0~55\);

-- Location: FF_X56_Y4_N23
\clock_divider_x|count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \clock_divider_x|Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider_x|count\(27));

-- Location: LCCOMB_X56_Y4_N24
\clock_divider_x|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_divider_x|Add0~56_combout\ = (\clock_divider_x|count\(28) & (\clock_divider_x|Add0~55\ $ (GND))) # (!\clock_divider_x|count\(28) & (!\clock_divider_x|Add0~55\ & VCC))
-- \clock_divider_x|Add0~57\ = CARRY((\clock_divider_x|count\(28) & !\clock_divider_x|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_divider_x|count\(28),
	datad => VCC,
	cin => \clock_divider_x|Add0~55\,
	combout => \clock_divider_x|Add0~56_combout\,
	cout => \clock_divider_x|Add0~57\);

-- Location: FF_X56_Y4_N25
\clock_divider_x|count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \clock_divider_x|Add0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider_x|count\(28));

-- Location: LCCOMB_X56_Y4_N26
\clock_divider_x|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_divider_x|Add0~58_combout\ = (\clock_divider_x|count\(29) & (!\clock_divider_x|Add0~57\)) # (!\clock_divider_x|count\(29) & ((\clock_divider_x|Add0~57\) # (GND)))
-- \clock_divider_x|Add0~59\ = CARRY((!\clock_divider_x|Add0~57\) # (!\clock_divider_x|count\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider_x|count\(29),
	datad => VCC,
	cin => \clock_divider_x|Add0~57\,
	combout => \clock_divider_x|Add0~58_combout\,
	cout => \clock_divider_x|Add0~59\);

-- Location: FF_X56_Y4_N27
\clock_divider_x|count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \clock_divider_x|Add0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider_x|count\(29));

-- Location: LCCOMB_X56_Y4_N28
\clock_divider_x|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_divider_x|Add0~60_combout\ = (\clock_divider_x|count\(30) & (\clock_divider_x|Add0~59\ $ (GND))) # (!\clock_divider_x|count\(30) & (!\clock_divider_x|Add0~59\ & VCC))
-- \clock_divider_x|Add0~61\ = CARRY((\clock_divider_x|count\(30) & !\clock_divider_x|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_divider_x|count\(30),
	datad => VCC,
	cin => \clock_divider_x|Add0~59\,
	combout => \clock_divider_x|Add0~60_combout\,
	cout => \clock_divider_x|Add0~61\);

-- Location: FF_X56_Y4_N29
\clock_divider_x|count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \clock_divider_x|Add0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider_x|count\(30));

-- Location: LCCOMB_X56_Y4_N30
\clock_divider_x|Add0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_divider_x|Add0~62_combout\ = \clock_divider_x|count\(31) $ (\clock_divider_x|Add0~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider_x|count\(31),
	cin => \clock_divider_x|Add0~61\,
	combout => \clock_divider_x|Add0~62_combout\);

-- Location: FF_X56_Y4_N31
\clock_divider_x|count[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \clock_divider_x|Add0~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider_x|count\(31));

-- Location: LCCOMB_X57_Y4_N0
\clock_divider_x|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_divider_x|Equal0~0_combout\ = (!\clock_divider_x|count\(29) & (!\clock_divider_x|count\(31) & (!\clock_divider_x|count\(28) & !\clock_divider_x|count\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider_x|count\(29),
	datab => \clock_divider_x|count\(31),
	datac => \clock_divider_x|count\(28),
	datad => \clock_divider_x|count\(30),
	combout => \clock_divider_x|Equal0~0_combout\);

-- Location: LCCOMB_X57_Y4_N30
\clock_divider_x|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_divider_x|Equal0~1_combout\ = (!\clock_divider_x|count\(24) & (!\clock_divider_x|count\(27) & (!\clock_divider_x|count\(25) & !\clock_divider_x|count\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider_x|count\(24),
	datab => \clock_divider_x|count\(27),
	datac => \clock_divider_x|count\(25),
	datad => \clock_divider_x|count\(26),
	combout => \clock_divider_x|Equal0~1_combout\);

-- Location: LCCOMB_X57_Y4_N16
\clock_divider_x|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_divider_x|Equal0~2_combout\ = (!\clock_divider_x|count\(21) & (!\clock_divider_x|count\(22) & (!\clock_divider_x|count\(20) & !\clock_divider_x|count\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider_x|count\(21),
	datab => \clock_divider_x|count\(22),
	datac => \clock_divider_x|count\(20),
	datad => \clock_divider_x|count\(23),
	combout => \clock_divider_x|Equal0~2_combout\);

-- Location: LCCOMB_X57_Y5_N14
\clock_divider_x|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_divider_x|Equal0~4_combout\ = (\clock_divider_x|Equal0~3_combout\ & (\clock_divider_x|Equal0~0_combout\ & (\clock_divider_x|Equal0~1_combout\ & \clock_divider_x|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider_x|Equal0~3_combout\,
	datab => \clock_divider_x|Equal0~0_combout\,
	datac => \clock_divider_x|Equal0~1_combout\,
	datad => \clock_divider_x|Equal0~2_combout\,
	combout => \clock_divider_x|Equal0~4_combout\);

-- Location: LCCOMB_X57_Y5_N20
\clock_divider_x|count~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_divider_x|count~4_combout\ = (\clock_divider_x|Add0~24_combout\ & ((!\clock_divider_x|Equal0~4_combout\) # (!\clock_divider_x|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider_x|Equal0~9_combout\,
	datac => \clock_divider_x|Equal0~4_combout\,
	datad => \clock_divider_x|Add0~24_combout\,
	combout => \clock_divider_x|count~4_combout\);

-- Location: FF_X57_Y5_N21
\clock_divider_x|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \clock_divider_x|count~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider_x|count\(12));

-- Location: LCCOMB_X57_Y5_N26
\clock_divider_x|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_divider_x|Equal0~5_combout\ = (\clock_divider_x|count\(12) & (\clock_divider_x|count\(15) & (!\clock_divider_x|count\(13) & \clock_divider_x|count\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider_x|count\(12),
	datab => \clock_divider_x|count\(15),
	datac => \clock_divider_x|count\(13),
	datad => \clock_divider_x|count\(14),
	combout => \clock_divider_x|Equal0~5_combout\);

-- Location: LCCOMB_X57_Y5_N18
\clock_divider_x|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_divider_x|Equal0~6_combout\ = (!\clock_divider_x|count\(8) & (!\clock_divider_x|count\(11) & (!\clock_divider_x|count\(9) & !\clock_divider_x|count\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider_x|count\(8),
	datab => \clock_divider_x|count\(11),
	datac => \clock_divider_x|count\(9),
	datad => \clock_divider_x|count\(10),
	combout => \clock_divider_x|Equal0~6_combout\);

-- Location: LCCOMB_X57_Y5_N4
\clock_divider_x|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_divider_x|Equal0~7_combout\ = (\clock_divider_x|count\(7) & (!\clock_divider_x|count\(5) & (\clock_divider_x|count\(4) & !\clock_divider_x|count\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider_x|count\(7),
	datab => \clock_divider_x|count\(5),
	datac => \clock_divider_x|count\(4),
	datad => \clock_divider_x|count\(6),
	combout => \clock_divider_x|Equal0~7_combout\);

-- Location: LCCOMB_X57_Y5_N12
\clock_divider_x|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_divider_x|Equal0~8_combout\ = (!\clock_divider_x|count\(1) & (!\clock_divider_x|count\(2) & (!\clock_divider_x|count\(3) & \clock_divider_x|count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider_x|count\(1),
	datab => \clock_divider_x|count\(2),
	datac => \clock_divider_x|count\(3),
	datad => \clock_divider_x|count\(0),
	combout => \clock_divider_x|Equal0~8_combout\);

-- Location: LCCOMB_X57_Y5_N10
\clock_divider_x|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_divider_x|Equal0~9_combout\ = (\clock_divider_x|Equal0~5_combout\ & (\clock_divider_x|Equal0~6_combout\ & (\clock_divider_x|Equal0~7_combout\ & \clock_divider_x|Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider_x|Equal0~5_combout\,
	datab => \clock_divider_x|Equal0~6_combout\,
	datac => \clock_divider_x|Equal0~7_combout\,
	datad => \clock_divider_x|Equal0~8_combout\,
	combout => \clock_divider_x|Equal0~9_combout\);

-- Location: LCCOMB_X57_Y5_N16
\clock_divider_x|tmp~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_divider_x|tmp~0_combout\ = \clock_divider_x|tmp~q\ $ (((\clock_divider_x|Equal0~9_combout\ & \clock_divider_x|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider_x|Equal0~9_combout\,
	datab => \clock_divider_x|tmp~q\,
	datac => \clock_divider_x|Equal0~4_combout\,
	combout => \clock_divider_x|tmp~0_combout\);

-- Location: FF_X57_Y5_N31
\clock_divider_x|tmp\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	asdata => \clock_divider_x|tmp~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider_x|tmp~q\);

-- Location: CLKCTRL_G19
\clock_divider_x|tmp~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clock_divider_x|tmp~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clock_divider_x|tmp~clkctrl_outclk\);

-- Location: IOIBUF_X115_Y40_N8
\i_enable_cordic~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_enable_cordic,
	o => \i_enable_cordic~input_o\);

-- Location: LCCOMB_X63_Y69_N16
\Debounce_INST|OP1~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Debounce_INST|OP1~feeder_combout\ = \i_enable_cordic~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_enable_cordic~input_o\,
	combout => \Debounce_INST|OP1~feeder_combout\);

-- Location: FF_X63_Y69_N17
\Debounce_INST|OP1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \Debounce_INST|OP1~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Debounce_INST|OP1~q\);

-- Location: LCCOMB_X63_Y69_N22
\Debounce_INST|OP2~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Debounce_INST|OP2~feeder_combout\ = \Debounce_INST|OP1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Debounce_INST|OP1~q\,
	combout => \Debounce_INST|OP2~feeder_combout\);

-- Location: FF_X63_Y69_N23
\Debounce_INST|OP2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \Debounce_INST|OP2~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Debounce_INST|OP2~q\);

-- Location: LCCOMB_X63_Y69_N20
\Debounce_INST|OP_DATA~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Debounce_INST|OP_DATA~1_combout\ = (\Debounce_INST|OP2~q\ & \Debounce_INST|OP1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Debounce_INST|OP2~q\,
	datad => \Debounce_INST|OP1~q\,
	combout => \Debounce_INST|OP_DATA~1_combout\);

-- Location: FF_X63_Y69_N13
\Debounce_INST|OP3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	asdata => \Debounce_INST|OP2~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Debounce_INST|OP3~q\);

-- Location: LCCOMB_X63_Y69_N14
\Debounce_INST|OP4~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Debounce_INST|OP4~feeder_combout\ = \Debounce_INST|OP3~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Debounce_INST|OP3~q\,
	combout => \Debounce_INST|OP4~feeder_combout\);

-- Location: FF_X63_Y69_N15
\Debounce_INST|OP4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \Debounce_INST|OP4~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Debounce_INST|OP4~q\);

-- Location: FF_X63_Y69_N21
\Debounce_INST|OP5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	asdata => \Debounce_INST|OP4~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Debounce_INST|OP5~q\);

-- Location: FF_X63_Y69_N19
\Debounce_INST|OP6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	asdata => \Debounce_INST|OP5~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Debounce_INST|OP6~q\);

-- Location: LCCOMB_X63_Y69_N18
\Debounce_INST|OP_DATA~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Debounce_INST|OP_DATA~0_combout\ = (\Debounce_INST|OP5~q\ & (\Debounce_INST|OP4~q\ & (\Debounce_INST|OP6~q\ & \Debounce_INST|OP3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Debounce_INST|OP5~q\,
	datab => \Debounce_INST|OP4~q\,
	datac => \Debounce_INST|OP6~q\,
	datad => \Debounce_INST|OP3~q\,
	combout => \Debounce_INST|OP_DATA~0_combout\);

-- Location: LCCOMB_X63_Y69_N10
\Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = (\state.done~q\) # ((\Debounce_INST|OP_DATA~1_combout\ & (\state.idle~q\ & \Debounce_INST|OP_DATA~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.done~q\,
	datab => \Debounce_INST|OP_DATA~1_combout\,
	datac => \state.idle~q\,
	datad => \Debounce_INST|OP_DATA~0_combout\,
	combout => \Selector4~0_combout\);

-- Location: FF_X63_Y69_N11
\state.idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \Selector4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.idle~q\);

-- Location: LCCOMB_X63_Y69_N12
\Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = (\state.idle~q\ & (((!\Debounce_INST|OP_DATA~0_combout\) # (!\Debounce_INST|OP2~q\)) # (!\Debounce_INST|OP1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.idle~q\,
	datab => \Debounce_INST|OP1~q\,
	datac => \Debounce_INST|OP2~q\,
	datad => \Debounce_INST|OP_DATA~0_combout\,
	combout => \Selector3~0_combout\);

-- Location: LCCOMB_X63_Y69_N28
\Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector6~0_combout\ = (!\Selector3~0_combout\ & ((\state.run~q\) # ((\i_reset~q\) # (\Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.run~q\,
	datab => \Selector3~0_combout\,
	datac => \i_reset~q\,
	datad => \Equal0~0_combout\,
	combout => \Selector6~0_combout\);

-- Location: FF_X63_Y69_N29
i_reset : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \Selector6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_reset~q\);

-- Location: LCCOMB_X68_Y67_N4
\iteration_counter_INST|cnt[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \iteration_counter_INST|cnt[0]~0_combout\ = (!\i_reset~q\ & (\iteration_counter_INST|cnt\(0) $ (((!\state.done~q\ & !\Equal0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_reset~q\,
	datab => \state.done~q\,
	datac => \iteration_counter_INST|cnt\(0),
	datad => \Equal0~0_combout\,
	combout => \iteration_counter_INST|cnt[0]~0_combout\);

-- Location: FF_X69_Y67_N21
\iteration_counter_INST|cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	asdata => \iteration_counter_INST|cnt[0]~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \iteration_counter_INST|cnt\(0));

-- Location: LCCOMB_X68_Y67_N22
\iteration_counter_INST|cnt[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \iteration_counter_INST|cnt[0]~1_combout\ = (!\i_reset~q\ & ((\state.done~q\) # (\Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_reset~q\,
	datac => \state.done~q\,
	datad => \Equal0~0_combout\,
	combout => \iteration_counter_INST|cnt[0]~1_combout\);

-- Location: LCCOMB_X69_Y67_N6
\iteration_counter_INST|cnt[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \iteration_counter_INST|cnt[1]~2_combout\ = (\iteration_counter_INST|cnt[0]~1_combout\ & (((\iteration_counter_INST|cnt\(1))))) # (!\iteration_counter_INST|cnt[0]~1_combout\ & (!\i_reset~q\ & (\iteration_counter_INST|cnt\(0) $ 
-- (\iteration_counter_INST|cnt\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iteration_counter_INST|cnt\(0),
	datab => \i_reset~q\,
	datac => \iteration_counter_INST|cnt\(1),
	datad => \iteration_counter_INST|cnt[0]~1_combout\,
	combout => \iteration_counter_INST|cnt[1]~2_combout\);

-- Location: FF_X69_Y67_N7
\iteration_counter_INST|cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \iteration_counter_INST|cnt[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \iteration_counter_INST|cnt\(1));

-- Location: LCCOMB_X68_Y67_N24
\iteration_counter_INST|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \iteration_counter_INST|Add0~0_combout\ = \iteration_counter_INST|cnt\(2) $ (((\iteration_counter_INST|cnt\(1) & \iteration_counter_INST|cnt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iteration_counter_INST|cnt\(2),
	datab => \iteration_counter_INST|cnt\(1),
	datac => \iteration_counter_INST|cnt\(0),
	combout => \iteration_counter_INST|Add0~0_combout\);

-- Location: LCCOMB_X68_Y67_N8
\iteration_counter_INST|cnt[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \iteration_counter_INST|cnt[2]~3_combout\ = (\iteration_counter_INST|cnt[0]~1_combout\ & (((\iteration_counter_INST|cnt\(2))))) # (!\iteration_counter_INST|cnt[0]~1_combout\ & (!\i_reset~q\ & ((\iteration_counter_INST|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_reset~q\,
	datab => \iteration_counter_INST|cnt[0]~1_combout\,
	datac => \iteration_counter_INST|cnt\(2),
	datad => \iteration_counter_INST|Add0~0_combout\,
	combout => \iteration_counter_INST|cnt[2]~3_combout\);

-- Location: FF_X68_Y67_N9
\iteration_counter_INST|cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \iteration_counter_INST|cnt[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \iteration_counter_INST|cnt\(2));

-- Location: LCCOMB_X68_Y67_N6
\iteration_counter_INST|cnt[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \iteration_counter_INST|cnt[3]~4_combout\ = (\iteration_counter_INST|cnt\(1) & (\iteration_counter_INST|cnt\(0) & (!\state.done~q\ & \iteration_counter_INST|cnt\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iteration_counter_INST|cnt\(1),
	datab => \iteration_counter_INST|cnt\(0),
	datac => \state.done~q\,
	datad => \iteration_counter_INST|cnt\(2),
	combout => \iteration_counter_INST|cnt[3]~4_combout\);

-- Location: LCCOMB_X68_Y67_N18
\iteration_counter_INST|cnt[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \iteration_counter_INST|cnt[3]~5_combout\ = (!\i_reset~q\ & ((\iteration_counter_INST|cnt\(3)) # (\iteration_counter_INST|cnt[3]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_reset~q\,
	datac => \iteration_counter_INST|cnt\(3),
	datad => \iteration_counter_INST|cnt[3]~4_combout\,
	combout => \iteration_counter_INST|cnt[3]~5_combout\);

-- Location: FF_X68_Y67_N19
\iteration_counter_INST|cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \iteration_counter_INST|cnt[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \iteration_counter_INST|cnt\(3));

-- Location: LCCOMB_X67_Y68_N20
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (\iteration_counter_INST|cnt\(1) & (\iteration_counter_INST|cnt\(0) & (\iteration_counter_INST|cnt\(2) & \iteration_counter_INST|cnt\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iteration_counter_INST|cnt\(1),
	datab => \iteration_counter_INST|cnt\(0),
	datac => \iteration_counter_INST|cnt\(2),
	datad => \iteration_counter_INST|cnt\(3),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X63_Y69_N8
\Selector3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector3~1_combout\ = (!\Selector3~0_combout\ & ((\state.run~q\) # (\Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector3~0_combout\,
	datac => \state.run~q\,
	datad => \Equal0~0_combout\,
	combout => \Selector3~1_combout\);

-- Location: FF_X63_Y69_N9
\state.run\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \Selector3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.run~q\);

-- Location: LCCOMB_X63_Y69_N30
\Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector5~0_combout\ = (!\state.run~q\ & \Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.run~q\,
	datad => \Equal0~0_combout\,
	combout => \Selector5~0_combout\);

-- Location: FF_X63_Y69_N31
\state.done\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.done~q\);

-- Location: LCCOMB_X65_Y69_N28
\Selector54~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector54~0_combout\ = (\state.done~q\ & ((r_zn(0)) # ((\Add2~0_combout\ & !\state.run~q\)))) # (!\state.done~q\ & (\Add2~0_combout\ & ((!\state.run~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.done~q\,
	datab => \Add2~0_combout\,
	datac => r_zn(0),
	datad => \state.run~q\,
	combout => \Selector54~0_combout\);

-- Location: FF_X65_Y69_N29
\r_zn[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \Selector54~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_zn(0));

-- Location: LCCOMB_X67_Y70_N8
\LUT_16_INST|rom~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LUT_16_INST|rom~0_combout\ = (\iteration_counter_INST|cnt\(2) & (!\iteration_counter_INST|cnt\(0) & (\iteration_counter_INST|cnt\(3) $ (!\iteration_counter_INST|cnt\(1))))) # (!\iteration_counter_INST|cnt\(2) & (!\iteration_counter_INST|cnt\(3) & 
-- (\iteration_counter_INST|cnt\(0) & \iteration_counter_INST|cnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iteration_counter_INST|cnt\(3),
	datab => \iteration_counter_INST|cnt\(2),
	datac => \iteration_counter_INST|cnt\(0),
	datad => \iteration_counter_INST|cnt\(1),
	combout => \LUT_16_INST|rom~0_combout\);

-- Location: LCCOMB_X68_Y67_N20
\bit_shift_INST_x|ShiftRight0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit_shift_INST_x|ShiftRight0~15_combout\ = (\iteration_counter_INST|cnt\(1)) # (\iteration_counter_INST|cnt\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \iteration_counter_INST|cnt\(1),
	datad => \iteration_counter_INST|cnt\(2),
	combout => \bit_shift_INST_x|ShiftRight0~15_combout\);

-- Location: LCCOMB_X68_Y67_N30
\LUT_16_INST|rom~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \LUT_16_INST|rom~14_combout\ = (!\iteration_counter_INST|cnt\(2) & !\iteration_counter_INST|cnt\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \iteration_counter_INST|cnt\(2),
	datad => \iteration_counter_INST|cnt\(3),
	combout => \LUT_16_INST|rom~14_combout\);

-- Location: LCCOMB_X69_Y67_N24
\bit_shift_INST_x|ShiftRight0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit_shift_INST_x|ShiftRight0~17_combout\ = (\iteration_counter_INST|cnt\(0) & ((\iteration_counter_INST|cnt\(1) & ((r_xn(15)))) # (!\iteration_counter_INST|cnt\(1) & (r_xn(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iteration_counter_INST|cnt\(1),
	datab => \iteration_counter_INST|cnt\(0),
	datac => r_xn(13),
	datad => r_xn(15),
	combout => \bit_shift_INST_x|ShiftRight0~17_combout\);

-- Location: LCCOMB_X70_Y68_N18
\bit_shift_INST_y|ShiftRight0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit_shift_INST_y|ShiftRight0~22_combout\ = (\iteration_counter_INST|cnt\(1) & (((r_yn(15))))) # (!\iteration_counter_INST|cnt\(1) & ((\iteration_counter_INST|cnt\(0) & (r_yn(15))) # (!\iteration_counter_INST|cnt\(0) & ((r_yn(14))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iteration_counter_INST|cnt\(1),
	datab => \iteration_counter_INST|cnt\(0),
	datac => r_yn(15),
	datad => r_yn(14),
	combout => \bit_shift_INST_y|ShiftRight0~22_combout\);

-- Location: LCCOMB_X70_Y68_N0
\bit_shift_INST_y|ShiftRight0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit_shift_INST_y|ShiftRight0~23_combout\ = (\iteration_counter_INST|cnt\(0) & ((\iteration_counter_INST|cnt\(1) & (r_yn(13))) # (!\iteration_counter_INST|cnt\(1) & ((r_yn(11))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iteration_counter_INST|cnt\(1),
	datab => \iteration_counter_INST|cnt\(0),
	datac => r_yn(13),
	datad => r_yn(11),
	combout => \bit_shift_INST_y|ShiftRight0~23_combout\);

-- Location: LCCOMB_X69_Y68_N24
\bit_shift_INST_y|ShiftRight0~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit_shift_INST_y|ShiftRight0~25_combout\ = (\iteration_counter_INST|cnt\(2) & (\bit_shift_INST_y|ShiftRight0~22_combout\)) # (!\iteration_counter_INST|cnt\(2) & (((\bit_shift_INST_y|ShiftRight0~23_combout\) # 
-- (\bit_shift_INST_y|ShiftRight0~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iteration_counter_INST|cnt\(2),
	datab => \bit_shift_INST_y|ShiftRight0~22_combout\,
	datac => \bit_shift_INST_y|ShiftRight0~23_combout\,
	datad => \bit_shift_INST_y|ShiftRight0~24_combout\,
	combout => \bit_shift_INST_y|ShiftRight0~25_combout\);

-- Location: LCCOMB_X69_Y68_N6
\bit_shift_INST_y|ShiftRight0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit_shift_INST_y|ShiftRight0~26_combout\ = (\iteration_counter_INST|cnt\(3) & (r_yn(15))) # (!\iteration_counter_INST|cnt\(3) & ((\bit_shift_INST_y|ShiftRight0~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \iteration_counter_INST|cnt\(3),
	datac => r_yn(15),
	datad => \bit_shift_INST_y|ShiftRight0~25_combout\,
	combout => \bit_shift_INST_y|ShiftRight0~26_combout\);

-- Location: LCCOMB_X70_Y68_N14
\bit_shift_INST_y|ShiftRight0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit_shift_INST_y|ShiftRight0~30_combout\ = (\iteration_counter_INST|cnt\(2) & ((\iteration_counter_INST|cnt\(1) & (r_yn(15))) # (!\iteration_counter_INST|cnt\(1) & ((\bit_shift_INST_y|ShiftRight0~15_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iteration_counter_INST|cnt\(1),
	datab => r_yn(15),
	datac => \bit_shift_INST_y|ShiftRight0~15_combout\,
	datad => \iteration_counter_INST|cnt\(2),
	combout => \bit_shift_INST_y|ShiftRight0~30_combout\);

-- Location: LCCOMB_X69_Y69_N24
\bit_shift_INST_x|ShiftRight0~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit_shift_INST_x|ShiftRight0~70_combout\ = (\iteration_counter_INST|cnt\(3) & (((r_xn(15))))) # (!\iteration_counter_INST|cnt\(3) & (\iteration_counter_INST|cnt\(2) & ((\bit_shift_INST_x|ShiftRight0~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iteration_counter_INST|cnt\(2),
	datab => r_xn(15),
	datac => \iteration_counter_INST|cnt\(3),
	datad => \bit_shift_INST_x|ShiftRight0~21_combout\,
	combout => \bit_shift_INST_x|ShiftRight0~70_combout\);

-- Location: LCCOMB_X69_Y68_N12
\bit_shift_INST_y|ShiftRight0~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit_shift_INST_y|ShiftRight0~41_combout\ = (\iteration_counter_INST|cnt\(3) & ((\bit_shift_INST_x|ShiftRight0~15_combout\ & (r_yn(15))) # (!\bit_shift_INST_x|ShiftRight0~15_combout\ & ((\bit_shift_INST_y|ShiftRight0~15_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit_shift_INST_x|ShiftRight0~15_combout\,
	datab => \iteration_counter_INST|cnt\(3),
	datac => r_yn(15),
	datad => \bit_shift_INST_y|ShiftRight0~15_combout\,
	combout => \bit_shift_INST_y|ShiftRight0~41_combout\);

-- Location: LCCOMB_X69_Y69_N8
\bit_shift_INST_x|ShiftRight0~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit_shift_INST_x|ShiftRight0~39_combout\ = (!\iteration_counter_INST|cnt\(0) & ((\iteration_counter_INST|cnt\(1) & (r_xn(8))) # (!\iteration_counter_INST|cnt\(1) & ((r_xn(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iteration_counter_INST|cnt\(1),
	datab => r_xn(8),
	datac => r_xn(6),
	datad => \iteration_counter_INST|cnt\(0),
	combout => \bit_shift_INST_x|ShiftRight0~39_combout\);

-- Location: LCCOMB_X69_Y69_N6
\bit_shift_INST_x|ShiftRight0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit_shift_INST_x|ShiftRight0~40_combout\ = (\bit_shift_INST_x|ShiftRight0~39_combout\) # ((\iteration_counter_INST|cnt\(0) & \bit_shift_INST_x|ShiftRight0~36_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iteration_counter_INST|cnt\(0),
	datac => \bit_shift_INST_x|ShiftRight0~39_combout\,
	datad => \bit_shift_INST_x|ShiftRight0~36_combout\,
	combout => \bit_shift_INST_x|ShiftRight0~40_combout\);

-- Location: LCCOMB_X68_Y70_N28
\bit_shift_INST_x|ShiftRight0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit_shift_INST_x|ShiftRight0~12_combout\ = (\iteration_counter_INST|cnt\(1)) # ((\iteration_counter_INST|cnt\(0)) # (\iteration_counter_INST|cnt\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iteration_counter_INST|cnt\(1),
	datac => \iteration_counter_INST|cnt\(0),
	datad => \iteration_counter_INST|cnt\(2),
	combout => \bit_shift_INST_x|ShiftRight0~12_combout\);

-- Location: LCCOMB_X68_Y70_N24
\bit_shift_INST_x|ShiftRight0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit_shift_INST_x|ShiftRight0~38_combout\ = (\iteration_counter_INST|cnt\(3) & ((\bit_shift_INST_x|ShiftRight0~12_combout\ & ((r_xn(15)))) # (!\bit_shift_INST_x|ShiftRight0~12_combout\ & (r_xn(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_xn(14),
	datab => \iteration_counter_INST|cnt\(3),
	datac => r_xn(15),
	datad => \bit_shift_INST_x|ShiftRight0~12_combout\,
	combout => \bit_shift_INST_x|ShiftRight0~38_combout\);

-- Location: LCCOMB_X68_Y68_N20
\sign_inverter_INST_y|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \sign_inverter_INST_y|Add0~20_combout\ = (\bit_shift_INST_y|ShiftRight0~26_combout\ & (!\sign_inverter_INST_y|Add0~19\ & VCC)) # (!\bit_shift_INST_y|ShiftRight0~26_combout\ & (\sign_inverter_INST_y|Add0~19\ $ (GND)))
-- \sign_inverter_INST_y|Add0~21\ = CARRY((!\bit_shift_INST_y|ShiftRight0~26_combout\ & !\sign_inverter_INST_y|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bit_shift_INST_y|ShiftRight0~26_combout\,
	datad => VCC,
	cin => \sign_inverter_INST_y|Add0~19\,
	combout => \sign_inverter_INST_y|Add0~20_combout\,
	cout => \sign_inverter_INST_y|Add0~21\);

-- Location: LCCOMB_X69_Y71_N30
\sign_inverter_INST_y|o_SI[10]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \sign_inverter_INST_y|o_SI[10]~5_combout\ = (r_yn(15) & ((\bit_shift_INST_y|ShiftRight0~26_combout\) # ((!\sign_inverter_INST_z|Equal0~0_combout\ & \sign_inverter_INST_y|Add0~20_combout\)))) # (!r_yn(15) & (((!\sign_inverter_INST_z|Equal0~0_combout\ & 
-- \sign_inverter_INST_y|Add0~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_yn(15),
	datab => \bit_shift_INST_y|ShiftRight0~26_combout\,
	datac => \sign_inverter_INST_z|Equal0~0_combout\,
	datad => \sign_inverter_INST_y|Add0~20_combout\,
	combout => \sign_inverter_INST_y|o_SI[10]~5_combout\);

-- Location: LCCOMB_X69_Y70_N14
\bit_shift_INST_y|ShiftRight0~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit_shift_INST_y|ShiftRight0~47_combout\ = (\iteration_counter_INST|cnt\(1) & ((\iteration_counter_INST|cnt\(0) & (r_yn(7))) # (!\iteration_counter_INST|cnt\(0) & ((r_yn(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iteration_counter_INST|cnt\(1),
	datab => r_yn(7),
	datac => r_yn(6),
	datad => \iteration_counter_INST|cnt\(0),
	combout => \bit_shift_INST_y|ShiftRight0~47_combout\);

-- Location: LCCOMB_X69_Y67_N4
\bit_shift_INST_x|ShiftRight0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit_shift_INST_x|ShiftRight0~32_combout\ = (\bit_shift_INST_x|ShiftRight0~18_combout\) # (\bit_shift_INST_x|ShiftRight0~17_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bit_shift_INST_x|ShiftRight0~18_combout\,
	datad => \bit_shift_INST_x|ShiftRight0~17_combout\,
	combout => \bit_shift_INST_x|ShiftRight0~32_combout\);

-- Location: LCCOMB_X69_Y67_N22
\bit_shift_INST_x|ShiftRight0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit_shift_INST_x|ShiftRight0~48_combout\ = (\iteration_counter_INST|cnt\(1) & ((\iteration_counter_INST|cnt\(0) & ((r_xn(7)))) # (!\iteration_counter_INST|cnt\(0) & (r_xn(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iteration_counter_INST|cnt\(1),
	datab => \iteration_counter_INST|cnt\(0),
	datac => r_xn(6),
	datad => r_xn(7),
	combout => \bit_shift_INST_x|ShiftRight0~48_combout\);

-- Location: LCCOMB_X68_Y70_N14
\bit_shift_INST_y|ShiftRight0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit_shift_INST_y|ShiftRight0~12_combout\ = (\iteration_counter_INST|cnt\(3)) # ((\iteration_counter_INST|cnt\(1) & !\iteration_counter_INST|cnt\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iteration_counter_INST|cnt\(3),
	datac => \iteration_counter_INST|cnt\(1),
	datad => \iteration_counter_INST|cnt\(2),
	combout => \bit_shift_INST_y|ShiftRight0~12_combout\);

-- Location: LCCOMB_X70_Y67_N14
\bit_shift_INST_y|ShiftRight0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit_shift_INST_y|ShiftRight0~52_combout\ = (\iteration_counter_INST|cnt\(0) & ((r_yn(4)))) # (!\iteration_counter_INST|cnt\(0) & (r_yn(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_yn(3),
	datac => \iteration_counter_INST|cnt\(0),
	datad => r_yn(4),
	combout => \bit_shift_INST_y|ShiftRight0~52_combout\);

-- Location: LCCOMB_X69_Y68_N8
\bit_shift_INST_y|ShiftRight0~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit_shift_INST_y|ShiftRight0~53_combout\ = (\bit_shift_INST_y|ShiftRight0~12_combout\ & (!\LUT_16_INST|rom~14_combout\)) # (!\bit_shift_INST_y|ShiftRight0~12_combout\ & ((\LUT_16_INST|rom~14_combout\ & (\bit_shift_INST_y|ShiftRight0~52_combout\)) # 
-- (!\LUT_16_INST|rom~14_combout\ & ((\bit_shift_INST_y|ShiftRight0~36_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit_shift_INST_y|ShiftRight0~12_combout\,
	datab => \LUT_16_INST|rom~14_combout\,
	datac => \bit_shift_INST_y|ShiftRight0~52_combout\,
	datad => \bit_shift_INST_y|ShiftRight0~36_combout\,
	combout => \bit_shift_INST_y|ShiftRight0~53_combout\);

-- Location: LCCOMB_X70_Y68_N16
\bit_shift_INST_y|ShiftRight0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit_shift_INST_y|ShiftRight0~54_combout\ = (\iteration_counter_INST|cnt\(2) & (r_yn(15))) # (!\iteration_counter_INST|cnt\(2) & ((\bit_shift_INST_y|ShiftRight0~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \iteration_counter_INST|cnt\(2),
	datac => r_yn(15),
	datad => \bit_shift_INST_y|ShiftRight0~21_combout\,
	combout => \bit_shift_INST_y|ShiftRight0~54_combout\);

-- Location: LCCOMB_X69_Y68_N10
\bit_shift_INST_y|ShiftRight0~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit_shift_INST_y|ShiftRight0~55_combout\ = (\bit_shift_INST_y|ShiftRight0~12_combout\ & ((\bit_shift_INST_y|ShiftRight0~53_combout\ & ((\bit_shift_INST_y|ShiftRight0~54_combout\))) # (!\bit_shift_INST_y|ShiftRight0~53_combout\ & 
-- (\bit_shift_INST_y|ShiftRight0~44_combout\)))) # (!\bit_shift_INST_y|ShiftRight0~12_combout\ & (((\bit_shift_INST_y|ShiftRight0~53_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit_shift_INST_y|ShiftRight0~12_combout\,
	datab => \bit_shift_INST_y|ShiftRight0~44_combout\,
	datac => \bit_shift_INST_y|ShiftRight0~53_combout\,
	datad => \bit_shift_INST_y|ShiftRight0~54_combout\,
	combout => \bit_shift_INST_y|ShiftRight0~55_combout\);

-- Location: LCCOMB_X68_Y70_N18
\bit_shift_INST_x|ShiftRight0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit_shift_INST_x|ShiftRight0~22_combout\ = (\iteration_counter_INST|cnt\(1) & (r_xn(15))) # (!\iteration_counter_INST|cnt\(1) & ((\iteration_counter_INST|cnt\(0) & (r_xn(15))) # (!\iteration_counter_INST|cnt\(0) & ((r_xn(14))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iteration_counter_INST|cnt\(1),
	datab => r_xn(15),
	datac => r_xn(14),
	datad => \iteration_counter_INST|cnt\(0),
	combout => \bit_shift_INST_x|ShiftRight0~22_combout\);

-- Location: LCCOMB_X68_Y70_N12
\bit_shift_INST_x|ShiftRight0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit_shift_INST_x|ShiftRight0~23_combout\ = (\iteration_counter_INST|cnt\(0) & ((\iteration_counter_INST|cnt\(1) & ((r_xn(13)))) # (!\iteration_counter_INST|cnt\(1) & (r_xn(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_xn(11),
	datab => r_xn(13),
	datac => \iteration_counter_INST|cnt\(1),
	datad => \iteration_counter_INST|cnt\(0),
	combout => \bit_shift_INST_x|ShiftRight0~23_combout\);

-- Location: LCCOMB_X68_Y70_N0
\bit_shift_INST_x|ShiftRight0~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit_shift_INST_x|ShiftRight0~25_combout\ = (\iteration_counter_INST|cnt\(2) & (\bit_shift_INST_x|ShiftRight0~22_combout\)) # (!\iteration_counter_INST|cnt\(2) & (((\bit_shift_INST_x|ShiftRight0~24_combout\) # 
-- (\bit_shift_INST_x|ShiftRight0~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iteration_counter_INST|cnt\(2),
	datab => \bit_shift_INST_x|ShiftRight0~22_combout\,
	datac => \bit_shift_INST_x|ShiftRight0~24_combout\,
	datad => \bit_shift_INST_x|ShiftRight0~23_combout\,
	combout => \bit_shift_INST_x|ShiftRight0~25_combout\);

-- Location: LCCOMB_X72_Y69_N0
\bit_shift_INST_x|ShiftRight0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit_shift_INST_x|ShiftRight0~30_combout\ = (\iteration_counter_INST|cnt\(2) & ((\iteration_counter_INST|cnt\(1) & (r_xn(15))) # (!\iteration_counter_INST|cnt\(1) & ((\bit_shift_INST_x|ShiftRight0~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iteration_counter_INST|cnt\(1),
	datab => r_xn(15),
	datac => \iteration_counter_INST|cnt\(2),
	datad => \bit_shift_INST_x|ShiftRight0~14_combout\,
	combout => \bit_shift_INST_x|ShiftRight0~30_combout\);

-- Location: LCCOMB_X69_Y67_N10
\bit_shift_INST_y|ShiftRight0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit_shift_INST_y|ShiftRight0~13_combout\ = (\iteration_counter_INST|cnt\(2)) # ((!\iteration_counter_INST|cnt\(1) & \iteration_counter_INST|cnt\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iteration_counter_INST|cnt\(1),
	datab => \iteration_counter_INST|cnt\(0),
	datad => \iteration_counter_INST|cnt\(2),
	combout => \bit_shift_INST_y|ShiftRight0~13_combout\);

-- Location: LCCOMB_X72_Y69_N28
\bit_shift_INST_x|ShiftRight0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit_shift_INST_x|ShiftRight0~44_combout\ = (\iteration_counter_INST|cnt\(1) & ((\iteration_counter_INST|cnt\(0) & (r_xn(8))) # (!\iteration_counter_INST|cnt\(0) & ((r_xn(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iteration_counter_INST|cnt\(1),
	datab => r_xn(8),
	datac => \iteration_counter_INST|cnt\(0),
	datad => r_xn(7),
	combout => \bit_shift_INST_x|ShiftRight0~44_combout\);

-- Location: LCCOMB_X72_Y69_N4
\bit_shift_INST_x|ShiftRight0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit_shift_INST_x|ShiftRight0~46_combout\ = (\bit_shift_INST_x|ShiftRight0~44_combout\) # ((!\iteration_counter_INST|cnt\(1) & \bit_shift_INST_x|ShiftRight0~45_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iteration_counter_INST|cnt\(1),
	datac => \bit_shift_INST_x|ShiftRight0~45_combout\,
	datad => \bit_shift_INST_x|ShiftRight0~44_combout\,
	combout => \bit_shift_INST_x|ShiftRight0~46_combout\);

-- Location: LCCOMB_X69_Y70_N10
\sign_inverter_INST_y|o_SI[0]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \sign_inverter_INST_y|o_SI[0]~15_combout\ = (\bit_shift_INST_y|ShiftRight0~65_combout\ & ((r_yn(15)) # (!\sign_inverter_INST_z|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_yn(15),
	datac => \bit_shift_INST_y|ShiftRight0~65_combout\,
	datad => \sign_inverter_INST_z|Equal0~0_combout\,
	combout => \sign_inverter_INST_y|o_SI[0]~15_combout\);

-- Location: LCCOMB_X68_Y71_N0
\r_xn[0]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_xn[0]~16_combout\ = (\sign_inverter_INST_y|o_SI[0]~15_combout\ & (r_xn(0) $ (VCC))) # (!\sign_inverter_INST_y|o_SI[0]~15_combout\ & ((r_xn(0)) # (GND)))
-- \r_xn[0]~17\ = CARRY((r_xn(0)) # (!\sign_inverter_INST_y|o_SI[0]~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sign_inverter_INST_y|o_SI[0]~15_combout\,
	datab => r_xn(0),
	datad => VCC,
	combout => \r_xn[0]~16_combout\,
	cout => \r_xn[0]~17\);

-- Location: FF_X68_Y71_N1
\r_xn[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \r_xn[0]~16_combout\,
	asdata => VCC,
	sload => \state.run~q\,
	ena => \ALT_INV_state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_xn(0));

-- Location: LCCOMB_X69_Y67_N18
\bit_shift_INST_x|ShiftRight0~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit_shift_INST_x|ShiftRight0~64_combout\ = (\bit_shift_INST_x|ShiftRight0~15_combout\ & (((\bit_shift_INST_y|ShiftRight0~13_combout\) # (\bit_shift_INST_x|ShiftRight0~57_combout\)))) # (!\bit_shift_INST_x|ShiftRight0~15_combout\ & (r_xn(0) & 
-- (!\bit_shift_INST_y|ShiftRight0~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_xn(0),
	datab => \bit_shift_INST_x|ShiftRight0~15_combout\,
	datac => \bit_shift_INST_y|ShiftRight0~13_combout\,
	datad => \bit_shift_INST_x|ShiftRight0~57_combout\,
	combout => \bit_shift_INST_x|ShiftRight0~64_combout\);

-- Location: LCCOMB_X69_Y67_N8
\bit_shift_INST_x|ShiftRight0~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit_shift_INST_x|ShiftRight0~65_combout\ = (\bit_shift_INST_y|ShiftRight0~13_combout\ & ((\bit_shift_INST_x|ShiftRight0~64_combout\ & ((\bit_shift_INST_x|ShiftRight0~50_combout\))) # (!\bit_shift_INST_x|ShiftRight0~64_combout\ & (r_xn(1))))) # 
-- (!\bit_shift_INST_y|ShiftRight0~13_combout\ & (((\bit_shift_INST_x|ShiftRight0~64_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit_shift_INST_y|ShiftRight0~13_combout\,
	datab => r_xn(1),
	datac => \bit_shift_INST_x|ShiftRight0~50_combout\,
	datad => \bit_shift_INST_x|ShiftRight0~64_combout\,
	combout => \bit_shift_INST_x|ShiftRight0~65_combout\);

-- Location: LCCOMB_X69_Y67_N28
\bit_shift_INST_x|ShiftRight0~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit_shift_INST_x|ShiftRight0~63_combout\ = (\iteration_counter_INST|cnt\(2) & ((\bit_shift_INST_x|ShiftRight0~17_combout\) # ((\bit_shift_INST_x|ShiftRight0~18_combout\)))) # (!\iteration_counter_INST|cnt\(2) & 
-- (((\bit_shift_INST_x|ShiftRight0~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iteration_counter_INST|cnt\(2),
	datab => \bit_shift_INST_x|ShiftRight0~17_combout\,
	datac => \bit_shift_INST_x|ShiftRight0~18_combout\,
	datad => \bit_shift_INST_x|ShiftRight0~35_combout\,
	combout => \bit_shift_INST_x|ShiftRight0~63_combout\);

-- Location: LCCOMB_X69_Y67_N14
\bit_shift_INST_x|ShiftRight0~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit_shift_INST_x|ShiftRight0~66_combout\ = (\iteration_counter_INST|cnt\(3) & ((\bit_shift_INST_x|ShiftRight0~63_combout\))) # (!\iteration_counter_INST|cnt\(3) & (\bit_shift_INST_x|ShiftRight0~65_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \iteration_counter_INST|cnt\(3),
	datac => \bit_shift_INST_x|ShiftRight0~65_combout\,
	datad => \bit_shift_INST_x|ShiftRight0~63_combout\,
	combout => \bit_shift_INST_x|ShiftRight0~66_combout\);

-- Location: LCCOMB_X69_Y67_N20
\sign_inverter_INST_x|o_SI[0]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \sign_inverter_INST_x|o_SI[0]~15_combout\ = (\bit_shift_INST_x|ShiftRight0~66_combout\ & ((r_yn(15)) # (!\sign_inverter_INST_z|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_yn(15),
	datab => \sign_inverter_INST_z|Equal0~0_combout\,
	datad => \bit_shift_INST_x|ShiftRight0~66_combout\,
	combout => \sign_inverter_INST_x|o_SI[0]~15_combout\);

-- Location: LCCOMB_X70_Y69_N0
\r_yn[0]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_yn[0]~16_combout\ = (r_yn(0) & (\sign_inverter_INST_x|o_SI[0]~15_combout\ $ (VCC))) # (!r_yn(0) & (\sign_inverter_INST_x|o_SI[0]~15_combout\ & VCC))
-- \r_yn[0]~17\ = CARRY((r_yn(0) & \sign_inverter_INST_x|o_SI[0]~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_yn(0),
	datab => \sign_inverter_INST_x|o_SI[0]~15_combout\,
	datad => VCC,
	combout => \r_yn[0]~16_combout\,
	cout => \r_yn[0]~17\);

-- Location: FF_X70_Y69_N1
\r_yn[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \r_yn[0]~16_combout\,
	asdata => VCC,
	sload => \state.run~q\,
	ena => \ALT_INV_state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_yn(0));

-- Location: LCCOMB_X69_Y70_N16
\bit_shift_INST_y|ShiftRight0~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit_shift_INST_y|ShiftRight0~63_combout\ = (\bit_shift_INST_y|ShiftRight0~13_combout\ & (((\bit_shift_INST_x|ShiftRight0~15_combout\)))) # (!\bit_shift_INST_y|ShiftRight0~13_combout\ & ((\bit_shift_INST_x|ShiftRight0~15_combout\ & 
-- (\bit_shift_INST_y|ShiftRight0~56_combout\)) # (!\bit_shift_INST_x|ShiftRight0~15_combout\ & ((r_yn(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit_shift_INST_y|ShiftRight0~56_combout\,
	datab => r_yn(0),
	datac => \bit_shift_INST_y|ShiftRight0~13_combout\,
	datad => \bit_shift_INST_x|ShiftRight0~15_combout\,
	combout => \bit_shift_INST_y|ShiftRight0~63_combout\);

-- Location: LCCOMB_X69_Y70_N22
\bit_shift_INST_y|ShiftRight0~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit_shift_INST_y|ShiftRight0~64_combout\ = (\bit_shift_INST_y|ShiftRight0~13_combout\ & ((\bit_shift_INST_y|ShiftRight0~63_combout\ & ((\bit_shift_INST_y|ShiftRight0~49_combout\))) # (!\bit_shift_INST_y|ShiftRight0~63_combout\ & (r_yn(1))))) # 
-- (!\bit_shift_INST_y|ShiftRight0~13_combout\ & (((\bit_shift_INST_y|ShiftRight0~63_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_yn(1),
	datab => \bit_shift_INST_y|ShiftRight0~13_combout\,
	datac => \bit_shift_INST_y|ShiftRight0~49_combout\,
	datad => \bit_shift_INST_y|ShiftRight0~63_combout\,
	combout => \bit_shift_INST_y|ShiftRight0~64_combout\);

-- Location: LCCOMB_X69_Y70_N28
\bit_shift_INST_y|ShiftRight0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit_shift_INST_y|ShiftRight0~17_combout\ = (\iteration_counter_INST|cnt\(0) & ((\iteration_counter_INST|cnt\(1) & (r_yn(15))) # (!\iteration_counter_INST|cnt\(1) & ((r_yn(13))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_yn(15),
	datab => \iteration_counter_INST|cnt\(1),
	datac => r_yn(13),
	datad => \iteration_counter_INST|cnt\(0),
	combout => \bit_shift_INST_y|ShiftRight0~17_combout\);

-- Location: LCCOMB_X69_Y70_N2
\bit_shift_INST_y|ShiftRight0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit_shift_INST_y|ShiftRight0~32_combout\ = (\bit_shift_INST_y|ShiftRight0~18_combout\) # (\bit_shift_INST_y|ShiftRight0~17_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bit_shift_INST_y|ShiftRight0~18_combout\,
	datad => \bit_shift_INST_y|ShiftRight0~17_combout\,
	combout => \bit_shift_INST_y|ShiftRight0~32_combout\);

-- Location: LCCOMB_X69_Y70_N6
\bit_shift_INST_y|ShiftRight0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit_shift_INST_y|ShiftRight0~62_combout\ = (\iteration_counter_INST|cnt\(3) & ((\iteration_counter_INST|cnt\(2) & (\bit_shift_INST_y|ShiftRight0~32_combout\)) # (!\iteration_counter_INST|cnt\(2) & ((\bit_shift_INST_y|ShiftRight0~34_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iteration_counter_INST|cnt\(2),
	datab => \bit_shift_INST_y|ShiftRight0~32_combout\,
	datac => \iteration_counter_INST|cnt\(3),
	datad => \bit_shift_INST_y|ShiftRight0~34_combout\,
	combout => \bit_shift_INST_y|ShiftRight0~62_combout\);

-- Location: LCCOMB_X69_Y70_N8
\bit_shift_INST_y|ShiftRight0~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit_shift_INST_y|ShiftRight0~65_combout\ = (\bit_shift_INST_y|ShiftRight0~62_combout\) # ((!\iteration_counter_INST|cnt\(3) & \bit_shift_INST_y|ShiftRight0~64_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iteration_counter_INST|cnt\(3),
	datac => \bit_shift_INST_y|ShiftRight0~64_combout\,
	datad => \bit_shift_INST_y|ShiftRight0~62_combout\,
	combout => \bit_shift_INST_y|ShiftRight0~65_combout\);

-- Location: LCCOMB_X68_Y68_N0
\sign_inverter_INST_y|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sign_inverter_INST_y|Add0~1_cout\ = CARRY(!\bit_shift_INST_y|ShiftRight0~65_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bit_shift_INST_y|ShiftRight0~65_combout\,
	datad => VCC,
	cout => \sign_inverter_INST_y|Add0~1_cout\);

-- Location: LCCOMB_X68_Y68_N2
\sign_inverter_INST_y|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sign_inverter_INST_y|Add0~2_combout\ = (\bit_shift_INST_y|ShiftRight0~61_combout\ & ((\sign_inverter_INST_y|Add0~1_cout\) # (GND))) # (!\bit_shift_INST_y|ShiftRight0~61_combout\ & (!\sign_inverter_INST_y|Add0~1_cout\))
-- \sign_inverter_INST_y|Add0~3\ = CARRY((\bit_shift_INST_y|ShiftRight0~61_combout\) # (!\sign_inverter_INST_y|Add0~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bit_shift_INST_y|ShiftRight0~61_combout\,
	datad => VCC,
	cin => \sign_inverter_INST_y|Add0~1_cout\,
	combout => \sign_inverter_INST_y|Add0~2_combout\,
	cout => \sign_inverter_INST_y|Add0~3\);

-- Location: LCCOMB_X69_Y68_N18
\sign_inverter_INST_y|o_SI[1]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \sign_inverter_INST_y|o_SI[1]~14_combout\ = (\sign_inverter_INST_z|Equal0~0_combout\ & (r_yn(15) & (\bit_shift_INST_y|ShiftRight0~61_combout\))) # (!\sign_inverter_INST_z|Equal0~0_combout\ & ((\sign_inverter_INST_y|Add0~2_combout\) # ((r_yn(15) & 
-- \bit_shift_INST_y|ShiftRight0~61_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sign_inverter_INST_z|Equal0~0_combout\,
	datab => r_yn(15),
	datac => \bit_shift_INST_y|ShiftRight0~61_combout\,
	datad => \sign_inverter_INST_y|Add0~2_combout\,
	combout => \sign_inverter_INST_y|o_SI[1]~14_combout\);

-- Location: LCCOMB_X68_Y71_N2
\r_xn[1]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_xn[1]~18_combout\ = (\sign_inverter_INST_y|o_SI[1]~14_combout\ & ((r_xn(1) & (!\r_xn[0]~17\)) # (!r_xn(1) & ((\r_xn[0]~17\) # (GND))))) # (!\sign_inverter_INST_y|o_SI[1]~14_combout\ & ((r_xn(1) & (\r_xn[0]~17\ & VCC)) # (!r_xn(1) & (!\r_xn[0]~17\))))
-- \r_xn[1]~19\ = CARRY((\sign_inverter_INST_y|o_SI[1]~14_combout\ & ((!\r_xn[0]~17\) # (!r_xn(1)))) # (!\sign_inverter_INST_y|o_SI[1]~14_combout\ & (!r_xn(1) & !\r_xn[0]~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sign_inverter_INST_y|o_SI[1]~14_combout\,
	datab => r_xn(1),
	datad => VCC,
	cin => \r_xn[0]~17\,
	combout => \r_xn[1]~18_combout\,
	cout => \r_xn[1]~19\);

-- Location: LCCOMB_X59_Y72_N14
\i_mem_enable_X~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_mem_enable_X~feeder_combout\ = \state.idle~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \state.idle~q\,
	combout => \i_mem_enable_X~feeder_combout\);

-- Location: FF_X59_Y72_N15
i_mem_enable_X : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \i_mem_enable_X~feeder_combout\,
	ena => \ALT_INV_state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_mem_enable_X~q\);

-- Location: CLKCTRL_G13
\i_mem_enable_X~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \i_mem_enable_X~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \i_mem_enable_X~clkctrl_outclk\);

-- Location: LCCOMB_X70_Y71_N0
\LUT_COUNTER[0]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \LUT_COUNTER[0]~32_combout\ = LUT_COUNTER(0) $ (VCC)
-- \LUT_COUNTER[0]~33\ = CARRY(LUT_COUNTER(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => LUT_COUNTER(0),
	datad => VCC,
	combout => \LUT_COUNTER[0]~32_combout\,
	cout => \LUT_COUNTER[0]~33\);

-- Location: LCCOMB_X70_Y71_N2
\LUT_COUNTER[1]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \LUT_COUNTER[1]~34_combout\ = (LUT_COUNTER(1) & (!\LUT_COUNTER[0]~33\)) # (!LUT_COUNTER(1) & ((\LUT_COUNTER[0]~33\) # (GND)))
-- \LUT_COUNTER[1]~35\ = CARRY((!\LUT_COUNTER[0]~33\) # (!LUT_COUNTER(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => LUT_COUNTER(1),
	datad => VCC,
	cin => \LUT_COUNTER[0]~33\,
	combout => \LUT_COUNTER[1]~34_combout\,
	cout => \LUT_COUNTER[1]~35\);

-- Location: FF_X70_Y71_N3
\LUT_COUNTER[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \LUT_COUNTER[1]~34_combout\,
	sclr => \LessThan0~8_combout\,
	ena => \state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => LUT_COUNTER(1));

-- Location: LCCOMB_X70_Y71_N4
\LUT_COUNTER[2]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \LUT_COUNTER[2]~36_combout\ = (LUT_COUNTER(2) & (\LUT_COUNTER[1]~35\ $ (GND))) # (!LUT_COUNTER(2) & (!\LUT_COUNTER[1]~35\ & VCC))
-- \LUT_COUNTER[2]~37\ = CARRY((LUT_COUNTER(2) & !\LUT_COUNTER[1]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => LUT_COUNTER(2),
	datad => VCC,
	cin => \LUT_COUNTER[1]~35\,
	combout => \LUT_COUNTER[2]~36_combout\,
	cout => \LUT_COUNTER[2]~37\);

-- Location: FF_X70_Y71_N5
\LUT_COUNTER[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \LUT_COUNTER[2]~36_combout\,
	sclr => \LessThan0~8_combout\,
	ena => \state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => LUT_COUNTER(2));

-- Location: LCCOMB_X70_Y71_N6
\LUT_COUNTER[3]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \LUT_COUNTER[3]~38_combout\ = (LUT_COUNTER(3) & (!\LUT_COUNTER[2]~37\)) # (!LUT_COUNTER(3) & ((\LUT_COUNTER[2]~37\) # (GND)))
-- \LUT_COUNTER[3]~39\ = CARRY((!\LUT_COUNTER[2]~37\) # (!LUT_COUNTER(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => LUT_COUNTER(3),
	datad => VCC,
	cin => \LUT_COUNTER[2]~37\,
	combout => \LUT_COUNTER[3]~38_combout\,
	cout => \LUT_COUNTER[3]~39\);

-- Location: FF_X70_Y71_N7
\LUT_COUNTER[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \LUT_COUNTER[3]~38_combout\,
	sclr => \LessThan0~8_combout\,
	ena => \state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => LUT_COUNTER(3));

-- Location: LCCOMB_X70_Y71_N8
\LUT_COUNTER[4]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \LUT_COUNTER[4]~40_combout\ = (LUT_COUNTER(4) & (\LUT_COUNTER[3]~39\ $ (GND))) # (!LUT_COUNTER(4) & (!\LUT_COUNTER[3]~39\ & VCC))
-- \LUT_COUNTER[4]~41\ = CARRY((LUT_COUNTER(4) & !\LUT_COUNTER[3]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => LUT_COUNTER(4),
	datad => VCC,
	cin => \LUT_COUNTER[3]~39\,
	combout => \LUT_COUNTER[4]~40_combout\,
	cout => \LUT_COUNTER[4]~41\);

-- Location: FF_X70_Y71_N9
\LUT_COUNTER[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \LUT_COUNTER[4]~40_combout\,
	sclr => \LessThan0~8_combout\,
	ena => \state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => LUT_COUNTER(4));

-- Location: LCCOMB_X70_Y71_N10
\LUT_COUNTER[5]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \LUT_COUNTER[5]~42_combout\ = (LUT_COUNTER(5) & (!\LUT_COUNTER[4]~41\)) # (!LUT_COUNTER(5) & ((\LUT_COUNTER[4]~41\) # (GND)))
-- \LUT_COUNTER[5]~43\ = CARRY((!\LUT_COUNTER[4]~41\) # (!LUT_COUNTER(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => LUT_COUNTER(5),
	datad => VCC,
	cin => \LUT_COUNTER[4]~41\,
	combout => \LUT_COUNTER[5]~42_combout\,
	cout => \LUT_COUNTER[5]~43\);

-- Location: FF_X70_Y71_N11
\LUT_COUNTER[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \LUT_COUNTER[5]~42_combout\,
	sclr => \LessThan0~8_combout\,
	ena => \state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => LUT_COUNTER(5));

-- Location: LCCOMB_X70_Y71_N12
\LUT_COUNTER[6]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \LUT_COUNTER[6]~44_combout\ = (LUT_COUNTER(6) & (\LUT_COUNTER[5]~43\ $ (GND))) # (!LUT_COUNTER(6) & (!\LUT_COUNTER[5]~43\ & VCC))
-- \LUT_COUNTER[6]~45\ = CARRY((LUT_COUNTER(6) & !\LUT_COUNTER[5]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => LUT_COUNTER(6),
	datad => VCC,
	cin => \LUT_COUNTER[5]~43\,
	combout => \LUT_COUNTER[6]~44_combout\,
	cout => \LUT_COUNTER[6]~45\);

-- Location: FF_X70_Y71_N13
\LUT_COUNTER[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \LUT_COUNTER[6]~44_combout\,
	sclr => \LessThan0~8_combout\,
	ena => \state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => LUT_COUNTER(6));

-- Location: LCCOMB_X70_Y71_N14
\LUT_COUNTER[7]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \LUT_COUNTER[7]~46_combout\ = (LUT_COUNTER(7) & (!\LUT_COUNTER[6]~45\)) # (!LUT_COUNTER(7) & ((\LUT_COUNTER[6]~45\) # (GND)))
-- \LUT_COUNTER[7]~47\ = CARRY((!\LUT_COUNTER[6]~45\) # (!LUT_COUNTER(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => LUT_COUNTER(7),
	datad => VCC,
	cin => \LUT_COUNTER[6]~45\,
	combout => \LUT_COUNTER[7]~46_combout\,
	cout => \LUT_COUNTER[7]~47\);

-- Location: FF_X70_Y71_N15
\LUT_COUNTER[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \LUT_COUNTER[7]~46_combout\,
	sclr => \LessThan0~8_combout\,
	ena => \state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => LUT_COUNTER(7));

-- Location: LCCOMB_X70_Y71_N16
\LUT_COUNTER[8]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \LUT_COUNTER[8]~48_combout\ = (LUT_COUNTER(8) & (\LUT_COUNTER[7]~47\ $ (GND))) # (!LUT_COUNTER(8) & (!\LUT_COUNTER[7]~47\ & VCC))
-- \LUT_COUNTER[8]~49\ = CARRY((LUT_COUNTER(8) & !\LUT_COUNTER[7]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => LUT_COUNTER(8),
	datad => VCC,
	cin => \LUT_COUNTER[7]~47\,
	combout => \LUT_COUNTER[8]~48_combout\,
	cout => \LUT_COUNTER[8]~49\);

-- Location: FF_X70_Y71_N17
\LUT_COUNTER[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \LUT_COUNTER[8]~48_combout\,
	sclr => \LessThan0~8_combout\,
	ena => \state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => LUT_COUNTER(8));

-- Location: LCCOMB_X70_Y71_N18
\LUT_COUNTER[9]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \LUT_COUNTER[9]~50_combout\ = (LUT_COUNTER(9) & (!\LUT_COUNTER[8]~49\)) # (!LUT_COUNTER(9) & ((\LUT_COUNTER[8]~49\) # (GND)))
-- \LUT_COUNTER[9]~51\ = CARRY((!\LUT_COUNTER[8]~49\) # (!LUT_COUNTER(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => LUT_COUNTER(9),
	datad => VCC,
	cin => \LUT_COUNTER[8]~49\,
	combout => \LUT_COUNTER[9]~50_combout\,
	cout => \LUT_COUNTER[9]~51\);

-- Location: FF_X70_Y71_N19
\LUT_COUNTER[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \LUT_COUNTER[9]~50_combout\,
	sclr => \LessThan0~8_combout\,
	ena => \state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => LUT_COUNTER(9));

-- Location: LCCOMB_X70_Y71_N20
\LUT_COUNTER[10]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \LUT_COUNTER[10]~52_combout\ = (LUT_COUNTER(10) & (\LUT_COUNTER[9]~51\ $ (GND))) # (!LUT_COUNTER(10) & (!\LUT_COUNTER[9]~51\ & VCC))
-- \LUT_COUNTER[10]~53\ = CARRY((LUT_COUNTER(10) & !\LUT_COUNTER[9]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => LUT_COUNTER(10),
	datad => VCC,
	cin => \LUT_COUNTER[9]~51\,
	combout => \LUT_COUNTER[10]~52_combout\,
	cout => \LUT_COUNTER[10]~53\);

-- Location: FF_X70_Y71_N21
\LUT_COUNTER[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \LUT_COUNTER[10]~52_combout\,
	sclr => \LessThan0~8_combout\,
	ena => \state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => LUT_COUNTER(10));

-- Location: LCCOMB_X70_Y71_N22
\LUT_COUNTER[11]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \LUT_COUNTER[11]~54_combout\ = (LUT_COUNTER(11) & (!\LUT_COUNTER[10]~53\)) # (!LUT_COUNTER(11) & ((\LUT_COUNTER[10]~53\) # (GND)))
-- \LUT_COUNTER[11]~55\ = CARRY((!\LUT_COUNTER[10]~53\) # (!LUT_COUNTER(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => LUT_COUNTER(11),
	datad => VCC,
	cin => \LUT_COUNTER[10]~53\,
	combout => \LUT_COUNTER[11]~54_combout\,
	cout => \LUT_COUNTER[11]~55\);

-- Location: FF_X70_Y71_N23
\LUT_COUNTER[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \LUT_COUNTER[11]~54_combout\,
	sclr => \LessThan0~8_combout\,
	ena => \state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => LUT_COUNTER(11));

-- Location: LCCOMB_X70_Y71_N24
\LUT_COUNTER[12]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \LUT_COUNTER[12]~56_combout\ = (LUT_COUNTER(12) & (\LUT_COUNTER[11]~55\ $ (GND))) # (!LUT_COUNTER(12) & (!\LUT_COUNTER[11]~55\ & VCC))
-- \LUT_COUNTER[12]~57\ = CARRY((LUT_COUNTER(12) & !\LUT_COUNTER[11]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => LUT_COUNTER(12),
	datad => VCC,
	cin => \LUT_COUNTER[11]~55\,
	combout => \LUT_COUNTER[12]~56_combout\,
	cout => \LUT_COUNTER[12]~57\);

-- Location: FF_X70_Y71_N25
\LUT_COUNTER[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \LUT_COUNTER[12]~56_combout\,
	sclr => \LessThan0~8_combout\,
	ena => \state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => LUT_COUNTER(12));

-- Location: LCCOMB_X70_Y71_N26
\LUT_COUNTER[13]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \LUT_COUNTER[13]~58_combout\ = (LUT_COUNTER(13) & (!\LUT_COUNTER[12]~57\)) # (!LUT_COUNTER(13) & ((\LUT_COUNTER[12]~57\) # (GND)))
-- \LUT_COUNTER[13]~59\ = CARRY((!\LUT_COUNTER[12]~57\) # (!LUT_COUNTER(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => LUT_COUNTER(13),
	datad => VCC,
	cin => \LUT_COUNTER[12]~57\,
	combout => \LUT_COUNTER[13]~58_combout\,
	cout => \LUT_COUNTER[13]~59\);

-- Location: FF_X70_Y71_N27
\LUT_COUNTER[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \LUT_COUNTER[13]~58_combout\,
	sclr => \LessThan0~8_combout\,
	ena => \state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => LUT_COUNTER(13));

-- Location: LCCOMB_X70_Y71_N28
\LUT_COUNTER[14]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \LUT_COUNTER[14]~60_combout\ = (LUT_COUNTER(14) & (\LUT_COUNTER[13]~59\ $ (GND))) # (!LUT_COUNTER(14) & (!\LUT_COUNTER[13]~59\ & VCC))
-- \LUT_COUNTER[14]~61\ = CARRY((LUT_COUNTER(14) & !\LUT_COUNTER[13]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => LUT_COUNTER(14),
	datad => VCC,
	cin => \LUT_COUNTER[13]~59\,
	combout => \LUT_COUNTER[14]~60_combout\,
	cout => \LUT_COUNTER[14]~61\);

-- Location: FF_X70_Y71_N29
\LUT_COUNTER[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \LUT_COUNTER[14]~60_combout\,
	sclr => \LessThan0~8_combout\,
	ena => \state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => LUT_COUNTER(14));

-- Location: LCCOMB_X70_Y71_N30
\LUT_COUNTER[15]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \LUT_COUNTER[15]~62_combout\ = (LUT_COUNTER(15) & (!\LUT_COUNTER[14]~61\)) # (!LUT_COUNTER(15) & ((\LUT_COUNTER[14]~61\) # (GND)))
-- \LUT_COUNTER[15]~63\ = CARRY((!\LUT_COUNTER[14]~61\) # (!LUT_COUNTER(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => LUT_COUNTER(15),
	datad => VCC,
	cin => \LUT_COUNTER[14]~61\,
	combout => \LUT_COUNTER[15]~62_combout\,
	cout => \LUT_COUNTER[15]~63\);

-- Location: FF_X70_Y71_N31
\LUT_COUNTER[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \LUT_COUNTER[15]~62_combout\,
	sclr => \LessThan0~8_combout\,
	ena => \state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => LUT_COUNTER(15));

-- Location: LCCOMB_X70_Y70_N0
\LUT_COUNTER[16]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \LUT_COUNTER[16]~64_combout\ = (LUT_COUNTER(16) & (\LUT_COUNTER[15]~63\ $ (GND))) # (!LUT_COUNTER(16) & (!\LUT_COUNTER[15]~63\ & VCC))
-- \LUT_COUNTER[16]~65\ = CARRY((LUT_COUNTER(16) & !\LUT_COUNTER[15]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => LUT_COUNTER(16),
	datad => VCC,
	cin => \LUT_COUNTER[15]~63\,
	combout => \LUT_COUNTER[16]~64_combout\,
	cout => \LUT_COUNTER[16]~65\);

-- Location: FF_X70_Y70_N1
\LUT_COUNTER[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \LUT_COUNTER[16]~64_combout\,
	sclr => \LessThan0~8_combout\,
	ena => \state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => LUT_COUNTER(16));

-- Location: LCCOMB_X70_Y70_N2
\LUT_COUNTER[17]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \LUT_COUNTER[17]~66_combout\ = (LUT_COUNTER(17) & (!\LUT_COUNTER[16]~65\)) # (!LUT_COUNTER(17) & ((\LUT_COUNTER[16]~65\) # (GND)))
-- \LUT_COUNTER[17]~67\ = CARRY((!\LUT_COUNTER[16]~65\) # (!LUT_COUNTER(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => LUT_COUNTER(17),
	datad => VCC,
	cin => \LUT_COUNTER[16]~65\,
	combout => \LUT_COUNTER[17]~66_combout\,
	cout => \LUT_COUNTER[17]~67\);

-- Location: FF_X70_Y70_N3
\LUT_COUNTER[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \LUT_COUNTER[17]~66_combout\,
	sclr => \LessThan0~8_combout\,
	ena => \state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => LUT_COUNTER(17));

-- Location: LCCOMB_X70_Y70_N4
\LUT_COUNTER[18]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \LUT_COUNTER[18]~68_combout\ = (LUT_COUNTER(18) & (\LUT_COUNTER[17]~67\ $ (GND))) # (!LUT_COUNTER(18) & (!\LUT_COUNTER[17]~67\ & VCC))
-- \LUT_COUNTER[18]~69\ = CARRY((LUT_COUNTER(18) & !\LUT_COUNTER[17]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => LUT_COUNTER(18),
	datad => VCC,
	cin => \LUT_COUNTER[17]~67\,
	combout => \LUT_COUNTER[18]~68_combout\,
	cout => \LUT_COUNTER[18]~69\);

-- Location: FF_X70_Y70_N5
\LUT_COUNTER[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \LUT_COUNTER[18]~68_combout\,
	sclr => \LessThan0~8_combout\,
	ena => \state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => LUT_COUNTER(18));

-- Location: LCCOMB_X70_Y70_N6
\LUT_COUNTER[19]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \LUT_COUNTER[19]~70_combout\ = (LUT_COUNTER(19) & (!\LUT_COUNTER[18]~69\)) # (!LUT_COUNTER(19) & ((\LUT_COUNTER[18]~69\) # (GND)))
-- \LUT_COUNTER[19]~71\ = CARRY((!\LUT_COUNTER[18]~69\) # (!LUT_COUNTER(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => LUT_COUNTER(19),
	datad => VCC,
	cin => \LUT_COUNTER[18]~69\,
	combout => \LUT_COUNTER[19]~70_combout\,
	cout => \LUT_COUNTER[19]~71\);

-- Location: FF_X70_Y70_N7
\LUT_COUNTER[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \LUT_COUNTER[19]~70_combout\,
	sclr => \LessThan0~8_combout\,
	ena => \state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => LUT_COUNTER(19));

-- Location: LCCOMB_X70_Y70_N8
\LUT_COUNTER[20]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \LUT_COUNTER[20]~72_combout\ = (LUT_COUNTER(20) & (\LUT_COUNTER[19]~71\ $ (GND))) # (!LUT_COUNTER(20) & (!\LUT_COUNTER[19]~71\ & VCC))
-- \LUT_COUNTER[20]~73\ = CARRY((LUT_COUNTER(20) & !\LUT_COUNTER[19]~71\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => LUT_COUNTER(20),
	datad => VCC,
	cin => \LUT_COUNTER[19]~71\,
	combout => \LUT_COUNTER[20]~72_combout\,
	cout => \LUT_COUNTER[20]~73\);

-- Location: FF_X70_Y70_N9
\LUT_COUNTER[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \LUT_COUNTER[20]~72_combout\,
	sclr => \LessThan0~8_combout\,
	ena => \state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => LUT_COUNTER(20));

-- Location: LCCOMB_X70_Y70_N10
\LUT_COUNTER[21]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \LUT_COUNTER[21]~74_combout\ = (LUT_COUNTER(21) & (!\LUT_COUNTER[20]~73\)) # (!LUT_COUNTER(21) & ((\LUT_COUNTER[20]~73\) # (GND)))
-- \LUT_COUNTER[21]~75\ = CARRY((!\LUT_COUNTER[20]~73\) # (!LUT_COUNTER(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => LUT_COUNTER(21),
	datad => VCC,
	cin => \LUT_COUNTER[20]~73\,
	combout => \LUT_COUNTER[21]~74_combout\,
	cout => \LUT_COUNTER[21]~75\);

-- Location: FF_X70_Y70_N11
\LUT_COUNTER[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \LUT_COUNTER[21]~74_combout\,
	sclr => \LessThan0~8_combout\,
	ena => \state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => LUT_COUNTER(21));

-- Location: LCCOMB_X70_Y70_N12
\LUT_COUNTER[22]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \LUT_COUNTER[22]~76_combout\ = (LUT_COUNTER(22) & (\LUT_COUNTER[21]~75\ $ (GND))) # (!LUT_COUNTER(22) & (!\LUT_COUNTER[21]~75\ & VCC))
-- \LUT_COUNTER[22]~77\ = CARRY((LUT_COUNTER(22) & !\LUT_COUNTER[21]~75\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => LUT_COUNTER(22),
	datad => VCC,
	cin => \LUT_COUNTER[21]~75\,
	combout => \LUT_COUNTER[22]~76_combout\,
	cout => \LUT_COUNTER[22]~77\);

-- Location: FF_X70_Y70_N13
\LUT_COUNTER[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \LUT_COUNTER[22]~76_combout\,
	sclr => \LessThan0~8_combout\,
	ena => \state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => LUT_COUNTER(22));

-- Location: LCCOMB_X70_Y70_N14
\LUT_COUNTER[23]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \LUT_COUNTER[23]~78_combout\ = (LUT_COUNTER(23) & (!\LUT_COUNTER[22]~77\)) # (!LUT_COUNTER(23) & ((\LUT_COUNTER[22]~77\) # (GND)))
-- \LUT_COUNTER[23]~79\ = CARRY((!\LUT_COUNTER[22]~77\) # (!LUT_COUNTER(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => LUT_COUNTER(23),
	datad => VCC,
	cin => \LUT_COUNTER[22]~77\,
	combout => \LUT_COUNTER[23]~78_combout\,
	cout => \LUT_COUNTER[23]~79\);

-- Location: FF_X70_Y70_N15
\LUT_COUNTER[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \LUT_COUNTER[23]~78_combout\,
	sclr => \LessThan0~8_combout\,
	ena => \state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => LUT_COUNTER(23));

-- Location: LCCOMB_X70_Y70_N16
\LUT_COUNTER[24]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \LUT_COUNTER[24]~80_combout\ = (LUT_COUNTER(24) & (\LUT_COUNTER[23]~79\ $ (GND))) # (!LUT_COUNTER(24) & (!\LUT_COUNTER[23]~79\ & VCC))
-- \LUT_COUNTER[24]~81\ = CARRY((LUT_COUNTER(24) & !\LUT_COUNTER[23]~79\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => LUT_COUNTER(24),
	datad => VCC,
	cin => \LUT_COUNTER[23]~79\,
	combout => \LUT_COUNTER[24]~80_combout\,
	cout => \LUT_COUNTER[24]~81\);

-- Location: FF_X70_Y70_N17
\LUT_COUNTER[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \LUT_COUNTER[24]~80_combout\,
	sclr => \LessThan0~8_combout\,
	ena => \state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => LUT_COUNTER(24));

-- Location: LCCOMB_X70_Y70_N18
\LUT_COUNTER[25]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \LUT_COUNTER[25]~82_combout\ = (LUT_COUNTER(25) & (!\LUT_COUNTER[24]~81\)) # (!LUT_COUNTER(25) & ((\LUT_COUNTER[24]~81\) # (GND)))
-- \LUT_COUNTER[25]~83\ = CARRY((!\LUT_COUNTER[24]~81\) # (!LUT_COUNTER(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => LUT_COUNTER(25),
	datad => VCC,
	cin => \LUT_COUNTER[24]~81\,
	combout => \LUT_COUNTER[25]~82_combout\,
	cout => \LUT_COUNTER[25]~83\);

-- Location: FF_X70_Y70_N19
\LUT_COUNTER[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \LUT_COUNTER[25]~82_combout\,
	sclr => \LessThan0~8_combout\,
	ena => \state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => LUT_COUNTER(25));

-- Location: LCCOMB_X70_Y70_N20
\LUT_COUNTER[26]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \LUT_COUNTER[26]~84_combout\ = (LUT_COUNTER(26) & (\LUT_COUNTER[25]~83\ $ (GND))) # (!LUT_COUNTER(26) & (!\LUT_COUNTER[25]~83\ & VCC))
-- \LUT_COUNTER[26]~85\ = CARRY((LUT_COUNTER(26) & !\LUT_COUNTER[25]~83\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => LUT_COUNTER(26),
	datad => VCC,
	cin => \LUT_COUNTER[25]~83\,
	combout => \LUT_COUNTER[26]~84_combout\,
	cout => \LUT_COUNTER[26]~85\);

-- Location: FF_X70_Y70_N21
\LUT_COUNTER[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \LUT_COUNTER[26]~84_combout\,
	sclr => \LessThan0~8_combout\,
	ena => \state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => LUT_COUNTER(26));

-- Location: LCCOMB_X70_Y70_N22
\LUT_COUNTER[27]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \LUT_COUNTER[27]~86_combout\ = (LUT_COUNTER(27) & (!\LUT_COUNTER[26]~85\)) # (!LUT_COUNTER(27) & ((\LUT_COUNTER[26]~85\) # (GND)))
-- \LUT_COUNTER[27]~87\ = CARRY((!\LUT_COUNTER[26]~85\) # (!LUT_COUNTER(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => LUT_COUNTER(27),
	datad => VCC,
	cin => \LUT_COUNTER[26]~85\,
	combout => \LUT_COUNTER[27]~86_combout\,
	cout => \LUT_COUNTER[27]~87\);

-- Location: FF_X70_Y70_N23
\LUT_COUNTER[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \LUT_COUNTER[27]~86_combout\,
	sclr => \LessThan0~8_combout\,
	ena => \state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => LUT_COUNTER(27));

-- Location: LCCOMB_X70_Y70_N24
\LUT_COUNTER[28]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \LUT_COUNTER[28]~88_combout\ = (LUT_COUNTER(28) & (\LUT_COUNTER[27]~87\ $ (GND))) # (!LUT_COUNTER(28) & (!\LUT_COUNTER[27]~87\ & VCC))
-- \LUT_COUNTER[28]~89\ = CARRY((LUT_COUNTER(28) & !\LUT_COUNTER[27]~87\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => LUT_COUNTER(28),
	datad => VCC,
	cin => \LUT_COUNTER[27]~87\,
	combout => \LUT_COUNTER[28]~88_combout\,
	cout => \LUT_COUNTER[28]~89\);

-- Location: FF_X70_Y70_N25
\LUT_COUNTER[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \LUT_COUNTER[28]~88_combout\,
	sclr => \LessThan0~8_combout\,
	ena => \state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => LUT_COUNTER(28));

-- Location: LCCOMB_X70_Y70_N26
\LUT_COUNTER[29]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \LUT_COUNTER[29]~90_combout\ = (LUT_COUNTER(29) & (!\LUT_COUNTER[28]~89\)) # (!LUT_COUNTER(29) & ((\LUT_COUNTER[28]~89\) # (GND)))
-- \LUT_COUNTER[29]~91\ = CARRY((!\LUT_COUNTER[28]~89\) # (!LUT_COUNTER(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => LUT_COUNTER(29),
	datad => VCC,
	cin => \LUT_COUNTER[28]~89\,
	combout => \LUT_COUNTER[29]~90_combout\,
	cout => \LUT_COUNTER[29]~91\);

-- Location: FF_X70_Y70_N27
\LUT_COUNTER[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \LUT_COUNTER[29]~90_combout\,
	sclr => \LessThan0~8_combout\,
	ena => \state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => LUT_COUNTER(29));

-- Location: LCCOMB_X70_Y70_N28
\LUT_COUNTER[30]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \LUT_COUNTER[30]~92_combout\ = (LUT_COUNTER(30) & (\LUT_COUNTER[29]~91\ $ (GND))) # (!LUT_COUNTER(30) & (!\LUT_COUNTER[29]~91\ & VCC))
-- \LUT_COUNTER[30]~93\ = CARRY((LUT_COUNTER(30) & !\LUT_COUNTER[29]~91\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => LUT_COUNTER(30),
	datad => VCC,
	cin => \LUT_COUNTER[29]~91\,
	combout => \LUT_COUNTER[30]~92_combout\,
	cout => \LUT_COUNTER[30]~93\);

-- Location: FF_X70_Y70_N29
\LUT_COUNTER[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \LUT_COUNTER[30]~92_combout\,
	sclr => \LessThan0~8_combout\,
	ena => \state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => LUT_COUNTER(30));

-- Location: LCCOMB_X70_Y70_N30
\LUT_COUNTER[31]~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \LUT_COUNTER[31]~94_combout\ = LUT_COUNTER(31) $ (\LUT_COUNTER[30]~93\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => LUT_COUNTER(31),
	cin => \LUT_COUNTER[30]~93\,
	combout => \LUT_COUNTER[31]~94_combout\);

-- Location: FF_X70_Y70_N31
\LUT_COUNTER[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \LUT_COUNTER[31]~94_combout\,
	sclr => \LessThan0~8_combout\,
	ena => \state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => LUT_COUNTER(31));

-- Location: LCCOMB_X73_Y70_N28
\LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~5_combout\ = (LUT_COUNTER(22)) # ((LUT_COUNTER(21)) # ((LUT_COUNTER(23)) # (LUT_COUNTER(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => LUT_COUNTER(22),
	datab => LUT_COUNTER(21),
	datac => LUT_COUNTER(23),
	datad => LUT_COUNTER(20),
	combout => \LessThan0~5_combout\);

-- Location: LCCOMB_X73_Y70_N18
\LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~6_combout\ = (LUT_COUNTER(26)) # ((LUT_COUNTER(25)) # ((LUT_COUNTER(27)) # (LUT_COUNTER(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => LUT_COUNTER(26),
	datab => LUT_COUNTER(25),
	datac => LUT_COUNTER(27),
	datad => LUT_COUNTER(24),
	combout => \LessThan0~6_combout\);

-- Location: LCCOMB_X73_Y70_N4
\LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~7_combout\ = (LUT_COUNTER(28)) # ((LUT_COUNTER(30)) # ((LUT_COUNTER(29)) # (\LessThan0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => LUT_COUNTER(28),
	datab => LUT_COUNTER(30),
	datac => LUT_COUNTER(29),
	datad => \LessThan0~6_combout\,
	combout => \LessThan0~7_combout\);

-- Location: LCCOMB_X73_Y70_N12
\LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~3_combout\ = (LUT_COUNTER(19)) # ((LUT_COUNTER(17)) # ((LUT_COUNTER(18)) # (LUT_COUNTER(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => LUT_COUNTER(19),
	datab => LUT_COUNTER(17),
	datac => LUT_COUNTER(18),
	datad => LUT_COUNTER(16),
	combout => \LessThan0~3_combout\);

-- Location: LCCOMB_X73_Y71_N4
\LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = (LUT_COUNTER(14)) # ((LUT_COUNTER(15)) # ((LUT_COUNTER(12)) # (LUT_COUNTER(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => LUT_COUNTER(14),
	datab => LUT_COUNTER(15),
	datac => LUT_COUNTER(12),
	datad => LUT_COUNTER(13),
	combout => \LessThan0~2_combout\);

-- Location: LCCOMB_X73_Y71_N30
\LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (LUT_COUNTER(10)) # ((LUT_COUNTER(11)) # ((LUT_COUNTER(9)) # (LUT_COUNTER(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => LUT_COUNTER(10),
	datab => LUT_COUNTER(11),
	datac => LUT_COUNTER(9),
	datad => LUT_COUNTER(8),
	combout => \LessThan0~1_combout\);

-- Location: LCCOMB_X73_Y71_N8
\LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (LUT_COUNTER(7)) # ((LUT_COUNTER(6)) # ((LUT_COUNTER(5)) # (LUT_COUNTER(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => LUT_COUNTER(7),
	datab => LUT_COUNTER(6),
	datac => LUT_COUNTER(5),
	datad => LUT_COUNTER(4),
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X73_Y70_N10
\LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~4_combout\ = (\LessThan0~3_combout\) # ((\LessThan0~2_combout\) # ((\LessThan0~1_combout\) # (\LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~3_combout\,
	datab => \LessThan0~2_combout\,
	datac => \LessThan0~1_combout\,
	datad => \LessThan0~0_combout\,
	combout => \LessThan0~4_combout\);

-- Location: LCCOMB_X73_Y70_N2
\LessThan0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~8_combout\ = (!LUT_COUNTER(31) & ((\LessThan0~5_combout\) # ((\LessThan0~7_combout\) # (\LessThan0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => LUT_COUNTER(31),
	datab => \LessThan0~5_combout\,
	datac => \LessThan0~7_combout\,
	datad => \LessThan0~4_combout\,
	combout => \LessThan0~8_combout\);

-- Location: FF_X70_Y71_N1
\LUT_COUNTER[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \LUT_COUNTER[0]~32_combout\,
	sclr => \LessThan0~8_combout\,
	ena => \state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => LUT_COUNTER(0));

-- Location: LCCOMB_X69_Y71_N8
\LUT_X_INST|o_LUT_X[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \LUT_X_INST|o_LUT_X[11]~feeder_combout\ = LUT_COUNTER(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => LUT_COUNTER(0),
	combout => \LUT_X_INST|o_LUT_X[11]~feeder_combout\);

-- Location: FF_X69_Y71_N9
\LUT_X_INST|o_LUT_X[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_mem_enable_X~clkctrl_outclk\,
	d => \LUT_X_INST|o_LUT_X[11]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LUT_X_INST|o_LUT_X\(11));

-- Location: FF_X68_Y71_N3
\r_xn[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \r_xn[1]~18_combout\,
	asdata => \LUT_X_INST|o_LUT_X\(11),
	sload => \state.run~q\,
	ena => \ALT_INV_state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_xn(1));

-- Location: LCCOMB_X68_Y68_N6
\sign_inverter_INST_y|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \sign_inverter_INST_y|Add0~6_combout\ = (\bit_shift_INST_y|ShiftRight0~55_combout\ & ((\sign_inverter_INST_y|Add0~5\) # (GND))) # (!\bit_shift_INST_y|ShiftRight0~55_combout\ & (!\sign_inverter_INST_y|Add0~5\))
-- \sign_inverter_INST_y|Add0~7\ = CARRY((\bit_shift_INST_y|ShiftRight0~55_combout\) # (!\sign_inverter_INST_y|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bit_shift_INST_y|ShiftRight0~55_combout\,
	datad => VCC,
	cin => \sign_inverter_INST_y|Add0~5\,
	combout => \sign_inverter_INST_y|Add0~6_combout\,
	cout => \sign_inverter_INST_y|Add0~7\);

-- Location: LCCOMB_X67_Y68_N22
\sign_inverter_INST_y|o_SI[3]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \sign_inverter_INST_y|o_SI[3]~12_combout\ = (\sign_inverter_INST_z|Equal0~0_combout\ & (r_yn(15) & (\bit_shift_INST_y|ShiftRight0~55_combout\))) # (!\sign_inverter_INST_z|Equal0~0_combout\ & ((\sign_inverter_INST_y|Add0~6_combout\) # ((r_yn(15) & 
-- \bit_shift_INST_y|ShiftRight0~55_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sign_inverter_INST_z|Equal0~0_combout\,
	datab => r_yn(15),
	datac => \bit_shift_INST_y|ShiftRight0~55_combout\,
	datad => \sign_inverter_INST_y|Add0~6_combout\,
	combout => \sign_inverter_INST_y|o_SI[3]~12_combout\);

-- Location: LCCOMB_X68_Y71_N4
\r_xn[2]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_xn[2]~20_combout\ = ((r_xn(2) $ (\sign_inverter_INST_y|o_SI[2]~13_combout\ $ (\r_xn[1]~19\)))) # (GND)
-- \r_xn[2]~21\ = CARRY((r_xn(2) & ((!\r_xn[1]~19\) # (!\sign_inverter_INST_y|o_SI[2]~13_combout\))) # (!r_xn(2) & (!\sign_inverter_INST_y|o_SI[2]~13_combout\ & !\r_xn[1]~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_xn(2),
	datab => \sign_inverter_INST_y|o_SI[2]~13_combout\,
	datad => VCC,
	cin => \r_xn[1]~19\,
	combout => \r_xn[2]~20_combout\,
	cout => \r_xn[2]~21\);

-- Location: LCCOMB_X68_Y71_N6
\r_xn[3]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_xn[3]~22_combout\ = (r_xn(3) & ((\sign_inverter_INST_y|o_SI[3]~12_combout\ & (!\r_xn[2]~21\)) # (!\sign_inverter_INST_y|o_SI[3]~12_combout\ & (\r_xn[2]~21\ & VCC)))) # (!r_xn(3) & ((\sign_inverter_INST_y|o_SI[3]~12_combout\ & ((\r_xn[2]~21\) # (GND))) 
-- # (!\sign_inverter_INST_y|o_SI[3]~12_combout\ & (!\r_xn[2]~21\))))
-- \r_xn[3]~23\ = CARRY((r_xn(3) & (\sign_inverter_INST_y|o_SI[3]~12_combout\ & !\r_xn[2]~21\)) # (!r_xn(3) & ((\sign_inverter_INST_y|o_SI[3]~12_combout\) # (!\r_xn[2]~21\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_xn(3),
	datab => \sign_inverter_INST_y|o_SI[3]~12_combout\,
	datad => VCC,
	cin => \r_xn[2]~21\,
	combout => \r_xn[3]~22_combout\,
	cout => \r_xn[3]~23\);

-- Location: FF_X68_Y71_N7
\r_xn[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \r_xn[3]~22_combout\,
	asdata => \LUT_X_INST|o_LUT_X\(11),
	sload => \state.run~q\,
	ena => \ALT_INV_state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_xn(3));

-- Location: LCCOMB_X72_Y69_N2
\bit_shift_INST_x|ShiftRight0~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit_shift_INST_x|ShiftRight0~53_combout\ = (\iteration_counter_INST|cnt\(0) & (r_xn(4))) # (!\iteration_counter_INST|cnt\(0) & ((r_xn(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_xn(4),
	datac => r_xn(3),
	datad => \iteration_counter_INST|cnt\(0),
	combout => \bit_shift_INST_x|ShiftRight0~53_combout\);

-- Location: LCCOMB_X72_Y69_N24
\bit_shift_INST_x|ShiftRight0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit_shift_INST_x|ShiftRight0~60_combout\ = (\bit_shift_INST_x|ShiftRight0~15_combout\ & (((\bit_shift_INST_x|ShiftRight0~53_combout\) # (\bit_shift_INST_y|ShiftRight0~13_combout\)))) # (!\bit_shift_INST_x|ShiftRight0~15_combout\ & (r_xn(1) & 
-- ((!\bit_shift_INST_y|ShiftRight0~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_xn(1),
	datab => \bit_shift_INST_x|ShiftRight0~53_combout\,
	datac => \bit_shift_INST_x|ShiftRight0~15_combout\,
	datad => \bit_shift_INST_y|ShiftRight0~13_combout\,
	combout => \bit_shift_INST_x|ShiftRight0~60_combout\);

-- Location: LCCOMB_X72_Y69_N6
\bit_shift_INST_x|ShiftRight0~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit_shift_INST_x|ShiftRight0~61_combout\ = (\bit_shift_INST_y|ShiftRight0~13_combout\ & ((\bit_shift_INST_x|ShiftRight0~60_combout\ & ((\bit_shift_INST_x|ShiftRight0~46_combout\))) # (!\bit_shift_INST_x|ShiftRight0~60_combout\ & (r_xn(2))))) # 
-- (!\bit_shift_INST_y|ShiftRight0~13_combout\ & (((\bit_shift_INST_x|ShiftRight0~60_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_xn(2),
	datab => \bit_shift_INST_y|ShiftRight0~13_combout\,
	datac => \bit_shift_INST_x|ShiftRight0~46_combout\,
	datad => \bit_shift_INST_x|ShiftRight0~60_combout\,
	combout => \bit_shift_INST_x|ShiftRight0~61_combout\);

-- Location: LCCOMB_X72_Y69_N12
\bit_shift_INST_x|ShiftRight0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit_shift_INST_x|ShiftRight0~62_combout\ = (\iteration_counter_INST|cnt\(3) & ((\bit_shift_INST_x|ShiftRight0~30_combout\) # ((\bit_shift_INST_x|ShiftRight0~29_combout\)))) # (!\iteration_counter_INST|cnt\(3) & 
-- (((\bit_shift_INST_x|ShiftRight0~61_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iteration_counter_INST|cnt\(3),
	datab => \bit_shift_INST_x|ShiftRight0~30_combout\,
	datac => \bit_shift_INST_x|ShiftRight0~29_combout\,
	datad => \bit_shift_INST_x|ShiftRight0~61_combout\,
	combout => \bit_shift_INST_x|ShiftRight0~62_combout\);

-- Location: LCCOMB_X68_Y69_N0
\sign_inverter_INST_x|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sign_inverter_INST_x|Add0~1_cout\ = CARRY(!\bit_shift_INST_x|ShiftRight0~66_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit_shift_INST_x|ShiftRight0~66_combout\,
	datad => VCC,
	cout => \sign_inverter_INST_x|Add0~1_cout\);

-- Location: LCCOMB_X68_Y69_N2
\sign_inverter_INST_x|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sign_inverter_INST_x|Add0~2_combout\ = (\bit_shift_INST_x|ShiftRight0~62_combout\ & ((\sign_inverter_INST_x|Add0~1_cout\) # (GND))) # (!\bit_shift_INST_x|ShiftRight0~62_combout\ & (!\sign_inverter_INST_x|Add0~1_cout\))
-- \sign_inverter_INST_x|Add0~3\ = CARRY((\bit_shift_INST_x|ShiftRight0~62_combout\) # (!\sign_inverter_INST_x|Add0~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bit_shift_INST_x|ShiftRight0~62_combout\,
	datad => VCC,
	cin => \sign_inverter_INST_x|Add0~1_cout\,
	combout => \sign_inverter_INST_x|Add0~2_combout\,
	cout => \sign_inverter_INST_x|Add0~3\);

-- Location: LCCOMB_X67_Y69_N30
\sign_inverter_INST_x|o_SI[1]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \sign_inverter_INST_x|o_SI[1]~14_combout\ = (r_yn(15) & ((\bit_shift_INST_x|ShiftRight0~62_combout\) # ((!\sign_inverter_INST_z|Equal0~0_combout\ & \sign_inverter_INST_x|Add0~2_combout\)))) # (!r_yn(15) & (((!\sign_inverter_INST_z|Equal0~0_combout\ & 
-- \sign_inverter_INST_x|Add0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_yn(15),
	datab => \bit_shift_INST_x|ShiftRight0~62_combout\,
	datac => \sign_inverter_INST_z|Equal0~0_combout\,
	datad => \sign_inverter_INST_x|Add0~2_combout\,
	combout => \sign_inverter_INST_x|o_SI[1]~14_combout\);

-- Location: LCCOMB_X70_Y69_N2
\r_yn[1]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_yn[1]~18_combout\ = (\sign_inverter_INST_x|o_SI[1]~14_combout\ & ((r_yn(1) & (\r_yn[0]~17\ & VCC)) # (!r_yn(1) & (!\r_yn[0]~17\)))) # (!\sign_inverter_INST_x|o_SI[1]~14_combout\ & ((r_yn(1) & (!\r_yn[0]~17\)) # (!r_yn(1) & ((\r_yn[0]~17\) # (GND)))))
-- \r_yn[1]~19\ = CARRY((\sign_inverter_INST_x|o_SI[1]~14_combout\ & (!r_yn(1) & !\r_yn[0]~17\)) # (!\sign_inverter_INST_x|o_SI[1]~14_combout\ & ((!\r_yn[0]~17\) # (!r_yn(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sign_inverter_INST_x|o_SI[1]~14_combout\,
	datab => r_yn(1),
	datad => VCC,
	cin => \r_yn[0]~17\,
	combout => \r_yn[1]~18_combout\,
	cout => \r_yn[1]~19\);

-- Location: FF_X70_Y69_N3
\r_yn[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \r_yn[1]~18_combout\,
	asdata => VCC,
	sload => \state.run~q\,
	ena => \ALT_INV_state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_yn(1));

-- Location: LCCOMB_X70_Y67_N24
\bit_shift_INST_y|ShiftRight0~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit_shift_INST_y|ShiftRight0~59_combout\ = (\bit_shift_INST_x|ShiftRight0~15_combout\ & (((\bit_shift_INST_y|ShiftRight0~13_combout\)))) # (!\bit_shift_INST_x|ShiftRight0~15_combout\ & ((\bit_shift_INST_y|ShiftRight0~13_combout\ & (r_yn(2))) # 
-- (!\bit_shift_INST_y|ShiftRight0~13_combout\ & ((r_yn(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_yn(2),
	datab => r_yn(1),
	datac => \bit_shift_INST_x|ShiftRight0~15_combout\,
	datad => \bit_shift_INST_y|ShiftRight0~13_combout\,
	combout => \bit_shift_INST_y|ShiftRight0~59_combout\);

-- Location: LCCOMB_X70_Y67_N2
\bit_shift_INST_y|ShiftRight0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit_shift_INST_y|ShiftRight0~60_combout\ = (\bit_shift_INST_x|ShiftRight0~15_combout\ & ((\bit_shift_INST_y|ShiftRight0~59_combout\ & ((\bit_shift_INST_y|ShiftRight0~45_combout\))) # (!\bit_shift_INST_y|ShiftRight0~59_combout\ & 
-- (\bit_shift_INST_y|ShiftRight0~52_combout\)))) # (!\bit_shift_INST_x|ShiftRight0~15_combout\ & (((\bit_shift_INST_y|ShiftRight0~59_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit_shift_INST_x|ShiftRight0~15_combout\,
	datab => \bit_shift_INST_y|ShiftRight0~52_combout\,
	datac => \bit_shift_INST_y|ShiftRight0~45_combout\,
	datad => \bit_shift_INST_y|ShiftRight0~59_combout\,
	combout => \bit_shift_INST_y|ShiftRight0~60_combout\);

-- Location: LCCOMB_X69_Y68_N4
\bit_shift_INST_y|ShiftRight0~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit_shift_INST_y|ShiftRight0~61_combout\ = (\iteration_counter_INST|cnt\(3) & ((\bit_shift_INST_y|ShiftRight0~29_combout\) # ((\bit_shift_INST_y|ShiftRight0~30_combout\)))) # (!\iteration_counter_INST|cnt\(3) & 
-- (((\bit_shift_INST_y|ShiftRight0~60_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iteration_counter_INST|cnt\(3),
	datab => \bit_shift_INST_y|ShiftRight0~29_combout\,
	datac => \bit_shift_INST_y|ShiftRight0~30_combout\,
	datad => \bit_shift_INST_y|ShiftRight0~60_combout\,
	combout => \bit_shift_INST_y|ShiftRight0~61_combout\);

-- Location: LCCOMB_X68_Y68_N4
\sign_inverter_INST_y|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \sign_inverter_INST_y|Add0~4_combout\ = (\bit_shift_INST_y|ShiftRight0~58_combout\ & (!\sign_inverter_INST_y|Add0~3\ & VCC)) # (!\bit_shift_INST_y|ShiftRight0~58_combout\ & (\sign_inverter_INST_y|Add0~3\ $ (GND)))
-- \sign_inverter_INST_y|Add0~5\ = CARRY((!\bit_shift_INST_y|ShiftRight0~58_combout\ & !\sign_inverter_INST_y|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bit_shift_INST_y|ShiftRight0~58_combout\,
	datad => VCC,
	cin => \sign_inverter_INST_y|Add0~3\,
	combout => \sign_inverter_INST_y|Add0~4_combout\,
	cout => \sign_inverter_INST_y|Add0~5\);

-- Location: LCCOMB_X69_Y68_N28
\sign_inverter_INST_y|o_SI[2]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \sign_inverter_INST_y|o_SI[2]~13_combout\ = (\sign_inverter_INST_z|Equal0~0_combout\ & (r_yn(15) & ((\bit_shift_INST_y|ShiftRight0~58_combout\)))) # (!\sign_inverter_INST_z|Equal0~0_combout\ & ((\sign_inverter_INST_y|Add0~4_combout\) # ((r_yn(15) & 
-- \bit_shift_INST_y|ShiftRight0~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sign_inverter_INST_z|Equal0~0_combout\,
	datab => r_yn(15),
	datac => \sign_inverter_INST_y|Add0~4_combout\,
	datad => \bit_shift_INST_y|ShiftRight0~58_combout\,
	combout => \sign_inverter_INST_y|o_SI[2]~13_combout\);

-- Location: FF_X68_Y71_N5
\r_xn[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \r_xn[2]~20_combout\,
	asdata => VCC,
	sload => \state.run~q\,
	ena => \ALT_INV_state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_xn(2));

-- Location: LCCOMB_X69_Y67_N12
\bit_shift_INST_x|ShiftRight0~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit_shift_INST_x|ShiftRight0~57_combout\ = (\iteration_counter_INST|cnt\(0) & ((r_xn(3)))) # (!\iteration_counter_INST|cnt\(0) & (r_xn(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \iteration_counter_INST|cnt\(0),
	datac => r_xn(2),
	datad => r_xn(3),
	combout => \bit_shift_INST_x|ShiftRight0~57_combout\);

-- Location: LCCOMB_X68_Y70_N2
\bit_shift_INST_x|ShiftRight0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit_shift_INST_x|ShiftRight0~58_combout\ = (\bit_shift_INST_y|ShiftRight0~12_combout\ & (!\LUT_16_INST|rom~14_combout\)) # (!\bit_shift_INST_y|ShiftRight0~12_combout\ & ((\LUT_16_INST|rom~14_combout\ & (\bit_shift_INST_x|ShiftRight0~57_combout\)) # 
-- (!\LUT_16_INST|rom~14_combout\ & ((\bit_shift_INST_x|ShiftRight0~40_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit_shift_INST_y|ShiftRight0~12_combout\,
	datab => \LUT_16_INST|rom~14_combout\,
	datac => \bit_shift_INST_x|ShiftRight0~57_combout\,
	datad => \bit_shift_INST_x|ShiftRight0~40_combout\,
	combout => \bit_shift_INST_x|ShiftRight0~58_combout\);

-- Location: LCCOMB_X68_Y70_N4
\bit_shift_INST_x|ShiftRight0~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit_shift_INST_x|ShiftRight0~59_combout\ = (\bit_shift_INST_y|ShiftRight0~12_combout\ & ((\bit_shift_INST_x|ShiftRight0~58_combout\ & ((\bit_shift_INST_x|ShiftRight0~25_combout\))) # (!\bit_shift_INST_x|ShiftRight0~58_combout\ & 
-- (\bit_shift_INST_x|ShiftRight0~49_combout\)))) # (!\bit_shift_INST_y|ShiftRight0~12_combout\ & (((\bit_shift_INST_x|ShiftRight0~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit_shift_INST_x|ShiftRight0~49_combout\,
	datab => \bit_shift_INST_x|ShiftRight0~25_combout\,
	datac => \bit_shift_INST_y|ShiftRight0~12_combout\,
	datad => \bit_shift_INST_x|ShiftRight0~58_combout\,
	combout => \bit_shift_INST_x|ShiftRight0~59_combout\);

-- Location: LCCOMB_X68_Y69_N4
\sign_inverter_INST_x|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \sign_inverter_INST_x|Add0~4_combout\ = (\bit_shift_INST_x|ShiftRight0~59_combout\ & (!\sign_inverter_INST_x|Add0~3\ & VCC)) # (!\bit_shift_INST_x|ShiftRight0~59_combout\ & (\sign_inverter_INST_x|Add0~3\ $ (GND)))
-- \sign_inverter_INST_x|Add0~5\ = CARRY((!\bit_shift_INST_x|ShiftRight0~59_combout\ & !\sign_inverter_INST_x|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bit_shift_INST_x|ShiftRight0~59_combout\,
	datad => VCC,
	cin => \sign_inverter_INST_x|Add0~3\,
	combout => \sign_inverter_INST_x|Add0~4_combout\,
	cout => \sign_inverter_INST_x|Add0~5\);

-- Location: LCCOMB_X67_Y69_N0
\sign_inverter_INST_x|o_SI[2]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \sign_inverter_INST_x|o_SI[2]~13_combout\ = (\bit_shift_INST_x|ShiftRight0~59_combout\ & ((r_yn(15)) # ((!\sign_inverter_INST_z|Equal0~0_combout\ & \sign_inverter_INST_x|Add0~4_combout\)))) # (!\bit_shift_INST_x|ShiftRight0~59_combout\ & 
-- (!\sign_inverter_INST_z|Equal0~0_combout\ & ((\sign_inverter_INST_x|Add0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit_shift_INST_x|ShiftRight0~59_combout\,
	datab => \sign_inverter_INST_z|Equal0~0_combout\,
	datac => r_yn(15),
	datad => \sign_inverter_INST_x|Add0~4_combout\,
	combout => \sign_inverter_INST_x|o_SI[2]~13_combout\);

-- Location: LCCOMB_X70_Y69_N4
\r_yn[2]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_yn[2]~20_combout\ = ((\sign_inverter_INST_x|o_SI[2]~13_combout\ $ (r_yn(2) $ (!\r_yn[1]~19\)))) # (GND)
-- \r_yn[2]~21\ = CARRY((\sign_inverter_INST_x|o_SI[2]~13_combout\ & ((r_yn(2)) # (!\r_yn[1]~19\))) # (!\sign_inverter_INST_x|o_SI[2]~13_combout\ & (r_yn(2) & !\r_yn[1]~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sign_inverter_INST_x|o_SI[2]~13_combout\,
	datab => r_yn(2),
	datad => VCC,
	cin => \r_yn[1]~19\,
	combout => \r_yn[2]~20_combout\,
	cout => \r_yn[2]~21\);

-- Location: FF_X70_Y69_N5
\r_yn[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \r_yn[2]~20_combout\,
	asdata => VCC,
	sload => \state.run~q\,
	ena => \ALT_INV_state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_yn(2));

-- Location: LCCOMB_X69_Y70_N12
\bit_shift_INST_y|ShiftRight0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit_shift_INST_y|ShiftRight0~56_combout\ = (\iteration_counter_INST|cnt\(0) & ((r_yn(3)))) # (!\iteration_counter_INST|cnt\(0) & (r_yn(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => r_yn(2),
	datac => r_yn(3),
	datad => \iteration_counter_INST|cnt\(0),
	combout => \bit_shift_INST_y|ShiftRight0~56_combout\);

-- Location: LCCOMB_X70_Y68_N12
\bit_shift_INST_y|ShiftRight0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit_shift_INST_y|ShiftRight0~38_combout\ = (!\iteration_counter_INST|cnt\(0) & ((\iteration_counter_INST|cnt\(1) & (r_yn(8))) # (!\iteration_counter_INST|cnt\(1) & ((r_yn(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_yn(8),
	datab => r_yn(6),
	datac => \iteration_counter_INST|cnt\(1),
	datad => \iteration_counter_INST|cnt\(0),
	combout => \bit_shift_INST_y|ShiftRight0~38_combout\);

-- Location: LCCOMB_X69_Y68_N20
\bit_shift_INST_y|ShiftRight0~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit_shift_INST_y|ShiftRight0~39_combout\ = (\bit_shift_INST_y|ShiftRight0~38_combout\) # ((\iteration_counter_INST|cnt\(0) & \bit_shift_INST_y|ShiftRight0~35_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iteration_counter_INST|cnt\(0),
	datac => \bit_shift_INST_y|ShiftRight0~38_combout\,
	datad => \bit_shift_INST_y|ShiftRight0~35_combout\,
	combout => \bit_shift_INST_y|ShiftRight0~39_combout\);

-- Location: LCCOMB_X69_Y68_N16
\bit_shift_INST_y|ShiftRight0~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit_shift_INST_y|ShiftRight0~57_combout\ = (\bit_shift_INST_y|ShiftRight0~12_combout\ & (!\LUT_16_INST|rom~14_combout\)) # (!\bit_shift_INST_y|ShiftRight0~12_combout\ & ((\LUT_16_INST|rom~14_combout\ & (\bit_shift_INST_y|ShiftRight0~56_combout\)) # 
-- (!\LUT_16_INST|rom~14_combout\ & ((\bit_shift_INST_y|ShiftRight0~39_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit_shift_INST_y|ShiftRight0~12_combout\,
	datab => \LUT_16_INST|rom~14_combout\,
	datac => \bit_shift_INST_y|ShiftRight0~56_combout\,
	datad => \bit_shift_INST_y|ShiftRight0~39_combout\,
	combout => \bit_shift_INST_y|ShiftRight0~57_combout\);

-- Location: LCCOMB_X69_Y68_N30
\bit_shift_INST_y|ShiftRight0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit_shift_INST_y|ShiftRight0~58_combout\ = (\bit_shift_INST_y|ShiftRight0~12_combout\ & ((\bit_shift_INST_y|ShiftRight0~57_combout\ & ((\bit_shift_INST_y|ShiftRight0~25_combout\))) # (!\bit_shift_INST_y|ShiftRight0~57_combout\ & 
-- (\bit_shift_INST_y|ShiftRight0~48_combout\)))) # (!\bit_shift_INST_y|ShiftRight0~12_combout\ & (((\bit_shift_INST_y|ShiftRight0~57_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit_shift_INST_y|ShiftRight0~48_combout\,
	datab => \bit_shift_INST_y|ShiftRight0~25_combout\,
	datac => \bit_shift_INST_y|ShiftRight0~12_combout\,
	datad => \bit_shift_INST_y|ShiftRight0~57_combout\,
	combout => \bit_shift_INST_y|ShiftRight0~58_combout\);

-- Location: LCCOMB_X68_Y68_N8
\sign_inverter_INST_y|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \sign_inverter_INST_y|Add0~8_combout\ = (\bit_shift_INST_y|ShiftRight0~51_combout\ & (!\sign_inverter_INST_y|Add0~7\ & VCC)) # (!\bit_shift_INST_y|ShiftRight0~51_combout\ & (\sign_inverter_INST_y|Add0~7\ $ (GND)))
-- \sign_inverter_INST_y|Add0~9\ = CARRY((!\bit_shift_INST_y|ShiftRight0~51_combout\ & !\sign_inverter_INST_y|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bit_shift_INST_y|ShiftRight0~51_combout\,
	datad => VCC,
	cin => \sign_inverter_INST_y|Add0~7\,
	combout => \sign_inverter_INST_y|Add0~8_combout\,
	cout => \sign_inverter_INST_y|Add0~9\);

-- Location: LCCOMB_X69_Y71_N4
\sign_inverter_INST_y|o_SI[4]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \sign_inverter_INST_y|o_SI[4]~11_combout\ = (r_yn(15) & ((\bit_shift_INST_y|ShiftRight0~51_combout\) # ((!\sign_inverter_INST_z|Equal0~0_combout\ & \sign_inverter_INST_y|Add0~8_combout\)))) # (!r_yn(15) & (((!\sign_inverter_INST_z|Equal0~0_combout\ & 
-- \sign_inverter_INST_y|Add0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_yn(15),
	datab => \bit_shift_INST_y|ShiftRight0~51_combout\,
	datac => \sign_inverter_INST_z|Equal0~0_combout\,
	datad => \sign_inverter_INST_y|Add0~8_combout\,
	combout => \sign_inverter_INST_y|o_SI[4]~11_combout\);

-- Location: LCCOMB_X68_Y71_N8
\r_xn[4]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_xn[4]~24_combout\ = ((\sign_inverter_INST_y|o_SI[4]~11_combout\ $ (r_xn(4) $ (\r_xn[3]~23\)))) # (GND)
-- \r_xn[4]~25\ = CARRY((\sign_inverter_INST_y|o_SI[4]~11_combout\ & (r_xn(4) & !\r_xn[3]~23\)) # (!\sign_inverter_INST_y|o_SI[4]~11_combout\ & ((r_xn(4)) # (!\r_xn[3]~23\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sign_inverter_INST_y|o_SI[4]~11_combout\,
	datab => r_xn(4),
	datad => VCC,
	cin => \r_xn[3]~23\,
	combout => \r_xn[4]~24_combout\,
	cout => \r_xn[4]~25\);

-- Location: FF_X68_Y71_N9
\r_xn[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \r_xn[4]~24_combout\,
	asdata => VCC,
	sload => \state.run~q\,
	ena => \ALT_INV_state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_xn(4));

-- Location: LCCOMB_X69_Y67_N0
\bit_shift_INST_x|ShiftRight0~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit_shift_INST_x|ShiftRight0~49_combout\ = (\iteration_counter_INST|cnt\(0) & ((r_xn(5)))) # (!\iteration_counter_INST|cnt\(0) & (r_xn(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \iteration_counter_INST|cnt\(0),
	datac => r_xn(4),
	datad => r_xn(5),
	combout => \bit_shift_INST_x|ShiftRight0~49_combout\);

-- Location: LCCOMB_X69_Y67_N26
\bit_shift_INST_x|ShiftRight0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit_shift_INST_x|ShiftRight0~50_combout\ = (\bit_shift_INST_x|ShiftRight0~48_combout\) # ((!\iteration_counter_INST|cnt\(1) & \bit_shift_INST_x|ShiftRight0~49_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iteration_counter_INST|cnt\(1),
	datac => \bit_shift_INST_x|ShiftRight0~48_combout\,
	datad => \bit_shift_INST_x|ShiftRight0~49_combout\,
	combout => \bit_shift_INST_x|ShiftRight0~50_combout\);

-- Location: LCCOMB_X69_Y67_N16
\bit_shift_INST_x|ShiftRight0~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit_shift_INST_x|ShiftRight0~51_combout\ = (\iteration_counter_INST|cnt\(2) & ((\iteration_counter_INST|cnt\(3)) # ((\bit_shift_INST_x|ShiftRight0~35_combout\)))) # (!\iteration_counter_INST|cnt\(2) & (!\iteration_counter_INST|cnt\(3) & 
-- (\bit_shift_INST_x|ShiftRight0~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iteration_counter_INST|cnt\(2),
	datab => \iteration_counter_INST|cnt\(3),
	datac => \bit_shift_INST_x|ShiftRight0~50_combout\,
	datad => \bit_shift_INST_x|ShiftRight0~35_combout\,
	combout => \bit_shift_INST_x|ShiftRight0~51_combout\);

-- Location: LCCOMB_X69_Y67_N30
\bit_shift_INST_x|ShiftRight0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit_shift_INST_x|ShiftRight0~52_combout\ = (\iteration_counter_INST|cnt\(3) & ((\bit_shift_INST_x|ShiftRight0~51_combout\ & (r_xn(15))) # (!\bit_shift_INST_x|ShiftRight0~51_combout\ & ((\bit_shift_INST_x|ShiftRight0~32_combout\))))) # 
-- (!\iteration_counter_INST|cnt\(3) & (((\bit_shift_INST_x|ShiftRight0~51_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_xn(15),
	datab => \iteration_counter_INST|cnt\(3),
	datac => \bit_shift_INST_x|ShiftRight0~32_combout\,
	datad => \bit_shift_INST_x|ShiftRight0~51_combout\,
	combout => \bit_shift_INST_x|ShiftRight0~52_combout\);

-- Location: LCCOMB_X68_Y69_N6
\sign_inverter_INST_x|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \sign_inverter_INST_x|Add0~6_combout\ = (\bit_shift_INST_x|ShiftRight0~56_combout\ & ((\sign_inverter_INST_x|Add0~5\) # (GND))) # (!\bit_shift_INST_x|ShiftRight0~56_combout\ & (!\sign_inverter_INST_x|Add0~5\))
-- \sign_inverter_INST_x|Add0~7\ = CARRY((\bit_shift_INST_x|ShiftRight0~56_combout\) # (!\sign_inverter_INST_x|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bit_shift_INST_x|ShiftRight0~56_combout\,
	datad => VCC,
	cin => \sign_inverter_INST_x|Add0~5\,
	combout => \sign_inverter_INST_x|Add0~6_combout\,
	cout => \sign_inverter_INST_x|Add0~7\);

-- Location: LCCOMB_X68_Y69_N8
\sign_inverter_INST_x|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \sign_inverter_INST_x|Add0~8_combout\ = (\bit_shift_INST_x|ShiftRight0~52_combout\ & (!\sign_inverter_INST_x|Add0~7\ & VCC)) # (!\bit_shift_INST_x|ShiftRight0~52_combout\ & (\sign_inverter_INST_x|Add0~7\ $ (GND)))
-- \sign_inverter_INST_x|Add0~9\ = CARRY((!\bit_shift_INST_x|ShiftRight0~52_combout\ & !\sign_inverter_INST_x|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bit_shift_INST_x|ShiftRight0~52_combout\,
	datad => VCC,
	cin => \sign_inverter_INST_x|Add0~7\,
	combout => \sign_inverter_INST_x|Add0~8_combout\,
	cout => \sign_inverter_INST_x|Add0~9\);

-- Location: LCCOMB_X67_Y69_N6
\sign_inverter_INST_x|o_SI[4]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \sign_inverter_INST_x|o_SI[4]~11_combout\ = (r_yn(15) & ((\bit_shift_INST_x|ShiftRight0~52_combout\) # ((\sign_inverter_INST_x|Add0~8_combout\ & !\sign_inverter_INST_z|Equal0~0_combout\)))) # (!r_yn(15) & (((\sign_inverter_INST_x|Add0~8_combout\ & 
-- !\sign_inverter_INST_z|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_yn(15),
	datab => \bit_shift_INST_x|ShiftRight0~52_combout\,
	datac => \sign_inverter_INST_x|Add0~8_combout\,
	datad => \sign_inverter_INST_z|Equal0~0_combout\,
	combout => \sign_inverter_INST_x|o_SI[4]~11_combout\);

-- Location: LCCOMB_X70_Y69_N6
\r_yn[3]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_yn[3]~22_combout\ = (r_yn(3) & ((\sign_inverter_INST_x|o_SI[3]~12_combout\ & (\r_yn[2]~21\ & VCC)) # (!\sign_inverter_INST_x|o_SI[3]~12_combout\ & (!\r_yn[2]~21\)))) # (!r_yn(3) & ((\sign_inverter_INST_x|o_SI[3]~12_combout\ & (!\r_yn[2]~21\)) # 
-- (!\sign_inverter_INST_x|o_SI[3]~12_combout\ & ((\r_yn[2]~21\) # (GND)))))
-- \r_yn[3]~23\ = CARRY((r_yn(3) & (!\sign_inverter_INST_x|o_SI[3]~12_combout\ & !\r_yn[2]~21\)) # (!r_yn(3) & ((!\r_yn[2]~21\) # (!\sign_inverter_INST_x|o_SI[3]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_yn(3),
	datab => \sign_inverter_INST_x|o_SI[3]~12_combout\,
	datad => VCC,
	cin => \r_yn[2]~21\,
	combout => \r_yn[3]~22_combout\,
	cout => \r_yn[3]~23\);

-- Location: LCCOMB_X70_Y69_N8
\r_yn[4]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_yn[4]~24_combout\ = ((\sign_inverter_INST_x|o_SI[4]~11_combout\ $ (r_yn(4) $ (!\r_yn[3]~23\)))) # (GND)
-- \r_yn[4]~25\ = CARRY((\sign_inverter_INST_x|o_SI[4]~11_combout\ & ((r_yn(4)) # (!\r_yn[3]~23\))) # (!\sign_inverter_INST_x|o_SI[4]~11_combout\ & (r_yn(4) & !\r_yn[3]~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sign_inverter_INST_x|o_SI[4]~11_combout\,
	datab => r_yn(4),
	datad => VCC,
	cin => \r_yn[3]~23\,
	combout => \r_yn[4]~24_combout\,
	cout => \r_yn[4]~25\);

-- Location: LCCOMB_X59_Y72_N2
\i_mem_enable_Y~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_mem_enable_Y~feeder_combout\ = \state.idle~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \state.idle~q\,
	combout => \i_mem_enable_Y~feeder_combout\);

-- Location: FF_X59_Y72_N3
i_mem_enable_Y : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \i_mem_enable_Y~feeder_combout\,
	ena => \ALT_INV_state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_mem_enable_Y~q\);

-- Location: CLKCTRL_G12
\i_mem_enable_Y~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \i_mem_enable_Y~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \i_mem_enable_Y~clkctrl_outclk\);

-- Location: LCCOMB_X69_Y71_N16
\LUT_Y_INST|o_LUT_Y[12]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LUT_Y_INST|o_LUT_Y[12]~0_combout\ = !LUT_COUNTER(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => LUT_COUNTER(0),
	combout => \LUT_Y_INST|o_LUT_Y[12]~0_combout\);

-- Location: FF_X69_Y71_N17
\LUT_Y_INST|o_LUT_Y[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_mem_enable_Y~clkctrl_outclk\,
	d => \LUT_Y_INST|o_LUT_Y[12]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LUT_Y_INST|o_LUT_Y\(12));

-- Location: FF_X70_Y69_N9
\r_yn[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \r_yn[4]~24_combout\,
	asdata => \LUT_Y_INST|o_LUT_Y\(12),
	sload => \state.run~q\,
	ena => \ALT_INV_state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_yn(4));

-- Location: LCCOMB_X68_Y67_N10
\bit_shift_INST_x|ShiftRight0~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit_shift_INST_x|ShiftRight0~27_combout\ = (\iteration_counter_INST|cnt\(1) & (r_xn(12))) # (!\iteration_counter_INST|cnt\(1) & ((r_xn(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \iteration_counter_INST|cnt\(1),
	datac => r_xn(12),
	datad => r_xn(10),
	combout => \bit_shift_INST_x|ShiftRight0~27_combout\);

-- Location: LCCOMB_X68_Y67_N12
\bit_shift_INST_x|ShiftRight0~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit_shift_INST_x|ShiftRight0~33_combout\ = (\iteration_counter_INST|cnt\(2) & !\iteration_counter_INST|cnt\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \iteration_counter_INST|cnt\(2),
	datad => \iteration_counter_INST|cnt\(3),
	combout => \bit_shift_INST_x|ShiftRight0~33_combout\);

-- Location: LCCOMB_X68_Y67_N28
\bit_shift_INST_x|ShiftRight0~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit_shift_INST_x|ShiftRight0~43_combout\ = (\bit_shift_INST_x|ShiftRight0~33_combout\ & ((\iteration_counter_INST|cnt\(0) & (\bit_shift_INST_x|ShiftRight0~27_combout\)) # (!\iteration_counter_INST|cnt\(0) & 
-- ((\bit_shift_INST_x|ShiftRight0~28_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit_shift_INST_x|ShiftRight0~27_combout\,
	datab => \bit_shift_INST_x|ShiftRight0~33_combout\,
	datac => \iteration_counter_INST|cnt\(0),
	datad => \bit_shift_INST_x|ShiftRight0~28_combout\,
	combout => \bit_shift_INST_x|ShiftRight0~43_combout\);

-- Location: LCCOMB_X68_Y67_N26
\bit_shift_INST_x|ShiftRight0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit_shift_INST_x|ShiftRight0~42_combout\ = (\iteration_counter_INST|cnt\(3) & ((\bit_shift_INST_x|ShiftRight0~15_combout\ & (r_xn(15))) # (!\bit_shift_INST_x|ShiftRight0~15_combout\ & ((\bit_shift_INST_x|ShiftRight0~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iteration_counter_INST|cnt\(3),
	datab => r_xn(15),
	datac => \bit_shift_INST_x|ShiftRight0~14_combout\,
	datad => \bit_shift_INST_x|ShiftRight0~15_combout\,
	combout => \bit_shift_INST_x|ShiftRight0~42_combout\);

-- Location: LCCOMB_X68_Y67_N14
\bit_shift_INST_x|ShiftRight0~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit_shift_INST_x|ShiftRight0~47_combout\ = (\bit_shift_INST_x|ShiftRight0~43_combout\) # ((\bit_shift_INST_x|ShiftRight0~42_combout\) # ((\LUT_16_INST|rom~14_combout\ & \bit_shift_INST_x|ShiftRight0~46_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LUT_16_INST|rom~14_combout\,
	datab => \bit_shift_INST_x|ShiftRight0~43_combout\,
	datac => \bit_shift_INST_x|ShiftRight0~42_combout\,
	datad => \bit_shift_INST_x|ShiftRight0~46_combout\,
	combout => \bit_shift_INST_x|ShiftRight0~47_combout\);

-- Location: LCCOMB_X68_Y69_N10
\sign_inverter_INST_x|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \sign_inverter_INST_x|Add0~10_combout\ = (\bit_shift_INST_x|ShiftRight0~47_combout\ & ((\sign_inverter_INST_x|Add0~9\) # (GND))) # (!\bit_shift_INST_x|ShiftRight0~47_combout\ & (!\sign_inverter_INST_x|Add0~9\))
-- \sign_inverter_INST_x|Add0~11\ = CARRY((\bit_shift_INST_x|ShiftRight0~47_combout\) # (!\sign_inverter_INST_x|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bit_shift_INST_x|ShiftRight0~47_combout\,
	datad => VCC,
	cin => \sign_inverter_INST_x|Add0~9\,
	combout => \sign_inverter_INST_x|Add0~10_combout\,
	cout => \sign_inverter_INST_x|Add0~11\);

-- Location: LCCOMB_X67_Y69_N4
\sign_inverter_INST_x|o_SI[5]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \sign_inverter_INST_x|o_SI[5]~10_combout\ = (r_yn(15) & ((\bit_shift_INST_x|ShiftRight0~47_combout\) # ((\sign_inverter_INST_x|Add0~10_combout\ & !\sign_inverter_INST_z|Equal0~0_combout\)))) # (!r_yn(15) & (((\sign_inverter_INST_x|Add0~10_combout\ & 
-- !\sign_inverter_INST_z|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_yn(15),
	datab => \bit_shift_INST_x|ShiftRight0~47_combout\,
	datac => \sign_inverter_INST_x|Add0~10_combout\,
	datad => \sign_inverter_INST_z|Equal0~0_combout\,
	combout => \sign_inverter_INST_x|o_SI[5]~10_combout\);

-- Location: LCCOMB_X70_Y69_N10
\r_yn[5]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_yn[5]~26_combout\ = (\sign_inverter_INST_x|o_SI[5]~10_combout\ & ((r_yn(5) & (\r_yn[4]~25\ & VCC)) # (!r_yn(5) & (!\r_yn[4]~25\)))) # (!\sign_inverter_INST_x|o_SI[5]~10_combout\ & ((r_yn(5) & (!\r_yn[4]~25\)) # (!r_yn(5) & ((\r_yn[4]~25\) # (GND)))))
-- \r_yn[5]~27\ = CARRY((\sign_inverter_INST_x|o_SI[5]~10_combout\ & (!r_yn(5) & !\r_yn[4]~25\)) # (!\sign_inverter_INST_x|o_SI[5]~10_combout\ & ((!\r_yn[4]~25\) # (!r_yn(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sign_inverter_INST_x|o_SI[5]~10_combout\,
	datab => r_yn(5),
	datad => VCC,
	cin => \r_yn[4]~25\,
	combout => \r_yn[5]~26_combout\,
	cout => \r_yn[5]~27\);

-- Location: FF_X70_Y69_N11
\r_yn[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \r_yn[5]~26_combout\,
	asdata => VCC,
	sload => \state.run~q\,
	ena => \ALT_INV_state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_yn(5));

-- Location: LCCOMB_X69_Y70_N24
\bit_shift_INST_y|ShiftRight0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit_shift_INST_y|ShiftRight0~48_combout\ = (\iteration_counter_INST|cnt\(0) & ((r_yn(5)))) # (!\iteration_counter_INST|cnt\(0) & (r_yn(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => r_yn(4),
	datac => r_yn(5),
	datad => \iteration_counter_INST|cnt\(0),
	combout => \bit_shift_INST_y|ShiftRight0~48_combout\);

-- Location: LCCOMB_X69_Y70_N30
\bit_shift_INST_y|ShiftRight0~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit_shift_INST_y|ShiftRight0~49_combout\ = (\bit_shift_INST_y|ShiftRight0~47_combout\) # ((!\iteration_counter_INST|cnt\(1) & \bit_shift_INST_y|ShiftRight0~48_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \iteration_counter_INST|cnt\(1),
	datac => \bit_shift_INST_y|ShiftRight0~47_combout\,
	datad => \bit_shift_INST_y|ShiftRight0~48_combout\,
	combout => \bit_shift_INST_y|ShiftRight0~49_combout\);

-- Location: LCCOMB_X69_Y70_N4
\bit_shift_INST_y|ShiftRight0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit_shift_INST_y|ShiftRight0~50_combout\ = (\iteration_counter_INST|cnt\(3) & ((\iteration_counter_INST|cnt\(2)) # ((\bit_shift_INST_y|ShiftRight0~32_combout\)))) # (!\iteration_counter_INST|cnt\(3) & (!\iteration_counter_INST|cnt\(2) & 
-- (\bit_shift_INST_y|ShiftRight0~49_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iteration_counter_INST|cnt\(3),
	datab => \iteration_counter_INST|cnt\(2),
	datac => \bit_shift_INST_y|ShiftRight0~49_combout\,
	datad => \bit_shift_INST_y|ShiftRight0~32_combout\,
	combout => \bit_shift_INST_y|ShiftRight0~50_combout\);

-- Location: LCCOMB_X69_Y70_N18
\bit_shift_INST_y|ShiftRight0~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit_shift_INST_y|ShiftRight0~51_combout\ = (\bit_shift_INST_y|ShiftRight0~50_combout\ & ((r_yn(15)) # ((!\iteration_counter_INST|cnt\(2))))) # (!\bit_shift_INST_y|ShiftRight0~50_combout\ & (((\bit_shift_INST_y|ShiftRight0~34_combout\ & 
-- \iteration_counter_INST|cnt\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_yn(15),
	datab => \bit_shift_INST_y|ShiftRight0~34_combout\,
	datac => \bit_shift_INST_y|ShiftRight0~50_combout\,
	datad => \iteration_counter_INST|cnt\(2),
	combout => \bit_shift_INST_y|ShiftRight0~51_combout\);

-- Location: LCCOMB_X68_Y68_N10
\sign_inverter_INST_y|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \sign_inverter_INST_y|Add0~10_combout\ = (\bit_shift_INST_y|ShiftRight0~46_combout\ & ((\sign_inverter_INST_y|Add0~9\) # (GND))) # (!\bit_shift_INST_y|ShiftRight0~46_combout\ & (!\sign_inverter_INST_y|Add0~9\))
-- \sign_inverter_INST_y|Add0~11\ = CARRY((\bit_shift_INST_y|ShiftRight0~46_combout\) # (!\sign_inverter_INST_y|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bit_shift_INST_y|ShiftRight0~46_combout\,
	datad => VCC,
	cin => \sign_inverter_INST_y|Add0~9\,
	combout => \sign_inverter_INST_y|Add0~10_combout\,
	cout => \sign_inverter_INST_y|Add0~11\);

-- Location: LCCOMB_X67_Y68_N8
\sign_inverter_INST_y|o_SI[5]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \sign_inverter_INST_y|o_SI[5]~10_combout\ = (\bit_shift_INST_y|ShiftRight0~46_combout\ & ((r_yn(15)) # ((\sign_inverter_INST_y|Add0~10_combout\ & !\sign_inverter_INST_z|Equal0~0_combout\)))) # (!\bit_shift_INST_y|ShiftRight0~46_combout\ & 
-- (((\sign_inverter_INST_y|Add0~10_combout\ & !\sign_inverter_INST_z|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit_shift_INST_y|ShiftRight0~46_combout\,
	datab => r_yn(15),
	datac => \sign_inverter_INST_y|Add0~10_combout\,
	datad => \sign_inverter_INST_z|Equal0~0_combout\,
	combout => \sign_inverter_INST_y|o_SI[5]~10_combout\);

-- Location: LCCOMB_X68_Y71_N10
\r_xn[5]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_xn[5]~26_combout\ = (r_xn(5) & ((\sign_inverter_INST_y|o_SI[5]~10_combout\ & (!\r_xn[4]~25\)) # (!\sign_inverter_INST_y|o_SI[5]~10_combout\ & (\r_xn[4]~25\ & VCC)))) # (!r_xn(5) & ((\sign_inverter_INST_y|o_SI[5]~10_combout\ & ((\r_xn[4]~25\) # (GND))) 
-- # (!\sign_inverter_INST_y|o_SI[5]~10_combout\ & (!\r_xn[4]~25\))))
-- \r_xn[5]~27\ = CARRY((r_xn(5) & (\sign_inverter_INST_y|o_SI[5]~10_combout\ & !\r_xn[4]~25\)) # (!r_xn(5) & ((\sign_inverter_INST_y|o_SI[5]~10_combout\) # (!\r_xn[4]~25\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_xn(5),
	datab => \sign_inverter_INST_y|o_SI[5]~10_combout\,
	datad => VCC,
	cin => \r_xn[4]~25\,
	combout => \r_xn[5]~26_combout\,
	cout => \r_xn[5]~27\);

-- Location: FF_X68_Y71_N11
\r_xn[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \r_xn[5]~26_combout\,
	asdata => \LUT_X_INST|o_LUT_X\(11),
	sload => \state.run~q\,
	ena => \ALT_INV_state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_xn(5));

-- Location: LCCOMB_X68_Y71_N12
\r_xn[6]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_xn[6]~28_combout\ = ((r_xn(6) $ (\sign_inverter_INST_y|o_SI[6]~9_combout\ $ (\r_xn[5]~27\)))) # (GND)
-- \r_xn[6]~29\ = CARRY((r_xn(6) & ((!\r_xn[5]~27\) # (!\sign_inverter_INST_y|o_SI[6]~9_combout\))) # (!r_xn(6) & (!\sign_inverter_INST_y|o_SI[6]~9_combout\ & !\r_xn[5]~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_xn(6),
	datab => \sign_inverter_INST_y|o_SI[6]~9_combout\,
	datad => VCC,
	cin => \r_xn[5]~27\,
	combout => \r_xn[6]~28_combout\,
	cout => \r_xn[6]~29\);

-- Location: LCCOMB_X68_Y71_N14
\r_xn[7]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_xn[7]~30_combout\ = (\sign_inverter_INST_y|o_SI[7]~8_combout\ & ((r_xn(7) & (!\r_xn[6]~29\)) # (!r_xn(7) & ((\r_xn[6]~29\) # (GND))))) # (!\sign_inverter_INST_y|o_SI[7]~8_combout\ & ((r_xn(7) & (\r_xn[6]~29\ & VCC)) # (!r_xn(7) & (!\r_xn[6]~29\))))
-- \r_xn[7]~31\ = CARRY((\sign_inverter_INST_y|o_SI[7]~8_combout\ & ((!\r_xn[6]~29\) # (!r_xn(7)))) # (!\sign_inverter_INST_y|o_SI[7]~8_combout\ & (!r_xn(7) & !\r_xn[6]~29\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sign_inverter_INST_y|o_SI[7]~8_combout\,
	datab => r_xn(7),
	datad => VCC,
	cin => \r_xn[6]~29\,
	combout => \r_xn[7]~30_combout\,
	cout => \r_xn[7]~31\);

-- Location: LCCOMB_X68_Y71_N16
\r_xn[8]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_xn[8]~32_combout\ = ((\sign_inverter_INST_y|o_SI[8]~7_combout\ $ (r_xn(8) $ (\r_xn[7]~31\)))) # (GND)
-- \r_xn[8]~33\ = CARRY((\sign_inverter_INST_y|o_SI[8]~7_combout\ & (r_xn(8) & !\r_xn[7]~31\)) # (!\sign_inverter_INST_y|o_SI[8]~7_combout\ & ((r_xn(8)) # (!\r_xn[7]~31\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sign_inverter_INST_y|o_SI[8]~7_combout\,
	datab => r_xn(8),
	datad => VCC,
	cin => \r_xn[7]~31\,
	combout => \r_xn[8]~32_combout\,
	cout => \r_xn[8]~33\);

-- Location: LCCOMB_X68_Y71_N18
\r_xn[9]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_xn[9]~34_combout\ = (\sign_inverter_INST_y|o_SI[9]~6_combout\ & ((r_xn(9) & (!\r_xn[8]~33\)) # (!r_xn(9) & ((\r_xn[8]~33\) # (GND))))) # (!\sign_inverter_INST_y|o_SI[9]~6_combout\ & ((r_xn(9) & (\r_xn[8]~33\ & VCC)) # (!r_xn(9) & (!\r_xn[8]~33\))))
-- \r_xn[9]~35\ = CARRY((\sign_inverter_INST_y|o_SI[9]~6_combout\ & ((!\r_xn[8]~33\) # (!r_xn(9)))) # (!\sign_inverter_INST_y|o_SI[9]~6_combout\ & (!r_xn(9) & !\r_xn[8]~33\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sign_inverter_INST_y|o_SI[9]~6_combout\,
	datab => r_xn(9),
	datad => VCC,
	cin => \r_xn[8]~33\,
	combout => \r_xn[9]~34_combout\,
	cout => \r_xn[9]~35\);

-- Location: LCCOMB_X68_Y71_N20
\r_xn[10]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_xn[10]~36_combout\ = ((\sign_inverter_INST_y|o_SI[10]~5_combout\ $ (r_xn(10) $ (\r_xn[9]~35\)))) # (GND)
-- \r_xn[10]~37\ = CARRY((\sign_inverter_INST_y|o_SI[10]~5_combout\ & (r_xn(10) & !\r_xn[9]~35\)) # (!\sign_inverter_INST_y|o_SI[10]~5_combout\ & ((r_xn(10)) # (!\r_xn[9]~35\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sign_inverter_INST_y|o_SI[10]~5_combout\,
	datab => r_xn(10),
	datad => VCC,
	cin => \r_xn[9]~35\,
	combout => \r_xn[10]~36_combout\,
	cout => \r_xn[10]~37\);

-- Location: FF_X68_Y71_N21
\r_xn[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \r_xn[10]~36_combout\,
	asdata => VCC,
	sload => \state.run~q\,
	ena => \ALT_INV_state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_xn(10));

-- Location: LCCOMB_X68_Y70_N26
\bit_shift_INST_x|ShiftRight0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit_shift_INST_x|ShiftRight0~24_combout\ = (!\iteration_counter_INST|cnt\(0) & ((\iteration_counter_INST|cnt\(1) & ((r_xn(12)))) # (!\iteration_counter_INST|cnt\(1) & (r_xn(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_xn(10),
	datab => r_xn(12),
	datac => \iteration_counter_INST|cnt\(1),
	datad => \iteration_counter_INST|cnt\(0),
	combout => \bit_shift_INST_x|ShiftRight0~24_combout\);

-- Location: LCCOMB_X68_Y70_N6
\bit_shift_INST_x|ShiftRight0~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit_shift_INST_x|ShiftRight0~72_combout\ = (\iteration_counter_INST|cnt\(2) & (!\iteration_counter_INST|cnt\(3) & ((\bit_shift_INST_x|ShiftRight0~24_combout\) # (\bit_shift_INST_x|ShiftRight0~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iteration_counter_INST|cnt\(2),
	datab => \iteration_counter_INST|cnt\(3),
	datac => \bit_shift_INST_x|ShiftRight0~24_combout\,
	datad => \bit_shift_INST_x|ShiftRight0~23_combout\,
	combout => \bit_shift_INST_x|ShiftRight0~72_combout\);

-- Location: LCCOMB_X67_Y69_N26
\bit_shift_INST_x|ShiftRight0~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit_shift_INST_x|ShiftRight0~41_combout\ = (\bit_shift_INST_x|ShiftRight0~38_combout\) # ((\bit_shift_INST_x|ShiftRight0~72_combout\) # ((\bit_shift_INST_x|ShiftRight0~40_combout\ & \LUT_16_INST|rom~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit_shift_INST_x|ShiftRight0~40_combout\,
	datab => \LUT_16_INST|rom~14_combout\,
	datac => \bit_shift_INST_x|ShiftRight0~38_combout\,
	datad => \bit_shift_INST_x|ShiftRight0~72_combout\,
	combout => \bit_shift_INST_x|ShiftRight0~41_combout\);

-- Location: LCCOMB_X68_Y69_N12
\sign_inverter_INST_x|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \sign_inverter_INST_x|Add0~12_combout\ = (\bit_shift_INST_x|ShiftRight0~41_combout\ & (!\sign_inverter_INST_x|Add0~11\ & VCC)) # (!\bit_shift_INST_x|ShiftRight0~41_combout\ & (\sign_inverter_INST_x|Add0~11\ $ (GND)))
-- \sign_inverter_INST_x|Add0~13\ = CARRY((!\bit_shift_INST_x|ShiftRight0~41_combout\ & !\sign_inverter_INST_x|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bit_shift_INST_x|ShiftRight0~41_combout\,
	datad => VCC,
	cin => \sign_inverter_INST_x|Add0~11\,
	combout => \sign_inverter_INST_x|Add0~12_combout\,
	cout => \sign_inverter_INST_x|Add0~13\);

-- Location: LCCOMB_X67_Y69_N18
\sign_inverter_INST_x|o_SI[6]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \sign_inverter_INST_x|o_SI[6]~9_combout\ = (\bit_shift_INST_x|ShiftRight0~41_combout\ & ((r_yn(15)) # ((\sign_inverter_INST_x|Add0~12_combout\ & !\sign_inverter_INST_z|Equal0~0_combout\)))) # (!\bit_shift_INST_x|ShiftRight0~41_combout\ & 
-- (((\sign_inverter_INST_x|Add0~12_combout\ & !\sign_inverter_INST_z|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit_shift_INST_x|ShiftRight0~41_combout\,
	datab => r_yn(15),
	datac => \sign_inverter_INST_x|Add0~12_combout\,
	datad => \sign_inverter_INST_z|Equal0~0_combout\,
	combout => \sign_inverter_INST_x|o_SI[6]~9_combout\);

-- Location: LCCOMB_X70_Y69_N12
\r_yn[6]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_yn[6]~28_combout\ = ((\sign_inverter_INST_x|o_SI[6]~9_combout\ $ (r_yn(6) $ (!\r_yn[5]~27\)))) # (GND)
-- \r_yn[6]~29\ = CARRY((\sign_inverter_INST_x|o_SI[6]~9_combout\ & ((r_yn(6)) # (!\r_yn[5]~27\))) # (!\sign_inverter_INST_x|o_SI[6]~9_combout\ & (r_yn(6) & !\r_yn[5]~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sign_inverter_INST_x|o_SI[6]~9_combout\,
	datab => r_yn(6),
	datad => VCC,
	cin => \r_yn[5]~27\,
	combout => \r_yn[6]~28_combout\,
	cout => \r_yn[6]~29\);

-- Location: FF_X70_Y69_N13
\r_yn[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \r_yn[6]~28_combout\,
	asdata => VCC,
	sload => \state.run~q\,
	ena => \ALT_INV_state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_yn(6));

-- Location: LCCOMB_X70_Y67_N30
\bit_shift_INST_y|ShiftRight0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit_shift_INST_y|ShiftRight0~44_combout\ = (\iteration_counter_INST|cnt\(0) & (r_yn(6))) # (!\iteration_counter_INST|cnt\(0) & ((r_yn(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iteration_counter_INST|cnt\(0),
	datac => r_yn(6),
	datad => r_yn(5),
	combout => \bit_shift_INST_y|ShiftRight0~44_combout\);

-- Location: LCCOMB_X70_Y67_N20
\bit_shift_INST_y|ShiftRight0~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit_shift_INST_y|ShiftRight0~43_combout\ = (\iteration_counter_INST|cnt\(1) & ((\iteration_counter_INST|cnt\(0) & ((r_yn(8)))) # (!\iteration_counter_INST|cnt\(0) & (r_yn(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iteration_counter_INST|cnt\(1),
	datab => \iteration_counter_INST|cnt\(0),
	datac => r_yn(7),
	datad => r_yn(8),
	combout => \bit_shift_INST_y|ShiftRight0~43_combout\);

-- Location: LCCOMB_X70_Y67_N4
\bit_shift_INST_y|ShiftRight0~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit_shift_INST_y|ShiftRight0~45_combout\ = (\bit_shift_INST_y|ShiftRight0~43_combout\) # ((!\iteration_counter_INST|cnt\(1) & \bit_shift_INST_y|ShiftRight0~44_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \iteration_counter_INST|cnt\(1),
	datac => \bit_shift_INST_y|ShiftRight0~44_combout\,
	datad => \bit_shift_INST_y|ShiftRight0~43_combout\,
	combout => \bit_shift_INST_y|ShiftRight0~45_combout\);

-- Location: LCCOMB_X70_Y68_N20
\bit_shift_INST_y|ShiftRight0~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit_shift_INST_y|ShiftRight0~27_combout\ = (\iteration_counter_INST|cnt\(1) & ((r_yn(12)))) # (!\iteration_counter_INST|cnt\(1) & (r_yn(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iteration_counter_INST|cnt\(1),
	datab => r_yn(10),
	datac => r_yn(12),
	combout => \bit_shift_INST_y|ShiftRight0~27_combout\);

-- Location: LCCOMB_X70_Y68_N26
\bit_shift_INST_y|ShiftRight0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit_shift_INST_y|ShiftRight0~42_combout\ = (\bit_shift_INST_x|ShiftRight0~33_combout\ & ((\iteration_counter_INST|cnt\(0) & ((\bit_shift_INST_y|ShiftRight0~27_combout\))) # (!\iteration_counter_INST|cnt\(0) & 
-- (\bit_shift_INST_y|ShiftRight0~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iteration_counter_INST|cnt\(0),
	datab => \bit_shift_INST_y|ShiftRight0~28_combout\,
	datac => \bit_shift_INST_x|ShiftRight0~33_combout\,
	datad => \bit_shift_INST_y|ShiftRight0~27_combout\,
	combout => \bit_shift_INST_y|ShiftRight0~42_combout\);

-- Location: LCCOMB_X69_Y68_N2
\bit_shift_INST_y|ShiftRight0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit_shift_INST_y|ShiftRight0~46_combout\ = (\bit_shift_INST_y|ShiftRight0~41_combout\) # ((\bit_shift_INST_y|ShiftRight0~42_combout\) # ((\LUT_16_INST|rom~14_combout\ & \bit_shift_INST_y|ShiftRight0~45_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit_shift_INST_y|ShiftRight0~41_combout\,
	datab => \LUT_16_INST|rom~14_combout\,
	datac => \bit_shift_INST_y|ShiftRight0~45_combout\,
	datad => \bit_shift_INST_y|ShiftRight0~42_combout\,
	combout => \bit_shift_INST_y|ShiftRight0~46_combout\);

-- Location: LCCOMB_X68_Y68_N12
\sign_inverter_INST_y|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \sign_inverter_INST_y|Add0~12_combout\ = (\bit_shift_INST_y|ShiftRight0~40_combout\ & (!\sign_inverter_INST_y|Add0~11\ & VCC)) # (!\bit_shift_INST_y|ShiftRight0~40_combout\ & (\sign_inverter_INST_y|Add0~11\ $ (GND)))
-- \sign_inverter_INST_y|Add0~13\ = CARRY((!\bit_shift_INST_y|ShiftRight0~40_combout\ & !\sign_inverter_INST_y|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bit_shift_INST_y|ShiftRight0~40_combout\,
	datad => VCC,
	cin => \sign_inverter_INST_y|Add0~11\,
	combout => \sign_inverter_INST_y|Add0~12_combout\,
	cout => \sign_inverter_INST_y|Add0~13\);

-- Location: LCCOMB_X68_Y68_N14
\sign_inverter_INST_y|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \sign_inverter_INST_y|Add0~14_combout\ = (\bit_shift_INST_y|ShiftRight0~70_combout\ & ((\sign_inverter_INST_y|Add0~13\) # (GND))) # (!\bit_shift_INST_y|ShiftRight0~70_combout\ & (!\sign_inverter_INST_y|Add0~13\))
-- \sign_inverter_INST_y|Add0~15\ = CARRY((\bit_shift_INST_y|ShiftRight0~70_combout\) # (!\sign_inverter_INST_y|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bit_shift_INST_y|ShiftRight0~70_combout\,
	datad => VCC,
	cin => \sign_inverter_INST_y|Add0~13\,
	combout => \sign_inverter_INST_y|Add0~14_combout\,
	cout => \sign_inverter_INST_y|Add0~15\);

-- Location: LCCOMB_X67_Y68_N10
\sign_inverter_INST_y|o_SI[7]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \sign_inverter_INST_y|o_SI[7]~8_combout\ = (\sign_inverter_INST_z|Equal0~0_combout\ & (r_yn(15) & ((\bit_shift_INST_y|ShiftRight0~70_combout\)))) # (!\sign_inverter_INST_z|Equal0~0_combout\ & ((\sign_inverter_INST_y|Add0~14_combout\) # ((r_yn(15) & 
-- \bit_shift_INST_y|ShiftRight0~70_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sign_inverter_INST_z|Equal0~0_combout\,
	datab => r_yn(15),
	datac => \sign_inverter_INST_y|Add0~14_combout\,
	datad => \bit_shift_INST_y|ShiftRight0~70_combout\,
	combout => \sign_inverter_INST_y|o_SI[7]~8_combout\);

-- Location: FF_X68_Y71_N15
\r_xn[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \r_xn[7]~30_combout\,
	asdata => \LUT_X_INST|o_LUT_X\(11),
	sload => \state.run~q\,
	ena => \ALT_INV_state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_xn(7));

-- Location: LCCOMB_X69_Y69_N16
\bit_shift_INST_x|ShiftRight0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit_shift_INST_x|ShiftRight0~36_combout\ = (\iteration_counter_INST|cnt\(1) & ((r_xn(9)))) # (!\iteration_counter_INST|cnt\(1) & (r_xn(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iteration_counter_INST|cnt\(1),
	datac => r_xn(7),
	datad => r_xn(9),
	combout => \bit_shift_INST_x|ShiftRight0~36_combout\);

-- Location: LCCOMB_X69_Y69_N2
\bit_shift_INST_x|ShiftRight0~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit_shift_INST_x|ShiftRight0~37_combout\ = (\iteration_counter_INST|cnt\(0) & (\bit_shift_INST_x|ShiftRight0~34_combout\)) # (!\iteration_counter_INST|cnt\(0) & ((\bit_shift_INST_x|ShiftRight0~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iteration_counter_INST|cnt\(0),
	datac => \bit_shift_INST_x|ShiftRight0~34_combout\,
	datad => \bit_shift_INST_x|ShiftRight0~36_combout\,
	combout => \bit_shift_INST_x|ShiftRight0~37_combout\);

-- Location: LCCOMB_X69_Y69_N22
\bit_shift_INST_x|ShiftRight0~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit_shift_INST_x|ShiftRight0~71_combout\ = (\bit_shift_INST_x|ShiftRight0~70_combout\) # ((!\iteration_counter_INST|cnt\(2) & (!\iteration_counter_INST|cnt\(3) & \bit_shift_INST_x|ShiftRight0~37_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iteration_counter_INST|cnt\(2),
	datab => \bit_shift_INST_x|ShiftRight0~70_combout\,
	datac => \iteration_counter_INST|cnt\(3),
	datad => \bit_shift_INST_x|ShiftRight0~37_combout\,
	combout => \bit_shift_INST_x|ShiftRight0~71_combout\);

-- Location: LCCOMB_X68_Y69_N14
\sign_inverter_INST_x|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \sign_inverter_INST_x|Add0~14_combout\ = (\bit_shift_INST_x|ShiftRight0~71_combout\ & ((\sign_inverter_INST_x|Add0~13\) # (GND))) # (!\bit_shift_INST_x|ShiftRight0~71_combout\ & (!\sign_inverter_INST_x|Add0~13\))
-- \sign_inverter_INST_x|Add0~15\ = CARRY((\bit_shift_INST_x|ShiftRight0~71_combout\) # (!\sign_inverter_INST_x|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bit_shift_INST_x|ShiftRight0~71_combout\,
	datad => VCC,
	cin => \sign_inverter_INST_x|Add0~13\,
	combout => \sign_inverter_INST_x|Add0~14_combout\,
	cout => \sign_inverter_INST_x|Add0~15\);

-- Location: LCCOMB_X69_Y69_N26
\sign_inverter_INST_x|o_SI[7]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \sign_inverter_INST_x|o_SI[7]~8_combout\ = (r_yn(15) & ((\bit_shift_INST_x|ShiftRight0~71_combout\) # ((!\sign_inverter_INST_z|Equal0~0_combout\ & \sign_inverter_INST_x|Add0~14_combout\)))) # (!r_yn(15) & (!\sign_inverter_INST_z|Equal0~0_combout\ & 
-- ((\sign_inverter_INST_x|Add0~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_yn(15),
	datab => \sign_inverter_INST_z|Equal0~0_combout\,
	datac => \bit_shift_INST_x|ShiftRight0~71_combout\,
	datad => \sign_inverter_INST_x|Add0~14_combout\,
	combout => \sign_inverter_INST_x|o_SI[7]~8_combout\);

-- Location: LCCOMB_X70_Y69_N14
\r_yn[7]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_yn[7]~30_combout\ = (\sign_inverter_INST_x|o_SI[7]~8_combout\ & ((r_yn(7) & (\r_yn[6]~29\ & VCC)) # (!r_yn(7) & (!\r_yn[6]~29\)))) # (!\sign_inverter_INST_x|o_SI[7]~8_combout\ & ((r_yn(7) & (!\r_yn[6]~29\)) # (!r_yn(7) & ((\r_yn[6]~29\) # (GND)))))
-- \r_yn[7]~31\ = CARRY((\sign_inverter_INST_x|o_SI[7]~8_combout\ & (!r_yn(7) & !\r_yn[6]~29\)) # (!\sign_inverter_INST_x|o_SI[7]~8_combout\ & ((!\r_yn[6]~29\) # (!r_yn(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sign_inverter_INST_x|o_SI[7]~8_combout\,
	datab => r_yn(7),
	datad => VCC,
	cin => \r_yn[6]~29\,
	combout => \r_yn[7]~30_combout\,
	cout => \r_yn[7]~31\);

-- Location: LCCOMB_X70_Y72_N0
\~GND\ : cycloneive_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: FF_X70_Y69_N15
\r_yn[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \r_yn[7]~30_combout\,
	asdata => \~GND~combout\,
	sload => \state.run~q\,
	ena => \ALT_INV_state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_yn(7));

-- Location: LCCOMB_X70_Y68_N6
\bit_shift_INST_y|ShiftRight0~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit_shift_INST_y|ShiftRight0~35_combout\ = (\iteration_counter_INST|cnt\(1) & ((r_yn(9)))) # (!\iteration_counter_INST|cnt\(1) & (r_yn(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iteration_counter_INST|cnt\(1),
	datac => r_yn(7),
	datad => r_yn(9),
	combout => \bit_shift_INST_y|ShiftRight0~35_combout\);

-- Location: LCCOMB_X69_Y68_N0
\bit_shift_INST_y|ShiftRight0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit_shift_INST_y|ShiftRight0~36_combout\ = (\iteration_counter_INST|cnt\(0) & (\bit_shift_INST_y|ShiftRight0~33_combout\)) # (!\iteration_counter_INST|cnt\(0) & ((\bit_shift_INST_y|ShiftRight0~35_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iteration_counter_INST|cnt\(0),
	datac => \bit_shift_INST_y|ShiftRight0~33_combout\,
	datad => \bit_shift_INST_y|ShiftRight0~35_combout\,
	combout => \bit_shift_INST_y|ShiftRight0~36_combout\);

-- Location: LCCOMB_X67_Y68_N6
\bit_shift_INST_y|ShiftRight0~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit_shift_INST_y|ShiftRight0~69_combout\ = (\iteration_counter_INST|cnt\(3) & (((r_yn(15))))) # (!\iteration_counter_INST|cnt\(3) & (\iteration_counter_INST|cnt\(2) & (\bit_shift_INST_y|ShiftRight0~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iteration_counter_INST|cnt\(3),
	datab => \iteration_counter_INST|cnt\(2),
	datac => \bit_shift_INST_y|ShiftRight0~21_combout\,
	datad => r_yn(15),
	combout => \bit_shift_INST_y|ShiftRight0~69_combout\);

-- Location: LCCOMB_X67_Y68_N12
\bit_shift_INST_y|ShiftRight0~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit_shift_INST_y|ShiftRight0~70_combout\ = (\bit_shift_INST_y|ShiftRight0~69_combout\) # ((!\iteration_counter_INST|cnt\(3) & (!\iteration_counter_INST|cnt\(2) & \bit_shift_INST_y|ShiftRight0~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iteration_counter_INST|cnt\(3),
	datab => \iteration_counter_INST|cnt\(2),
	datac => \bit_shift_INST_y|ShiftRight0~36_combout\,
	datad => \bit_shift_INST_y|ShiftRight0~69_combout\,
	combout => \bit_shift_INST_y|ShiftRight0~70_combout\);

-- Location: LCCOMB_X68_Y68_N16
\sign_inverter_INST_y|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \sign_inverter_INST_y|Add0~16_combout\ = (\bit_shift_INST_y|ShiftRight0~68_combout\ & (!\sign_inverter_INST_y|Add0~15\ & VCC)) # (!\bit_shift_INST_y|ShiftRight0~68_combout\ & (\sign_inverter_INST_y|Add0~15\ $ (GND)))
-- \sign_inverter_INST_y|Add0~17\ = CARRY((!\bit_shift_INST_y|ShiftRight0~68_combout\ & !\sign_inverter_INST_y|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bit_shift_INST_y|ShiftRight0~68_combout\,
	datad => VCC,
	cin => \sign_inverter_INST_y|Add0~15\,
	combout => \sign_inverter_INST_y|Add0~16_combout\,
	cout => \sign_inverter_INST_y|Add0~17\);

-- Location: LCCOMB_X67_Y71_N16
\sign_inverter_INST_y|o_SI[8]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \sign_inverter_INST_y|o_SI[8]~7_combout\ = (\bit_shift_INST_y|ShiftRight0~68_combout\ & ((r_yn(15)) # ((!\sign_inverter_INST_z|Equal0~0_combout\ & \sign_inverter_INST_y|Add0~16_combout\)))) # (!\bit_shift_INST_y|ShiftRight0~68_combout\ & 
-- (!\sign_inverter_INST_z|Equal0~0_combout\ & ((\sign_inverter_INST_y|Add0~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit_shift_INST_y|ShiftRight0~68_combout\,
	datab => \sign_inverter_INST_z|Equal0~0_combout\,
	datac => r_yn(15),
	datad => \sign_inverter_INST_y|Add0~16_combout\,
	combout => \sign_inverter_INST_y|o_SI[8]~7_combout\);

-- Location: FF_X68_Y71_N17
\r_xn[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \r_xn[8]~32_combout\,
	asdata => VCC,
	sload => \state.run~q\,
	ena => \ALT_INV_state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_xn(8));

-- Location: LCCOMB_X69_Y69_N4
\bit_shift_INST_x|ShiftRight0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit_shift_INST_x|ShiftRight0~34_combout\ = (\iteration_counter_INST|cnt\(1) & ((r_xn(10)))) # (!\iteration_counter_INST|cnt\(1) & (r_xn(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iteration_counter_INST|cnt\(1),
	datac => r_xn(8),
	datad => r_xn(10),
	combout => \bit_shift_INST_x|ShiftRight0~34_combout\);

-- Location: LCCOMB_X69_Y69_N18
\bit_shift_INST_x|ShiftRight0~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit_shift_INST_x|ShiftRight0~35_combout\ = (\iteration_counter_INST|cnt\(0) & ((\bit_shift_INST_x|ShiftRight0~28_combout\))) # (!\iteration_counter_INST|cnt\(0) & (\bit_shift_INST_x|ShiftRight0~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iteration_counter_INST|cnt\(0),
	datac => \bit_shift_INST_x|ShiftRight0~34_combout\,
	datad => \bit_shift_INST_x|ShiftRight0~28_combout\,
	combout => \bit_shift_INST_x|ShiftRight0~35_combout\);

-- Location: LCCOMB_X68_Y67_N16
\bit_shift_INST_x|ShiftRight0~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit_shift_INST_x|ShiftRight0~68_combout\ = (\iteration_counter_INST|cnt\(3) & (r_xn(15))) # (!\iteration_counter_INST|cnt\(3) & (((\iteration_counter_INST|cnt\(2) & \bit_shift_INST_x|ShiftRight0~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iteration_counter_INST|cnt\(3),
	datab => r_xn(15),
	datac => \iteration_counter_INST|cnt\(2),
	datad => \bit_shift_INST_x|ShiftRight0~32_combout\,
	combout => \bit_shift_INST_x|ShiftRight0~68_combout\);

-- Location: LCCOMB_X68_Y67_N2
\bit_shift_INST_x|ShiftRight0~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit_shift_INST_x|ShiftRight0~69_combout\ = (\bit_shift_INST_x|ShiftRight0~68_combout\) # ((!\iteration_counter_INST|cnt\(3) & (!\iteration_counter_INST|cnt\(2) & \bit_shift_INST_x|ShiftRight0~35_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iteration_counter_INST|cnt\(3),
	datab => \iteration_counter_INST|cnt\(2),
	datac => \bit_shift_INST_x|ShiftRight0~35_combout\,
	datad => \bit_shift_INST_x|ShiftRight0~68_combout\,
	combout => \bit_shift_INST_x|ShiftRight0~69_combout\);

-- Location: LCCOMB_X68_Y69_N16
\sign_inverter_INST_x|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \sign_inverter_INST_x|Add0~16_combout\ = (\bit_shift_INST_x|ShiftRight0~69_combout\ & (!\sign_inverter_INST_x|Add0~15\ & VCC)) # (!\bit_shift_INST_x|ShiftRight0~69_combout\ & (\sign_inverter_INST_x|Add0~15\ $ (GND)))
-- \sign_inverter_INST_x|Add0~17\ = CARRY((!\bit_shift_INST_x|ShiftRight0~69_combout\ & !\sign_inverter_INST_x|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bit_shift_INST_x|ShiftRight0~69_combout\,
	datad => VCC,
	cin => \sign_inverter_INST_x|Add0~15\,
	combout => \sign_inverter_INST_x|Add0~16_combout\,
	cout => \sign_inverter_INST_x|Add0~17\);

-- Location: LCCOMB_X67_Y69_N20
\sign_inverter_INST_x|o_SI[8]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \sign_inverter_INST_x|o_SI[8]~7_combout\ = (\bit_shift_INST_x|ShiftRight0~69_combout\ & ((r_yn(15)) # ((!\sign_inverter_INST_z|Equal0~0_combout\ & \sign_inverter_INST_x|Add0~16_combout\)))) # (!\bit_shift_INST_x|ShiftRight0~69_combout\ & 
-- (!\sign_inverter_INST_z|Equal0~0_combout\ & ((\sign_inverter_INST_x|Add0~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit_shift_INST_x|ShiftRight0~69_combout\,
	datab => \sign_inverter_INST_z|Equal0~0_combout\,
	datac => r_yn(15),
	datad => \sign_inverter_INST_x|Add0~16_combout\,
	combout => \sign_inverter_INST_x|o_SI[8]~7_combout\);

-- Location: LCCOMB_X70_Y69_N16
\r_yn[8]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_yn[8]~32_combout\ = ((\sign_inverter_INST_x|o_SI[8]~7_combout\ $ (r_yn(8) $ (!\r_yn[7]~31\)))) # (GND)
-- \r_yn[8]~33\ = CARRY((\sign_inverter_INST_x|o_SI[8]~7_combout\ & ((r_yn(8)) # (!\r_yn[7]~31\))) # (!\sign_inverter_INST_x|o_SI[8]~7_combout\ & (r_yn(8) & !\r_yn[7]~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sign_inverter_INST_x|o_SI[8]~7_combout\,
	datab => r_yn(8),
	datad => VCC,
	cin => \r_yn[7]~31\,
	combout => \r_yn[8]~32_combout\,
	cout => \r_yn[8]~33\);

-- Location: FF_X70_Y69_N17
\r_yn[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \r_yn[8]~32_combout\,
	asdata => \LUT_Y_INST|o_LUT_Y\(12),
	sload => \state.run~q\,
	ena => \ALT_INV_state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_yn(8));

-- Location: LCCOMB_X70_Y67_N26
\bit_shift_INST_y|ShiftRight0~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit_shift_INST_y|ShiftRight0~33_combout\ = (\iteration_counter_INST|cnt\(1) & (r_yn(10))) # (!\iteration_counter_INST|cnt\(1) & ((r_yn(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \iteration_counter_INST|cnt\(1),
	datac => r_yn(10),
	datad => r_yn(8),
	combout => \bit_shift_INST_y|ShiftRight0~33_combout\);

-- Location: LCCOMB_X69_Y70_N20
\bit_shift_INST_y|ShiftRight0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit_shift_INST_y|ShiftRight0~34_combout\ = (\iteration_counter_INST|cnt\(0) & (\bit_shift_INST_y|ShiftRight0~28_combout\)) # (!\iteration_counter_INST|cnt\(0) & ((\bit_shift_INST_y|ShiftRight0~33_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \iteration_counter_INST|cnt\(0),
	datac => \bit_shift_INST_y|ShiftRight0~28_combout\,
	datad => \bit_shift_INST_y|ShiftRight0~33_combout\,
	combout => \bit_shift_INST_y|ShiftRight0~34_combout\);

-- Location: LCCOMB_X68_Y70_N16
\bit_shift_INST_y|ShiftRight0~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit_shift_INST_y|ShiftRight0~67_combout\ = (\iteration_counter_INST|cnt\(3) & (((r_yn(15))))) # (!\iteration_counter_INST|cnt\(3) & (\iteration_counter_INST|cnt\(2) & ((\bit_shift_INST_y|ShiftRight0~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iteration_counter_INST|cnt\(2),
	datab => r_yn(15),
	datac => \iteration_counter_INST|cnt\(3),
	datad => \bit_shift_INST_y|ShiftRight0~32_combout\,
	combout => \bit_shift_INST_y|ShiftRight0~67_combout\);

-- Location: LCCOMB_X68_Y70_N10
\bit_shift_INST_y|ShiftRight0~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit_shift_INST_y|ShiftRight0~68_combout\ = (\bit_shift_INST_y|ShiftRight0~67_combout\) # ((!\iteration_counter_INST|cnt\(2) & (!\iteration_counter_INST|cnt\(3) & \bit_shift_INST_y|ShiftRight0~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iteration_counter_INST|cnt\(2),
	datab => \iteration_counter_INST|cnt\(3),
	datac => \bit_shift_INST_y|ShiftRight0~34_combout\,
	datad => \bit_shift_INST_y|ShiftRight0~67_combout\,
	combout => \bit_shift_INST_y|ShiftRight0~68_combout\);

-- Location: LCCOMB_X68_Y68_N18
\sign_inverter_INST_y|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \sign_inverter_INST_y|Add0~18_combout\ = (\bit_shift_INST_y|ShiftRight0~31_combout\ & ((\sign_inverter_INST_y|Add0~17\) # (GND))) # (!\bit_shift_INST_y|ShiftRight0~31_combout\ & (!\sign_inverter_INST_y|Add0~17\))
-- \sign_inverter_INST_y|Add0~19\ = CARRY((\bit_shift_INST_y|ShiftRight0~31_combout\) # (!\sign_inverter_INST_y|Add0~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bit_shift_INST_y|ShiftRight0~31_combout\,
	datad => VCC,
	cin => \sign_inverter_INST_y|Add0~17\,
	combout => \sign_inverter_INST_y|Add0~18_combout\,
	cout => \sign_inverter_INST_y|Add0~19\);

-- Location: LCCOMB_X67_Y68_N24
\sign_inverter_INST_y|o_SI[9]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \sign_inverter_INST_y|o_SI[9]~6_combout\ = (\sign_inverter_INST_z|Equal0~0_combout\ & (r_yn(15) & (\bit_shift_INST_y|ShiftRight0~31_combout\))) # (!\sign_inverter_INST_z|Equal0~0_combout\ & ((\sign_inverter_INST_y|Add0~18_combout\) # ((r_yn(15) & 
-- \bit_shift_INST_y|ShiftRight0~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sign_inverter_INST_z|Equal0~0_combout\,
	datab => r_yn(15),
	datac => \bit_shift_INST_y|ShiftRight0~31_combout\,
	datad => \sign_inverter_INST_y|Add0~18_combout\,
	combout => \sign_inverter_INST_y|o_SI[9]~6_combout\);

-- Location: FF_X68_Y71_N19
\r_xn[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \r_xn[9]~34_combout\,
	asdata => \LUT_X_INST|o_LUT_X\(11),
	sload => \state.run~q\,
	ena => \ALT_INV_state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_xn(9));

-- Location: LCCOMB_X69_Y69_N10
\bit_shift_INST_x|ShiftRight0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit_shift_INST_x|ShiftRight0~28_combout\ = (\iteration_counter_INST|cnt\(1) & (r_xn(11))) # (!\iteration_counter_INST|cnt\(1) & ((r_xn(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iteration_counter_INST|cnt\(1),
	datac => r_xn(11),
	datad => r_xn(9),
	combout => \bit_shift_INST_x|ShiftRight0~28_combout\);

-- Location: LCCOMB_X72_Y69_N26
\bit_shift_INST_x|ShiftRight0~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit_shift_INST_x|ShiftRight0~29_combout\ = (!\iteration_counter_INST|cnt\(2) & ((\iteration_counter_INST|cnt\(0) & ((\bit_shift_INST_x|ShiftRight0~27_combout\))) # (!\iteration_counter_INST|cnt\(0) & (\bit_shift_INST_x|ShiftRight0~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iteration_counter_INST|cnt\(0),
	datab => \iteration_counter_INST|cnt\(2),
	datac => \bit_shift_INST_x|ShiftRight0~28_combout\,
	datad => \bit_shift_INST_x|ShiftRight0~27_combout\,
	combout => \bit_shift_INST_x|ShiftRight0~29_combout\);

-- Location: LCCOMB_X72_Y69_N14
\bit_shift_INST_x|ShiftRight0~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit_shift_INST_x|ShiftRight0~31_combout\ = (\iteration_counter_INST|cnt\(3) & (r_xn(15))) # (!\iteration_counter_INST|cnt\(3) & (((\bit_shift_INST_x|ShiftRight0~29_combout\) # (\bit_shift_INST_x|ShiftRight0~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iteration_counter_INST|cnt\(3),
	datab => r_xn(15),
	datac => \bit_shift_INST_x|ShiftRight0~29_combout\,
	datad => \bit_shift_INST_x|ShiftRight0~30_combout\,
	combout => \bit_shift_INST_x|ShiftRight0~31_combout\);

-- Location: LCCOMB_X68_Y69_N18
\sign_inverter_INST_x|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \sign_inverter_INST_x|Add0~18_combout\ = (\bit_shift_INST_x|ShiftRight0~31_combout\ & ((\sign_inverter_INST_x|Add0~17\) # (GND))) # (!\bit_shift_INST_x|ShiftRight0~31_combout\ & (!\sign_inverter_INST_x|Add0~17\))
-- \sign_inverter_INST_x|Add0~19\ = CARRY((\bit_shift_INST_x|ShiftRight0~31_combout\) # (!\sign_inverter_INST_x|Add0~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bit_shift_INST_x|ShiftRight0~31_combout\,
	datad => VCC,
	cin => \sign_inverter_INST_x|Add0~17\,
	combout => \sign_inverter_INST_x|Add0~18_combout\,
	cout => \sign_inverter_INST_x|Add0~19\);

-- Location: LCCOMB_X72_Y69_N16
\sign_inverter_INST_x|o_SI[9]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \sign_inverter_INST_x|o_SI[9]~6_combout\ = (\sign_inverter_INST_z|Equal0~0_combout\ & (\bit_shift_INST_x|ShiftRight0~31_combout\ & (r_yn(15)))) # (!\sign_inverter_INST_z|Equal0~0_combout\ & ((\sign_inverter_INST_x|Add0~18_combout\) # 
-- ((\bit_shift_INST_x|ShiftRight0~31_combout\ & r_yn(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sign_inverter_INST_z|Equal0~0_combout\,
	datab => \bit_shift_INST_x|ShiftRight0~31_combout\,
	datac => r_yn(15),
	datad => \sign_inverter_INST_x|Add0~18_combout\,
	combout => \sign_inverter_INST_x|o_SI[9]~6_combout\);

-- Location: LCCOMB_X70_Y69_N18
\r_yn[9]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_yn[9]~34_combout\ = (\sign_inverter_INST_x|o_SI[9]~6_combout\ & ((r_yn(9) & (\r_yn[8]~33\ & VCC)) # (!r_yn(9) & (!\r_yn[8]~33\)))) # (!\sign_inverter_INST_x|o_SI[9]~6_combout\ & ((r_yn(9) & (!\r_yn[8]~33\)) # (!r_yn(9) & ((\r_yn[8]~33\) # (GND)))))
-- \r_yn[9]~35\ = CARRY((\sign_inverter_INST_x|o_SI[9]~6_combout\ & (!r_yn(9) & !\r_yn[8]~33\)) # (!\sign_inverter_INST_x|o_SI[9]~6_combout\ & ((!\r_yn[8]~33\) # (!r_yn(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sign_inverter_INST_x|o_SI[9]~6_combout\,
	datab => r_yn(9),
	datad => VCC,
	cin => \r_yn[8]~33\,
	combout => \r_yn[9]~34_combout\,
	cout => \r_yn[9]~35\);

-- Location: LCCOMB_X69_Y71_N14
\LUT_Y_INST|o_LUT_Y[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \LUT_Y_INST|o_LUT_Y[9]~feeder_combout\ = LUT_COUNTER(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => LUT_COUNTER(0),
	combout => \LUT_Y_INST|o_LUT_Y[9]~feeder_combout\);

-- Location: FF_X69_Y71_N15
\LUT_Y_INST|o_LUT_Y[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_mem_enable_Y~clkctrl_outclk\,
	d => \LUT_Y_INST|o_LUT_Y[9]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LUT_Y_INST|o_LUT_Y\(9));

-- Location: FF_X70_Y69_N19
\r_yn[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \r_yn[9]~34_combout\,
	asdata => \LUT_Y_INST|o_LUT_Y\(9),
	sload => \state.run~q\,
	ena => \ALT_INV_state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_yn(9));

-- Location: LCCOMB_X70_Y68_N30
\bit_shift_INST_y|ShiftRight0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit_shift_INST_y|ShiftRight0~28_combout\ = (\iteration_counter_INST|cnt\(1) & (r_yn(11))) # (!\iteration_counter_INST|cnt\(1) & ((r_yn(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_yn(11),
	datac => \iteration_counter_INST|cnt\(1),
	datad => r_yn(9),
	combout => \bit_shift_INST_y|ShiftRight0~28_combout\);

-- Location: LCCOMB_X70_Y68_N28
\bit_shift_INST_y|ShiftRight0~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit_shift_INST_y|ShiftRight0~29_combout\ = (!\iteration_counter_INST|cnt\(2) & ((\iteration_counter_INST|cnt\(0) & ((\bit_shift_INST_y|ShiftRight0~27_combout\))) # (!\iteration_counter_INST|cnt\(0) & (\bit_shift_INST_y|ShiftRight0~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iteration_counter_INST|cnt\(0),
	datab => \bit_shift_INST_y|ShiftRight0~28_combout\,
	datac => \iteration_counter_INST|cnt\(2),
	datad => \bit_shift_INST_y|ShiftRight0~27_combout\,
	combout => \bit_shift_INST_y|ShiftRight0~29_combout\);

-- Location: LCCOMB_X70_Y68_N8
\bit_shift_INST_y|ShiftRight0~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit_shift_INST_y|ShiftRight0~31_combout\ = (\iteration_counter_INST|cnt\(3) & (r_yn(15))) # (!\iteration_counter_INST|cnt\(3) & (((\bit_shift_INST_y|ShiftRight0~30_combout\) # (\bit_shift_INST_y|ShiftRight0~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_yn(15),
	datab => \iteration_counter_INST|cnt\(3),
	datac => \bit_shift_INST_y|ShiftRight0~30_combout\,
	datad => \bit_shift_INST_y|ShiftRight0~29_combout\,
	combout => \bit_shift_INST_y|ShiftRight0~31_combout\);

-- Location: LCCOMB_X68_Y68_N22
\sign_inverter_INST_y|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \sign_inverter_INST_y|Add0~22_combout\ = (\bit_shift_INST_y|ShiftRight0~66_combout\ & ((\sign_inverter_INST_y|Add0~21\) # (GND))) # (!\bit_shift_INST_y|ShiftRight0~66_combout\ & (!\sign_inverter_INST_y|Add0~21\))
-- \sign_inverter_INST_y|Add0~23\ = CARRY((\bit_shift_INST_y|ShiftRight0~66_combout\) # (!\sign_inverter_INST_y|Add0~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bit_shift_INST_y|ShiftRight0~66_combout\,
	datad => VCC,
	cin => \sign_inverter_INST_y|Add0~21\,
	combout => \sign_inverter_INST_y|Add0~22_combout\,
	cout => \sign_inverter_INST_y|Add0~23\);

-- Location: LCCOMB_X67_Y68_N14
\sign_inverter_INST_y|o_SI[11]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \sign_inverter_INST_y|o_SI[11]~4_combout\ = (\sign_inverter_INST_z|Equal0~0_combout\ & (\bit_shift_INST_y|ShiftRight0~66_combout\ & (r_yn(15)))) # (!\sign_inverter_INST_z|Equal0~0_combout\ & ((\sign_inverter_INST_y|Add0~22_combout\) # 
-- ((\bit_shift_INST_y|ShiftRight0~66_combout\ & r_yn(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sign_inverter_INST_z|Equal0~0_combout\,
	datab => \bit_shift_INST_y|ShiftRight0~66_combout\,
	datac => r_yn(15),
	datad => \sign_inverter_INST_y|Add0~22_combout\,
	combout => \sign_inverter_INST_y|o_SI[11]~4_combout\);

-- Location: LCCOMB_X68_Y71_N22
\r_xn[11]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_xn[11]~38_combout\ = (\sign_inverter_INST_y|o_SI[11]~4_combout\ & ((r_xn(11) & (!\r_xn[10]~37\)) # (!r_xn(11) & ((\r_xn[10]~37\) # (GND))))) # (!\sign_inverter_INST_y|o_SI[11]~4_combout\ & ((r_xn(11) & (\r_xn[10]~37\ & VCC)) # (!r_xn(11) & 
-- (!\r_xn[10]~37\))))
-- \r_xn[11]~39\ = CARRY((\sign_inverter_INST_y|o_SI[11]~4_combout\ & ((!\r_xn[10]~37\) # (!r_xn(11)))) # (!\sign_inverter_INST_y|o_SI[11]~4_combout\ & (!r_xn(11) & !\r_xn[10]~37\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sign_inverter_INST_y|o_SI[11]~4_combout\,
	datab => r_xn(11),
	datad => VCC,
	cin => \r_xn[10]~37\,
	combout => \r_xn[11]~38_combout\,
	cout => \r_xn[11]~39\);

-- Location: FF_X68_Y71_N23
\r_xn[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \r_xn[11]~38_combout\,
	asdata => \LUT_X_INST|o_LUT_X\(11),
	sload => \state.run~q\,
	ena => \ALT_INV_state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_xn(11));

-- Location: LCCOMB_X69_Y69_N30
\bit_shift_INST_x|ShiftRight0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit_shift_INST_x|ShiftRight0~20_combout\ = (!\iteration_counter_INST|cnt\(1) & ((\iteration_counter_INST|cnt\(0) & ((r_xn(12)))) # (!\iteration_counter_INST|cnt\(0) & (r_xn(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_xn(11),
	datab => \iteration_counter_INST|cnt\(1),
	datac => r_xn(12),
	datad => \iteration_counter_INST|cnt\(0),
	combout => \bit_shift_INST_x|ShiftRight0~20_combout\);

-- Location: LCCOMB_X69_Y69_N0
\bit_shift_INST_x|ShiftRight0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit_shift_INST_x|ShiftRight0~21_combout\ = (\bit_shift_INST_x|ShiftRight0~20_combout\) # ((\iteration_counter_INST|cnt\(1) & \bit_shift_INST_x|ShiftRight0~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iteration_counter_INST|cnt\(1),
	datac => \bit_shift_INST_x|ShiftRight0~20_combout\,
	datad => \bit_shift_INST_x|ShiftRight0~14_combout\,
	combout => \bit_shift_INST_x|ShiftRight0~21_combout\);

-- Location: LCCOMB_X69_Y69_N14
\bit_shift_INST_x|ShiftRight0~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit_shift_INST_x|ShiftRight0~67_combout\ = (\iteration_counter_INST|cnt\(2) & (r_xn(15))) # (!\iteration_counter_INST|cnt\(2) & ((\iteration_counter_INST|cnt\(3) & (r_xn(15))) # (!\iteration_counter_INST|cnt\(3) & 
-- ((\bit_shift_INST_x|ShiftRight0~21_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iteration_counter_INST|cnt\(2),
	datab => r_xn(15),
	datac => \iteration_counter_INST|cnt\(3),
	datad => \bit_shift_INST_x|ShiftRight0~21_combout\,
	combout => \bit_shift_INST_x|ShiftRight0~67_combout\);

-- Location: LCCOMB_X68_Y69_N20
\sign_inverter_INST_x|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \sign_inverter_INST_x|Add0~20_combout\ = (\bit_shift_INST_x|ShiftRight0~26_combout\ & (!\sign_inverter_INST_x|Add0~19\ & VCC)) # (!\bit_shift_INST_x|ShiftRight0~26_combout\ & (\sign_inverter_INST_x|Add0~19\ $ (GND)))
-- \sign_inverter_INST_x|Add0~21\ = CARRY((!\bit_shift_INST_x|ShiftRight0~26_combout\ & !\sign_inverter_INST_x|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bit_shift_INST_x|ShiftRight0~26_combout\,
	datad => VCC,
	cin => \sign_inverter_INST_x|Add0~19\,
	combout => \sign_inverter_INST_x|Add0~20_combout\,
	cout => \sign_inverter_INST_x|Add0~21\);

-- Location: LCCOMB_X68_Y69_N22
\sign_inverter_INST_x|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \sign_inverter_INST_x|Add0~22_combout\ = (\bit_shift_INST_x|ShiftRight0~67_combout\ & ((\sign_inverter_INST_x|Add0~21\) # (GND))) # (!\bit_shift_INST_x|ShiftRight0~67_combout\ & (!\sign_inverter_INST_x|Add0~21\))
-- \sign_inverter_INST_x|Add0~23\ = CARRY((\bit_shift_INST_x|ShiftRight0~67_combout\) # (!\sign_inverter_INST_x|Add0~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bit_shift_INST_x|ShiftRight0~67_combout\,
	datad => VCC,
	cin => \sign_inverter_INST_x|Add0~21\,
	combout => \sign_inverter_INST_x|Add0~22_combout\,
	cout => \sign_inverter_INST_x|Add0~23\);

-- Location: LCCOMB_X69_Y69_N12
\sign_inverter_INST_x|o_SI[11]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \sign_inverter_INST_x|o_SI[11]~4_combout\ = (r_yn(15) & ((\bit_shift_INST_x|ShiftRight0~67_combout\) # ((!\sign_inverter_INST_z|Equal0~0_combout\ & \sign_inverter_INST_x|Add0~22_combout\)))) # (!r_yn(15) & (!\sign_inverter_INST_z|Equal0~0_combout\ & 
-- ((\sign_inverter_INST_x|Add0~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_yn(15),
	datab => \sign_inverter_INST_z|Equal0~0_combout\,
	datac => \bit_shift_INST_x|ShiftRight0~67_combout\,
	datad => \sign_inverter_INST_x|Add0~22_combout\,
	combout => \sign_inverter_INST_x|o_SI[11]~4_combout\);

-- Location: LCCOMB_X70_Y69_N20
\r_yn[10]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_yn[10]~36_combout\ = ((\sign_inverter_INST_x|o_SI[10]~5_combout\ $ (r_yn(10) $ (!\r_yn[9]~35\)))) # (GND)
-- \r_yn[10]~37\ = CARRY((\sign_inverter_INST_x|o_SI[10]~5_combout\ & ((r_yn(10)) # (!\r_yn[9]~35\))) # (!\sign_inverter_INST_x|o_SI[10]~5_combout\ & (r_yn(10) & !\r_yn[9]~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sign_inverter_INST_x|o_SI[10]~5_combout\,
	datab => r_yn(10),
	datad => VCC,
	cin => \r_yn[9]~35\,
	combout => \r_yn[10]~36_combout\,
	cout => \r_yn[10]~37\);

-- Location: LCCOMB_X70_Y69_N22
\r_yn[11]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_yn[11]~38_combout\ = (\sign_inverter_INST_x|o_SI[11]~4_combout\ & ((r_yn(11) & (\r_yn[10]~37\ & VCC)) # (!r_yn(11) & (!\r_yn[10]~37\)))) # (!\sign_inverter_INST_x|o_SI[11]~4_combout\ & ((r_yn(11) & (!\r_yn[10]~37\)) # (!r_yn(11) & ((\r_yn[10]~37\) # 
-- (GND)))))
-- \r_yn[11]~39\ = CARRY((\sign_inverter_INST_x|o_SI[11]~4_combout\ & (!r_yn(11) & !\r_yn[10]~37\)) # (!\sign_inverter_INST_x|o_SI[11]~4_combout\ & ((!\r_yn[10]~37\) # (!r_yn(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sign_inverter_INST_x|o_SI[11]~4_combout\,
	datab => r_yn(11),
	datad => VCC,
	cin => \r_yn[10]~37\,
	combout => \r_yn[11]~38_combout\,
	cout => \r_yn[11]~39\);

-- Location: FF_X70_Y69_N23
\r_yn[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \r_yn[11]~38_combout\,
	asdata => \~GND~combout\,
	sload => \state.run~q\,
	ena => \ALT_INV_state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_yn(11));

-- Location: LCCOMB_X70_Y68_N2
\bit_shift_INST_y|ShiftRight0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit_shift_INST_y|ShiftRight0~20_combout\ = (!\iteration_counter_INST|cnt\(1) & ((\iteration_counter_INST|cnt\(0) & (r_yn(12))) # (!\iteration_counter_INST|cnt\(0) & ((r_yn(11))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iteration_counter_INST|cnt\(1),
	datab => \iteration_counter_INST|cnt\(0),
	datac => r_yn(12),
	datad => r_yn(11),
	combout => \bit_shift_INST_y|ShiftRight0~20_combout\);

-- Location: LCCOMB_X70_Y68_N24
\bit_shift_INST_y|ShiftRight0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit_shift_INST_y|ShiftRight0~21_combout\ = (\bit_shift_INST_y|ShiftRight0~20_combout\) # ((\iteration_counter_INST|cnt\(1) & \bit_shift_INST_y|ShiftRight0~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iteration_counter_INST|cnt\(1),
	datac => \bit_shift_INST_y|ShiftRight0~15_combout\,
	datad => \bit_shift_INST_y|ShiftRight0~20_combout\,
	combout => \bit_shift_INST_y|ShiftRight0~21_combout\);

-- Location: LCCOMB_X67_Y68_N16
\bit_shift_INST_y|ShiftRight0~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit_shift_INST_y|ShiftRight0~66_combout\ = (\iteration_counter_INST|cnt\(2) & (r_yn(15))) # (!\iteration_counter_INST|cnt\(2) & ((\iteration_counter_INST|cnt\(3) & (r_yn(15))) # (!\iteration_counter_INST|cnt\(3) & 
-- ((\bit_shift_INST_y|ShiftRight0~21_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_yn(15),
	datab => \iteration_counter_INST|cnt\(2),
	datac => \bit_shift_INST_y|ShiftRight0~21_combout\,
	datad => \iteration_counter_INST|cnt\(3),
	combout => \bit_shift_INST_y|ShiftRight0~66_combout\);

-- Location: LCCOMB_X68_Y68_N24
\sign_inverter_INST_y|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \sign_inverter_INST_y|Add0~24_combout\ = (\bit_shift_INST_y|ShiftRight0~19_combout\ & (!\sign_inverter_INST_y|Add0~23\ & VCC)) # (!\bit_shift_INST_y|ShiftRight0~19_combout\ & (\sign_inverter_INST_y|Add0~23\ $ (GND)))
-- \sign_inverter_INST_y|Add0~25\ = CARRY((!\bit_shift_INST_y|ShiftRight0~19_combout\ & !\sign_inverter_INST_y|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bit_shift_INST_y|ShiftRight0~19_combout\,
	datad => VCC,
	cin => \sign_inverter_INST_y|Add0~23\,
	combout => \sign_inverter_INST_y|Add0~24_combout\,
	cout => \sign_inverter_INST_y|Add0~25\);

-- Location: LCCOMB_X69_Y71_N24
\sign_inverter_INST_y|o_SI[12]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \sign_inverter_INST_y|o_SI[12]~3_combout\ = (r_yn(15) & ((\bit_shift_INST_y|ShiftRight0~19_combout\) # ((!\sign_inverter_INST_z|Equal0~0_combout\ & \sign_inverter_INST_y|Add0~24_combout\)))) # (!r_yn(15) & (((!\sign_inverter_INST_z|Equal0~0_combout\ & 
-- \sign_inverter_INST_y|Add0~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_yn(15),
	datab => \bit_shift_INST_y|ShiftRight0~19_combout\,
	datac => \sign_inverter_INST_z|Equal0~0_combout\,
	datad => \sign_inverter_INST_y|Add0~24_combout\,
	combout => \sign_inverter_INST_y|o_SI[12]~3_combout\);

-- Location: LCCOMB_X68_Y71_N24
\r_xn[12]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_xn[12]~40_combout\ = ((r_xn(12) $ (\sign_inverter_INST_y|o_SI[12]~3_combout\ $ (\r_xn[11]~39\)))) # (GND)
-- \r_xn[12]~41\ = CARRY((r_xn(12) & ((!\r_xn[11]~39\) # (!\sign_inverter_INST_y|o_SI[12]~3_combout\))) # (!r_xn(12) & (!\sign_inverter_INST_y|o_SI[12]~3_combout\ & !\r_xn[11]~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_xn(12),
	datab => \sign_inverter_INST_y|o_SI[12]~3_combout\,
	datad => VCC,
	cin => \r_xn[11]~39\,
	combout => \r_xn[12]~40_combout\,
	cout => \r_xn[12]~41\);

-- Location: LCCOMB_X69_Y71_N6
\LUT_X_INST|o_LUT_X[12]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LUT_X_INST|o_LUT_X[12]~0_combout\ = !LUT_COUNTER(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => LUT_COUNTER(0),
	combout => \LUT_X_INST|o_LUT_X[12]~0_combout\);

-- Location: FF_X69_Y71_N7
\LUT_X_INST|o_LUT_X[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_mem_enable_X~clkctrl_outclk\,
	d => \LUT_X_INST|o_LUT_X[12]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LUT_X_INST|o_LUT_X\(12));

-- Location: FF_X68_Y71_N25
\r_xn[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \r_xn[12]~40_combout\,
	asdata => \LUT_X_INST|o_LUT_X\(12),
	sload => \state.run~q\,
	ena => \ALT_INV_state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_xn(12));

-- Location: LCCOMB_X69_Y67_N2
\bit_shift_INST_x|ShiftRight0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit_shift_INST_x|ShiftRight0~18_combout\ = (!\iteration_counter_INST|cnt\(0) & ((\iteration_counter_INST|cnt\(1) & ((r_xn(14)))) # (!\iteration_counter_INST|cnt\(1) & (r_xn(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iteration_counter_INST|cnt\(1),
	datab => \iteration_counter_INST|cnt\(0),
	datac => r_xn(12),
	datad => r_xn(14),
	combout => \bit_shift_INST_x|ShiftRight0~18_combout\);

-- Location: LCCOMB_X68_Y67_N0
\bit_shift_INST_x|ShiftRight0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit_shift_INST_x|ShiftRight0~19_combout\ = (\LUT_16_INST|rom~14_combout\ & (((\bit_shift_INST_x|ShiftRight0~17_combout\) # (\bit_shift_INST_x|ShiftRight0~18_combout\)))) # (!\LUT_16_INST|rom~14_combout\ & (r_xn(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LUT_16_INST|rom~14_combout\,
	datab => r_xn(15),
	datac => \bit_shift_INST_x|ShiftRight0~17_combout\,
	datad => \bit_shift_INST_x|ShiftRight0~18_combout\,
	combout => \bit_shift_INST_x|ShiftRight0~19_combout\);

-- Location: LCCOMB_X68_Y69_N24
\sign_inverter_INST_x|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \sign_inverter_INST_x|Add0~24_combout\ = (\bit_shift_INST_x|ShiftRight0~19_combout\ & (!\sign_inverter_INST_x|Add0~23\ & VCC)) # (!\bit_shift_INST_x|ShiftRight0~19_combout\ & (\sign_inverter_INST_x|Add0~23\ $ (GND)))
-- \sign_inverter_INST_x|Add0~25\ = CARRY((!\bit_shift_INST_x|ShiftRight0~19_combout\ & !\sign_inverter_INST_x|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bit_shift_INST_x|ShiftRight0~19_combout\,
	datad => VCC,
	cin => \sign_inverter_INST_x|Add0~23\,
	combout => \sign_inverter_INST_x|Add0~24_combout\,
	cout => \sign_inverter_INST_x|Add0~25\);

-- Location: LCCOMB_X72_Y69_N22
\sign_inverter_INST_x|o_SI[12]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \sign_inverter_INST_x|o_SI[12]~3_combout\ = (\sign_inverter_INST_z|Equal0~0_combout\ & (\bit_shift_INST_x|ShiftRight0~19_combout\ & (r_yn(15)))) # (!\sign_inverter_INST_z|Equal0~0_combout\ & ((\sign_inverter_INST_x|Add0~24_combout\) # 
-- ((\bit_shift_INST_x|ShiftRight0~19_combout\ & r_yn(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sign_inverter_INST_z|Equal0~0_combout\,
	datab => \bit_shift_INST_x|ShiftRight0~19_combout\,
	datac => r_yn(15),
	datad => \sign_inverter_INST_x|Add0~24_combout\,
	combout => \sign_inverter_INST_x|o_SI[12]~3_combout\);

-- Location: LCCOMB_X70_Y69_N24
\r_yn[12]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_yn[12]~40_combout\ = ((\sign_inverter_INST_x|o_SI[12]~3_combout\ $ (r_yn(12) $ (!\r_yn[11]~39\)))) # (GND)
-- \r_yn[12]~41\ = CARRY((\sign_inverter_INST_x|o_SI[12]~3_combout\ & ((r_yn(12)) # (!\r_yn[11]~39\))) # (!\sign_inverter_INST_x|o_SI[12]~3_combout\ & (r_yn(12) & !\r_yn[11]~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sign_inverter_INST_x|o_SI[12]~3_combout\,
	datab => r_yn(12),
	datad => VCC,
	cin => \r_yn[11]~39\,
	combout => \r_yn[12]~40_combout\,
	cout => \r_yn[12]~41\);

-- Location: FF_X70_Y69_N25
\r_yn[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \r_yn[12]~40_combout\,
	asdata => \LUT_Y_INST|o_LUT_Y\(12),
	sload => \state.run~q\,
	ena => \ALT_INV_state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_yn(12));

-- Location: LCCOMB_X69_Y70_N26
\bit_shift_INST_y|ShiftRight0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit_shift_INST_y|ShiftRight0~18_combout\ = (!\iteration_counter_INST|cnt\(0) & ((\iteration_counter_INST|cnt\(1) & (r_yn(14))) # (!\iteration_counter_INST|cnt\(1) & ((r_yn(12))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iteration_counter_INST|cnt\(1),
	datab => r_yn(14),
	datac => r_yn(12),
	datad => \iteration_counter_INST|cnt\(0),
	combout => \bit_shift_INST_y|ShiftRight0~18_combout\);

-- Location: LCCOMB_X69_Y70_N0
\bit_shift_INST_y|ShiftRight0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit_shift_INST_y|ShiftRight0~19_combout\ = (\LUT_16_INST|rom~14_combout\ & ((\bit_shift_INST_y|ShiftRight0~18_combout\) # ((\bit_shift_INST_y|ShiftRight0~17_combout\)))) # (!\LUT_16_INST|rom~14_combout\ & (((r_yn(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit_shift_INST_y|ShiftRight0~18_combout\,
	datab => \bit_shift_INST_y|ShiftRight0~17_combout\,
	datac => \LUT_16_INST|rom~14_combout\,
	datad => r_yn(15),
	combout => \bit_shift_INST_y|ShiftRight0~19_combout\);

-- Location: LCCOMB_X68_Y68_N26
\sign_inverter_INST_y|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \sign_inverter_INST_y|Add0~26_combout\ = (\bit_shift_INST_y|ShiftRight0~16_combout\ & ((\sign_inverter_INST_y|Add0~25\) # (GND))) # (!\bit_shift_INST_y|ShiftRight0~16_combout\ & (!\sign_inverter_INST_y|Add0~25\))
-- \sign_inverter_INST_y|Add0~27\ = CARRY((\bit_shift_INST_y|ShiftRight0~16_combout\) # (!\sign_inverter_INST_y|Add0~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bit_shift_INST_y|ShiftRight0~16_combout\,
	datad => VCC,
	cin => \sign_inverter_INST_y|Add0~25\,
	combout => \sign_inverter_INST_y|Add0~26_combout\,
	cout => \sign_inverter_INST_y|Add0~27\);

-- Location: LCCOMB_X67_Y68_N4
\sign_inverter_INST_y|o_SI[13]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sign_inverter_INST_y|o_SI[13]~2_combout\ = (\sign_inverter_INST_z|Equal0~0_combout\ & (\bit_shift_INST_y|ShiftRight0~16_combout\ & (r_yn(15)))) # (!\sign_inverter_INST_z|Equal0~0_combout\ & ((\sign_inverter_INST_y|Add0~26_combout\) # 
-- ((\bit_shift_INST_y|ShiftRight0~16_combout\ & r_yn(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sign_inverter_INST_z|Equal0~0_combout\,
	datab => \bit_shift_INST_y|ShiftRight0~16_combout\,
	datac => r_yn(15),
	datad => \sign_inverter_INST_y|Add0~26_combout\,
	combout => \sign_inverter_INST_y|o_SI[13]~2_combout\);

-- Location: LCCOMB_X68_Y71_N26
\r_xn[13]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_xn[13]~42_combout\ = (\sign_inverter_INST_y|o_SI[13]~2_combout\ & ((r_xn(13) & (!\r_xn[12]~41\)) # (!r_xn(13) & ((\r_xn[12]~41\) # (GND))))) # (!\sign_inverter_INST_y|o_SI[13]~2_combout\ & ((r_xn(13) & (\r_xn[12]~41\ & VCC)) # (!r_xn(13) & 
-- (!\r_xn[12]~41\))))
-- \r_xn[13]~43\ = CARRY((\sign_inverter_INST_y|o_SI[13]~2_combout\ & ((!\r_xn[12]~41\) # (!r_xn(13)))) # (!\sign_inverter_INST_y|o_SI[13]~2_combout\ & (!r_xn(13) & !\r_xn[12]~41\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sign_inverter_INST_y|o_SI[13]~2_combout\,
	datab => r_xn(13),
	datad => VCC,
	cin => \r_xn[12]~41\,
	combout => \r_xn[13]~42_combout\,
	cout => \r_xn[13]~43\);

-- Location: FF_X68_Y71_N27
\r_xn[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \r_xn[13]~42_combout\,
	asdata => \~GND~combout\,
	sload => \state.run~q\,
	ena => \ALT_INV_state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_xn(13));

-- Location: LCCOMB_X69_Y69_N28
\bit_shift_INST_x|ShiftRight0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit_shift_INST_x|ShiftRight0~14_combout\ = (\iteration_counter_INST|cnt\(0) & (r_xn(14))) # (!\iteration_counter_INST|cnt\(0) & ((r_xn(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iteration_counter_INST|cnt\(0),
	datab => r_xn(14),
	datad => r_xn(13),
	combout => \bit_shift_INST_x|ShiftRight0~14_combout\);

-- Location: LCCOMB_X67_Y69_N28
\bit_shift_INST_x|ShiftRight0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit_shift_INST_x|ShiftRight0~16_combout\ = (\bit_shift_INST_x|ShiftRight0~15_combout\ & (r_xn(15))) # (!\bit_shift_INST_x|ShiftRight0~15_combout\ & ((\iteration_counter_INST|cnt\(3) & (r_xn(15))) # (!\iteration_counter_INST|cnt\(3) & 
-- ((\bit_shift_INST_x|ShiftRight0~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_xn(15),
	datab => \bit_shift_INST_x|ShiftRight0~15_combout\,
	datac => \bit_shift_INST_x|ShiftRight0~14_combout\,
	datad => \iteration_counter_INST|cnt\(3),
	combout => \bit_shift_INST_x|ShiftRight0~16_combout\);

-- Location: LCCOMB_X68_Y69_N26
\sign_inverter_INST_x|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \sign_inverter_INST_x|Add0~26_combout\ = (\bit_shift_INST_x|ShiftRight0~16_combout\ & ((\sign_inverter_INST_x|Add0~25\) # (GND))) # (!\bit_shift_INST_x|ShiftRight0~16_combout\ & (!\sign_inverter_INST_x|Add0~25\))
-- \sign_inverter_INST_x|Add0~27\ = CARRY((\bit_shift_INST_x|ShiftRight0~16_combout\) # (!\sign_inverter_INST_x|Add0~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bit_shift_INST_x|ShiftRight0~16_combout\,
	datad => VCC,
	cin => \sign_inverter_INST_x|Add0~25\,
	combout => \sign_inverter_INST_x|Add0~26_combout\,
	cout => \sign_inverter_INST_x|Add0~27\);

-- Location: LCCOMB_X67_Y69_N12
\sign_inverter_INST_x|o_SI[13]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sign_inverter_INST_x|o_SI[13]~2_combout\ = (r_yn(15) & ((\bit_shift_INST_x|ShiftRight0~16_combout\) # ((!\sign_inverter_INST_z|Equal0~0_combout\ & \sign_inverter_INST_x|Add0~26_combout\)))) # (!r_yn(15) & (((!\sign_inverter_INST_z|Equal0~0_combout\ & 
-- \sign_inverter_INST_x|Add0~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_yn(15),
	datab => \bit_shift_INST_x|ShiftRight0~16_combout\,
	datac => \sign_inverter_INST_z|Equal0~0_combout\,
	datad => \sign_inverter_INST_x|Add0~26_combout\,
	combout => \sign_inverter_INST_x|o_SI[13]~2_combout\);

-- Location: LCCOMB_X70_Y69_N26
\r_yn[13]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_yn[13]~42_combout\ = (r_yn(13) & ((\sign_inverter_INST_x|o_SI[13]~2_combout\ & (\r_yn[12]~41\ & VCC)) # (!\sign_inverter_INST_x|o_SI[13]~2_combout\ & (!\r_yn[12]~41\)))) # (!r_yn(13) & ((\sign_inverter_INST_x|o_SI[13]~2_combout\ & (!\r_yn[12]~41\)) # 
-- (!\sign_inverter_INST_x|o_SI[13]~2_combout\ & ((\r_yn[12]~41\) # (GND)))))
-- \r_yn[13]~43\ = CARRY((r_yn(13) & (!\sign_inverter_INST_x|o_SI[13]~2_combout\ & !\r_yn[12]~41\)) # (!r_yn(13) & ((!\r_yn[12]~41\) # (!\sign_inverter_INST_x|o_SI[13]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_yn(13),
	datab => \sign_inverter_INST_x|o_SI[13]~2_combout\,
	datad => VCC,
	cin => \r_yn[12]~41\,
	combout => \r_yn[13]~42_combout\,
	cout => \r_yn[13]~43\);

-- Location: FF_X70_Y69_N27
\r_yn[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \r_yn[13]~42_combout\,
	asdata => \LUT_Y_INST|o_LUT_Y\(12),
	sload => \state.run~q\,
	ena => \ALT_INV_state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_yn(13));

-- Location: LCCOMB_X70_Y68_N4
\bit_shift_INST_y|ShiftRight0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit_shift_INST_y|ShiftRight0~15_combout\ = (\iteration_counter_INST|cnt\(0) & (r_yn(14))) # (!\iteration_counter_INST|cnt\(0) & ((r_yn(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_yn(14),
	datac => r_yn(13),
	datad => \iteration_counter_INST|cnt\(0),
	combout => \bit_shift_INST_y|ShiftRight0~15_combout\);

-- Location: LCCOMB_X67_Y68_N28
\bit_shift_INST_y|ShiftRight0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit_shift_INST_y|ShiftRight0~16_combout\ = (\iteration_counter_INST|cnt\(3) & (r_yn(15))) # (!\iteration_counter_INST|cnt\(3) & ((\bit_shift_INST_x|ShiftRight0~15_combout\ & (r_yn(15))) # (!\bit_shift_INST_x|ShiftRight0~15_combout\ & 
-- ((\bit_shift_INST_y|ShiftRight0~15_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iteration_counter_INST|cnt\(3),
	datab => r_yn(15),
	datac => \bit_shift_INST_x|ShiftRight0~15_combout\,
	datad => \bit_shift_INST_y|ShiftRight0~15_combout\,
	combout => \bit_shift_INST_y|ShiftRight0~16_combout\);

-- Location: LCCOMB_X68_Y68_N28
\sign_inverter_INST_y|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \sign_inverter_INST_y|Add0~28_combout\ = (\bit_shift_INST_y|ShiftRight0~14_combout\ & (!\sign_inverter_INST_y|Add0~27\ & VCC)) # (!\bit_shift_INST_y|ShiftRight0~14_combout\ & (\sign_inverter_INST_y|Add0~27\ $ (GND)))
-- \sign_inverter_INST_y|Add0~29\ = CARRY((!\bit_shift_INST_y|ShiftRight0~14_combout\ & !\sign_inverter_INST_y|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bit_shift_INST_y|ShiftRight0~14_combout\,
	datad => VCC,
	cin => \sign_inverter_INST_y|Add0~27\,
	combout => \sign_inverter_INST_y|Add0~28_combout\,
	cout => \sign_inverter_INST_y|Add0~29\);

-- Location: LCCOMB_X67_Y68_N18
\sign_inverter_INST_y|o_SI[14]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sign_inverter_INST_y|o_SI[14]~1_combout\ = (\sign_inverter_INST_z|Equal0~0_combout\ & (\bit_shift_INST_y|ShiftRight0~14_combout\ & (r_yn(15)))) # (!\sign_inverter_INST_z|Equal0~0_combout\ & ((\sign_inverter_INST_y|Add0~28_combout\) # 
-- ((\bit_shift_INST_y|ShiftRight0~14_combout\ & r_yn(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sign_inverter_INST_z|Equal0~0_combout\,
	datab => \bit_shift_INST_y|ShiftRight0~14_combout\,
	datac => r_yn(15),
	datad => \sign_inverter_INST_y|Add0~28_combout\,
	combout => \sign_inverter_INST_y|o_SI[14]~1_combout\);

-- Location: LCCOMB_X68_Y71_N28
\r_xn[14]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_xn[14]~44_combout\ = ((\sign_inverter_INST_y|o_SI[14]~1_combout\ $ (r_xn(14) $ (\r_xn[13]~43\)))) # (GND)
-- \r_xn[14]~45\ = CARRY((\sign_inverter_INST_y|o_SI[14]~1_combout\ & (r_xn(14) & !\r_xn[13]~43\)) # (!\sign_inverter_INST_y|o_SI[14]~1_combout\ & ((r_xn(14)) # (!\r_xn[13]~43\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sign_inverter_INST_y|o_SI[14]~1_combout\,
	datab => r_xn(14),
	datad => VCC,
	cin => \r_xn[13]~43\,
	combout => \r_xn[14]~44_combout\,
	cout => \r_xn[14]~45\);

-- Location: FF_X68_Y71_N29
\r_xn[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \r_xn[14]~44_combout\,
	asdata => \~GND~combout\,
	sload => \state.run~q\,
	ena => \ALT_INV_state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_xn(14));

-- Location: LCCOMB_X72_Y69_N20
\bit_shift_INST_x|ShiftRight0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit_shift_INST_x|ShiftRight0~13_combout\ = (\iteration_counter_INST|cnt\(3) & (((r_xn(15))))) # (!\iteration_counter_INST|cnt\(3) & ((\bit_shift_INST_x|ShiftRight0~12_combout\ & ((r_xn(15)))) # (!\bit_shift_INST_x|ShiftRight0~12_combout\ & (r_xn(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_xn(14),
	datab => r_xn(15),
	datac => \iteration_counter_INST|cnt\(3),
	datad => \bit_shift_INST_x|ShiftRight0~12_combout\,
	combout => \bit_shift_INST_x|ShiftRight0~13_combout\);

-- Location: LCCOMB_X68_Y69_N28
\sign_inverter_INST_x|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \sign_inverter_INST_x|Add0~28_combout\ = (\bit_shift_INST_x|ShiftRight0~13_combout\ & (!\sign_inverter_INST_x|Add0~27\ & VCC)) # (!\bit_shift_INST_x|ShiftRight0~13_combout\ & (\sign_inverter_INST_x|Add0~27\ $ (GND)))
-- \sign_inverter_INST_x|Add0~29\ = CARRY((!\bit_shift_INST_x|ShiftRight0~13_combout\ & !\sign_inverter_INST_x|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bit_shift_INST_x|ShiftRight0~13_combout\,
	datad => VCC,
	cin => \sign_inverter_INST_x|Add0~27\,
	combout => \sign_inverter_INST_x|Add0~28_combout\,
	cout => \sign_inverter_INST_x|Add0~29\);

-- Location: LCCOMB_X72_Y69_N8
\sign_inverter_INST_x|o_SI[14]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sign_inverter_INST_x|o_SI[14]~1_combout\ = (\sign_inverter_INST_z|Equal0~0_combout\ & (\bit_shift_INST_x|ShiftRight0~13_combout\ & (r_yn(15)))) # (!\sign_inverter_INST_z|Equal0~0_combout\ & ((\sign_inverter_INST_x|Add0~28_combout\) # 
-- ((\bit_shift_INST_x|ShiftRight0~13_combout\ & r_yn(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sign_inverter_INST_z|Equal0~0_combout\,
	datab => \bit_shift_INST_x|ShiftRight0~13_combout\,
	datac => r_yn(15),
	datad => \sign_inverter_INST_x|Add0~28_combout\,
	combout => \sign_inverter_INST_x|o_SI[14]~1_combout\);

-- Location: LCCOMB_X70_Y69_N28
\r_yn[14]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_yn[14]~44_combout\ = ((r_yn(14) $ (\sign_inverter_INST_x|o_SI[14]~1_combout\ $ (!\r_yn[13]~43\)))) # (GND)
-- \r_yn[14]~45\ = CARRY((r_yn(14) & ((\sign_inverter_INST_x|o_SI[14]~1_combout\) # (!\r_yn[13]~43\))) # (!r_yn(14) & (\sign_inverter_INST_x|o_SI[14]~1_combout\ & !\r_yn[13]~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_yn(14),
	datab => \sign_inverter_INST_x|o_SI[14]~1_combout\,
	datad => VCC,
	cin => \r_yn[13]~43\,
	combout => \r_yn[14]~44_combout\,
	cout => \r_yn[14]~45\);

-- Location: FF_X70_Y69_N29
\r_yn[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \r_yn[14]~44_combout\,
	asdata => \~GND~combout\,
	sload => \state.run~q\,
	ena => \ALT_INV_state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_yn(14));

-- Location: LCCOMB_X67_Y68_N2
\bit_shift_INST_y|ShiftRight0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit_shift_INST_y|ShiftRight0~14_combout\ = (\iteration_counter_INST|cnt\(3) & (r_yn(15))) # (!\iteration_counter_INST|cnt\(3) & ((\bit_shift_INST_x|ShiftRight0~12_combout\ & (r_yn(15))) # (!\bit_shift_INST_x|ShiftRight0~12_combout\ & ((r_yn(14))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iteration_counter_INST|cnt\(3),
	datab => r_yn(15),
	datac => r_yn(14),
	datad => \bit_shift_INST_x|ShiftRight0~12_combout\,
	combout => \bit_shift_INST_y|ShiftRight0~14_combout\);

-- Location: LCCOMB_X68_Y68_N30
\sign_inverter_INST_y|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \sign_inverter_INST_y|Add0~30_combout\ = r_yn(15) $ (!\sign_inverter_INST_y|Add0~29\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => r_yn(15),
	cin => \sign_inverter_INST_y|Add0~29\,
	combout => \sign_inverter_INST_y|Add0~30_combout\);

-- Location: LCCOMB_X67_Y71_N14
\sign_inverter_INST_y|o_SI[15]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sign_inverter_INST_y|o_SI[15]~0_combout\ = (r_yn(15)) # ((\sign_inverter_INST_y|Add0~30_combout\ & !\sign_inverter_INST_z|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => r_yn(15),
	datac => \sign_inverter_INST_y|Add0~30_combout\,
	datad => \sign_inverter_INST_z|Equal0~0_combout\,
	combout => \sign_inverter_INST_y|o_SI[15]~0_combout\);

-- Location: LCCOMB_X68_Y71_N30
\r_xn[15]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_xn[15]~46_combout\ = r_xn(15) $ (\r_xn[14]~45\ $ (!\sign_inverter_INST_y|o_SI[15]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_xn(15),
	datad => \sign_inverter_INST_y|o_SI[15]~0_combout\,
	cin => \r_xn[14]~45\,
	combout => \r_xn[15]~46_combout\);

-- Location: FF_X68_Y71_N31
\r_xn[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \r_xn[15]~46_combout\,
	asdata => \~GND~combout\,
	sload => \state.run~q\,
	ena => \ALT_INV_state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_xn(15));

-- Location: LCCOMB_X68_Y70_N30
\bit_shift_INST_x|ShiftRight0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit_shift_INST_x|ShiftRight0~26_combout\ = (\iteration_counter_INST|cnt\(3) & (r_xn(15))) # (!\iteration_counter_INST|cnt\(3) & ((\bit_shift_INST_x|ShiftRight0~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iteration_counter_INST|cnt\(3),
	datac => r_xn(15),
	datad => \bit_shift_INST_x|ShiftRight0~25_combout\,
	combout => \bit_shift_INST_x|ShiftRight0~26_combout\);

-- Location: LCCOMB_X67_Y69_N14
\sign_inverter_INST_x|o_SI[10]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \sign_inverter_INST_x|o_SI[10]~5_combout\ = (r_yn(15) & ((\bit_shift_INST_x|ShiftRight0~26_combout\) # ((!\sign_inverter_INST_z|Equal0~0_combout\ & \sign_inverter_INST_x|Add0~20_combout\)))) # (!r_yn(15) & (!\sign_inverter_INST_z|Equal0~0_combout\ & 
-- (\sign_inverter_INST_x|Add0~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_yn(15),
	datab => \sign_inverter_INST_z|Equal0~0_combout\,
	datac => \sign_inverter_INST_x|Add0~20_combout\,
	datad => \bit_shift_INST_x|ShiftRight0~26_combout\,
	combout => \sign_inverter_INST_x|o_SI[10]~5_combout\);

-- Location: FF_X70_Y69_N21
\r_yn[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \r_yn[10]~36_combout\,
	asdata => VCC,
	sload => \state.run~q\,
	ena => \ALT_INV_state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_yn(10));

-- Location: LCCOMB_X70_Y68_N22
\bit_shift_INST_y|ShiftRight0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit_shift_INST_y|ShiftRight0~24_combout\ = (!\iteration_counter_INST|cnt\(0) & ((\iteration_counter_INST|cnt\(1) & ((r_yn(12)))) # (!\iteration_counter_INST|cnt\(1) & (r_yn(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iteration_counter_INST|cnt\(1),
	datab => r_yn(10),
	datac => r_yn(12),
	datad => \iteration_counter_INST|cnt\(0),
	combout => \bit_shift_INST_y|ShiftRight0~24_combout\);

-- Location: LCCOMB_X70_Y68_N10
\bit_shift_INST_y|ShiftRight0~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit_shift_INST_y|ShiftRight0~71_combout\ = (!\iteration_counter_INST|cnt\(3) & (\iteration_counter_INST|cnt\(2) & ((\bit_shift_INST_y|ShiftRight0~24_combout\) # (\bit_shift_INST_y|ShiftRight0~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iteration_counter_INST|cnt\(3),
	datab => \iteration_counter_INST|cnt\(2),
	datac => \bit_shift_INST_y|ShiftRight0~24_combout\,
	datad => \bit_shift_INST_y|ShiftRight0~23_combout\,
	combout => \bit_shift_INST_y|ShiftRight0~71_combout\);

-- Location: LCCOMB_X69_Y68_N22
\bit_shift_INST_y|ShiftRight0~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit_shift_INST_y|ShiftRight0~37_combout\ = (\iteration_counter_INST|cnt\(3) & ((\bit_shift_INST_x|ShiftRight0~12_combout\ & ((r_yn(15)))) # (!\bit_shift_INST_x|ShiftRight0~12_combout\ & (r_yn(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_yn(14),
	datab => \iteration_counter_INST|cnt\(3),
	datac => r_yn(15),
	datad => \bit_shift_INST_x|ShiftRight0~12_combout\,
	combout => \bit_shift_INST_y|ShiftRight0~37_combout\);

-- Location: LCCOMB_X69_Y68_N26
\bit_shift_INST_y|ShiftRight0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit_shift_INST_y|ShiftRight0~40_combout\ = (\bit_shift_INST_y|ShiftRight0~71_combout\) # ((\bit_shift_INST_y|ShiftRight0~37_combout\) # ((\LUT_16_INST|rom~14_combout\ & \bit_shift_INST_y|ShiftRight0~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit_shift_INST_y|ShiftRight0~71_combout\,
	datab => \LUT_16_INST|rom~14_combout\,
	datac => \bit_shift_INST_y|ShiftRight0~37_combout\,
	datad => \bit_shift_INST_y|ShiftRight0~39_combout\,
	combout => \bit_shift_INST_y|ShiftRight0~40_combout\);

-- Location: LCCOMB_X69_Y68_N14
\sign_inverter_INST_y|o_SI[6]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \sign_inverter_INST_y|o_SI[6]~9_combout\ = (\sign_inverter_INST_z|Equal0~0_combout\ & (r_yn(15) & (\bit_shift_INST_y|ShiftRight0~40_combout\))) # (!\sign_inverter_INST_z|Equal0~0_combout\ & ((\sign_inverter_INST_y|Add0~12_combout\) # ((r_yn(15) & 
-- \bit_shift_INST_y|ShiftRight0~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sign_inverter_INST_z|Equal0~0_combout\,
	datab => r_yn(15),
	datac => \bit_shift_INST_y|ShiftRight0~40_combout\,
	datad => \sign_inverter_INST_y|Add0~12_combout\,
	combout => \sign_inverter_INST_y|o_SI[6]~9_combout\);

-- Location: FF_X68_Y71_N13
\r_xn[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \r_xn[6]~28_combout\,
	asdata => VCC,
	sload => \state.run~q\,
	ena => \ALT_INV_state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_xn(6));

-- Location: LCCOMB_X72_Y69_N30
\bit_shift_INST_x|ShiftRight0~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit_shift_INST_x|ShiftRight0~45_combout\ = (\iteration_counter_INST|cnt\(0) & (r_xn(6))) # (!\iteration_counter_INST|cnt\(0) & ((r_xn(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => r_xn(6),
	datac => \iteration_counter_INST|cnt\(0),
	datad => r_xn(5),
	combout => \bit_shift_INST_x|ShiftRight0~45_combout\);

-- Location: LCCOMB_X68_Y70_N22
\bit_shift_INST_x|ShiftRight0~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit_shift_INST_x|ShiftRight0~55_combout\ = (\iteration_counter_INST|cnt\(2) & (r_xn(15))) # (!\iteration_counter_INST|cnt\(2) & ((\bit_shift_INST_x|ShiftRight0~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iteration_counter_INST|cnt\(2),
	datac => r_xn(15),
	datad => \bit_shift_INST_x|ShiftRight0~21_combout\,
	combout => \bit_shift_INST_x|ShiftRight0~55_combout\);

-- Location: LCCOMB_X68_Y70_N20
\bit_shift_INST_x|ShiftRight0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit_shift_INST_x|ShiftRight0~54_combout\ = (\bit_shift_INST_y|ShiftRight0~12_combout\ & (!\LUT_16_INST|rom~14_combout\)) # (!\bit_shift_INST_y|ShiftRight0~12_combout\ & ((\LUT_16_INST|rom~14_combout\ & ((\bit_shift_INST_x|ShiftRight0~53_combout\))) # 
-- (!\LUT_16_INST|rom~14_combout\ & (\bit_shift_INST_x|ShiftRight0~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit_shift_INST_y|ShiftRight0~12_combout\,
	datab => \LUT_16_INST|rom~14_combout\,
	datac => \bit_shift_INST_x|ShiftRight0~37_combout\,
	datad => \bit_shift_INST_x|ShiftRight0~53_combout\,
	combout => \bit_shift_INST_x|ShiftRight0~54_combout\);

-- Location: LCCOMB_X68_Y70_N8
\bit_shift_INST_x|ShiftRight0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit_shift_INST_x|ShiftRight0~56_combout\ = (\bit_shift_INST_y|ShiftRight0~12_combout\ & ((\bit_shift_INST_x|ShiftRight0~54_combout\ & ((\bit_shift_INST_x|ShiftRight0~55_combout\))) # (!\bit_shift_INST_x|ShiftRight0~54_combout\ & 
-- (\bit_shift_INST_x|ShiftRight0~45_combout\)))) # (!\bit_shift_INST_y|ShiftRight0~12_combout\ & (((\bit_shift_INST_x|ShiftRight0~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit_shift_INST_x|ShiftRight0~45_combout\,
	datab => \bit_shift_INST_y|ShiftRight0~12_combout\,
	datac => \bit_shift_INST_x|ShiftRight0~55_combout\,
	datad => \bit_shift_INST_x|ShiftRight0~54_combout\,
	combout => \bit_shift_INST_x|ShiftRight0~56_combout\);

-- Location: LCCOMB_X69_Y69_N20
\sign_inverter_INST_x|o_SI[3]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \sign_inverter_INST_x|o_SI[3]~12_combout\ = (r_yn(15) & ((\bit_shift_INST_x|ShiftRight0~56_combout\) # ((!\sign_inverter_INST_z|Equal0~0_combout\ & \sign_inverter_INST_x|Add0~6_combout\)))) # (!r_yn(15) & (((!\sign_inverter_INST_z|Equal0~0_combout\ & 
-- \sign_inverter_INST_x|Add0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_yn(15),
	datab => \bit_shift_INST_x|ShiftRight0~56_combout\,
	datac => \sign_inverter_INST_z|Equal0~0_combout\,
	datad => \sign_inverter_INST_x|Add0~6_combout\,
	combout => \sign_inverter_INST_x|o_SI[3]~12_combout\);

-- Location: FF_X70_Y69_N7
\r_yn[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \r_yn[3]~22_combout\,
	asdata => \LUT_Y_INST|o_LUT_Y\(12),
	sload => \state.run~q\,
	ena => \ALT_INV_state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_yn(3));

-- Location: LCCOMB_X70_Y67_N12
\Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (!r_yn(3) & (!r_yn(0) & (!r_yn(1) & !r_yn(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_yn(3),
	datab => r_yn(0),
	datac => r_yn(1),
	datad => r_yn(2),
	combout => \Equal1~0_combout\);

-- Location: LCCOMB_X70_Y67_N22
\Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = (!r_yn(6) & (!r_yn(5) & (!r_yn(7) & !r_yn(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_yn(6),
	datab => r_yn(5),
	datac => r_yn(7),
	datad => r_yn(4),
	combout => \Equal1~1_combout\);

-- Location: LCCOMB_X70_Y67_N28
\Equal1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~2_combout\ = (!r_yn(8) & (!r_yn(10) & (!r_yn(9) & !r_yn(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_yn(8),
	datab => r_yn(10),
	datac => r_yn(9),
	datad => r_yn(11),
	combout => \Equal1~2_combout\);

-- Location: LCCOMB_X70_Y67_N18
\Equal1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~3_combout\ = (!r_yn(14) & (!r_yn(13) & (!r_yn(12) & \Equal1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_yn(14),
	datab => r_yn(13),
	datac => r_yn(12),
	datad => \Equal1~2_combout\,
	combout => \Equal1~3_combout\);

-- Location: LCCOMB_X70_Y67_N16
\sign_inverter_INST_z|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sign_inverter_INST_z|Equal0~0_combout\ = (r_yn(15)) # ((\Equal1~0_combout\ & (\Equal1~1_combout\ & \Equal1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~0_combout\,
	datab => r_yn(15),
	datac => \Equal1~1_combout\,
	datad => \Equal1~3_combout\,
	combout => \sign_inverter_INST_z|Equal0~0_combout\);

-- Location: LCCOMB_X68_Y69_N30
\sign_inverter_INST_x|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \sign_inverter_INST_x|Add0~30_combout\ = r_xn(15) $ (!\sign_inverter_INST_x|Add0~29\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_xn(15),
	cin => \sign_inverter_INST_x|Add0~29\,
	combout => \sign_inverter_INST_x|Add0~30_combout\);

-- Location: LCCOMB_X72_Y69_N10
\sign_inverter_INST_x|o_SI[15]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sign_inverter_INST_x|o_SI[15]~0_combout\ = (\sign_inverter_INST_z|Equal0~0_combout\ & (r_xn(15) & ((r_yn(15))))) # (!\sign_inverter_INST_z|Equal0~0_combout\ & ((\sign_inverter_INST_x|Add0~30_combout\) # ((r_xn(15) & r_yn(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sign_inverter_INST_z|Equal0~0_combout\,
	datab => r_xn(15),
	datac => \sign_inverter_INST_x|Add0~30_combout\,
	datad => r_yn(15),
	combout => \sign_inverter_INST_x|o_SI[15]~0_combout\);

-- Location: LCCOMB_X70_Y69_N30
\r_yn[15]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_yn[15]~46_combout\ = r_yn(15) $ (\r_yn[14]~45\ $ (\sign_inverter_INST_x|o_SI[15]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_yn(15),
	datad => \sign_inverter_INST_x|o_SI[15]~0_combout\,
	cin => \r_yn[14]~45\,
	combout => \r_yn[15]~46_combout\);

-- Location: FF_X70_Y69_N31
\r_yn[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \r_yn[15]~46_combout\,
	asdata => \~GND~combout\,
	sload => \state.run~q\,
	ena => \ALT_INV_state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_yn(15));

-- Location: LCCOMB_X67_Y71_N0
\sign_inverter_INST_z|o_SI[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sign_inverter_INST_z|o_SI[0]~0_combout\ = (\LUT_16_INST|rom~0_combout\ & ((r_yn(15)) # (!\sign_inverter_INST_z|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LUT_16_INST|rom~0_combout\,
	datac => r_yn(15),
	datad => \sign_inverter_INST_z|Equal0~0_combout\,
	combout => \sign_inverter_INST_z|o_SI[0]~0_combout\);

-- Location: LCCOMB_X66_Y69_N0
\Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~0_combout\ = (r_zn(0) & ((GND) # (!\sign_inverter_INST_z|o_SI[0]~0_combout\))) # (!r_zn(0) & (\sign_inverter_INST_z|o_SI[0]~0_combout\ $ (GND)))
-- \Add2~1\ = CARRY((r_zn(0)) # (!\sign_inverter_INST_z|o_SI[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_zn(0),
	datab => \sign_inverter_INST_z|o_SI[0]~0_combout\,
	datad => VCC,
	combout => \Add2~0_combout\,
	cout => \Add2~1\);

-- Location: FF_X66_Y69_N1
\r_zd[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \Add2~0_combout\,
	ena => \state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_zd(0));

-- Location: LCCOMB_X65_Y69_N26
\Selector53~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector53~0_combout\ = (\state.done~q\ & ((r_zn(1)) # ((!\state.run~q\ & \Add2~2_combout\)))) # (!\state.done~q\ & (!\state.run~q\ & ((\Add2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.done~q\,
	datab => \state.run~q\,
	datac => r_zn(1),
	datad => \Add2~2_combout\,
	combout => \Selector53~0_combout\);

-- Location: FF_X65_Y69_N27
\r_zn[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \Selector53~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_zn(1));

-- Location: LCCOMB_X67_Y67_N24
\LUT_16_INST|rom~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LUT_16_INST|rom~1_combout\ = (\iteration_counter_INST|cnt\(1) & (!\iteration_counter_INST|cnt\(3) & (!\iteration_counter_INST|cnt\(2) & !\iteration_counter_INST|cnt\(0)))) # (!\iteration_counter_INST|cnt\(1) & (\iteration_counter_INST|cnt\(2) & 
-- (\iteration_counter_INST|cnt\(3) $ (!\iteration_counter_INST|cnt\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iteration_counter_INST|cnt\(1),
	datab => \iteration_counter_INST|cnt\(3),
	datac => \iteration_counter_INST|cnt\(2),
	datad => \iteration_counter_INST|cnt\(0),
	combout => \LUT_16_INST|rom~1_combout\);

-- Location: LCCOMB_X66_Y70_N0
\sign_inverter_INST_z|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sign_inverter_INST_z|Add0~1_cout\ = CARRY(!\LUT_16_INST|rom~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LUT_16_INST|rom~0_combout\,
	datad => VCC,
	cout => \sign_inverter_INST_z|Add0~1_cout\);

-- Location: LCCOMB_X66_Y70_N2
\sign_inverter_INST_z|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sign_inverter_INST_z|Add0~2_combout\ = (\LUT_16_INST|rom~1_combout\ & ((\sign_inverter_INST_z|Add0~1_cout\) # (GND))) # (!\LUT_16_INST|rom~1_combout\ & (!\sign_inverter_INST_z|Add0~1_cout\))
-- \sign_inverter_INST_z|Add0~3\ = CARRY((\LUT_16_INST|rom~1_combout\) # (!\sign_inverter_INST_z|Add0~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \LUT_16_INST|rom~1_combout\,
	datad => VCC,
	cin => \sign_inverter_INST_z|Add0~1_cout\,
	combout => \sign_inverter_INST_z|Add0~2_combout\,
	cout => \sign_inverter_INST_z|Add0~3\);

-- Location: LCCOMB_X67_Y69_N24
\sign_inverter_INST_z|o_SI[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sign_inverter_INST_z|o_SI[1]~1_combout\ = (r_yn(15) & ((\LUT_16_INST|rom~1_combout\) # ((!\sign_inverter_INST_z|Equal0~0_combout\ & \sign_inverter_INST_z|Add0~2_combout\)))) # (!r_yn(15) & (((!\sign_inverter_INST_z|Equal0~0_combout\ & 
-- \sign_inverter_INST_z|Add0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_yn(15),
	datab => \LUT_16_INST|rom~1_combout\,
	datac => \sign_inverter_INST_z|Equal0~0_combout\,
	datad => \sign_inverter_INST_z|Add0~2_combout\,
	combout => \sign_inverter_INST_z|o_SI[1]~1_combout\);

-- Location: LCCOMB_X66_Y69_N2
\Add2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~2_combout\ = (r_zn(1) & ((\sign_inverter_INST_z|o_SI[1]~1_combout\ & (!\Add2~1\)) # (!\sign_inverter_INST_z|o_SI[1]~1_combout\ & (\Add2~1\ & VCC)))) # (!r_zn(1) & ((\sign_inverter_INST_z|o_SI[1]~1_combout\ & ((\Add2~1\) # (GND))) # 
-- (!\sign_inverter_INST_z|o_SI[1]~1_combout\ & (!\Add2~1\))))
-- \Add2~3\ = CARRY((r_zn(1) & (\sign_inverter_INST_z|o_SI[1]~1_combout\ & !\Add2~1\)) # (!r_zn(1) & ((\sign_inverter_INST_z|o_SI[1]~1_combout\) # (!\Add2~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_zn(1),
	datab => \sign_inverter_INST_z|o_SI[1]~1_combout\,
	datad => VCC,
	cin => \Add2~1\,
	combout => \Add2~2_combout\,
	cout => \Add2~3\);

-- Location: FF_X66_Y69_N3
\r_zd[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \Add2~2_combout\,
	ena => \state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_zd(1));

-- Location: LCCOMB_X65_Y69_N0
\Selector52~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector52~0_combout\ = (\state.done~q\ & ((r_zn(2)) # ((!\state.run~q\ & \Add2~4_combout\)))) # (!\state.done~q\ & (!\state.run~q\ & ((\Add2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.done~q\,
	datab => \state.run~q\,
	datac => r_zn(2),
	datad => \Add2~4_combout\,
	combout => \Selector52~0_combout\);

-- Location: FF_X65_Y69_N1
\r_zn[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \Selector52~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_zn(2));

-- Location: LCCOMB_X67_Y67_N26
\LUT_16_INST|rom~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LUT_16_INST|rom~2_combout\ = (\iteration_counter_INST|cnt\(2) & ((\iteration_counter_INST|cnt\(1)) # ((\iteration_counter_INST|cnt\(0))))) # (!\iteration_counter_INST|cnt\(2) & (((\iteration_counter_INST|cnt\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iteration_counter_INST|cnt\(1),
	datab => \iteration_counter_INST|cnt\(3),
	datac => \iteration_counter_INST|cnt\(2),
	datad => \iteration_counter_INST|cnt\(0),
	combout => \LUT_16_INST|rom~2_combout\);

-- Location: LCCOMB_X66_Y70_N4
\sign_inverter_INST_z|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \sign_inverter_INST_z|Add0~4_combout\ = (\LUT_16_INST|rom~2_combout\ & (\sign_inverter_INST_z|Add0~3\ $ (GND))) # (!\LUT_16_INST|rom~2_combout\ & (!\sign_inverter_INST_z|Add0~3\ & VCC))
-- \sign_inverter_INST_z|Add0~5\ = CARRY((\LUT_16_INST|rom~2_combout\ & !\sign_inverter_INST_z|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \LUT_16_INST|rom~2_combout\,
	datad => VCC,
	cin => \sign_inverter_INST_z|Add0~3\,
	combout => \sign_inverter_INST_z|Add0~4_combout\,
	cout => \sign_inverter_INST_z|Add0~5\);

-- Location: LCCOMB_X67_Y69_N22
\sign_inverter_INST_z|o_SI[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sign_inverter_INST_z|o_SI[2]~2_combout\ = (r_yn(15) & (((!\sign_inverter_INST_z|Equal0~0_combout\ & \sign_inverter_INST_z|Add0~4_combout\)) # (!\LUT_16_INST|rom~2_combout\))) # (!r_yn(15) & (((!\sign_inverter_INST_z|Equal0~0_combout\ & 
-- \sign_inverter_INST_z|Add0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_yn(15),
	datab => \LUT_16_INST|rom~2_combout\,
	datac => \sign_inverter_INST_z|Equal0~0_combout\,
	datad => \sign_inverter_INST_z|Add0~4_combout\,
	combout => \sign_inverter_INST_z|o_SI[2]~2_combout\);

-- Location: LCCOMB_X66_Y69_N4
\Add2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~4_combout\ = ((r_zn(2) $ (\sign_inverter_INST_z|o_SI[2]~2_combout\ $ (\Add2~3\)))) # (GND)
-- \Add2~5\ = CARRY((r_zn(2) & ((!\Add2~3\) # (!\sign_inverter_INST_z|o_SI[2]~2_combout\))) # (!r_zn(2) & (!\sign_inverter_INST_z|o_SI[2]~2_combout\ & !\Add2~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_zn(2),
	datab => \sign_inverter_INST_z|o_SI[2]~2_combout\,
	datad => VCC,
	cin => \Add2~3\,
	combout => \Add2~4_combout\,
	cout => \Add2~5\);

-- Location: FF_X66_Y69_N5
\r_zd[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \Add2~4_combout\,
	ena => \state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_zd(2));

-- Location: LCCOMB_X67_Y70_N6
\LUT_16_INST|rom~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LUT_16_INST|rom~3_combout\ = (\iteration_counter_INST|cnt\(0) & (!\iteration_counter_INST|cnt\(2) & (\iteration_counter_INST|cnt\(3) $ (!\iteration_counter_INST|cnt\(1))))) # (!\iteration_counter_INST|cnt\(0) & (!\iteration_counter_INST|cnt\(3) & 
-- (\iteration_counter_INST|cnt\(2) $ (\iteration_counter_INST|cnt\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000100010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iteration_counter_INST|cnt\(3),
	datab => \iteration_counter_INST|cnt\(2),
	datac => \iteration_counter_INST|cnt\(0),
	datad => \iteration_counter_INST|cnt\(1),
	combout => \LUT_16_INST|rom~3_combout\);

-- Location: LCCOMB_X66_Y70_N6
\sign_inverter_INST_z|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \sign_inverter_INST_z|Add0~6_combout\ = (\LUT_16_INST|rom~3_combout\ & ((\sign_inverter_INST_z|Add0~5\) # (GND))) # (!\LUT_16_INST|rom~3_combout\ & (!\sign_inverter_INST_z|Add0~5\))
-- \sign_inverter_INST_z|Add0~7\ = CARRY((\LUT_16_INST|rom~3_combout\) # (!\sign_inverter_INST_z|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LUT_16_INST|rom~3_combout\,
	datad => VCC,
	cin => \sign_inverter_INST_z|Add0~5\,
	combout => \sign_inverter_INST_z|Add0~6_combout\,
	cout => \sign_inverter_INST_z|Add0~7\);

-- Location: LCCOMB_X67_Y70_N12
\sign_inverter_INST_z|o_SI[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \sign_inverter_INST_z|o_SI[3]~3_combout\ = (\LUT_16_INST|rom~3_combout\ & ((r_yn(15)) # ((\sign_inverter_INST_z|Add0~6_combout\ & !\sign_inverter_INST_z|Equal0~0_combout\)))) # (!\LUT_16_INST|rom~3_combout\ & (((\sign_inverter_INST_z|Add0~6_combout\ & 
-- !\sign_inverter_INST_z|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LUT_16_INST|rom~3_combout\,
	datab => r_yn(15),
	datac => \sign_inverter_INST_z|Add0~6_combout\,
	datad => \sign_inverter_INST_z|Equal0~0_combout\,
	combout => \sign_inverter_INST_z|o_SI[3]~3_combout\);

-- Location: LCCOMB_X65_Y69_N18
\Selector51~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector51~0_combout\ = (\state.done~q\ & ((r_zn(3)) # ((!\state.run~q\ & \Add2~6_combout\)))) # (!\state.done~q\ & (!\state.run~q\ & ((\Add2~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.done~q\,
	datab => \state.run~q\,
	datac => r_zn(3),
	datad => \Add2~6_combout\,
	combout => \Selector51~0_combout\);

-- Location: FF_X65_Y69_N19
\r_zn[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \Selector51~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_zn(3));

-- Location: LCCOMB_X66_Y69_N6
\Add2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~6_combout\ = (\sign_inverter_INST_z|o_SI[3]~3_combout\ & ((r_zn(3) & (!\Add2~5\)) # (!r_zn(3) & ((\Add2~5\) # (GND))))) # (!\sign_inverter_INST_z|o_SI[3]~3_combout\ & ((r_zn(3) & (\Add2~5\ & VCC)) # (!r_zn(3) & (!\Add2~5\))))
-- \Add2~7\ = CARRY((\sign_inverter_INST_z|o_SI[3]~3_combout\ & ((!\Add2~5\) # (!r_zn(3)))) # (!\sign_inverter_INST_z|o_SI[3]~3_combout\ & (!r_zn(3) & !\Add2~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sign_inverter_INST_z|o_SI[3]~3_combout\,
	datab => r_zn(3),
	datad => VCC,
	cin => \Add2~5\,
	combout => \Add2~6_combout\,
	cout => \Add2~7\);

-- Location: FF_X66_Y69_N7
\r_zd[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \Add2~6_combout\,
	ena => \state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_zd(3));

-- Location: LCCOMB_X67_Y70_N10
\LUT_16_INST|rom~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \LUT_16_INST|rom~4_combout\ = (\iteration_counter_INST|cnt\(2) & (!\iteration_counter_INST|cnt\(3) & (!\iteration_counter_INST|cnt\(0) & !\iteration_counter_INST|cnt\(1)))) # (!\iteration_counter_INST|cnt\(2) & (\iteration_counter_INST|cnt\(1) & 
-- (\iteration_counter_INST|cnt\(3) $ (\iteration_counter_INST|cnt\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iteration_counter_INST|cnt\(3),
	datab => \iteration_counter_INST|cnt\(2),
	datac => \iteration_counter_INST|cnt\(0),
	datad => \iteration_counter_INST|cnt\(1),
	combout => \LUT_16_INST|rom~4_combout\);

-- Location: LCCOMB_X66_Y70_N8
\sign_inverter_INST_z|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \sign_inverter_INST_z|Add0~8_combout\ = (\LUT_16_INST|rom~4_combout\ & (!\sign_inverter_INST_z|Add0~7\ & VCC)) # (!\LUT_16_INST|rom~4_combout\ & (\sign_inverter_INST_z|Add0~7\ $ (GND)))
-- \sign_inverter_INST_z|Add0~9\ = CARRY((!\LUT_16_INST|rom~4_combout\ & !\sign_inverter_INST_z|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \LUT_16_INST|rom~4_combout\,
	datad => VCC,
	cin => \sign_inverter_INST_z|Add0~7\,
	combout => \sign_inverter_INST_z|Add0~8_combout\,
	cout => \sign_inverter_INST_z|Add0~9\);

-- Location: LCCOMB_X67_Y70_N4
\sign_inverter_INST_z|o_SI[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \sign_inverter_INST_z|o_SI[4]~4_combout\ = (\sign_inverter_INST_z|Equal0~0_combout\ & (r_yn(15) & (\LUT_16_INST|rom~4_combout\))) # (!\sign_inverter_INST_z|Equal0~0_combout\ & ((\sign_inverter_INST_z|Add0~8_combout\) # ((r_yn(15) & 
-- \LUT_16_INST|rom~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sign_inverter_INST_z|Equal0~0_combout\,
	datab => r_yn(15),
	datac => \LUT_16_INST|rom~4_combout\,
	datad => \sign_inverter_INST_z|Add0~8_combout\,
	combout => \sign_inverter_INST_z|o_SI[4]~4_combout\);

-- Location: LCCOMB_X65_Y69_N20
\Selector50~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector50~0_combout\ = (\state.done~q\ & ((r_zn(4)) # ((\Add2~8_combout\ & !\state.run~q\)))) # (!\state.done~q\ & (\Add2~8_combout\ & ((!\state.run~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.done~q\,
	datab => \Add2~8_combout\,
	datac => r_zn(4),
	datad => \state.run~q\,
	combout => \Selector50~0_combout\);

-- Location: FF_X65_Y69_N21
\r_zn[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \Selector50~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_zn(4));

-- Location: LCCOMB_X66_Y69_N8
\Add2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~8_combout\ = ((\sign_inverter_INST_z|o_SI[4]~4_combout\ $ (r_zn(4) $ (\Add2~7\)))) # (GND)
-- \Add2~9\ = CARRY((\sign_inverter_INST_z|o_SI[4]~4_combout\ & (r_zn(4) & !\Add2~7\)) # (!\sign_inverter_INST_z|o_SI[4]~4_combout\ & ((r_zn(4)) # (!\Add2~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sign_inverter_INST_z|o_SI[4]~4_combout\,
	datab => r_zn(4),
	datad => VCC,
	cin => \Add2~7\,
	combout => \Add2~8_combout\,
	cout => \Add2~9\);

-- Location: FF_X66_Y69_N9
\r_zd[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \Add2~8_combout\,
	ena => \state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_zd(4));

-- Location: LCCOMB_X65_Y69_N14
\Selector49~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector49~0_combout\ = (\state.done~q\ & ((r_zn(5)) # ((\Add2~10_combout\ & !\state.run~q\)))) # (!\state.done~q\ & (\Add2~10_combout\ & ((!\state.run~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.done~q\,
	datab => \Add2~10_combout\,
	datac => r_zn(5),
	datad => \state.run~q\,
	combout => \Selector49~0_combout\);

-- Location: FF_X65_Y69_N15
\r_zn[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \Selector49~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_zn(5));

-- Location: LCCOMB_X67_Y67_N16
\LUT_16_INST|rom~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \LUT_16_INST|rom~5_combout\ = (\iteration_counter_INST|cnt\(2) & (!\iteration_counter_INST|cnt\(3) & (!\iteration_counter_INST|cnt\(1) & !\iteration_counter_INST|cnt\(0)))) # (!\iteration_counter_INST|cnt\(2) & ((\iteration_counter_INST|cnt\(1) & 
-- (!\iteration_counter_INST|cnt\(3))) # (!\iteration_counter_INST|cnt\(1) & ((\iteration_counter_INST|cnt\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iteration_counter_INST|cnt\(2),
	datab => \iteration_counter_INST|cnt\(3),
	datac => \iteration_counter_INST|cnt\(1),
	datad => \iteration_counter_INST|cnt\(0),
	combout => \LUT_16_INST|rom~5_combout\);

-- Location: LCCOMB_X66_Y70_N10
\sign_inverter_INST_z|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \sign_inverter_INST_z|Add0~10_combout\ = (\LUT_16_INST|rom~5_combout\ & ((\sign_inverter_INST_z|Add0~9\) # (GND))) # (!\LUT_16_INST|rom~5_combout\ & (!\sign_inverter_INST_z|Add0~9\))
-- \sign_inverter_INST_z|Add0~11\ = CARRY((\LUT_16_INST|rom~5_combout\) # (!\sign_inverter_INST_z|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \LUT_16_INST|rom~5_combout\,
	datad => VCC,
	cin => \sign_inverter_INST_z|Add0~9\,
	combout => \sign_inverter_INST_z|Add0~10_combout\,
	cout => \sign_inverter_INST_z|Add0~11\);

-- Location: LCCOMB_X67_Y69_N16
\sign_inverter_INST_z|o_SI[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \sign_inverter_INST_z|o_SI[5]~5_combout\ = (r_yn(15) & ((\LUT_16_INST|rom~5_combout\) # ((\sign_inverter_INST_z|Add0~10_combout\ & !\sign_inverter_INST_z|Equal0~0_combout\)))) # (!r_yn(15) & (((\sign_inverter_INST_z|Add0~10_combout\ & 
-- !\sign_inverter_INST_z|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_yn(15),
	datab => \LUT_16_INST|rom~5_combout\,
	datac => \sign_inverter_INST_z|Add0~10_combout\,
	datad => \sign_inverter_INST_z|Equal0~0_combout\,
	combout => \sign_inverter_INST_z|o_SI[5]~5_combout\);

-- Location: LCCOMB_X66_Y69_N10
\Add2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~10_combout\ = (r_zn(5) & ((\sign_inverter_INST_z|o_SI[5]~5_combout\ & (!\Add2~9\)) # (!\sign_inverter_INST_z|o_SI[5]~5_combout\ & (\Add2~9\ & VCC)))) # (!r_zn(5) & ((\sign_inverter_INST_z|o_SI[5]~5_combout\ & ((\Add2~9\) # (GND))) # 
-- (!\sign_inverter_INST_z|o_SI[5]~5_combout\ & (!\Add2~9\))))
-- \Add2~11\ = CARRY((r_zn(5) & (\sign_inverter_INST_z|o_SI[5]~5_combout\ & !\Add2~9\)) # (!r_zn(5) & ((\sign_inverter_INST_z|o_SI[5]~5_combout\) # (!\Add2~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_zn(5),
	datab => \sign_inverter_INST_z|o_SI[5]~5_combout\,
	datad => VCC,
	cin => \Add2~9\,
	combout => \Add2~10_combout\,
	cout => \Add2~11\);

-- Location: FF_X66_Y69_N11
\r_zd[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \Add2~10_combout\,
	ena => \state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_zd(5));

-- Location: LCCOMB_X65_Y69_N16
\Selector48~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector48~0_combout\ = (\state.done~q\ & ((r_zn(6)) # ((!\state.run~q\ & \Add2~12_combout\)))) # (!\state.done~q\ & (!\state.run~q\ & ((\Add2~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.done~q\,
	datab => \state.run~q\,
	datac => r_zn(6),
	datad => \Add2~12_combout\,
	combout => \Selector48~0_combout\);

-- Location: FF_X65_Y69_N17
\r_zn[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \Selector48~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_zn(6));

-- Location: LCCOMB_X67_Y70_N14
\LUT_16_INST|rom~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \LUT_16_INST|rom~6_combout\ = (\iteration_counter_INST|cnt\(0) & ((\iteration_counter_INST|cnt\(2)) # ((\iteration_counter_INST|cnt\(3)) # (!\iteration_counter_INST|cnt\(1))))) # (!\iteration_counter_INST|cnt\(0) & ((\iteration_counter_INST|cnt\(1)) # 
-- ((\iteration_counter_INST|cnt\(2) & \iteration_counter_INST|cnt\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iteration_counter_INST|cnt\(0),
	datab => \iteration_counter_INST|cnt\(2),
	datac => \iteration_counter_INST|cnt\(1),
	datad => \iteration_counter_INST|cnt\(3),
	combout => \LUT_16_INST|rom~6_combout\);

-- Location: LCCOMB_X66_Y70_N12
\sign_inverter_INST_z|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \sign_inverter_INST_z|Add0~12_combout\ = (\LUT_16_INST|rom~6_combout\ & (\sign_inverter_INST_z|Add0~11\ $ (GND))) # (!\LUT_16_INST|rom~6_combout\ & (!\sign_inverter_INST_z|Add0~11\ & VCC))
-- \sign_inverter_INST_z|Add0~13\ = CARRY((\LUT_16_INST|rom~6_combout\ & !\sign_inverter_INST_z|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \LUT_16_INST|rom~6_combout\,
	datad => VCC,
	cin => \sign_inverter_INST_z|Add0~11\,
	combout => \sign_inverter_INST_z|Add0~12_combout\,
	cout => \sign_inverter_INST_z|Add0~13\);

-- Location: LCCOMB_X67_Y70_N24
\sign_inverter_INST_z|o_SI[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \sign_inverter_INST_z|o_SI[6]~6_combout\ = (\sign_inverter_INST_z|Equal0~0_combout\ & (r_yn(15) & (!\LUT_16_INST|rom~6_combout\))) # (!\sign_inverter_INST_z|Equal0~0_combout\ & ((\sign_inverter_INST_z|Add0~12_combout\) # ((r_yn(15) & 
-- !\LUT_16_INST|rom~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sign_inverter_INST_z|Equal0~0_combout\,
	datab => r_yn(15),
	datac => \LUT_16_INST|rom~6_combout\,
	datad => \sign_inverter_INST_z|Add0~12_combout\,
	combout => \sign_inverter_INST_z|o_SI[6]~6_combout\);

-- Location: LCCOMB_X66_Y69_N12
\Add2~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~12_combout\ = ((r_zn(6) $ (\sign_inverter_INST_z|o_SI[6]~6_combout\ $ (\Add2~11\)))) # (GND)
-- \Add2~13\ = CARRY((r_zn(6) & ((!\Add2~11\) # (!\sign_inverter_INST_z|o_SI[6]~6_combout\))) # (!r_zn(6) & (!\sign_inverter_INST_z|o_SI[6]~6_combout\ & !\Add2~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_zn(6),
	datab => \sign_inverter_INST_z|o_SI[6]~6_combout\,
	datad => VCC,
	cin => \Add2~11\,
	combout => \Add2~12_combout\,
	cout => \Add2~13\);

-- Location: FF_X66_Y69_N13
\r_zd[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \Add2~12_combout\,
	ena => \state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_zd(6));

-- Location: LCCOMB_X65_Y69_N10
\Selector47~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector47~0_combout\ = (\state.done~q\ & ((r_zn(7)) # ((\Add2~14_combout\ & !\state.run~q\)))) # (!\state.done~q\ & (\Add2~14_combout\ & ((!\state.run~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.done~q\,
	datab => \Add2~14_combout\,
	datac => r_zn(7),
	datad => \state.run~q\,
	combout => \Selector47~0_combout\);

-- Location: FF_X65_Y69_N11
\r_zn[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \Selector47~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_zn(7));

-- Location: LCCOMB_X67_Y67_N18
\LUT_16_INST|rom~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \LUT_16_INST|rom~7_combout\ = (!\iteration_counter_INST|cnt\(3) & ((\iteration_counter_INST|cnt\(0) & ((\iteration_counter_INST|cnt\(1)) # (!\iteration_counter_INST|cnt\(2)))) # (!\iteration_counter_INST|cnt\(0) & (\iteration_counter_INST|cnt\(2) $ 
-- (\iteration_counter_INST|cnt\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iteration_counter_INST|cnt\(0),
	datab => \iteration_counter_INST|cnt\(2),
	datac => \iteration_counter_INST|cnt\(1),
	datad => \iteration_counter_INST|cnt\(3),
	combout => \LUT_16_INST|rom~7_combout\);

-- Location: LCCOMB_X66_Y70_N14
\sign_inverter_INST_z|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \sign_inverter_INST_z|Add0~14_combout\ = (\LUT_16_INST|rom~7_combout\ & ((\sign_inverter_INST_z|Add0~13\) # (GND))) # (!\LUT_16_INST|rom~7_combout\ & (!\sign_inverter_INST_z|Add0~13\))
-- \sign_inverter_INST_z|Add0~15\ = CARRY((\LUT_16_INST|rom~7_combout\) # (!\sign_inverter_INST_z|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \LUT_16_INST|rom~7_combout\,
	datad => VCC,
	cin => \sign_inverter_INST_z|Add0~13\,
	combout => \sign_inverter_INST_z|Add0~14_combout\,
	cout => \sign_inverter_INST_z|Add0~15\);

-- Location: LCCOMB_X67_Y69_N10
\sign_inverter_INST_z|o_SI[7]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \sign_inverter_INST_z|o_SI[7]~7_combout\ = (r_yn(15) & ((\LUT_16_INST|rom~7_combout\) # ((!\sign_inverter_INST_z|Equal0~0_combout\ & \sign_inverter_INST_z|Add0~14_combout\)))) # (!r_yn(15) & (((!\sign_inverter_INST_z|Equal0~0_combout\ & 
-- \sign_inverter_INST_z|Add0~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_yn(15),
	datab => \LUT_16_INST|rom~7_combout\,
	datac => \sign_inverter_INST_z|Equal0~0_combout\,
	datad => \sign_inverter_INST_z|Add0~14_combout\,
	combout => \sign_inverter_INST_z|o_SI[7]~7_combout\);

-- Location: LCCOMB_X66_Y69_N14
\Add2~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~14_combout\ = (r_zn(7) & ((\sign_inverter_INST_z|o_SI[7]~7_combout\ & (!\Add2~13\)) # (!\sign_inverter_INST_z|o_SI[7]~7_combout\ & (\Add2~13\ & VCC)))) # (!r_zn(7) & ((\sign_inverter_INST_z|o_SI[7]~7_combout\ & ((\Add2~13\) # (GND))) # 
-- (!\sign_inverter_INST_z|o_SI[7]~7_combout\ & (!\Add2~13\))))
-- \Add2~15\ = CARRY((r_zn(7) & (\sign_inverter_INST_z|o_SI[7]~7_combout\ & !\Add2~13\)) # (!r_zn(7) & ((\sign_inverter_INST_z|o_SI[7]~7_combout\) # (!\Add2~13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_zn(7),
	datab => \sign_inverter_INST_z|o_SI[7]~7_combout\,
	datad => VCC,
	cin => \Add2~13\,
	combout => \Add2~14_combout\,
	cout => \Add2~15\);

-- Location: FF_X66_Y69_N15
\r_zd[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \Add2~14_combout\,
	ena => \state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_zd(7));

-- Location: LCCOMB_X65_Y69_N8
\Selector46~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector46~0_combout\ = (\state.done~q\ & ((r_zn(8)) # ((!\state.run~q\ & \Add2~16_combout\)))) # (!\state.done~q\ & (!\state.run~q\ & ((\Add2~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.done~q\,
	datab => \state.run~q\,
	datac => r_zn(8),
	datad => \Add2~16_combout\,
	combout => \Selector46~0_combout\);

-- Location: FF_X65_Y69_N9
\r_zn[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \Selector46~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_zn(8));

-- Location: LCCOMB_X67_Y70_N2
\LUT_16_INST|rom~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \LUT_16_INST|rom~8_combout\ = (!\iteration_counter_INST|cnt\(3) & ((\iteration_counter_INST|cnt\(0) & (!\iteration_counter_INST|cnt\(2))) # (!\iteration_counter_INST|cnt\(0) & ((\iteration_counter_INST|cnt\(2)) # (\iteration_counter_INST|cnt\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iteration_counter_INST|cnt\(0),
	datab => \iteration_counter_INST|cnt\(2),
	datac => \iteration_counter_INST|cnt\(1),
	datad => \iteration_counter_INST|cnt\(3),
	combout => \LUT_16_INST|rom~8_combout\);

-- Location: LCCOMB_X66_Y70_N16
\sign_inverter_INST_z|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \sign_inverter_INST_z|Add0~16_combout\ = (\LUT_16_INST|rom~8_combout\ & (!\sign_inverter_INST_z|Add0~15\ & VCC)) # (!\LUT_16_INST|rom~8_combout\ & (\sign_inverter_INST_z|Add0~15\ $ (GND)))
-- \sign_inverter_INST_z|Add0~17\ = CARRY((!\LUT_16_INST|rom~8_combout\ & !\sign_inverter_INST_z|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LUT_16_INST|rom~8_combout\,
	datad => VCC,
	cin => \sign_inverter_INST_z|Add0~15\,
	combout => \sign_inverter_INST_z|Add0~16_combout\,
	cout => \sign_inverter_INST_z|Add0~17\);

-- Location: LCCOMB_X67_Y70_N28
\sign_inverter_INST_z|o_SI[8]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \sign_inverter_INST_z|o_SI[8]~8_combout\ = (r_yn(15) & ((\LUT_16_INST|rom~8_combout\) # ((\sign_inverter_INST_z|Add0~16_combout\ & !\sign_inverter_INST_z|Equal0~0_combout\)))) # (!r_yn(15) & (((\sign_inverter_INST_z|Add0~16_combout\ & 
-- !\sign_inverter_INST_z|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_yn(15),
	datab => \LUT_16_INST|rom~8_combout\,
	datac => \sign_inverter_INST_z|Add0~16_combout\,
	datad => \sign_inverter_INST_z|Equal0~0_combout\,
	combout => \sign_inverter_INST_z|o_SI[8]~8_combout\);

-- Location: LCCOMB_X66_Y69_N16
\Add2~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~16_combout\ = ((r_zn(8) $ (\sign_inverter_INST_z|o_SI[8]~8_combout\ $ (\Add2~15\)))) # (GND)
-- \Add2~17\ = CARRY((r_zn(8) & ((!\Add2~15\) # (!\sign_inverter_INST_z|o_SI[8]~8_combout\))) # (!r_zn(8) & (!\sign_inverter_INST_z|o_SI[8]~8_combout\ & !\Add2~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_zn(8),
	datab => \sign_inverter_INST_z|o_SI[8]~8_combout\,
	datad => VCC,
	cin => \Add2~15\,
	combout => \Add2~16_combout\,
	cout => \Add2~17\);

-- Location: FF_X66_Y69_N17
\r_zd[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \Add2~16_combout\,
	ena => \state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_zd(8));

-- Location: LCCOMB_X65_Y69_N22
\Selector45~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector45~0_combout\ = (\state.done~q\ & ((r_zn(9)) # ((!\state.run~q\ & \Add2~18_combout\)))) # (!\state.done~q\ & (!\state.run~q\ & ((\Add2~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.done~q\,
	datab => \state.run~q\,
	datac => r_zn(9),
	datad => \Add2~18_combout\,
	combout => \Selector45~0_combout\);

-- Location: FF_X65_Y69_N23
\r_zn[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \Selector45~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_zn(9));

-- Location: LCCOMB_X67_Y70_N26
\LUT_16_INST|rom~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \LUT_16_INST|rom~9_combout\ = (\iteration_counter_INST|cnt\(3)) # ((\iteration_counter_INST|cnt\(2) & ((\iteration_counter_INST|cnt\(1)))) # (!\iteration_counter_INST|cnt\(2) & (\iteration_counter_INST|cnt\(0) & !\iteration_counter_INST|cnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iteration_counter_INST|cnt\(0),
	datab => \iteration_counter_INST|cnt\(2),
	datac => \iteration_counter_INST|cnt\(1),
	datad => \iteration_counter_INST|cnt\(3),
	combout => \LUT_16_INST|rom~9_combout\);

-- Location: LCCOMB_X66_Y70_N18
\sign_inverter_INST_z|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \sign_inverter_INST_z|Add0~18_combout\ = (\LUT_16_INST|rom~9_combout\ & (!\sign_inverter_INST_z|Add0~17\)) # (!\LUT_16_INST|rom~9_combout\ & ((\sign_inverter_INST_z|Add0~17\) # (GND)))
-- \sign_inverter_INST_z|Add0~19\ = CARRY((!\sign_inverter_INST_z|Add0~17\) # (!\LUT_16_INST|rom~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \LUT_16_INST|rom~9_combout\,
	datad => VCC,
	cin => \sign_inverter_INST_z|Add0~17\,
	combout => \sign_inverter_INST_z|Add0~18_combout\,
	cout => \sign_inverter_INST_z|Add0~19\);

-- Location: LCCOMB_X67_Y70_N16
\sign_inverter_INST_z|o_SI[9]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \sign_inverter_INST_z|o_SI[9]~9_combout\ = (\LUT_16_INST|rom~9_combout\ & (((!\sign_inverter_INST_z|Equal0~0_combout\ & \sign_inverter_INST_z|Add0~18_combout\)))) # (!\LUT_16_INST|rom~9_combout\ & ((r_yn(15)) # ((!\sign_inverter_INST_z|Equal0~0_combout\ & 
-- \sign_inverter_INST_z|Add0~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LUT_16_INST|rom~9_combout\,
	datab => r_yn(15),
	datac => \sign_inverter_INST_z|Equal0~0_combout\,
	datad => \sign_inverter_INST_z|Add0~18_combout\,
	combout => \sign_inverter_INST_z|o_SI[9]~9_combout\);

-- Location: LCCOMB_X66_Y69_N18
\Add2~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~18_combout\ = (r_zn(9) & ((\sign_inverter_INST_z|o_SI[9]~9_combout\ & (!\Add2~17\)) # (!\sign_inverter_INST_z|o_SI[9]~9_combout\ & (\Add2~17\ & VCC)))) # (!r_zn(9) & ((\sign_inverter_INST_z|o_SI[9]~9_combout\ & ((\Add2~17\) # (GND))) # 
-- (!\sign_inverter_INST_z|o_SI[9]~9_combout\ & (!\Add2~17\))))
-- \Add2~19\ = CARRY((r_zn(9) & (\sign_inverter_INST_z|o_SI[9]~9_combout\ & !\Add2~17\)) # (!r_zn(9) & ((\sign_inverter_INST_z|o_SI[9]~9_combout\) # (!\Add2~17\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_zn(9),
	datab => \sign_inverter_INST_z|o_SI[9]~9_combout\,
	datad => VCC,
	cin => \Add2~17\,
	combout => \Add2~18_combout\,
	cout => \Add2~19\);

-- Location: FF_X66_Y69_N19
\r_zd[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \Add2~18_combout\,
	ena => \state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_zd(9));

-- Location: LCCOMB_X67_Y67_N12
\LUT_16_INST|rom~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \LUT_16_INST|rom~10_combout\ = (!\iteration_counter_INST|cnt\(2) & (!\iteration_counter_INST|cnt\(3) & ((\iteration_counter_INST|cnt\(1)) # (\iteration_counter_INST|cnt\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iteration_counter_INST|cnt\(2),
	datab => \iteration_counter_INST|cnt\(3),
	datac => \iteration_counter_INST|cnt\(1),
	datad => \iteration_counter_INST|cnt\(0),
	combout => \LUT_16_INST|rom~10_combout\);

-- Location: LCCOMB_X66_Y70_N20
\sign_inverter_INST_z|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \sign_inverter_INST_z|Add0~20_combout\ = (\LUT_16_INST|rom~10_combout\ & (!\sign_inverter_INST_z|Add0~19\ & VCC)) # (!\LUT_16_INST|rom~10_combout\ & (\sign_inverter_INST_z|Add0~19\ $ (GND)))
-- \sign_inverter_INST_z|Add0~21\ = CARRY((!\LUT_16_INST|rom~10_combout\ & !\sign_inverter_INST_z|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \LUT_16_INST|rom~10_combout\,
	datad => VCC,
	cin => \sign_inverter_INST_z|Add0~19\,
	combout => \sign_inverter_INST_z|Add0~20_combout\,
	cout => \sign_inverter_INST_z|Add0~21\);

-- Location: LCCOMB_X67_Y70_N22
\sign_inverter_INST_z|o_SI[10]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \sign_inverter_INST_z|o_SI[10]~10_combout\ = (\LUT_16_INST|rom~10_combout\ & ((r_yn(15)) # ((!\sign_inverter_INST_z|Equal0~0_combout\ & \sign_inverter_INST_z|Add0~20_combout\)))) # (!\LUT_16_INST|rom~10_combout\ & 
-- (((!\sign_inverter_INST_z|Equal0~0_combout\ & \sign_inverter_INST_z|Add0~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LUT_16_INST|rom~10_combout\,
	datab => r_yn(15),
	datac => \sign_inverter_INST_z|Equal0~0_combout\,
	datad => \sign_inverter_INST_z|Add0~20_combout\,
	combout => \sign_inverter_INST_z|o_SI[10]~10_combout\);

-- Location: LCCOMB_X65_Y69_N4
\Selector44~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector44~0_combout\ = (\state.done~q\ & ((r_zn(10)) # ((!\state.run~q\ & \Add2~20_combout\)))) # (!\state.done~q\ & (!\state.run~q\ & ((\Add2~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.done~q\,
	datab => \state.run~q\,
	datac => r_zn(10),
	datad => \Add2~20_combout\,
	combout => \Selector44~0_combout\);

-- Location: FF_X65_Y69_N5
\r_zn[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \Selector44~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_zn(10));

-- Location: LCCOMB_X66_Y69_N20
\Add2~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~20_combout\ = ((\sign_inverter_INST_z|o_SI[10]~10_combout\ $ (r_zn(10) $ (\Add2~19\)))) # (GND)
-- \Add2~21\ = CARRY((\sign_inverter_INST_z|o_SI[10]~10_combout\ & (r_zn(10) & !\Add2~19\)) # (!\sign_inverter_INST_z|o_SI[10]~10_combout\ & ((r_zn(10)) # (!\Add2~19\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sign_inverter_INST_z|o_SI[10]~10_combout\,
	datab => r_zn(10),
	datad => VCC,
	cin => \Add2~19\,
	combout => \Add2~20_combout\,
	cout => \Add2~21\);

-- Location: FF_X66_Y69_N21
\r_zd[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \Add2~20_combout\,
	ena => \state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_zd(10));

-- Location: LCCOMB_X65_Y69_N30
\Selector43~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector43~0_combout\ = (\state.done~q\ & ((r_zn(11)) # ((!\state.run~q\ & \Add2~22_combout\)))) # (!\state.done~q\ & (!\state.run~q\ & ((\Add2~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.done~q\,
	datab => \state.run~q\,
	datac => r_zn(11),
	datad => \Add2~22_combout\,
	combout => \Selector43~0_combout\);

-- Location: FF_X65_Y69_N31
\r_zn[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \Selector43~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_zn(11));

-- Location: LCCOMB_X67_Y70_N0
\LUT_16_INST|rom~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \LUT_16_INST|rom~11_combout\ = (!\iteration_counter_INST|cnt\(3) & (!\iteration_counter_INST|cnt\(2) & (\iteration_counter_INST|cnt\(0) $ (\iteration_counter_INST|cnt\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iteration_counter_INST|cnt\(3),
	datab => \iteration_counter_INST|cnt\(2),
	datac => \iteration_counter_INST|cnt\(0),
	datad => \iteration_counter_INST|cnt\(1),
	combout => \LUT_16_INST|rom~11_combout\);

-- Location: LCCOMB_X66_Y70_N22
\sign_inverter_INST_z|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \sign_inverter_INST_z|Add0~22_combout\ = (\LUT_16_INST|rom~11_combout\ & ((\sign_inverter_INST_z|Add0~21\) # (GND))) # (!\LUT_16_INST|rom~11_combout\ & (!\sign_inverter_INST_z|Add0~21\))
-- \sign_inverter_INST_z|Add0~23\ = CARRY((\LUT_16_INST|rom~11_combout\) # (!\sign_inverter_INST_z|Add0~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \LUT_16_INST|rom~11_combout\,
	datad => VCC,
	cin => \sign_inverter_INST_z|Add0~21\,
	combout => \sign_inverter_INST_z|Add0~22_combout\,
	cout => \sign_inverter_INST_z|Add0~23\);

-- Location: LCCOMB_X67_Y70_N30
\sign_inverter_INST_z|o_SI[11]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \sign_inverter_INST_z|o_SI[11]~11_combout\ = (r_yn(15) & ((\LUT_16_INST|rom~11_combout\) # ((!\sign_inverter_INST_z|Equal0~0_combout\ & \sign_inverter_INST_z|Add0~22_combout\)))) # (!r_yn(15) & (((!\sign_inverter_INST_z|Equal0~0_combout\ & 
-- \sign_inverter_INST_z|Add0~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_yn(15),
	datab => \LUT_16_INST|rom~11_combout\,
	datac => \sign_inverter_INST_z|Equal0~0_combout\,
	datad => \sign_inverter_INST_z|Add0~22_combout\,
	combout => \sign_inverter_INST_z|o_SI[11]~11_combout\);

-- Location: LCCOMB_X66_Y69_N22
\Add2~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~22_combout\ = (r_zn(11) & ((\sign_inverter_INST_z|o_SI[11]~11_combout\ & (!\Add2~21\)) # (!\sign_inverter_INST_z|o_SI[11]~11_combout\ & (\Add2~21\ & VCC)))) # (!r_zn(11) & ((\sign_inverter_INST_z|o_SI[11]~11_combout\ & ((\Add2~21\) # (GND))) # 
-- (!\sign_inverter_INST_z|o_SI[11]~11_combout\ & (!\Add2~21\))))
-- \Add2~23\ = CARRY((r_zn(11) & (\sign_inverter_INST_z|o_SI[11]~11_combout\ & !\Add2~21\)) # (!r_zn(11) & ((\sign_inverter_INST_z|o_SI[11]~11_combout\) # (!\Add2~21\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_zn(11),
	datab => \sign_inverter_INST_z|o_SI[11]~11_combout\,
	datad => VCC,
	cin => \Add2~21\,
	combout => \Add2~22_combout\,
	cout => \Add2~23\);

-- Location: FF_X66_Y69_N23
\r_zd[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \Add2~22_combout\,
	ena => \state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_zd(11));

-- Location: LCCOMB_X67_Y70_N20
\LUT_16_INST|rom~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \LUT_16_INST|rom~12_combout\ = (!\iteration_counter_INST|cnt\(3) & (!\iteration_counter_INST|cnt\(2) & !\iteration_counter_INST|cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iteration_counter_INST|cnt\(3),
	datac => \iteration_counter_INST|cnt\(2),
	datad => \iteration_counter_INST|cnt\(1),
	combout => \LUT_16_INST|rom~12_combout\);

-- Location: LCCOMB_X66_Y70_N24
\sign_inverter_INST_z|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \sign_inverter_INST_z|Add0~24_combout\ = (\LUT_16_INST|rom~12_combout\ & (!\sign_inverter_INST_z|Add0~23\ & VCC)) # (!\LUT_16_INST|rom~12_combout\ & (\sign_inverter_INST_z|Add0~23\ $ (GND)))
-- \sign_inverter_INST_z|Add0~25\ = CARRY((!\LUT_16_INST|rom~12_combout\ & !\sign_inverter_INST_z|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LUT_16_INST|rom~12_combout\,
	datad => VCC,
	cin => \sign_inverter_INST_z|Add0~23\,
	combout => \sign_inverter_INST_z|Add0~24_combout\,
	cout => \sign_inverter_INST_z|Add0~25\);

-- Location: LCCOMB_X67_Y70_N18
\sign_inverter_INST_z|o_SI[12]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \sign_inverter_INST_z|o_SI[12]~12_combout\ = (\sign_inverter_INST_z|Equal0~0_combout\ & (\LUT_16_INST|rom~12_combout\ & (r_yn(15)))) # (!\sign_inverter_INST_z|Equal0~0_combout\ & ((\sign_inverter_INST_z|Add0~24_combout\) # ((\LUT_16_INST|rom~12_combout\ & 
-- r_yn(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sign_inverter_INST_z|Equal0~0_combout\,
	datab => \LUT_16_INST|rom~12_combout\,
	datac => r_yn(15),
	datad => \sign_inverter_INST_z|Add0~24_combout\,
	combout => \sign_inverter_INST_z|o_SI[12]~12_combout\);

-- Location: LCCOMB_X65_Y69_N24
\Selector42~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector42~0_combout\ = (\Add2~24_combout\ & (((r_zn(12) & \state.done~q\)) # (!\state.run~q\))) # (!\Add2~24_combout\ & (((r_zn(12) & \state.done~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~24_combout\,
	datab => \state.run~q\,
	datac => r_zn(12),
	datad => \state.done~q\,
	combout => \Selector42~0_combout\);

-- Location: FF_X65_Y69_N25
\r_zn[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \Selector42~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_zn(12));

-- Location: LCCOMB_X66_Y69_N24
\Add2~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~24_combout\ = ((\sign_inverter_INST_z|o_SI[12]~12_combout\ $ (r_zn(12) $ (\Add2~23\)))) # (GND)
-- \Add2~25\ = CARRY((\sign_inverter_INST_z|o_SI[12]~12_combout\ & (r_zn(12) & !\Add2~23\)) # (!\sign_inverter_INST_z|o_SI[12]~12_combout\ & ((r_zn(12)) # (!\Add2~23\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sign_inverter_INST_z|o_SI[12]~12_combout\,
	datab => r_zn(12),
	datad => VCC,
	cin => \Add2~23\,
	combout => \Add2~24_combout\,
	cout => \Add2~25\);

-- Location: FF_X66_Y69_N25
\r_zd[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \Add2~24_combout\,
	ena => \state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_zd(12));

-- Location: LCCOMB_X65_Y69_N2
\Selector41~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector41~0_combout\ = (\state.done~q\ & ((r_zn(13)) # ((!\state.run~q\ & \Add2~26_combout\)))) # (!\state.done~q\ & (!\state.run~q\ & ((\Add2~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.done~q\,
	datab => \state.run~q\,
	datac => r_zn(13),
	datad => \Add2~26_combout\,
	combout => \Selector41~0_combout\);

-- Location: FF_X65_Y69_N3
\r_zn[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \Selector41~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_zn(13));

-- Location: LCCOMB_X67_Y67_N30
\LUT_16_INST|rom~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \LUT_16_INST|rom~13_combout\ = (!\iteration_counter_INST|cnt\(2) & (!\iteration_counter_INST|cnt\(3) & (!\iteration_counter_INST|cnt\(1) & !\iteration_counter_INST|cnt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iteration_counter_INST|cnt\(2),
	datab => \iteration_counter_INST|cnt\(3),
	datac => \iteration_counter_INST|cnt\(1),
	datad => \iteration_counter_INST|cnt\(0),
	combout => \LUT_16_INST|rom~13_combout\);

-- Location: LCCOMB_X66_Y70_N26
\sign_inverter_INST_z|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \sign_inverter_INST_z|Add0~26_combout\ = (\LUT_16_INST|rom~13_combout\ & ((\sign_inverter_INST_z|Add0~25\) # (GND))) # (!\LUT_16_INST|rom~13_combout\ & (!\sign_inverter_INST_z|Add0~25\))
-- \sign_inverter_INST_z|Add0~27\ = CARRY((\LUT_16_INST|rom~13_combout\) # (!\sign_inverter_INST_z|Add0~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LUT_16_INST|rom~13_combout\,
	datad => VCC,
	cin => \sign_inverter_INST_z|Add0~25\,
	combout => \sign_inverter_INST_z|Add0~26_combout\,
	cout => \sign_inverter_INST_z|Add0~27\);

-- Location: LCCOMB_X67_Y69_N8
\sign_inverter_INST_z|o_SI[13]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \sign_inverter_INST_z|o_SI[13]~13_combout\ = (\LUT_16_INST|rom~13_combout\ & ((r_yn(15)) # ((!\sign_inverter_INST_z|Equal0~0_combout\ & \sign_inverter_INST_z|Add0~26_combout\)))) # (!\LUT_16_INST|rom~13_combout\ & (!\sign_inverter_INST_z|Equal0~0_combout\ 
-- & ((\sign_inverter_INST_z|Add0~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LUT_16_INST|rom~13_combout\,
	datab => \sign_inverter_INST_z|Equal0~0_combout\,
	datac => r_yn(15),
	datad => \sign_inverter_INST_z|Add0~26_combout\,
	combout => \sign_inverter_INST_z|o_SI[13]~13_combout\);

-- Location: LCCOMB_X66_Y69_N26
\Add2~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~26_combout\ = (r_zn(13) & ((\sign_inverter_INST_z|o_SI[13]~13_combout\ & (!\Add2~25\)) # (!\sign_inverter_INST_z|o_SI[13]~13_combout\ & (\Add2~25\ & VCC)))) # (!r_zn(13) & ((\sign_inverter_INST_z|o_SI[13]~13_combout\ & ((\Add2~25\) # (GND))) # 
-- (!\sign_inverter_INST_z|o_SI[13]~13_combout\ & (!\Add2~25\))))
-- \Add2~27\ = CARRY((r_zn(13) & (\sign_inverter_INST_z|o_SI[13]~13_combout\ & !\Add2~25\)) # (!r_zn(13) & ((\sign_inverter_INST_z|o_SI[13]~13_combout\) # (!\Add2~25\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_zn(13),
	datab => \sign_inverter_INST_z|o_SI[13]~13_combout\,
	datad => VCC,
	cin => \Add2~25\,
	combout => \Add2~26_combout\,
	cout => \Add2~27\);

-- Location: FF_X66_Y69_N27
\r_zd[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \Add2~26_combout\,
	ena => \state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_zd(13));

-- Location: LCCOMB_X66_Y70_N28
\sign_inverter_INST_z|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \sign_inverter_INST_z|Add0~28_combout\ = \sign_inverter_INST_z|Add0~27\ $ (GND)
-- \sign_inverter_INST_z|Add0~29\ = CARRY(!\sign_inverter_INST_z|Add0~27\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \sign_inverter_INST_z|Add0~27\,
	combout => \sign_inverter_INST_z|Add0~28_combout\,
	cout => \sign_inverter_INST_z|Add0~29\);

-- Location: LCCOMB_X67_Y69_N2
\sign_inverter_INST_z|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \sign_inverter_INST_z|Add0~30_combout\ = (\sign_inverter_INST_z|Add0~28_combout\ & !\sign_inverter_INST_z|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sign_inverter_INST_z|Add0~28_combout\,
	datad => \sign_inverter_INST_z|Equal0~0_combout\,
	combout => \sign_inverter_INST_z|Add0~30_combout\);

-- Location: LCCOMB_X65_Y69_N12
\Selector40~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector40~0_combout\ = (\state.done~q\ & ((r_zn(14)) # ((!\state.run~q\ & \Add2~28_combout\)))) # (!\state.done~q\ & (!\state.run~q\ & ((\Add2~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.done~q\,
	datab => \state.run~q\,
	datac => r_zn(14),
	datad => \Add2~28_combout\,
	combout => \Selector40~0_combout\);

-- Location: FF_X65_Y69_N13
\r_zn[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \Selector40~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_zn(14));

-- Location: LCCOMB_X66_Y69_N28
\Add2~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~28_combout\ = ((\sign_inverter_INST_z|Add0~30_combout\ $ (r_zn(14) $ (\Add2~27\)))) # (GND)
-- \Add2~29\ = CARRY((\sign_inverter_INST_z|Add0~30_combout\ & (r_zn(14) & !\Add2~27\)) # (!\sign_inverter_INST_z|Add0~30_combout\ & ((r_zn(14)) # (!\Add2~27\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sign_inverter_INST_z|Add0~30_combout\,
	datab => r_zn(14),
	datad => VCC,
	cin => \Add2~27\,
	combout => \Add2~28_combout\,
	cout => \Add2~29\);

-- Location: FF_X66_Y69_N29
\r_zd[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \Add2~28_combout\,
	ena => \state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_zd(14));

-- Location: LCCOMB_X65_Y69_N6
\Selector39~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector39~0_combout\ = (\state.done~q\ & ((r_zn(15)) # ((!\state.run~q\ & \Add2~30_combout\)))) # (!\state.done~q\ & (!\state.run~q\ & ((\Add2~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.done~q\,
	datab => \state.run~q\,
	datac => r_zn(15),
	datad => \Add2~30_combout\,
	combout => \Selector39~0_combout\);

-- Location: FF_X65_Y69_N7
\r_zn[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \Selector39~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_zn(15));

-- Location: LCCOMB_X66_Y70_N30
\sign_inverter_INST_z|Add0~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \sign_inverter_INST_z|Add0~31_combout\ = !\sign_inverter_INST_z|Add0~29\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \sign_inverter_INST_z|Add0~29\,
	combout => \sign_inverter_INST_z|Add0~31_combout\);

-- Location: LCCOMB_X65_Y70_N4
\sign_inverter_INST_z|Add0~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \sign_inverter_INST_z|Add0~33_combout\ = (\sign_inverter_INST_z|Add0~31_combout\ & !\sign_inverter_INST_z|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sign_inverter_INST_z|Add0~31_combout\,
	datad => \sign_inverter_INST_z|Equal0~0_combout\,
	combout => \sign_inverter_INST_z|Add0~33_combout\);

-- Location: LCCOMB_X66_Y69_N30
\Add2~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~30_combout\ = r_zn(15) $ (\Add2~29\ $ (!\sign_inverter_INST_z|Add0~33_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => r_zn(15),
	datad => \sign_inverter_INST_z|Add0~33_combout\,
	cin => \Add2~29\,
	combout => \Add2~30_combout\);

-- Location: FF_X66_Y69_N31
\r_zd[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \Add2~30_combout\,
	ena => \state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_zd(15));

-- Location: LCCOMB_X67_Y72_N0
\Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = (\state.done~q\) # ((!\state.run~q\ & \var_done~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.run~q\,
	datac => \var_done~q\,
	datad => \state.done~q\,
	combout => \Selector2~0_combout\);

-- Location: FF_X67_Y72_N1
var_done : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \var_done~q\);

-- Location: LCCOMB_X63_Y69_N24
\state_LED[0]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \state_LED[0]~reg0feeder_combout\ = \state.idle~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \state.idle~q\,
	combout => \state_LED[0]~reg0feeder_combout\);

-- Location: FF_X63_Y69_N25
\state_LED[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \state_LED[0]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_LED[0]~reg0_q\);

-- Location: LCCOMB_X70_Y72_N16
\state_LED[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \state_LED[1]~0_combout\ = !\state.run~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.run~q\,
	combout => \state_LED[1]~0_combout\);

-- Location: FF_X70_Y72_N17
\state_LED[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \state_LED[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_LED[1]~reg0_q\);

-- Location: LCCOMB_X70_Y72_N14
\state_LED[2]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \state_LED[2]~reg0feeder_combout\ = \state.done~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \state.done~q\,
	combout => \state_LED[2]~reg0feeder_combout\);

-- Location: FF_X70_Y72_N15
\state_LED[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \state_LED[2]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_LED[2]~reg0_q\);

-- Location: LCCOMB_X70_Y72_N24
\LUT_TEST[0]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \LUT_TEST[0]~reg0feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \LUT_TEST[0]~reg0feeder_combout\);

-- Location: FF_X70_Y72_N25
\LUT_TEST[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \LUT_TEST[0]~reg0feeder_combout\,
	ena => \ALT_INV_state.run~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LUT_TEST[0]~reg0_q\);

-- Location: LCCOMB_X61_Y72_N0
\LUT_TEST[1]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \LUT_TEST[1]~reg0feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \LUT_TEST[1]~reg0feeder_combout\);

-- Location: FF_X61_Y72_N1
\LUT_TEST[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \LUT_TEST[1]~reg0feeder_combout\,
	ena => \ALT_INV_state.run~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LUT_TEST[1]~reg0_q\);

-- Location: LCCOMB_X61_Y72_N2
\LUT_TEST[2]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \LUT_TEST[2]~reg0feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \LUT_TEST[2]~reg0feeder_combout\);

-- Location: FF_X61_Y72_N3
\LUT_TEST[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \LUT_TEST[2]~reg0feeder_combout\,
	ena => \ALT_INV_state.run~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LUT_TEST[2]~reg0_q\);

-- Location: LCCOMB_X69_Y72_N4
\LUT_TEST[3]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \LUT_TEST[3]~reg0feeder_combout\ = \LUT_Y_INST|o_LUT_Y\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \LUT_Y_INST|o_LUT_Y\(12),
	combout => \LUT_TEST[3]~reg0feeder_combout\);

-- Location: FF_X69_Y72_N5
\LUT_TEST[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \LUT_TEST[3]~reg0feeder_combout\,
	ena => \ALT_INV_state.run~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LUT_TEST[3]~reg0_q\);

-- Location: LCCOMB_X69_Y72_N6
\LUT_TEST[4]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \LUT_TEST[4]~reg0feeder_combout\ = \LUT_Y_INST|o_LUT_Y\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \LUT_Y_INST|o_LUT_Y\(12),
	combout => \LUT_TEST[4]~reg0feeder_combout\);

-- Location: FF_X69_Y72_N7
\LUT_TEST[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \LUT_TEST[4]~reg0feeder_combout\,
	ena => \ALT_INV_state.run~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LUT_TEST[4]~reg0_q\);

-- Location: LCCOMB_X62_Y72_N4
\LUT_TEST[5]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \LUT_TEST[5]~reg0feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \LUT_TEST[5]~reg0feeder_combout\);

-- Location: FF_X62_Y72_N5
\LUT_TEST[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \LUT_TEST[5]~reg0feeder_combout\,
	ena => \ALT_INV_state.run~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LUT_TEST[5]~reg0_q\);

-- Location: LCCOMB_X67_Y72_N2
\LUT_TEST[6]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \LUT_TEST[6]~reg0feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \LUT_TEST[6]~reg0feeder_combout\);

-- Location: FF_X67_Y72_N3
\LUT_TEST[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \LUT_TEST[6]~reg0feeder_combout\,
	ena => \ALT_INV_state.run~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LUT_TEST[6]~reg0_q\);

-- Location: LCCOMB_X69_Y72_N12
\LUT_TEST[8]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \LUT_TEST[8]~reg0feeder_combout\ = \LUT_Y_INST|o_LUT_Y\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \LUT_Y_INST|o_LUT_Y\(12),
	combout => \LUT_TEST[8]~reg0feeder_combout\);

-- Location: FF_X69_Y72_N13
\LUT_TEST[8]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \LUT_TEST[8]~reg0feeder_combout\,
	ena => \ALT_INV_state.run~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LUT_TEST[8]~reg0_q\);

-- Location: LCCOMB_X70_Y72_N2
\LUT_TEST[9]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \LUT_TEST[9]~reg0feeder_combout\ = \LUT_Y_INST|o_LUT_Y\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \LUT_Y_INST|o_LUT_Y\(9),
	combout => \LUT_TEST[9]~reg0feeder_combout\);

-- Location: FF_X70_Y72_N3
\LUT_TEST[9]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \LUT_TEST[9]~reg0feeder_combout\,
	ena => \ALT_INV_state.run~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LUT_TEST[9]~reg0_q\);

-- Location: LCCOMB_X62_Y72_N2
\LUT_TEST[10]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \LUT_TEST[10]~reg0feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \LUT_TEST[10]~reg0feeder_combout\);

-- Location: FF_X62_Y72_N3
\LUT_TEST[10]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \LUT_TEST[10]~reg0feeder_combout\,
	ena => \ALT_INV_state.run~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LUT_TEST[10]~reg0_q\);

-- Location: LCCOMB_X69_Y72_N2
\LUT_TEST[12]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \LUT_TEST[12]~reg0feeder_combout\ = \LUT_Y_INST|o_LUT_Y\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \LUT_Y_INST|o_LUT_Y\(12),
	combout => \LUT_TEST[12]~reg0feeder_combout\);

-- Location: FF_X69_Y72_N3
\LUT_TEST[12]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \LUT_TEST[12]~reg0feeder_combout\,
	ena => \ALT_INV_state.run~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LUT_TEST[12]~reg0_q\);

-- Location: LCCOMB_X69_Y72_N0
\LUT_TEST[13]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \LUT_TEST[13]~reg0feeder_combout\ = \LUT_Y_INST|o_LUT_Y\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \LUT_Y_INST|o_LUT_Y\(12),
	combout => \LUT_TEST[13]~reg0feeder_combout\);

-- Location: FF_X69_Y72_N1
\LUT_TEST[13]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \LUT_TEST[13]~reg0feeder_combout\,
	ena => \ALT_INV_state.run~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LUT_TEST[13]~reg0_q\);

-- Location: IOIBUF_X38_Y73_N1
\i_x[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_x(0),
	o => \i_x[0]~input_o\);

-- Location: IOIBUF_X100_Y73_N15
\i_x[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_x(1),
	o => \i_x[1]~input_o\);

-- Location: IOIBUF_X16_Y0_N1
\i_x[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_x(2),
	o => \i_x[2]~input_o\);

-- Location: IOIBUF_X0_Y35_N8
\i_x[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_x(3),
	o => \i_x[3]~input_o\);

-- Location: IOIBUF_X0_Y29_N15
\i_x[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_x(4),
	o => \i_x[4]~input_o\);

-- Location: IOIBUF_X23_Y73_N15
\i_x[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_x(5),
	o => \i_x[5]~input_o\);

-- Location: IOIBUF_X115_Y59_N15
\i_x[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_x(6),
	o => \i_x[6]~input_o\);

-- Location: IOIBUF_X115_Y11_N8
\i_x[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_x(7),
	o => \i_x[7]~input_o\);

-- Location: IOIBUF_X115_Y18_N8
\i_x[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_x(8),
	o => \i_x[8]~input_o\);

-- Location: IOIBUF_X115_Y13_N8
\i_x[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_x(9),
	o => \i_x[9]~input_o\);

-- Location: IOIBUF_X115_Y15_N8
\i_x[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_x(10),
	o => \i_x[10]~input_o\);

-- Location: IOIBUF_X115_Y14_N1
\i_x[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_x(11),
	o => \i_x[11]~input_o\);

-- Location: IOIBUF_X115_Y17_N1
\i_x[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_x(12),
	o => \i_x[12]~input_o\);

-- Location: IOIBUF_X115_Y10_N1
\i_x[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_x(13),
	o => \i_x[13]~input_o\);

-- Location: IOIBUF_X115_Y6_N15
\i_x[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_x(14),
	o => \i_x[14]~input_o\);

-- Location: IOIBUF_X115_Y14_N8
\i_x[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_x(15),
	o => \i_x[15]~input_o\);

-- Location: IOIBUF_X20_Y0_N15
\i_y[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_y(0),
	o => \i_y[0]~input_o\);

-- Location: IOIBUF_X115_Y8_N15
\i_y[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_y(1),
	o => \i_y[1]~input_o\);

-- Location: IOIBUF_X33_Y0_N1
\i_y[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_y(2),
	o => \i_y[2]~input_o\);

-- Location: IOIBUF_X115_Y28_N8
\i_y[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_y(3),
	o => \i_y[3]~input_o\);

-- Location: IOIBUF_X1_Y0_N15
\i_y[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_y(4),
	o => \i_y[4]~input_o\);

-- Location: IOIBUF_X105_Y0_N1
\i_y[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_y(5),
	o => \i_y[5]~input_o\);

-- Location: IOIBUF_X0_Y13_N1
\i_y[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_y(6),
	o => \i_y[6]~input_o\);

-- Location: IOIBUF_X11_Y73_N22
\i_y[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_y(7),
	o => \i_y[7]~input_o\);

-- Location: IOIBUF_X115_Y5_N15
\i_y[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_y(8),
	o => \i_y[8]~input_o\);

-- Location: IOIBUF_X115_Y4_N15
\i_y[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_y(9),
	o => \i_y[9]~input_o\);

-- Location: IOIBUF_X115_Y16_N8
\i_y[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_y(10),
	o => \i_y[10]~input_o\);

-- Location: IOIBUF_X115_Y4_N22
\i_y[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_y(11),
	o => \i_y[11]~input_o\);

-- Location: IOIBUF_X115_Y15_N1
\i_y[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_y(12),
	o => \i_y[12]~input_o\);

-- Location: IOIBUF_X115_Y9_N22
\i_y[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_y(13),
	o => \i_y[13]~input_o\);

-- Location: IOIBUF_X115_Y7_N15
\i_y[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_y(14),
	o => \i_y[14]~input_o\);

-- Location: IOIBUF_X115_Y13_N1
\i_y[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_y(15),
	o => \i_y[15]~input_o\);

ww_o_z(0) <= \o_z[0]~output_o\;

ww_o_z(1) <= \o_z[1]~output_o\;

ww_o_z(2) <= \o_z[2]~output_o\;

ww_o_z(3) <= \o_z[3]~output_o\;

ww_o_z(4) <= \o_z[4]~output_o\;

ww_o_z(5) <= \o_z[5]~output_o\;

ww_o_z(6) <= \o_z[6]~output_o\;

ww_o_z(7) <= \o_z[7]~output_o\;

ww_o_z(8) <= \o_z[8]~output_o\;

ww_o_z(9) <= \o_z[9]~output_o\;

ww_o_z(10) <= \o_z[10]~output_o\;

ww_o_z(11) <= \o_z[11]~output_o\;

ww_o_z(12) <= \o_z[12]~output_o\;

ww_o_z(13) <= \o_z[13]~output_o\;

ww_o_z(14) <= \o_z[14]~output_o\;

ww_o_z(15) <= \o_z[15]~output_o\;

ww_o_done <= \o_done~output_o\;

ww_state_LED(0) <= \state_LED[0]~output_o\;

ww_state_LED(1) <= \state_LED[1]~output_o\;

ww_state_LED(2) <= \state_LED[2]~output_o\;

ww_state_LED(3) <= \state_LED[3]~output_o\;

ww_LUT_TEST(0) <= \LUT_TEST[0]~output_o\;

ww_LUT_TEST(1) <= \LUT_TEST[1]~output_o\;

ww_LUT_TEST(2) <= \LUT_TEST[2]~output_o\;

ww_LUT_TEST(3) <= \LUT_TEST[3]~output_o\;

ww_LUT_TEST(4) <= \LUT_TEST[4]~output_o\;

ww_LUT_TEST(5) <= \LUT_TEST[5]~output_o\;

ww_LUT_TEST(6) <= \LUT_TEST[6]~output_o\;

ww_LUT_TEST(7) <= \LUT_TEST[7]~output_o\;

ww_LUT_TEST(8) <= \LUT_TEST[8]~output_o\;

ww_LUT_TEST(9) <= \LUT_TEST[9]~output_o\;

ww_LUT_TEST(10) <= \LUT_TEST[10]~output_o\;

ww_LUT_TEST(11) <= \LUT_TEST[11]~output_o\;

ww_LUT_TEST(12) <= \LUT_TEST[12]~output_o\;

ww_LUT_TEST(13) <= \LUT_TEST[13]~output_o\;

ww_LUT_TEST(14) <= \LUT_TEST[14]~output_o\;

ww_LUT_TEST(15) <= \LUT_TEST[15]~output_o\;
END structure;



-- This VHDL file is storing the precomputed values for arctan(2^-n) in the ROM on the FPGA

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use ieee.numeric_std.all;  

 
 
 ENTITY LUT_16 IS
        PORT (
          i_LUT_addr    : IN STD_LOGIC_VECTOR (3 DOWNTO 0):= (others => '0');
          i_mem_enable : IN STD_LOGIC:= '0';
          o_LUT       : OUT STD_LOGIC_VECTOR (15 DOWNTO 0));
END LUT_16;


architecture rtl of LUT_16 is

	-- Build a 2-D array type for the RoM
	subtype word_t is std_logic_vector(15 downto 0);
	type memory_t is array(15 downto 0) of word_t; -- 2^4 = 16 
		
	function init_rom
		return memory_t is
		variable tmp : memory_t := (others => (others => '0'));
		begin
			tmp(15)  := "0000000000000000"; --0
			tmp(14)  := "0000000000000001"; --0.00006103516625
			tmp(13)  := "0000000000000010"; --0.0001220703125
			tmp(12)  := "0000000000000100"; --0.000244140625
			tmp(11)  := "0000000000001000"; --0.00048828125
			tmp(10)  := "0000000000010000"; --0.0009765625
			tmp(9)   := "0000000000100000"; --0.001953215
			tmp(8)   := "0000000001000000"; --0.00390625
			tmp(7)   := "0000000010000000"; --0.0078125
			tmp(6)   := "0000000100000000"; --0.015625
			tmp(5)   := "0000001000000000"; --0.03125
			tmp(4)   := "0000001111111111"; --0.06244
			tmp(3)   := "0000011111110101"; --0.1243
			tmp(2)   := "0000111110101110"; --0.2450
			tmp(1)   := "0001110110101100"; --0.4636
			tmp(0)   := "0011001001000100"; --0.7854
						
			
		return tmp;
	end init_rom;
	
	-- Declare the ROM signal and specify a default value.	Quartus II
	-- will create a memory initialization file (.mif) based on the 
	-- default value.
	signal rom : memory_t := init_rom;
	
begin
	
	process(i_mem_enable)
	begin
		if(rising_edge(i_mem_enable)) then
			o_LUT <= rom(to_integer(unsigned(i_LUT_addr)));
		end if;
	end process;
		
end rtl;

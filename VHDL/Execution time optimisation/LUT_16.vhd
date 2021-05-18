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
			tmp(14)  := "0000000000000001"; --1
			tmp(13)  := "0000000000000010"; --2
			tmp(12)  := "0000000000000100"; --4
			tmp(11)  := "0000000000001000"; --8 
			tmp(10)  := "0000000000010000"; --16
			tmp(9)   := "0000000000100000"; --32
			tmp(8)   := "0000000001000000"; --64
			tmp(7)   := "0000000010000000"; --128
			tmp(6)   := "0000000100000000"; --256
			tmp(5)   := "0000000111111111"; --511
			tmp(4)   := "0000001111111110"; --1022
			tmp(3)   := "0000011111110101"; --2037
			tmp(2)   := "0000111110101101"; --4013
			tmp(1)   := "0001110110101101"; --7597
			tmp(0)   := "0011001000111010"; --12858
						
			
		return tmp;
	end init_rom;
	
	-- Declare the ROM signal and specify a default value.	Quartus II
	-- will create a memory initialization file (.mif) based on the 
	-- default value.
	signal rom : memory_t := init_rom;
	
begin
	
--	process(i_mem_enable)
--	begin
--		--if(rising_edge(i_mem_enable)) then
--		if i_mem_enable = '1' then
--			o_LUT <= rom(to_integer(unsigned(i_LUT_addr)));
--		end if;
--	end process;

o_LUT <= rom(to_integer(unsigned(i_LUT_addr)));
	
end rtl;

-- Look up table storing the predefined input values for Y

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use ieee.numeric_std.all;  

 
 
 ENTITY LUT_Y IS
        PORT (
          i_LUT_addr_Y    : IN STD_LOGIC_VECTOR (3 DOWNTO 0):= (others => '0');
          i_mem_enable_Y : IN STD_LOGIC:= '0';
          o_LUT_Y       : OUT STD_LOGIC_VECTOR (15 DOWNTO 0));
END LUT_Y;


architecture rtl of LUT_Y is

	-- Build a 2-D array type for the RoM
	subtype word_t is std_logic_vector(15 downto 0);
	type memory_t is array(15 downto 0) of word_t; -- 2^4 = 16 
		
	function init_rom
		return memory_t is
		variable y_tmp : memory_t := (others => (others => '0'));
		begin
			y_tmp(15)  := "0000011001100111"; --1639
			y_tmp(14)  := "0011010101111111"; --13695
			y_tmp(13)  := "0000011001100111"; --1639
			y_tmp(12)  := "0011010101111111"; --13695
			y_tmp(11)  := "0000011001100111"; --1639
			y_tmp(10)  := "0011010101111111"; --13695
			y_tmp(9)   := "0000011001100111"; --1639
			y_tmp(8)   := "0011010101111111"; --13695
			y_tmp(7)   := "0000011001100111"; --1639
			y_tmp(6)   := "0011010101111111"; --13695
			y_tmp(5)   := "0000011001100111"; --1639
			y_tmp(4)   := "0011010101111111"; --13695
			y_tmp(3)   := "0000011001100111"; --1639
			y_tmp(2)   := "0011010101111111"; --13695
			y_tmp(1)   := "0000011001100111"; --1639
			y_tmp(0)   := "0011010101111111"; --13695
						
			
		return y_tmp;
	end init_rom;
	
	-- Declare the ROM signal and specify a default value.	Quartus II
	-- will create a memory initialization file (.mif) based on the 
	-- default value.
	signal rom : memory_t := init_rom;
	
begin
	
	process(i_mem_enable_Y)
	begin
		if(rising_edge(i_mem_enable_Y)) then
			o_LUT_Y <= rom(to_integer(unsigned(i_LUT_addr_Y)));
		end if;
	end process;
		
end rtl;

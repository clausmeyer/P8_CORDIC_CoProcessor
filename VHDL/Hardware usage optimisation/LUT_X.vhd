-- Look up table storing the predefined input values for X 

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use ieee.numeric_std.all;  

 
 
 ENTITY LUT_X IS
        PORT (
          i_LUT_addr_X    : IN STD_LOGIC_VECTOR (3 DOWNTO 0):= (others => '0');
          i_mem_enable_X : IN STD_LOGIC:= '0';
          o_LUT_X       : OUT STD_LOGIC_VECTOR (15 DOWNTO 0));
END LUT_X;


architecture rtl of LUT_X is

	-- Build a 2-D array type for the RoM
	subtype word_t is std_logic_vector(15 downto 0);
	type memory_t is array(15 downto 0) of word_t; -- 2^4 = 16 
		
	function init_rom
		return memory_t is
		variable x_tmp : memory_t := (others => (others => '0'));
		begin
			x_tmp(15)  := "0000000000000000"; -- 0
			x_tmp(14)  := "0000000000000000"; -- 0
			x_tmp(13)  := "0000000000000000"; -- 0
			x_tmp(12)  := "0000000000000000"; -- 0 
			x_tmp(11)  := "0000000000000000"; -- 0
			x_tmp(10)  := "0000000000000000"; -- 0
			x_tmp(9)   := "0000000000000000"; -- 0
			x_tmp(8)   := "0000000000000000"; -- 0
			x_tmp(7)   := "0000000000000000"; -- 0
			x_tmp(6)   := "0000000000000010"; -- 0.000122070312500
			x_tmp(5)   := "0000001010010101"; -- 0.040344238281250
			x_tmp(4)   := "0000011001100110"; -- 0.099975585937500
			x_tmp(3)   := "0001000000000000"; -- 0.250000000000000
			x_tmp(2)   := "0110110011001101"; -- 1.700012207031250
			x_tmp(1)   := "0001111111111111"; -- 0.499938964843750
			x_tmp(0)   := "0000000000000000"; -- 0		
						
			
		return x_tmp;
	end init_rom;
	
	-- Declare the ROM signal and specify a default value.	Quartus II
	-- will create a memory initialization file (.mif) based on the 
	-- default value.
	signal rom : memory_t := init_rom;
	
begin
	
	process(i_mem_enable_X)
	begin
		if(rising_edge(i_mem_enable_X)) then
			o_LUT_X <= rom(to_integer(unsigned(i_LUT_addr_X)));
		end if;
	end process;
		
end rtl;

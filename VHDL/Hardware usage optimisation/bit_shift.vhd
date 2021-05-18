-- This VHDL file is implementing the bit shift functionality with a variable shift length

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use ieee.numeric_std.all;  

entity bit_shift is
	generic
	(
		DATA_WIDTH 	: natural 	:= 16;
		ADDR_LENGTH : natural 	:= 4
	);
	Port (  i_bitshift  		: IN  STD_LOGIC_VECTOR((DATA_WIDTH-1) downto 0):= (others => '0');
			  o_bitshift 		: OUT STD_LOGIC_VECTOR((DATA_WIDTH-1) downto 0);
			  c_shiftlength 	: IN  STD_LOGIC_VECTOR((ADDR_LENGTH-1) downto 0):= (others => '0')
			);
	
end bit_shift;

architecture rtl of bit_shift is
  signal result : signed((DATA_WIDTH-1) downto 0);
begin
	

	
	result <= shift_right(signed(i_bitshift),to_integer(unsigned(c_shiftlength)));
	

	
	o_bitshift <= std_logic_vector(result);


end rtl;
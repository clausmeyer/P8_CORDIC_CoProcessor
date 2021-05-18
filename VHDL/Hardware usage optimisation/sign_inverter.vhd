-- VHDL code implementing the simple multiplier described in the report. In this code denoted as "sign inverter"

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use ieee.numeric_std.all;  

entity sign_inverter is
	generic
	(
		DATA_WIDTH : natural := 16
	);
	Port (  i_SI  			: IN  STD_LOGIC_VECTOR((DATA_WIDTH-1) downto 0):= (others => '0');
			  o_SI 			: OUT STD_LOGIC_VECTOR((DATA_WIDTH-1) downto 0);
			  i_SI_control : IN  STD_LOGIC_VECTOR := "01"
			);
	
end sign_inverter;

architecture rtl of sign_inverter is
  signal result : STD_LOGIC_VECTOR(15 downto 0);
begin

		o_SI <= i_SI		     when i_SI_control = "00" else -- y negative
		        not i_SI + 1   when i_SI_control = "01" else -- y positive
			     (others => '0');                             -- y = 0

end rtl;
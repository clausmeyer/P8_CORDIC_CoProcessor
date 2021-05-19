 -- This VHDL file is implementing the signed adder used in the CORDIC algorithm

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity signed_adder is
	generic
	(
		DATA_WIDTH : natural := 16
	);

	port 
	(
		i_adder_a	   : in STD_LOGIC_VECTOR	((DATA_WIDTH-1) downto 0):= (others => '0');
		i_adder_b	   : in STD_LOGIC_VECTOR	((DATA_WIDTH-1) downto 0):= (others => '0');
		o_adder			: out STD_LOGIC_VECTOR  ((DATA_WIDTH-1) downto 0)
	);

end entity;

architecture rtl of signed_adder is
begin

	o_adder <= STD_LOGIC_VECTOR(signed(i_adder_a) + signed(i_adder_b));

end rtl;

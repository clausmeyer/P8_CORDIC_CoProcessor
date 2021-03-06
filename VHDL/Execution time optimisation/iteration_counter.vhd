-- This VHDL file is responsible for keeping iterating the iteration count in the CORDIC algorithm

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity iteration_counter is

	generic
	(
		MIN_COUNT : natural := 0;
		MAX_COUNT : natural := 15
	);

	port
	(
		clk		 				  : in std_logic;
		i_reset	  				  : in std_logic;
		i_enable	  				  : in std_logic;
		o_iteration_count	     : out integer range MIN_COUNT to MAX_COUNT
	);

end entity;

architecture rtl of iteration_counter is
begin

	process (clk)
		variable   cnt		   : integer range MIN_COUNT to MAX_COUNT;
	begin
		if (rising_edge(clk)) then

			if i_reset = '1' then
				-- Reset the counter to 0
				cnt := 0;

			elsif i_enable = '1' then
				-- Increment the counter if counting is enabled	
					if cnt /= MAX_COUNT then
						cnt := cnt + 1;
					end if;
			end if;
		end if;

		-- Output the current count
		o_iteration_count <= cnt;
	end process;

end rtl;

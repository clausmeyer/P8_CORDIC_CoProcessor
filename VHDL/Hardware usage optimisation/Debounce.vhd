-- File for debouncing the button that is used for generating the cordic_enable signal

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
 
entity Debounce is
Port (
	DATA			: in std_logic;
	CLK 			: in std_logic;
	OP_DATA 		: out std_logic);
end Debounce;
 
architecture Behavioral of Debounce is
 
Signal OP1, OP2, OP3, OP4, OP5, OP6: std_logic;
 
begin
 
Process(CLK)
 
begin
 
If rising_edge(CLK) then
 
OP1 <= DATA;
 
OP2 <= OP1;
 
OP3 <= OP2;

OP4 <= OP3;
 
OP5 <= OP4;

OP6 <= OP5;
 
end if;
 
end process;
 
OP_DATA <= OP1 and OP2 and OP3 and OP4 and OP5 and OP6;
 
end Behavioral;

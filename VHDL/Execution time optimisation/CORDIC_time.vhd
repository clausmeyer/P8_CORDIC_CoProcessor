-- Main file for running the CORDIC implementation optimised for execution time

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use ieee.numeric_std.all;  
 
 -- All computations are handled in 2's complement fixed point using 1 sign bit, 1 integer bit and 14 fractional bits
 -- A scaling factor of 2^14 is therefore used between the actual values and the internally handled values
 
entity CORDIC_time is
GENERIC(
		ADDR_LENGTH : natural 	:= 4;
		DATA_WIDTH	: natural	:= 16);
    Port (
		 i_x	   : IN  STD_LOGIC_VECTOR((DATA_WIDTH-1) downto 0):= (others => '0'); -- Input x
		 i_y	   : IN  STD_LOGIC_VECTOR((DATA_WIDTH-1) downto 0):= (others => '0'); -- Input y
		 o_z	   : OUT STD_LOGIC_VECTOR((DATA_WIDTH-1) downto 0):= (others => '0'); -- Output z
		 i_enable_cordic : IN  STD_LOGIC := '0';
		 o_done  : OUT STD_LOGIC := '0' ;
		 clk_in  : IN STD_LOGIC := '0';
		 state_LED : OUT STD_LOGIC_VECTOR(3 downto 0):=(others => '0'); 
		 LUT_TEST : OUT STD_LOGIC_VECTOR((DATA_WIDTH-1) downto 0):= (others => '0')
		 ); 

end CORDIC_time;
 
architecture behave of CORDIC_time is


------------- Control signals ----------
  signal var_done 		 : STD_LOGIC:= '0';  
  signal var_zero 		 : STD_LOGIC_VECTOR((DATA_WIDTH-1) downto 0 ):= (others => '0');
  signal var_debounce    : STD_LOGIC:='0';
  signal var_first		 : STD_LOGIC:='1';
------------- \Control signals ----------


------------- Intermediate signales -------
  signal r_xn           : STD_LOGIC_VECTOR((DATA_WIDTH-1) downto 0):= (others => '0');

  signal r_yn           : STD_LOGIC_VECTOR((DATA_WIDTH-1) downto 0):= (others => '0');

  signal r_zn           : STD_LOGIC_VECTOR((DATA_WIDTH-1) downto 0):= (others => '0');
  signal r_zd				: STD_LOGIC_VECTOR((DATA_WIDTH-1) downto 0):= (others => '0'); 
------------- \Intermediate signales -------

  
-----------bit_shift signals--------
  signal i_bitshift_x  	: STD_LOGIC_VECTOR((DATA_WIDTH-1) downto 0):= (others => '0');
  signal i_bitshift_y  	: STD_LOGIC_VECTOR((DATA_WIDTH-1) downto 0):= (others => '0');
  
  signal o_bitshift_x 	: STD_LOGIC_VECTOR((DATA_WIDTH-1) downto 0);
  signal o_bitshift_y 	: STD_LOGIC_VECTOR((DATA_WIDTH-1) downto 0);
  
  signal c_shiftlength  : STD_LOGIC_VECTOR((ADDR_LENGTH-1) downto 0):= (others => '0');
-----------/bit_shift signals--------  

-----------sign_inverter signals--------
  signal i_SI_x			: STD_LOGIC_VECTOR((DATA_WIDTH-1) downto 0):= (others => '0');
  signal i_SI_y			: STD_LOGIC_VECTOR((DATA_WIDTH-1) downto 0):= (others => '0');
  signal i_SI_z			: STD_LOGIC_VECTOR((DATA_WIDTH-1) downto 0):= (others => '0');
  
  signal o_SI_x			: STD_LOGIC_VECTOR((DATA_WIDTH-1) downto 0);  
  signal o_SI_y			: STD_LOGIC_VECTOR((DATA_WIDTH-1) downto 0); 
  signal o_SI_z			: STD_LOGIC_VECTOR((DATA_WIDTH-1) downto 0);
  
  signal i_SI_control   : STD_LOGIC_VECTOR(1 downto 0) := "00";
-----------/sign_inverter signals--------


-----------LUT signals--------
  signal i_LUT_addr     : STD_LOGIC_VECTOR((ADDR_LENGTH-1) downto 0):= (others => '0'); 
  signal i_mem_enable   : STD_LOGIC:= '0';
  signal o_LUT 			: STD_LOGIC_VECTOR((DATA_WIDTH-1) downto 0);
  
  signal i_LUT_addr_X     : STD_LOGIC_VECTOR((ADDR_LENGTH-1) downto 0):= (others => '0'); 
  signal i_mem_enable_X   : STD_LOGIC:= '0';
  signal o_LUT_X 			: STD_LOGIC_VECTOR((DATA_WIDTH-1) downto 0);
  
  signal i_LUT_addr_Y     : STD_LOGIC_VECTOR((ADDR_LENGTH-1) downto 0):= (others => '0'); 
  signal i_mem_enable_Y   : STD_LOGIC:= '0';
  signal o_LUT_Y 			: STD_LOGIC_VECTOR((DATA_WIDTH-1) downto 0);
  
  signal LUT_COUNTER : integer:=0;
-----------/LUT signals--------

-----------signed_adder signals--------
  signal i_adder_a_x		: STD_LOGIC_VECTOR((DATA_WIDTH-1) downto 0):= (others => '0');
  signal i_adder_a_y		: STD_LOGIC_VECTOR((DATA_WIDTH-1) downto 0):= (others => '0');
  signal i_adder_a_z		: STD_LOGIC_VECTOR((DATA_WIDTH-1) downto 0):= (others => '0');

  signal i_adder_b_x		: STD_LOGIC_VECTOR((DATA_WIDTH-1) downto 0):= (others => '0');
  signal i_adder_b_y		: STD_LOGIC_VECTOR((DATA_WIDTH-1) downto 0):= (others => '0');
  signal i_adder_b_z		: STD_LOGIC_VECTOR((DATA_WIDTH-1) downto 0):= (others => '0');
  
  signal o_adder_x		: STD_LOGIC_VECTOR((DATA_WIDTH-1) downto 0);
  signal o_adder_y		: STD_LOGIC_VECTOR((DATA_WIDTH-1) downto 0);
  signal o_adder_z		: STD_LOGIC_VECTOR((DATA_WIDTH-1) downto 0);  
-----------/signed_adder signals--------  
  
--------Signals for iteration_counter---
  signal clk : std_logic := '0';
  signal clk_2 : std_logic := '0';
  signal o_iteration_count : integer range 0 to DATA_WIDTH-1 := 0;
  signal i_reset : std_logic := '0';
  signal i_enable : std_logic := '0';
-------/Signals for iteration_counter---

-------Signals for clock divider---
--Inputs
--signal clk : std_logic := '0';
signal reset : std_logic := '0';
 
--Outputs
signal clock_out : std_logic;
-------/Signals for clock divider---

 
-------States---------
  type state_type is (run, idle, done);
  signal state : state_type := idle;
-------/States--------- 
  

--------- Components-----------  

COMPONENT Clock_Divider is
PORT(
clk : IN std_logic;
reset : IN std_logic;
clock_out : OUT std_logic
);
END COMPONENT Clock_Divider;


component bit_shift is
	generic(	DATA_WIDTH 	: natural;
			   ADDR_LENGTH : natural
				);
	Port (  i_bitshift  	 : IN  std_logic_vector((DATA_WIDTH-1) downto 0);
			  o_bitshift 	 : OUT std_logic_vector((DATA_WIDTH-1) downto 0);
			  c_shiftlength : IN  STD_LOGIC_VECTOR((ADDR_LENGTH-1) downto 0) -- 2^4 = 16, allowing for up to 16 bit shifts
			);
end component bit_shift;

component sign_inverter is
	generic(	DATA_WIDTH : natural
				);
	Port (  i_SI  	      : IN  STD_LOGIC_VECTOR((DATA_WIDTH-1) downto 0);
			  o_SI 	      : OUT STD_LOGIC_VECTOR((DATA_WIDTH-1) downto 0);
			  i_SI_control	: IN  STD_LOGIC_VECTOR(1 downto 0)
			);
end component sign_inverter;

component LUT_16 is
	Port ( i_LUT_addr    : IN STD_LOGIC_VECTOR (3 DOWNTO 0);
          i_mem_enable  : IN STD_LOGIC;
          o_LUT         : OUT STD_LOGIC_VECTOR (15 DOWNTO 0)
			);
end component LUT_16;

component LUT_X is
	Port ( i_LUT_addr_X    : IN STD_LOGIC_VECTOR (3 DOWNTO 0);
          i_mem_enable_X  : IN STD_LOGIC;
          o_LUT_X         : OUT STD_LOGIC_VECTOR (15 DOWNTO 0)
			);
end component LUT_X;

component LUT_Y is
	Port ( i_LUT_addr_Y    : IN STD_LOGIC_VECTOR (3 DOWNTO 0);
          i_mem_enable_Y  : IN STD_LOGIC;
          o_LUT_Y         : OUT STD_LOGIC_VECTOR (15 DOWNTO 0)
			);
end component LUT_Y;

component signed_adder is
	generic(	DATA_WIDTH : natural
				);
	port(	i_adder_a	   : in STD_LOGIC_VECTOR((DATA_WIDTH-1) downto 0);
			i_adder_b	   : in STD_LOGIC_VECTOR((DATA_WIDTH-1) downto 0);
			o_adder 			: out STD_LOGIC_VECTOR((DATA_WIDTH-1) downto 0)
				);
end component signed_adder;

component iteration_counter is
	Port (
		clk		 				  : in std_logic;
		i_reset	  				  : in std_logic;
		i_enable	  				  : in std_logic;
		o_iteration_count	     : out integer range 0 to DATA_WIDTH-1
	);
end component iteration_counter;

component Debounce is
	Port (
		DATA			: in std_logic;
		CLK 			: in std_logic;
		OP_DATA 		: out std_logic
		);
end component Debounce;

--------- /Components----------

begin
   
----------- Map----------
-----------clock divider-------- 
	 clock_divider_x : Clock_Divider
    port map (
      clk     		=> clk,
		reset 		=> reset,
		clock_out	=> clock_out
      );
-----------/clock divider--------   

-----------bit_shift signals-------- 2 bit shifters used to optimise execution time
    bit_shift_INST_x : bit_shift
 	 generic map (DATA_WIDTH => DATA_WIDTH,
					  ADDR_LENGTH => ADDR_LENGTH) 
    port map (
      i_bitshift     => i_bitshift_x,
		o_bitshift 		=> o_bitshift_x,
		c_shiftlength	=> c_shiftlength
      );
		
	 bit_shift_INST_y : bit_shift
 	 generic map (DATA_WIDTH => DATA_WIDTH,
					  ADDR_LENGTH => ADDR_LENGTH) 
    port map (
      i_bitshift     => i_bitshift_y,
		o_bitshift 		=> o_bitshift_y,
		c_shiftlength	=> c_shiftlength
      );
-----------/bit_shift signals--------   
 
-----------sign_inverter signals-------- 3 sign inverters used to optimise execution time. Also known as simple multiplier  
	 sign_inverter_INST_x : sign_inverter
	 generic map (DATA_WIDTH => DATA_WIDTH)	
    port map (
      i_SI    			=> i_SI_x,
		o_SI 				=> o_SI_x,
		i_SI_control	=> i_SI_control
      );
		
	 sign_inverter_INST_y : sign_inverter
	 generic map (DATA_WIDTH => DATA_WIDTH)	
    port map (
      i_SI    			=> i_SI_y,
		o_SI 				=> o_SI_y,
		i_SI_control	=> i_SI_control
      );
		
	 sign_inverter_INST_z : sign_inverter
	 generic map (DATA_WIDTH => DATA_WIDTH)	
    port map (
      i_SI    			=> i_SI_z,
		o_SI 				=> o_SI_z,
		i_SI_control	=> i_SI_control
      );
-----------/sign_inverter signals--------
		
-----------LUT signals--------
    LUT_16_INST : LUT_16
    port map (
      i_LUT_addr    	=> i_LUT_addr,
		i_mem_enable 	=> i_mem_enable,
		o_LUT				=> o_LUT
      );
		
	 LUT_X_INST : LUT_X
    port map (
      i_LUT_addr_X    	=> i_LUT_addr_X,
		i_mem_enable_X 	=> i_mem_enable_X,
		o_LUT_X				=> o_LUT_X
      );
		
	 LUT_Y_INST : LUT_Y
    port map (
      i_LUT_addr_Y    	=> i_LUT_addr_Y,
		i_mem_enable_Y 	=> i_mem_enable_Y,
		o_LUT_Y				=> o_LUT_Y
      );
-----------/LUT signals--------
		
-----------signed_adder signals-------- 3 signed adders used to optimise execution time 
    Adder_x : signed_adder
	 generic map (DATA_WIDTH => DATA_WIDTH)	
    port map (
      i_adder_a    	=> i_adder_a_x,
		i_adder_b 		=> i_adder_b_x,
		o_adder			=> o_adder_x
      );	
		
    Adder_y : signed_adder
	 generic map (DATA_WIDTH => DATA_WIDTH)	
    port map (
      i_adder_a    	=> i_adder_a_y,
		i_adder_b 		=> i_adder_b_y,
		o_adder			=> o_adder_y
      );		
		
	 Adder_z : signed_adder
	 generic map (DATA_WIDTH => DATA_WIDTH)	
    port map (
      i_adder_a    	=> i_adder_a_z,
		i_adder_b 		=> i_adder_b_z,
		o_adder			=> o_adder_z
      );
-----------/signed_adder signals--------	

	 
-----------Iteration counter--------	 
	 iteration_counter_INST : iteration_counter
	 port map (
	 clk						=> clock_out,
	 i_reset					=> i_reset,
	 i_enable				=> i_enable,
	 o_iteration_count 	=> o_iteration_count
	 );
-----------\Iteration counter--------		 



----------- Debounce -----------
	Debounce_INST : Debounce
	port map (
		DATA			=> i_enable_cordic,
		CLK 			=> clock_out,
		OP_DATA 		=> var_debounce);
----------- \Debounce ----------	 
	 
-----------/Map----------	



-- Process for calculating arctangent using CORDIC  
  process(clock_out) is
  begin
		if(rising_edge(clock_out)) then
			case state is              
				when idle =>           --  This case is responsible for initializing the signals used     					
					-------- SHOW STATES --------
					state_LED(0) <= '1';
					state_LED(1) <= '0';
					state_LED(2) <= '0';
					state_LED(3) <= '0';
					-------- \SHOW STATES --------
										
					------- LUT inputs ------
					i_mem_enable_X <= '1';	-- Reads the current input from LUT X and Y
					i_mem_enable_Y <= '1';
					------- \LUT inputs ----------
					
					---- Done ----
					var_done <= '0';     -- Tells that the computation is not finished 
					---- \Done ----


					------ Next State -----
					if var_debounce = '0' then  -- Once this signal goes high, the CORDIC algorithm starts		
						state <= run;
						i_reset <= '0';
					else 
						i_reset <= '1'; 
					end if;
					------ \Next State -----
					
				------------ Assign --------
					r_yn <= O_LUT_Y;
					
					r_xn <= O_LUT_X;

					r_zn <= var_zero;
				------------ \Assign --------	
								
									
					
				when run =>           --  This case is responsible for computing the bitshifts
				
				
					------- New inputs --------
					if var_first = '0' then
						r_zn <= o_adder_z;
						r_yn <= o_adder_y;
						r_xn <= o_adder_x;
					end if;
					-------\New inputs --------


				
					-------- SHOW STATES --------
					state_LED(0) <= '0';
					state_LED(1) <= '1';
					state_LED(2) <= '0';
					state_LED(3) <= '0';
					-------- \SHOW STATES --------				
				
				
					----- LUT Output -----
					LUT_TEST <= O_LUT_Y; -- Sends the current output of the LUT_Y to the LED's on the FPGA board
					----- \LUT output ----- 

					------- LUT inputs ------
					i_mem_enable_X <= '0';	-- set low to be ready for next rising edge trigger
					i_mem_enable_Y <= '0';
					------- \LUT inputs ----------
						

					----- Next State ----				
					if o_iteration_count = DATA_WIDTH - 1 then
						state <= done; -- Next state done
						
						----- Counter ----
						i_reset <= '1';      -- Once this signal goes high, the iteration count is reset
						----- \Coutner ----
					else
						state <= run;   -- Run another iteration
					end if;
					----- \Next State ----						
					
					
				when done =>        -- Go back to the setup state and wait for a new input

					----- LUT Counter for inputs ----
					if LUT_COUNTER > 15 then	-- Make sure the LUT-address do not overflow
						LUT_COUNTER <= 0;
					else
						LUT_COUNTER <= LUT_COUNTER+1;
					end if;
					----- \LUT Counter for inputs ----
					
					----- Done ----
					var_done <= '1';   -- Outputs a signal showing that the computations has finished
										  -- Also sets the final values to the output ports
					----- \Done ----
					
					----- Counter ----
					i_reset <= '1';      -- Once this signal goes high, the iteration count is reset
					----- \Coutner ----
	
					-------- SHOW STATES --------
					state_LED(0) <= '0';
					state_LED(1) <= '0';
					state_LED(2) <= '1';
					state_LED(3) <= '0';
					-------- \SHOW STATES --------
					
					------------ Assign --------
					r_zd <= o_adder_z;
					------------ \Assign -------
									
					---- Next State -----
					state <= idle;  
					---- \Next State -----
					
					
				when others => state <= idle;
			end case;

		end if;
			
  end process;


var_first <= '0' when state = run else '1'; 
 
----- Counter -----	
i_enable <= '0' when state = done else '1'; -- Ready for trigger	
----- \Counter -----								

---- LUT -----
i_mem_enable <= '1' when state = run else '0'; -- Ready for trigger
---- \LUT ----		
  
  
------------ Bitshift --------
c_shiftlength <= std_logic_vector(to_unsigned(o_iteration_count,ADDR_LENGTH));

i_bitshift_x <= r_xn;
i_bitshift_y <= r_yn;

------------ \Bitshift -------

----- LUT ADDR -----
i_LUT_addr <= std_logic_vector(to_unsigned(o_iteration_count,ADDR_LENGTH));				
----- \LUT ADDR ----
		
----------- INPUT LUTS -------
i_LUT_addr_X <= std_logic_vector(to_unsigned(LUT_COUNTER,ADDR_LENGTH));
i_LUT_addr_Y <= std_logic_vector(to_unsigned(LUT_COUNTER,ADDR_LENGTH));
----------- \INPUT LUTS -------					


------  sign -------

i_SI_control(1) <= '1' when r_yn = var_zero else
						 '0';
i_SI_control(0) <= not r_yn(DATA_WIDTH-1);

------ \ - sign --------

------ Simple Multiplier -----

i_SI_x  				<= o_bitshift_x;
i_SI_y  				<= o_bitshift_y;
i_SI_z  				<= o_LUT;
----- \Simple Multiplier -----


----- Adder ----
i_adder_a_x <= r_xn;
i_adder_b_x <= std_logic_vector(-signed(o_SI_y));

i_adder_a_y <= r_yn;
i_adder_b_y <= o_SI_x;

i_adder_a_z <= r_zn;
i_adder_b_z <= std_logic_vector(-signed(o_SI_z));
----- \Adder --------
					
------------ Set the output ---------
o_z <= r_zd;
o_done <= var_done;
------------ \Set the output ---------  


------------ Set the clock ---------  
clk <= clk_in;
------------ \Set the clock ---------  



end behave;

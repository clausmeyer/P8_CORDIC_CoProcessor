library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use ieee.numeric_std.all;  
 
 -- All computations are handled in 2's complement fixed point using 1 sign bit, 1 integer bit and 14 fractional bits
 -- A scaling factor of 2^14 is therefore used between the actual values and the internally handled values
 
entity cordic_area is
GENERIC(
		ADDR_LENGTH : natural 	:= 4;
		DATA_WIDTH	: natural	:= 16);
    Port (
		 i_x	   : 		IN  STD_LOGIC_VECTOR((DATA_WIDTH-1) downto 0):= (others => '0'); -- Input x
		 i_y	   : 		IN  STD_LOGIC_VECTOR((DATA_WIDTH-1) downto 0):= (others => '0'); -- Input y
		 o_z	   : 		OUT STD_LOGIC_VECTOR((DATA_WIDTH-1) downto 0):= (others => '0'); -- Output z
		 o_y     : 		OUT STD_LOGIC_VECTOR((DATA_WIDTH-1) downto 0):= (others => '0'); -- Output y
		 i_enable_cordic : IN  STD_LOGIC := '0';
		 o_done  : 		OUT STD_LOGIC := '0' ;
		 clk_in  : 		IN STD_LOGIC := '0';
		 state_LED : 	OUT STD_LOGIC_VECTOR(3 downto 0):=(others => '0'); 
		 LUT_TEST : 	OUT STD_LOGIC_VECTOR((DATA_WIDTH-1) downto 0):= (others => '0')
		 ); 

end cordic_area;
 
 
 
architecture behave of cordic_area is

------------- Control signals ----------
  signal var_done 		 : STD_LOGIC:= '0';  
  signal var_zero 		 : STD_LOGIC_VECTOR((DATA_WIDTH-1) downto 0 ):= (others => '0');
  signal var_debounce    : STD_LOGIC:='0';
------------- \Control signals ----------


------------- Intermediate signales -------
  signal r_xa           : STD_LOGIC_VECTOR((DATA_WIDTH-1) downto 0):= (others => '0');
  signal r_xb           : STD_LOGIC_VECTOR((DATA_WIDTH-1) downto 0):= (others => '0');
  signal r_xb_m         : STD_LOGIC_VECTOR((DATA_WIDTH-1) downto 0):= (others => '0');
  signal r_xn           : STD_LOGIC_VECTOR((DATA_WIDTH-1) downto 0):= (others => '0');

  signal r_ya           : STD_LOGIC_VECTOR((DATA_WIDTH-1) downto 0):= (others => '0');  
  signal r_yb           : STD_LOGIC_VECTOR((DATA_WIDTH-1) downto 0):= (others => '0'); 
  signal r_yb_m         : STD_LOGIC_VECTOR((DATA_WIDTH-1) downto 0):= (others => '0');
  signal r_yn           : STD_LOGIC_VECTOR((DATA_WIDTH-1) downto 0):= (others => '0');

  signal r_za           : STD_LOGIC_VECTOR((DATA_WIDTH-1) downto 0):= (others => '0');
  signal r_zb           : STD_LOGIC_VECTOR((DATA_WIDTH-1) downto 0):= (others => '0');	
  signal r_zn           : STD_LOGIC_VECTOR((DATA_WIDTH-1) downto 0):= (others => '0');
  signal r_zd				: STD_LOGIC_VECTOR((DATA_WIDTH-1) downto 0):= (others => '0'); 
------------- \Intermediate signales -------


-----------bit_shift signals--------
  signal i_bitshift  	: STD_LOGIC_VECTOR((DATA_WIDTH-1) downto 0):= (others => '0');
  
  signal o_bitshift		: STD_LOGIC_VECTOR((DATA_WIDTH-1) downto 0);
  
  signal c_shiftlength  : STD_LOGIC_VECTOR((ADDR_LENGTH-1) downto 0):= (others => '0');
-----------/bit_shift signals--------  


-----------sign_inverter signals--------
  signal i_SI				: STD_LOGIC_VECTOR((DATA_WIDTH-1) downto 0):= (others => '0');
  
  signal o_SI				: STD_LOGIC_VECTOR((DATA_WIDTH-1) downto 0);  
  
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
  signal i_adder_a		: STD_LOGIC_VECTOR((DATA_WIDTH-1) downto 0):= (others => '0');

  signal i_adder_b		: STD_LOGIC_VECTOR((DATA_WIDTH-1) downto 0):= (others => '0');
  
  signal o_adder			: STD_LOGIC_VECTOR((DATA_WIDTH-1) downto 0);
-----------/signed_adder signals--------  
 
 
--------Signals for iteration_counter---
  signal clk : std_logic := '0';
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
  type state_type is (K1, K2, K3, K4, K5, idle, done);
  signal state : state_type := idle;
-------/States--------- 
 
 
------- Signals debug -------
  signal db_x_int : integer;
  signal db_y_int : integer;
  signal db_z_int : integer; 
------- \Signals debus -------

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
			  c_shiftlength : IN  STD_LOGIC_VECTOR((ADDR_LENGTH-1) downto 0) -- 2^4 = 16, så man har mulighed for at bifshifte up til 16 gange
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
		o_iteration_count	     : out integer range 0 to 31
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
      clk     => clk,
		reset 		=> reset,
		clock_out	=> clock_out
      );
-----------/clock divider--------   

-----------bit_shift signals-------- 
  bit_shift_INST : bit_shift
 	 generic map (DATA_WIDTH => DATA_WIDTH,
					  ADDR_LENGTH => ADDR_LENGTH) 
    port map (
      i_bitshift     => i_bitshift,
		o_bitshift 		=> o_bitshift,
		c_shiftlength	=> c_shiftlength
      );

-----------/bit_shift signals--------   
 
-----------sign_inverter signals--------   
	sign_inverter_INST : sign_inverter
	 generic map (DATA_WIDTH => DATA_WIDTH)	
    port map (
      i_SI    			=> i_SI,
		o_SI 				=> o_SI,
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
		
-----------signed_adder signals--------
   Adder_INST : signed_adder
	 generic map (DATA_WIDTH => DATA_WIDTH)	
    port map (
      i_adder_a    	=> i_adder_a,
		i_adder_b 		=> i_adder_b,
		o_adder			=> o_adder
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
		CLK 			=> clk,
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
					
					
					----- Counter -----
					i_reset <= '1'; 		--  Once this signal goes high, the iteration count is reset
					----- \Counter -----
					
					
					------ Next State -----
					if var_debounce = '0' then  -- Once this signal goes high, the CORDIC algorithm starts		
						state <= K1;
					end if;
					------ \Next State -----
					
					
					
					
					
				when K1 =>
				
				
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
					i_mem_enable_X <= '0';	-- Reads the current input from LUT X and Y
					i_mem_enable_Y <= '0';
					------- \LUT inputs ----------

					
					----- Counter -----
					i_reset <= '0'; -- Set reset low so it can begin counting
					----- \Counter -----
					
					----- Next State ----
					state <= K2; -- Next state
					----- \Next State ----
				
				
				
				
				when K2 =>		
					

					----- LUT ADDR -----
					i_LUT_addr <= std_logic_vector(to_unsigned(o_iteration_count,ADDR_LENGTH));				
					----- \LUT ADDR ----
					
					------ Adder --------
					r_xa <= r_xn; -- Sets the input to the adder 		
					r_ya <= r_yn; -- Sets the input to the adder 
					r_za <= r_zn; -- Sets the input to the adder 
					------ \Adder -------								
								
								
					----- Next State ----
					state <= K3; -- Next state
					----- \Next State ----
				
				
				
				
				
				when K3 =>
					----- Counter -----				
					i_enable <= '1'; -- Set high to count one up
					----- \Counter -----	
					
					---- LUT -----
					i_mem_enable <= '1'; -- Set high to get new values
					---- \LUT ----
					
					----- Next State ----
					state <= K4; -- Next state
					----- \Next State ----
				
				
				
								
				when K4 =>

					-------- SHOW STATES --------
					state_LED(0) <= '0';
					state_LED(1) <= '0';
					state_LED(2) <= '0';
					state_LED(3) <= '1';
					-------- \SHOW STATES --------
	
	
					----- Counter -----				
					i_enable <= '0'; -- Set low to be ready for next count. 
					----- \Counter -----								


					---- LUT -----
					i_mem_enable <= '0'; -- Set low to be ready for next value
					---- \LUT ----
					
					
					----- Next State ----
					state <= K5; -- Next state
					----- \Next State ----
				
				
				
							
				
				when K5 =>			

					----- Next State ----				
					if o_iteration_count = DATA_WIDTH - 1 then
						state <= done; -- Next state done
					else
						state <= K1;   -- Run another iteration
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
					
					-------------- DEBUG SIGNALS ----------------------
					--db_x_int <= to_integer(signed(o_adder_x));
					--db_y_int <= to_integer(signed(o_adder_y));
					--db_z_int <= to_integer(signed(o_adder_z));				
					-------------- \DEBUG SIGNALS ----------------------	
				
				
					-------- SHOW STATES --------
					state_LED(0) <= '0';
					state_LED(1) <= '0';
					state_LED(2) <= '1';
					state_LED(3) <= '0';
					-------- \SHOW STATES --------
					
					---- Next State -----
					state <= idle;  
					---- \Next State -----
					
				when others => state <= idle;
			end case;
		end if;
			
  end process;

  process(clk) is
  begin
		if(rising_edge(clk)) then
			case state is 
				when idle =>

				------------ Assign --------
					r_yn <= O_LUT_Y;
					
					r_xn <= O_LUT_X;
					
					r_zn <= var_zero;
					
				------------ \Assign --------				
				
				
				when K1 =>
				------------ Bitshift --------
					i_bitshift <= r_xn;
				------------ \Bitshift --------
				
								------------ -sign ------------
					if r_yn = var_zero then
						i_SI_control(1) <= '1'; -- If input is zero
					else
						i_SI_control(1) <= '0'; -- If input is not zero
					end if;
					
					i_SI_control(0) <= not r_yn(DATA_WIDTH-1); -- equal to the inverted sign bit. 				
				------------ \-sign ------------

				------------ Assign --------
					r_xb <= o_bitshift;
				------------ \Assign --------
				
				
				when K2 =>
				------------ Bitshift --------
					i_bitshift <= r_yn;
				------------ \Bitshift --------
				
				------------ Simple Multiplier --------
					i_SI <= r_xb;		  
				----------- \Simple Multiplier --------
				
				------------ Assign --------
					r_xb_m <= o_SI;
					
					r_yb <= o_bitshift;
				------------ \Assign --------

				
				when K3 =>
				------------ Adder -----------
					i_adder_a <= r_ya;
					i_adder_b <= r_xb;			
				------------ \Adder ----------	

				------------ Simple Multiplier --------
					i_SI <= r_yb; 
				----------- \Simple Multiplier --------
				
				------------ Assign --------
					r_xb <= r_xb_m;
					
					r_yb_m <= o_SI;
					
					r_yn <= o_adder;
				------------ \Assign --------				
				
				when K4 =>
				------------ Adder -----------
					i_adder_a <= r_xa;
					i_adder_b <= std_logic_vector(-signed(r_yb));				
				------------ \Adder ----------	

				------------ Simple Multiplier --------
					i_SI <= o_LUT; 
				----------- \Simple Multiplier --------

				------------ Assign --------
					r_yb <= r_yb_m;
					
					r_zb <= o_SI;
					
					r_xn <= o_adder;
				------------ \Assign --------		

				
				when K5 =>
				------------ Adder -----------
					i_adder_a <= r_za;
					i_adder_b <= std_logic_vector(-signed(r_zb));				
				------------ \Adder ----------	
		
				------------ Assign --------
					r_zn <= o_adder;
				------------ \Assign --------				
		
				when done =>
				
				------------ Assign --------
					r_zd <= r_zn;
				------------ \Assign -------
				
				when others => 
				
			end case;
		

		end if;
  end process;
  
------------ Bitshift --------
c_shiftlength <= std_logic_vector(to_unsigned(o_iteration_count,ADDR_LENGTH));
------------ \Bitshift -------
		

----------- INPUT LUTS -------
i_LUT_addr_X <= std_logic_vector(to_unsigned(LUT_COUNTER,ADDR_LENGTH));
i_LUT_addr_Y <= std_logic_vector(to_unsigned(LUT_COUNTER,ADDR_LENGTH));
----------- \INPUT LUTS -------					
					
------------ Set the output ---------
o_z <= r_zd;
o_done <= var_done;
------------ \Set the output ---------  

------------ Set the clock ---------  
clk <= clk_in;
------------ \Set the clock ---------  

end behave;




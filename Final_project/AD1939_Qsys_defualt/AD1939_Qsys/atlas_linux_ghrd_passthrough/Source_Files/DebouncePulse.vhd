LIBRARY IEEE;
USE  IEEE.STD_LOGIC_1164.all;
USE  IEEE.STD_LOGIC_ARITH.all;
USE  IEEE.STD_LOGIC_UNSIGNED.all;

---------------------------------------------------------------------------------
-- Debounce a pushbutton input signal and output a synchronized pulse
-- Filters out mechanical switch bounce for around 40Ms.
---------------------------------------------------------------------------------
entity DebouncePulse is
	port(
		clk      	    			: in  std_logic;  -- 50 MHz clock input assumed.  If different, change input_clock_divider below to generate the 1 Mhz clock correctly
		reset                   : in  std_logic;
		push_button	            : in  std_logic;  -- push button input will be debounced
		single_pulse            : out std_logic   -- pulse of 1 clock cycle sent out when push button is pressed
		);
end entity;

architecture DebouncePulse_arch of DebouncePulse is

	signal push_button_shifted      : std_logic_vector(3 downto 0);
	signal push_button_debounced    : std_logic;
	signal count_1Mhz   : std_logic_vector(6 DOWNTO 0); 
	signal count_100Khz : std_logic_vector(2 DOWNTO 0);
	signal count_10Khz  : std_logic_vector(2 DOWNTO 0);
	signal count_1Khz   : std_logic_vector(2 DOWNTO 0);
	signal count_100hz  : std_logic_vector(2 DOWNTO 0);
	signal clock_1Mhz   : std_logic; 
	signal clock_100khz : std_logic; 
	signal clock_10khz  : std_logic; 
	signal clock_1khz   : std_logic; 
	signal clock_100hz  : std_logic; 
	
	type state_type is (state_wait, state_high, state_low);
	signal state   : state_type;

begin
	--------------------------------------------------------------------------------------------------
	-- Debounce push button
	-- The shift register is 4 bits on a 100 Hz clock so mechanical bounce is filtered for ~40 msec
	--------------------------------------------------------------------------------------------------
   process(clock_100Hz)
	begin
	   if( rising_edge(clock_100Hz) ) then
			push_button_shifted(2 DOWNTO 0) <= push_button_shifted(3 DOWNTO 1);  -- shift right 1-bit every 100 Hz
			push_button_shifted(3)          <= push_button;
			if ( push_button_shifted = "0000" ) then  -- wait until there are no bounces in the 40 msec shift window
				push_button_debounced <= '0';
			else
				push_button_debounced <= '1';  -- keep signal asserted if there are any bounces
			end if;
		end if;
	end process;
	
	
	-- Logic to advance to the next state
	process (clk, reset)
	begin
		if reset = '1' then
			state <= state_wait;
		elsif (rising_edge(clk)) then
			case state is
				when state_wait =>
					if push_button_debounced = '1' then
						state <= state_high;
					else
						state <= state_wait;
					end if;
				when state_high =>
					state <= state_low;
				when state_low =>
					if push_button_debounced = '1' then  -- stay in low state until signal is deasserted
						state <= state_low;
					else
						state <= state_wait;
					end if;
				when others =>
					state <= state_wait;
			end case;
		end if;
	end process;

	-- Output depends solely on the current state
	process (state)
	begin
		case state is
			when state_wait =>
				single_pulse <= '0';
			when state_high =>
				single_pulse <= '1';
			when state_low =>
				single_pulse <= '0';
		end case;
	end process;
	
	----------------------------------------------------------------------------------
	-- Generate 1 MHz clock
	-- Change count threshold if clk input frequency changes to get a 1 MHz clock
	----------------------------------------------------------------------------------
   process(clk) 
	begin
		if( rising_edge(clk) ) then 
	      if (	count_1Mhz < 49 ) then
				count_1Mhz <= count_1Mhz + 1;
			else 
				count_1Mhz <= "0000000";
			end if;
	      if (	count_1Mhz < 25 ) then
				clock_1Mhz <= '0';
			else 
				clock_1Mhz <= '1';
			end if;
		end if;
	end process;
	----------------------------------------------------------------------------------
	-- Generate 100 kHz clock (divide by 10)
	----------------------------------------------------------------------------------
   process(clock_1Mhz) 
	begin
		if( rising_edge(clock_1Mhz) ) then 
			if ( count_100Khz /= 4 ) then
				count_100Khz <= count_100Khz + 1;
			else
				count_100khz <= "000";
				clock_100Khz <= NOT clock_100Khz;  -- toggled every 5th count to create divide by 10 clock
			end if;
		end if;
	end process;
	----------------------------------------------------------------------------------
	-- Generate 10 kHz clock (divide by 10)
	----------------------------------------------------------------------------------
   process(clock_100khz) 
	begin
		if( rising_edge(clock_100khz) ) then 
			if ( count_10Khz /= 4 ) then
				count_10Khz <= count_10Khz + 1;
			else
				count_10khz <= "000";
				clock_10Khz <= NOT clock_10Khz;  -- toggled every 5th count to create divide by 10 clock
			end if;
		end if;
	end process;
	----------------------------------------------------------------------------------
	-- Generate 1 kHz clock (divide by 10)
	----------------------------------------------------------------------------------
   process(clock_10khz) 
	begin
		if( rising_edge(clock_10khz) ) then 
			if ( count_1Khz /= 4 ) then
				count_1Khz <= count_1Khz + 1;
			else
				count_1khz <= "000";
				clock_1Khz <= NOT clock_1Khz;  -- toggled every 5th count to create divide by 10 clock
			end if;
		end if;
	end process;
	----------------------------------------------------------------------------------
	-- Generate 100 Hz clock (divide by 10)
	----------------------------------------------------------------------------------
   process(clock_1Khz) 
	begin
		if( rising_edge(clock_1Khz) ) then 
			if ( count_100hz /= 4 ) then
				count_100hz <= count_100hz + 1;
			else
				count_100hz <= "000";
				clock_100hz <= NOT clock_100hz;  -- toggled every 5th count to create divide by 10 clock
			end if;
		end if;
	end process;
	

	
end architecture;


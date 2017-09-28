----------------------------------------------------------------------------------
--
-- Company:          Flat Earth, Inc.
-- Author/Engineer:	Ross K. Snider
--
-- Create Date:      10/05/2016
--
-- Design Name:      AD1939_data.vhd  
--       				
-- Description:      The AD1939_data component converts the serial data to/from
--                   the AD1939 codec into a parallel bus format
--
--
-- Target Device(s): Altera DE0-Nano-Soc Evaluation Board
-- Tool versions:    Quartus Prime 16.0
--
-- Dependencies:     AD1939.vhd
--                       AD1939_Control.vhd
--                       AD1939_Data.vhd
--
-- Revisions:        1.0 (File Created)
--
-- Additional Comments: 
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
--use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity AD1939_data is
	port
	(	
		reset          : in  std_logic; -- system reset
		AD1939_MCLK    : out std_logic; -- 12.8 MHz Master Clock from AD1939 crystal
		-------------------------------------------------------------------------------------------------------------------------------------
		-- Physical Layer : signals to serial data port on AD1939
		-- Signals to/from AD1939 Serial Data Port (from ADCs/to DACs), i.e. connection to physical pins on AD1939
		-------------------------------------------------------------------------------------------------------------------------------------
		AD1939_ADC_SDATA1          : in     std_logic;   -- Serial data from AD1939 pin 27 ASDATA1, ADC1 24-bit normal stereo serial mode
		AD1939_ADC_SDATA2          : in     std_logic;   -- Serial data from AD1939 pin 26 ASDATA2, ADC2 24-bit normal stereo serial mode
		AD1939_ADC_BCLK            : in     std_logic;   -- Serial data from AD1939 pin 28 ABCLK, Bit Clock for ADCs (Master Mode)
		AD1939_ADC_LRCLK           : in     std_logic;   -- Serial data from AD1939 pin 29 ALRCLK, LR Clock for ADCs (Master Mode)
		--
		AD1939_DAC_SDATA1          : out    std_logic;   -- Serial data to AD1939 pin 20 DSDATA1, DAC1 24-bit normal stereo serial mode
		AD1939_DAC_SDATA2          : out    std_logic;   -- Serial data to AD1939 pin 19 DSDATA2, DAC2 24-bit normal stereo serial mode
		AD1939_DAC_SDATA3          : out    std_logic;   -- Serial data to AD1939 pin 18 DSDATA3, DAC3 24-bit normal stereo serial mode
		AD1939_DAC_SDATA4          : out    std_logic;   -- Serial data to AD1939 pin 15 DSDATA4, DAC4 24-bit normal stereo serial mode
		AD1939_DAC_BCLK            : out    std_logic;   -- Serial data to AD1939 pin 21 DBCLK, Bit Clock for DACs (Slave Mode)
		AD1939_DAC_LRCLK           : out    std_logic;   -- Serial data to AD1939 pin 22 DLRCLK, LR Clock for DACs (Slave Mode)
		-----------------------------------------------------------------------------------------------------------
		-- Abstracted data channels, i.e. interface to FPGA data plane 
		-- Interface for reading and writing AD1939 ADC/DAC (sample) 24-bit data (data is in 2's complement form)???
		-----------------------------------------------------------------------------------------------------------
		-- Data from ADCs
		AD1939_Data_ADC1_Left   : out std_logic_vector(23 downto 0); 
		AD1939_Data_ADC1_Right  : out std_logic_vector(23 downto 0); 
		AD1939_Data_ADC2_Left   : out std_logic_vector(23 downto 0); 
		AD1939_Data_ADC2_Right  : out std_logic_vector(23 downto 0); 
		AD1939_Data_ADCs_ready  : out std_logic;                        -- pulse 1 BCLK period wide signifies data is ready to read from ADCs (this pulse occurs at the sample rate Fs) 	
      --	Data to DACs	
		AD1939_Data_DAC1_Left   : in std_logic_vector(23 downto 0);    -- On the rising edge of the DAC_LRCLK, these DAC signals will be captured 
		AD1939_Data_DAC1_Right  : in std_logic_vector(23 downto 0); 
		AD1939_Data_DAC2_Left   : in std_logic_vector(23 downto 0); 
		AD1939_Data_DAC2_Right  : in std_logic_vector(23 downto 0); 
		AD1939_Data_DAC3_Left   : in std_logic_vector(23 downto 0); 
		AD1939_Data_DAC3_Right  : in std_logic_vector(23 downto 0); 
		AD1939_Data_DAC4_Left   : in std_logic_vector(23 downto 0); 
		AD1939_Data_DAC4_Right  : in std_logic_vector(23 downto 0)
	);
end AD1939_data;

architecture behavioral of AD1939_data is

  -----------------------------------------------
	-- Define the states of the state machine
   -----------------------------------------------
	type state_type is (state_left, state_right); 
	signal current_state, next_state: state_type;  	

   signal right_counter        : std_logic_vector(4 downto 0);
	signal right_counter_enable : std_logic;
	signal right_counter_clear  : std_logic;
   signal left_counter         : std_logic_vector(4 downto 0);
	signal left_counter_enable  : std_logic;
	signal left_counter_clear   : std_logic;

   signal shift_register_ADC1_right : std_logic_vector(31 downto 0);
   signal shift_register_ADC1_left  : std_logic_vector(31 downto 0);
   signal shift_register_ADC2_right : std_logic_vector(31 downto 0);
   signal shift_register_ADC2_left  : std_logic_vector(31 downto 0);
   signal shift_register_DAC1_right : std_logic_vector(31 downto 0);
   signal shift_register_DAC1_left  : std_logic_vector(31 downto 0);
   signal shift_register_DAC2_right : std_logic_vector(31 downto 0);
   signal shift_register_DAC2_left  : std_logic_vector(31 downto 0);
   signal shift_register_DAC3_right : std_logic_vector(31 downto 0);
   signal shift_register_DAC3_left  : std_logic_vector(31 downto 0);
   signal shift_register_DAC4_right : std_logic_vector(31 downto 0);
   signal shift_register_DAC4_left  : std_logic_vector(31 downto 0);
--   signal shift_register_DAC1_right_int : std_logic_vector(31 downto 0);
--   signal shift_register_DAC1_left_int  : std_logic_vector(31 downto 0);
--   signal shift_register_DAC2_right_int : std_logic_vector(31 downto 0);
--   signal shift_register_DAC2_left_int  : std_logic_vector(31 downto 0);
--   signal shift_register_DAC3_right_int : std_logic_vector(31 downto 0);
--   signal shift_register_DAC3_left_int  : std_logic_vector(31 downto 0);
--   signal shift_register_DAC4_right_int : std_logic_vector(31 downto 0);
--   signal shift_register_DAC4_left_int  : std_logic_vector(31 downto 0);

begin

   ----------------------------------------------------------------------------------------------------------------
	-- Capture ADC serial data
	-- Convert serial bit stream from ADCs to parallel bus signals
   ----------------------------------------------------------------------------------------------------------------
   process(AD1939_ADC_BCLK)  -- master bit clock from ADCs
	begin
		if (rising_edge(AD1939_ADC_BCLK)) then  
			if (AD1939_ADC_LRCLK = '1') then  -- left/right framing master clock from ADCs  (right channel = high)
			   -- ADC1 : Right
				shift_register_ADC1_right(31 downto 1) <= shift_register_ADC1_right(30 downto 0);  -- shift left 1-bit
				shift_register_ADC1_right(0)           <= AD1939_ADC_SDATA1;
			   -- ADC2 : Right
				shift_register_ADC2_right(31 downto 1) <= shift_register_ADC2_right(30 downto 0);  -- shift left 1-bit
				shift_register_ADC2_right(0)           <= AD1939_ADC_SDATA2;
			else
				-- ADC1 : Left
				shift_register_ADC1_left(31 downto 1) <= shift_register_ADC1_left(30 downto 0);  -- shift left 1-bit
				shift_register_ADC1_left(0)           <= AD1939_ADC_SDATA1;
				-- ADC2 : Left
				shift_register_ADC2_left(31 downto 1) <= shift_register_ADC2_left(30 downto 0);  -- shift left 1-bit
				shift_register_ADC2_left(0)           <= AD1939_ADC_SDATA2;
			end if;
		end if;
	end process;	
   ----------------------------------------------------------------------------------------------------------------
	-- Capture ADC serial data
	-- capture the bus signals after the serial stream has been shifted in
   ----------------------------------------------------------------------------------------------------------------	
   process(AD1939_ADC_LRCLK)  -- left/right framing master clock from ADCs  (right channel = high)
	begin
		if (falling_edge(AD1939_ADC_LRCLK)) then  
			AD1939_Data_ADC1_Right <= shift_register_ADC1_right(30 downto 7);
			AD1939_Data_ADC2_Right <= shift_register_ADC2_right(30 downto 7);
		end if;
		if (rising_edge(AD1939_ADC_LRCLK)) then  
			AD1939_Data_ADC1_left <= shift_register_ADC1_left(30 downto 7);
			AD1939_Data_ADC2_left <= shift_register_ADC2_left(30 downto 7);
		end if;
	end process;
	

	
	-----------------------------------------------
	-- State Machine - State Transition Process
   -----------------------------------------------
	process (AD1939_ADC_BCLK)
	begin
		if (rising_edge(AD1939_ADC_BCLK)) then
			current_state <= next_state; 	-- change the state to the next state
		end if;
	end process;

  -----------------------------------------------
	-- State Machine - Determine Next State
	-- States associated with left/right channels
   -----------------------------------------------
	process (current_state, AD1939_ADC_LRCLK)
	begin	
		case (current_state) is
			---------------------------------------
			when state_right =>
				if ( AD1939_ADC_LRCLK = '1' ) then
					next_state <= state_right;
				else
					next_state <= state_left;
				end if;
			---------------------------------------			
			when state_left =>
				if ( AD1939_ADC_LRCLK = '0' ) then
					next_state <= state_left;
				else
					next_state <= state_right;
				end if;
		end case;
	end process;
	
  -----------------------------------------------
	-- State Machine - Generate control Signals
   -----------------------------------------------
	process (current_state)
	begin 
		--- Set state dependent values
		case (current_state) is
			---------------------------------------		
			when state_right =>
				right_counter_enable   <= '1';  
				right_counter_clear    <= '0';  
				left_counter_enable    <= '0';  
				left_counter_clear     <= '1';  
			---------------------------------------		
			when state_left =>                                  
				right_counter_enable   <= '0';  
				right_counter_clear    <= '1';  
				left_counter_enable    <= '1';  
				left_counter_clear     <= '0';  
		end case;
	end process;

	------------------------------------------
	-- Right Counter
   ------------------------------------------
	process(AD1939_ADC_BCLK)
	begin
		if rising_edge(AD1939_ADC_BCLK) then
			if (right_counter_clear = '1') then
				right_counter <= "00000";
			elsif (right_counter_enable = '1') then
				right_counter <= right_counter + 1;
			end if;
		end if;		
	end process;

	------------------------------------------
	-- Left Counter
   ------------------------------------------
	process(AD1939_ADC_BCLK)
	begin
		if rising_edge(AD1939_ADC_BCLK) then
			if (left_counter_clear = '1') then
				left_counter <= "00000";
			elsif (left_counter_enable = '1') then
				left_counter <= left_counter + 1;
			end if;
		end if;		
	end process;
	
	
   ----------------------------------------------------------------------------------------------------------------
	-- Create DAC serial data
	-- Create serial bit stream to be sent to DAC
   ----------------------------------------------------------------------------------------------------------------
   process(AD1939_ADC_BCLK)  -- master bit clocks from ADCs
	begin
		if (rising_edge(AD1939_ADC_BCLK)) then  
		
			if (right_counter_enable = '1') then  
				if (right_counter = "00000") then  
					 shift_register_DAC1_right <= '0' & AD1939_Data_DAC1_right & "0000000";
					 shift_register_DAC2_right <= '0' & AD1939_Data_DAC2_right & "0000000";
					 shift_register_DAC3_right <= '0' & AD1939_Data_DAC3_right & "0000000";
					 shift_register_DAC4_right <= '0' & AD1939_Data_DAC4_right & "0000000";
				end if;
				--
				AD1939_DAC_SDATA1 <= shift_register_DAC1_right(30 - to_integer(unsigned(right_counter))); 
				AD1939_DAC_SDATA2 <= shift_register_DAC2_right(30 - to_integer(unsigned(right_counter))); 
				AD1939_DAC_SDATA3 <= shift_register_DAC3_right(30 - to_integer(unsigned(right_counter))); 
				AD1939_DAC_SDATA4 <= shift_register_DAC4_right(30 - to_integer(unsigned(right_counter))); 
			end if;
			
			if (left_counter_enable = '1') then  
				if (left_counter = "00000") then  
					 shift_register_DAC1_left <= '0' & AD1939_Data_DAC1_left & "0000000";
					 shift_register_DAC2_left <= '0' & AD1939_Data_DAC2_left & "0000000";
					 shift_register_DAC3_left <= '0' & AD1939_Data_DAC3_left & "0000000";
					 shift_register_DAC4_left <= '0' & AD1939_Data_DAC4_left & "0000000";
				end if;
				--
				AD1939_DAC_SDATA1 <= shift_register_DAC1_left(30 - to_integer(unsigned(left_counter))); 
				AD1939_DAC_SDATA2 <= shift_register_DAC2_left(30 - to_integer(unsigned(left_counter))); 
				AD1939_DAC_SDATA3 <= shift_register_DAC3_left(30 - to_integer(unsigned(left_counter))); 
				AD1939_DAC_SDATA4 <= shift_register_DAC4_left(30 - to_integer(unsigned(left_counter))); 
			end if;
			
		end if;
	end process;	
	
	
	AD1939_DAC_BCLK  <= not AD1939_ADC_BCLK;
	AD1939_DAC_LRCLK <= AD1939_ADC_LRCLK;

end behavioral;

	
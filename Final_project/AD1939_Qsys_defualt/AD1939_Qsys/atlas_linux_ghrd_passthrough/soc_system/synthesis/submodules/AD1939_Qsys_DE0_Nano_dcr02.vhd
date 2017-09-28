----------------------------------------------------------------------------------
-- Company:          Montana State University
-- Author/Engineer:	 Ross Snider 
-- 
-- Create Date:    3/16/2017 
-- Design Name: 
-- Module Name:    AD1939_Qsys_DE0_Nano_dcr02  -  Qsys wrapper for AD1939 using the DE0_Nano_SoC board and targeting the rev 002 audio daughter card
-- Project Name: 
-- Target Devices: DE0-Nano-SoC
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity AD1939_Qsys_DE0_Nano_dcr02 is
	port (
		clk 			    	: in std_logic;   
		reset_n 		    	: in std_logic;
		------------------------------------------------------------
		-- Avalon Memory Mapped Slave Signals
		------------------------------------------------------------
		avs_s1_address 	     : in  std_logic_vector( 4 downto 0);  -- determines number of registers
		avs_s1_write 		     : in  std_logic;
		avs_s1_writedata 	     : in  std_logic_vector(31 downto 0);
		avs_s1_read 		     : in  std_logic;
		avs_s1_readdata 	     : out std_logic_vector(31 downto 0);
		------------------------------------------------------------
		-- Avalon Streaming Source Signals (Channel 1-left Source from ADC)
		------------------------------------------------------------
		Line_In_left_data   : out std_logic_vector(31 downto 0);  -- Data format: Signed, W=32, F=28, normalized to +=1
      Line_In_left_valid  : out std_logic;
		Line_In_left_error  : out std_logic_vector( 1 downto 0);
		------------------------------------------------------------
		-- Avalon Streaming Source Signals (Channel 1-right Source from ADC)
		------------------------------------------------------------
		Line_In_right_data  : out std_logic_vector(31 downto 0);  -- Data format: Signed, W=32, F=28, normalized to +=1
      Line_In_right_valid : out std_logic;
		Line_In_right_error : out std_logic_vector( 1 downto 0);
		------------------------------------------------------------
		-- Avalon Streaming Source Signals (Channel 2-left Source from ADC)
		------------------------------------------------------------
		Mic_In_left_data   : out std_logic_vector(31 downto 0);  -- Data format: Signed, W=32, F=28, normalized to +=1
      Mic_In_left_valid  : out std_logic;
		Mic_In_left_error  : out std_logic_vector( 1 downto 0);
		------------------------------------------------------------
		-- Avalon Streaming Source Signals (Channel 2-right Source from ADC)
		------------------------------------------------------------
		Mic_In_right_data  : out std_logic_vector(31 downto 0);  -- Data format: Signed, W=32, F=28, normalized to +=1
      Mic_In_right_valid : out std_logic;
		Mic_In_right_error : out std_logic_vector( 1 downto 0);
		------------------------------------------------------------
		-- Avalon Streaming Sink Signals (Channel 1-left Sink to DAC)
		------------------------------------------------------------
		Line_Out_left_data     : in  std_logic_vector(31 downto 0);  -- Data format: Signed, W=32, F=28, normalized to +=1
      Line_Out_left_valid    : in  std_logic;
		Line_Out_left_error    : in  std_logic_vector( 1 downto 0);
		------------------------------------------------------------
		-- Avalon Streaming Sink Signals (Channel 1-right Sink to DAC)
		------------------------------------------------------------
		Line_Out_right_data    : in  std_logic_vector(31 downto 0); -- Data format: Signed, W=32, F=28, normalized to +=1
      Line_Out_right_valid   : in  std_logic;
		Line_Out_right_error   : in  std_logic_vector( 1 downto 0);
		------------------------------------------------------------
		-- Avalon Streaming Sink Signals (Channel 2-left Sink to DAC)
		------------------------------------------------------------
		Headphone_Out_left_data     : in  std_logic_vector(31 downto 0);  -- Data format: Signed, W=32, F=28, normalized to +=1
      Headphone_Out_left_valid    : in  std_logic;
		Headphone_Out_left_error    : in  std_logic_vector( 1 downto 0);
		------------------------------------------------------------
		-- Avalon Streaming Sink Signals (Channel 2-right Sink to DAC)
		------------------------------------------------------------
		Headphone_Out_right_data    : in  std_logic_vector(31 downto 0); -- Data format: Signed, W=32, F=28, normalized to +=1
      Headphone_Out_right_valid   : in  std_logic;
		Headphone_Out_right_error   : in  std_logic_vector( 1 downto 0);
		------------------------------------------------------------
		-- external conduit signals - SPI control
		------------------------------------------------------------
		AD1939_SPI_CIN         : out std_logic;  		 -- SPI Control Data Input to AD1939 pin 30 CIN
		AD1939_SPI_COUT        : in  std_logic;       -- SPI Control Data output from AD1939 pin 31 COUT
		AD1939_SPI_CCLK        : out std_logic;       -- SPI Control Clock Input to AD1939 pin 34 CCLK
		AD1939_SPI_CLATCH_n    : out std_logic;       -- SPI Latch for control data, input to AD1939 pin 35 CLATCH_n (active low)
		------------------------------------------------------------
		-- external conduit signals - data (ADC & DAC)
		------------------------------------------------------------
		AD1939_ADC_SDATA1      : in  std_logic;   -- Serial data from AD1939 pin 27 ASDATA1, ADC1 24-bit normal stereo serial mode
		AD1939_ADC_SDATA2      : in  std_logic;   -- Serial data from AD1939 pin 26 ASDATA2, ADC2 24-bit normal stereo serial mode
		AD1939_ADC_BCLK        : in  std_logic;   -- Serial data from AD1939 pin 28 ABCLK, Bit Clock for ADCs (Master Mode)
		AD1939_ADC_LRCLK       : in  std_logic;   -- Serial data from AD1939 pin 29 ALRCLK, LR Clock for ADCs (Master Mode)
		AD1939_DAC_SDATA1      : out std_logic;   -- Serial data to AD1939 pin 20 DSDATA1, DAC1 24-bit normal stereo serial mode
		AD1939_DAC_SDATA2      : out std_logic;   -- Serial data to AD1939 pin 19 DSDATA2, DAC2 24-bit normal stereo serial mode
		AD1939_DAC_SDATA3      : out std_logic;   -- Serial data to AD1939 pin 18 DSDATA3, DAC3 24-bit normal stereo serial mode
		AD1939_DAC_SDATA4      : out std_logic;   -- Serial data to AD1939 pin 15 DSDATA4, DAC4 24-bit normal stereo serial mode
		AD1939_DAC_BCLK        : out std_logic;   -- Serial data to AD1939 pin 21 DBCLK, Bit Clock for DACs (Slave Mode)
		AD1939_DAC_LRCLK       : out std_logic   -- Serial data to AD1939 pin 22 DLRCLK, LR Clock for DACs (Slave Mode)
	);
end AD1939_Qsys_DE0_Nano_dcr02;

architecture behavior of AD1939_Qsys_DE0_Nano_dcr02 is

	component AD1939 is
		port
		(	
			AD1939_SPI_CLK : in  std_logic; -- SPI Clock that must be < 10 MHz
			reset          : in  std_logic; -- system reset
			AD1939_MCLK    : out std_logic; -- 12.8 MHz Master Clock from AD1939 crystal
			state_monitor  : out std_logic_vector (3 downto 0);  -- debug, also used for determining power up mode
			----------------------------------------------------------------------------------------------------------------
			-- Physical Layer : signals to SPI port
			-- Signals to/from AD1939 SPI Control Port (data direction from AD1939 perspective), connection to physical pins on AD1939
			-- 10 MHz CCLK max (see page 7 of AD1939 data sheet)
			-- CIN data is 24-bits (see page 14 of AD1939 data sheet)
			-- CLATCH_n must have pull-up resistor so that AD1939 recognizes presence of SPI controller on power-up
			----------------------------------------------------------------------------------------------------------------
			AD1939_SPI_CIN      : out std_logic;  		 -- SPI Control Data Input to AD1939 pin 30 CIN
			AD1939_SPI_COUT     : in  std_logic;       -- SPI Control Data output from AD1939 pin 31 COUT
			AD1939_SPI_CCLK     : out std_logic;       -- SPI Control Clock Input to AD1939 pin 34 CCLK
			AD1939_SPI_CLATCH_n : out std_logic;       -- SPI Latch for control data, input to AD1939 pin 35 CLATCH_n (active low)
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
			----------------------------------------------------------------------------------------------------------------------------------------------------------------
			-- Abstracted register interface to AD1939
			-- Simple interface to read/write AD1939 register data
			----------------------------------------------------------------------------------------------------------------------------------------------------------------
			AD1939_Reg_Addr				: in 		std_logic_vector (4 downto 0);   -- Address of AD1939 Register to be read/written (there are 17 registers)
			AD1939_Reg_Write_Data		: in 		std_logic_vector (7 downto 0);   -- Data to be written to AD1939 Register
			AD1939_Reg_Write_Start  	: in 		std_logic;                       -- Initiates the register write when asserted, must be deasserted to return from busy
			AD1939_Reg_Read_Data			: out		std_logic_vector (7 downto 0);   -- Data read from AD1939 Register
			AD1939_Reg_Read_Start	   : in 		std_logic;                       -- Initiates the register read when asserted, must be deasserted to return from busy
			AD1939_Reg_Read_Data_Ready	: out		std_logic;   							-- Clock pulse signifies data read from AD1939 Register and is ready to be captured
			AD1939_Reg_Busy	         : out 	std_logic;                       -- read or write is occurring, any new read/write will be ignored 
			-----------------------------------------------------------------------------------------------------------
			-- Abstracted data channels, i.e. interface to data plane 
			-- Interface for reading and writing AD1939 ADC/DAC (sample) 24-bit data (data is in 2's complement form)???
			-----------------------------------------------------------------------------------------------------------
			-- Data from ADCs
			AD1939_Data_ADC1_Left   : out std_logic_vector (23 downto 0); 
			AD1939_Data_ADC1_Right  : out std_logic_vector (23 downto 0); 
			AD1939_Data_ADC2_Left   : out std_logic_vector (23 downto 0); 
			AD1939_Data_ADC2_Right  : out std_logic_vector (23 downto 0); 
			AD1939_Data_ADCs_ready  : out std_logic;                        -- pulse 1 BCLK period wide signifies data is ready to read from ADCs (this pulse occurs at the sample rate Fs) 	
			--	Data to DACs	
			AD1939_Data_DAC1_Left   : in std_logic_vector (23 downto 0);    -- On the rising edge of the DAC_LRCLK, these DAC signals will be captured 
			AD1939_Data_DAC1_Right  : in std_logic_vector (23 downto 0); 
			AD1939_Data_DAC2_Left   : in std_logic_vector (23 downto 0); 
			AD1939_Data_DAC2_Right  : in std_logic_vector (23 downto 0); 
			AD1939_Data_DAC3_Left   : in std_logic_vector (23 downto 0); 
			AD1939_Data_DAC3_Right  : in std_logic_vector (23 downto 0); 
			AD1939_Data_DAC4_Left   : in std_logic_vector (23 downto 0); 
			AD1939_Data_DAC4_Right  : in std_logic_vector (23 downto 0)
		);
	end component;

	component commandFIFO is
	PORT
		(
			clock		: IN STD_LOGIC ;
			data		: IN STD_LOGIC_VECTOR (12 DOWNTO 0);
			rdreq		: IN STD_LOGIC ;
		   sclr		: IN STD_LOGIC ;
			wrreq		: IN STD_LOGIC ;
			empty		: OUT STD_LOGIC ;
			full		: OUT STD_LOGIC ;
			q		   : OUT STD_LOGIC_VECTOR (12 DOWNTO 0)
		);
   end component;


 	-------------------------------------------------------
	-- Internal signals
	-------------------------------------------------------
	signal reg_read         : std_logic;
	signal reg_write        : std_logic;
	signal reg_address      : std_logic_vector(4 downto 0);
	signal reg_data         : std_logic_vector(7 downto 0);
	signal pup_write        : std_logic;
	signal pup_address      : std_logic_vector(4 downto 0);
	signal pup_data         : std_logic_vector(7 downto 0);
	signal reset            : std_logic;
	signal data_in          : signed(31 downto 0);  
	signal data_out         : signed(31 downto 0);  
	signal FIFO_full        : std_logic;
	constant zeros24        : std_logic_vector(23 downto 0) := "000000000000000000000000";
	constant zeros32        : std_logic_vector(31 downto 0) := "00000000000000000000000000000000";
	signal AD1939_state     : std_logic_vector(3 downto 0);  
	signal FIFO_read        : std_logic;
	signal FIFO_write       : std_logic;
	signal FIFO_empty       : std_logic;
	signal FIFO_write_in    : std_logic;
	signal FIFO_clear       : std_logic;
	signal FIFO_data_in     : std_logic_vector(12 downto 0);  
	signal FIFO_data_out    : std_logic_vector(12 downto 0);  
	signal reg_counter        : unsigned(4 downto 0);
	signal reg_counter_reset  : std_logic;
	signal reg_counter_enable : std_logic;
	signal AD1939_Reg_Read_Data_Ready : std_logic;
	signal AD1939_Reg_Busy            : std_logic;
	signal AD1939_Reg_Read_Start      : std_logic;
	signal AD1939_Reg_write_Start     : std_logic;
	signal AD1939_Reg_Addr            : std_logic_vector(4 downto 0);
	signal AD1939_Reg_Read_Data       : std_logic_vector(7 downto 0);
	signal AD1939_Reg_write_Data      : std_logic_vector(7 downto 0);
	signal ch1_left_ADC_data          : std_logic_vector(23 downto 0);
	signal ch1_right_ADC_data         : std_logic_vector(23 downto 0);
	signal ch2_left_ADC_data          : std_logic_vector(23 downto 0);
	signal ch2_right_ADC_data         : std_logic_vector(23 downto 0);
	signal ADC_samples_ready          : std_logic;
	signal ADC_source_valid           : std_logic;
	signal ch1_left_DAC_data          : std_logic_vector(23 downto 0);
	signal ch1_right_DAC_data         : std_logic_vector(23 downto 0);
	signal ch2_left_DAC_data          : std_logic_vector(23 downto 0);
	signal ch2_right_DAC_data         : std_logic_vector(23 downto 0);
	signal spicount                   : unsigned(7 downto 0);
	signal SPI_clk                    : std_logic;
	
 	--------------------------------------------------------------
	-- States for power up initialization of the shadow registers
	--------------------------------------------------------------
	type state_type1 is (PowerUpReset, powerup_wait, init_address, init_start, init_wait, init_read, init_write, init_check, state_fifo_wait, state_fifo_read, state_AD1939_data, state_AD1939_write, state_AD1939_wait);
   signal state1 : state_type1 := PowerUpReset;
	
	-------------------------------------------------------
	-- AD1939 Shadow Registers
	-------------------------------------------------------
	signal reg00_pll_ctrl0  : std_logic_vector(7 downto 0);
	signal reg01_pll_ctrl1  : std_logic_vector(7 downto 0);
	signal reg02_DAC_ctrl0  : std_logic_vector(7 downto 0);
	signal reg03_DAC_ctrl1  : std_logic_vector(7 downto 0);
	signal reg04_DAC_ctrl2  : std_logic_vector(7 downto 0);
	signal reg05_DAC_mutes  : std_logic_vector(7 downto 0);
	signal reg06_DAC_L1_vol : std_logic_vector(7 downto 0);
	signal reg07_DAC_R1_vol : std_logic_vector(7 downto 0);
	signal reg08_DAC_L2_vol : std_logic_vector(7 downto 0);
	signal reg09_DAC_R2_vol : std_logic_vector(7 downto 0);
	signal reg10_DAC_L3_vol : std_logic_vector(7 downto 0);
	signal reg11_DAC_R3_vol : std_logic_vector(7 downto 0);
	signal reg12_DAC_L4_vol : std_logic_vector(7 downto 0);
	signal reg13_DAC_R4_vol : std_logic_vector(7 downto 0);
	signal reg14_ADC_ctrl0  : std_logic_vector(7 downto 0);
	signal reg15_ADC_ctrl1  : std_logic_vector(7 downto 0);
	signal reg16_ADC_ctrl2  : std_logic_vector(7 downto 0);
	
	--------------------------------------------------------------
	-- States for streaming valid signal generation
	--------------------------------------------------------------
	type state_type2 is (wait_for_high,pulse,wait_for_low);
   signal state2 : state_type2 := wait_for_high;


begin

	reg_read         <= avs_s1_read;
	reset            <= not reset_n;
	
	---------------------------------------------------
	-- AD1939 Shadow Registers
	-- These shadow registers allow direct fast read/writes
	-- from the HPS without having to wait to get the
	-- data from the AD1939 over the SPI interface.
	-- Read from the Shadow Registers
	---------------------------------------------------
	process(clk)
	begin
		if rising_edge(clk) and (reg_read = '1') then  -- read the shadow registers
			case reg_address is
				when "00000"  => avs_s1_readdata <= zeros24 & reg00_pll_ctrl0;
				when "00001"  => avs_s1_readdata <= zeros24 & reg01_pll_ctrl1;
				when "00010"  => avs_s1_readdata <= zeros24 & reg02_DAC_ctrl0;
				when "00011"  => avs_s1_readdata <= zeros24 & reg03_DAC_ctrl1;
				when "00100"  => avs_s1_readdata <= zeros24 & reg04_DAC_ctrl2;
				when "00101"  => avs_s1_readdata <= zeros24 & reg05_DAC_mutes;
				when "00110"  => avs_s1_readdata <= zeros24 & reg06_DAC_L1_vol;
				when "00111"  => avs_s1_readdata <= zeros24 & reg07_DAC_R1_vol;
				when "01000"  => avs_s1_readdata <= zeros24 & reg08_DAC_L2_vol;
				when "01001"  => avs_s1_readdata <= zeros24 & reg09_DAC_R2_vol;
				when "01010"  => avs_s1_readdata <= zeros24 & reg10_DAC_L3_vol;
				when "01011"  => avs_s1_readdata <= zeros24 & reg11_DAC_R3_vol;
				when "01100"  => avs_s1_readdata <= zeros24 & reg12_DAC_L4_vol;
				when "01101"  => avs_s1_readdata <= zeros24 & reg13_DAC_R4_vol;
				when "01110"  => avs_s1_readdata <= zeros24 & reg14_ADC_ctrl0;
				when "01111"  => avs_s1_readdata <= zeros24 & reg15_ADC_ctrl1;
				when "10000"  => avs_s1_readdata <= zeros24 & reg16_ADC_ctrl2;
				when "10001"  => avs_s1_readdata <= zeros24 & "0000000" & FIFO_full;    -- FIFO Full Register (bit 0) FIFO_full = 1 when FIFO full.  It could happen, but unlikely since the FIFO can hold 32 pending writes.
				when others   => avs_s1_readdata <= zeros32;
         end case;
		end if;
	end process;
		
	---------------------------------------------------
	-- Write to AD1939 Shadow Registers
	---------------------------------------------------
	process (clk)
	begin
		if rising_edge(clk) and (reg_write = '1') then
			case reg_address is
				when "00000"  => reg00_pll_ctrl0  <= reg_data;
				when "00001"  => reg01_pll_ctrl1  <= reg_data;
				when "00010"  => reg02_DAC_ctrl0  <= reg_data;
				when "00011"  => reg03_DAC_ctrl1  <= reg_data;
				when "00100"  => reg04_DAC_ctrl2  <= reg_data;
				when "00101"  => reg05_DAC_mutes  <= reg_data;
				when "00110"  => reg06_DAC_L1_vol <= reg_data;
				when "00111"  => reg07_DAC_R1_vol <= reg_data;
				when "01000"  => reg08_DAC_L2_vol <= reg_data;
				when "01001"  => reg09_DAC_R2_vol <= reg_data;
				when "01010"  => reg10_DAC_L3_vol <= reg_data;
				when "01011"  => reg11_DAC_R3_vol <= reg_data;
				when "01100"  => reg12_DAC_L4_vol <= reg_data;
				when "01101"  => reg13_DAC_R4_vol <= reg_data;
				when "01110"  => reg14_ADC_ctrl0  <= reg_data;
				when "01111"  => reg15_ADC_ctrl1  <= reg_data;
				when "10000"  => reg16_ADC_ctrl2  <= reg_data;
	         when others   => -- do nothing 
         end case;
		end if;
	end process;

	-----------------------------------------------------------------------------------
	-- Control who writes to the AD1939 Shadow Registers and FIFO
	-- since the shadow registers need to be initialized at power up from the AD1939
	-- If AD1939_state<7 then it is in power up mode
	-----------------------------------------------------------------------------------
	process (AD1939_state)
	begin
		if (unsigned(AD1939_state) < "0111") then               -- power up (pup) initialization mode,  writes are coming from the state machine
		   reg_write     <= pup_write;
			reg_data      <= pup_data;
			reg_address   <= pup_address;
			FIFO_write_in <= '0';
			FIFO_data_in  <= "0000000000000";		
		else                                           -- normal operation mode, writes are coming from the HPS.  Pass through to FIFO.
			reg_write     <= avs_s1_write;
			reg_data      <= avs_s1_writedata(7 downto 0);		
			reg_address   <= avs_s1_address;
			FIFO_write_in <= avs_s1_write;
			FIFO_data_in  <= avs_s1_address & avs_s1_writedata(7 downto 0); 	
		end if;
	end process;

	ShadowFIFO1 : commandFIFO PORT MAP (
		clock	 => clk,
		data	 => FIFO_data_in,
		rdreq	 => FIFO_read,
		sclr	 => FIFO_clear,
		wrreq	 => FIFO_write,
		empty	 => FIFO_empty,
		full	 => FIFO_full,
		q	    => FIFO_data_out
	);
	
    -----------------------------------------------------------
    -- Shadow Register State Machine 
    -----------------------------------------------------------
	process (clk, reset)
	begin
		if reset = '1' then
			state1 <= PowerUpReset;
		elsif (rising_edge(clk)) then
			case state1 is
			   --------------------------------------------
				when PowerUpReset =>
					state1 <= powerup_wait;
			   --------------------------------------------
				when powerup_wait =>
					if (AD1939_state < "0111") then
						state1 <= powerup_wait;
					else
						state1 <= init_address;
					end if;
			   --------------------------------------------
				when init_address =>
                        state1 <= init_start;
			   --------------------------------------------
				when init_start =>
                        state1 <= init_wait;
			   --------------------------------------------
				when init_wait =>
					if (AD1939_Reg_Read_Data_Ready = '1') then
						state1 <= init_read;
					else
						state1 <= init_wait;
					end if;
			   --------------------------------------------
				when init_read =>
                        state1 <= init_write;
			   --------------------------------------------
				when init_write =>
                        state1 <= init_check;
			   --------------------------------------------
				when init_check =>
					if reg_counter <= 17 then
						state1 <= init_address;
					else
						state1 <= state_fifo_wait;
					end if;
			   --------------------------------------------
				when state_fifo_wait =>
					if (FIFO_empty = '1') then
						state1 <= state_fifo_wait;
					else
						state1 <= state_fifo_read;
					end if;
			   --------------------------------------------
				when state_fifo_read =>
                        state1 <= state_AD1939_data;
			   --------------------------------------------
				when state_AD1939_data =>
                        state1 <= state_AD1939_write;
			   --------------------------------------------
				when state_AD1939_write =>
                        state1 <= state_AD1939_wait;
			   --------------------------------------------
				when state_AD1939_wait =>
					if (AD1939_Reg_Busy = '1') then
						state1 <= state_AD1939_wait;
					else
						state1 <= state_fifo_wait;
					end if;
			   --------------------------------------------
            when others =>
               state1 <= PowerUpReset;
			end case;
		end if;
	end process;
	
    -----------------------------------------------------------
    -- Shadow Register State Machine 
    -----------------------------------------------------------
	process (clk, reset)
	begin
		if (rising_edge(clk)) then
		   FIFO_clear             <= '0';
			FIFO_read              <= '0';
			pup_write              <= '0';
			AD1939_Reg_Read_Start  <= '0';
			AD1939_Reg_Write_Start <= '0';
			reg_counter_reset      <= '0';
			reg_counter_enable     <= '0';
			case state1 is
				when PowerUpReset       => reg_counter_reset <= '1';
				when powerup_wait       => FIFO_clear        <= '1';
				when init_address       => AD1939_Reg_Addr        <= std_logic_vector(reg_counter);
				                           pup_address            <= std_logic_vector(reg_counter);
				when init_start         => AD1939_Reg_Read_Start  <= '1';
				                           reg_counter_enable     <= '1';
				when init_wait          => -- just wait
				when init_read          => pup_data <= AD1939_Reg_Read_Data;				                           
				when init_write         => pup_write <= '1';
				when init_check         =>
				when state_fifo_wait    =>
				when state_fifo_read    => FIFO_read <= '1';
				when state_AD1939_data  => AD1939_Reg_Addr        <= FIFO_data_out(12 downto 8);
					                        AD1939_Reg_Write_Data  <= FIFO_data_out(7  downto 0);
 				when state_AD1939_write => AD1939_Reg_Write_Start <= '1';
				when state_AD1939_wait  =>
            when others =>  -- Do Nothing
			end case;
		end if;
	end process;
	
   -----------------------------------------------------------
   -- Register counter to read the registers at power up 
   -----------------------------------------------------------
	process (clk)
	begin
		if (rising_edge(clk)) then
			if reg_counter_reset = '1' then
				reg_counter <= (others => '0');
			elsif reg_counter_enable = '1' then
				reg_counter <= reg_counter + 1;
			end if;
		end if;
	end process;	
	
   -----------------------------------------------------------
   -- Create a clock slower than 10 MHz for SPI interface
   -----------------------------------------------------------
	process (clk)
	begin
		if (rising_edge(clk)) then
		   spicount <= spicount + 1;  
		end if;
	end process;
	SPI_clk <= spicount(7);
	
   -----------------------------------------------------------
   -- Create a clock slower than 10 MHz for SPI interface
   -----------------------------------------------------------
	codec : AD1939 port map (	
			AD1939_SPI_CLK             => SPI_clk,
			reset                      => not reset_n,
			AD1939_MCLK                => open,
			state_monitor              => AD1939_state,
			AD1939_SPI_CIN             => AD1939_SPI_CIN,
			AD1939_SPI_COUT            => AD1939_SPI_COUT,
			AD1939_SPI_CCLK            => AD1939_SPI_CCLK,
			AD1939_SPI_CLATCH_n        => AD1939_SPI_CLATCH_n,
			AD1939_ADC_SDATA1          => AD1939_ADC_SDATA1,
			AD1939_ADC_SDATA2          => AD1939_ADC_SDATA2,
			AD1939_ADC_BCLK            => AD1939_ADC_BCLK,
			AD1939_ADC_LRCLK           => AD1939_ADC_LRCLK,
			AD1939_DAC_SDATA1          => AD1939_DAC_SDATA1,
			AD1939_DAC_SDATA2          => AD1939_DAC_SDATA2,
			AD1939_DAC_SDATA3          => AD1939_DAC_SDATA3,
			AD1939_DAC_SDATA4          => AD1939_DAC_SDATA4,
			AD1939_DAC_BCLK            => AD1939_DAC_BCLK,
			AD1939_DAC_LRCLK           => AD1939_DAC_LRCLK,
			AD1939_Reg_Addr				=> AD1939_Reg_Addr,
			AD1939_Reg_Write_Data		=> AD1939_Reg_Write_Data,
			AD1939_Reg_Write_Start  	=> AD1939_Reg_Write_Start,
			AD1939_Reg_Read_Data			=> AD1939_Reg_Read_Data,
			AD1939_Reg_Read_Start	   => AD1939_Reg_Read_Start,
			AD1939_Reg_Read_Data_Ready	=> AD1939_Reg_Read_Data_Ready,
			AD1939_Reg_Busy	         => AD1939_Reg_Busy,
			AD1939_Data_ADC1_Left      => ch1_left_ADC_data,
			AD1939_Data_ADC1_Right     => ch1_right_ADC_data,
			AD1939_Data_ADC2_Left      => ch2_left_ADC_data,
			AD1939_Data_ADC2_Right     => ch2_right_ADC_data,
			AD1939_Data_ADCs_ready     => ADC_samples_ready,
			AD1939_Data_DAC1_Left      => ch1_left_DAC_data,
			AD1939_Data_DAC1_Right     => ch1_right_DAC_data,
			AD1939_Data_DAC2_Left      => ch2_left_DAC_data,
			AD1939_Data_DAC2_Right     => ch2_right_DAC_data,
			AD1939_Data_DAC3_Left      => zeros24,
			AD1939_Data_DAC3_Right     => zeros24,
			AD1939_Data_DAC4_Left      => zeros24,
			AD1939_Data_DAC4_Right     => zeros24
		);

	----------------------------------------------------------------
	-- Read from Avalon Sink (Channel 1-left Sink to DAC)
	----------------------------------------------------------------
	process(clk)
	begin
		if rising_edge(clk) and (Line_Out_left_valid = '1') then
			ch1_left_DAC_data <= Headphone_Out_left_data(23 downto 0);
		end if;
	end process;
	----------------------------------------------------------------
	-- Read from Avalon Sink (Channel 1-right Sink to DAC)
	----------------------------------------------------------------
	process(clk)
	begin
		if rising_edge(clk) and (Line_Out_right_valid = '1') then
			ch1_right_DAC_data <= Headphone_Out_right_data(23 downto 0);
		end if;
	end process;
	----------------------------------------------------------------
	-- Read from Avalon Sink (Channel 2-left Sink to DAC)
	----------------------------------------------------------------
	process(clk)
	begin
		if rising_edge(clk) and (Headphone_Out_left_valid = '1') then
			ch2_left_DAC_data <= Line_Out_left_data(23 downto 0);
		end if;
	end process;
	----------------------------------------------------------------
	-- Read from Avalon Sink (Channel 2-right Sink to DAC)
	----------------------------------------------------------------
	process(clk)
	begin
		if rising_edge(clk) and (Headphone_Out_right_valid = '1') then
			ch2_right_DAC_data <= Line_Out_right_data(23 downto 0);
		end if;
	end process;
		
	------------------------------------------------------------
	-- Write to Avalon Source (Channel 1-left Source from ADC)
	------------------------------------------------------------
	Line_In_left_data  <= std_logic_vector(resize(signed(ch1_left_ADC_data), Line_In_left_data'length));
	Line_In_left_valid <= ADC_source_valid;
	Line_In_left_error <= "00";
	------------------------------------------------------------
	-- Write to Avalon Source (Channel 1-right Source from ADC)
	------------------------------------------------------------
	Line_In_right_data  <= std_logic_vector(resize(signed(ch1_right_ADC_data), Line_In_right_data'length));
	Line_In_right_valid <= ADC_source_valid;
	Line_In_right_error <= "00";
	------------------------------------------------------------
	-- Write to Avalon Source (Channel 2-left Source from ADC)
	------------------------------------------------------------
	Mic_In_left_data  <= std_logic_vector(resize(signed(ch2_left_ADC_data), Mic_In_left_data'length));
	Mic_In_left_valid <= ADC_source_valid;
	Mic_In_left_error <= "00";
	------------------------------------------------------------
	-- Write to Avalon Source (Channel 2-right Source from ADC)
	------------------------------------------------------------
	Mic_In_right_data  <= std_logic_vector(resize(signed(ch2_right_ADC_data), Mic_In_right_data'length));
	Mic_In_right_valid <= ADC_source_valid;
	Mic_In_right_error <= "00";

    -----------------------------------------------------------
    -- valid pulse State Machine for streaming output
    -----------------------------------------------------------
	process (clk, reset)
	begin
		if reset = '1' then
			state2 <= wait_for_high;
		elsif (rising_edge(clk)) then
			case state2 is
				---------------------------------------
				when wait_for_high =>
					if (AD1939_ADC_LRCLK = '0') then
						state2 <= wait_for_high;
					else
						state2 <= pulse;
					end if;
				---------------------------------------
				when pulse =>
               state2 <= wait_for_low;
				---------------------------------------
				when wait_for_low =>
					if (AD1939_ADC_LRCLK = '1') then
						state2 <= wait_for_low;
					else
						state2 <= wait_for_high;
					end if;
				---------------------------------------
            when others =>
               state2 <= wait_for_high;
			end case;
		end if;
	end process;

	--------------------------------------------------------------------------
	-- State machine 
	-- Perform Computations that are state dependent
	--------------------------------------------------------------------------	
   compute : process (clk)
   begin
         if (rising_edge(clk)) then
               ADC_source_valid <= '0';
               case state2 is
                     ----------------------------------------
                     when wait_for_high =>                       
                      ----------------------------------------  
                     when pulse => ADC_source_valid <= '1';
                     ----------------------------------------  
                     when wait_for_low =>                       
                     ----------------------------------------    
                     when others =>
               end case;
         end if;
   end process;
		
end behavior;




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

	component Serial2Parallel_32bits
		PORT
		(
			clock		 	: IN STD_LOGIC ;
			shiftin		: IN STD_LOGIC ;
			q				: OUT STD_LOGIC_VECTOR (31 DOWNTO 0)
		);
	end component;

	component Parallel2Serial_32bits
		PORT
		(
			clock			: IN STD_LOGIC ;
			data			: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
			load			: IN STD_LOGIC ;
			shiftout		: OUT STD_LOGIC 
		);
	end component;
	
   signal SregOut_ADC1_right : std_logic_vector(31 downto 0);
   signal SregOut_ADC1_left  : std_logic_vector(31 downto 0);
   signal SregOut_ADC2_right : std_logic_vector(31 downto 0);
   signal SregOut_ADC2_left  : std_logic_vector(31 downto 0);
   signal SregOut_DAC1_right : std_logic_vector(31 downto 0);
   signal SregOut_DAC1_left  : std_logic_vector(31 downto 0);
   signal SregOut_DAC2_right : std_logic_vector(31 downto 0);
   signal SregOut_DAC2_left  : std_logic_vector(31 downto 0);
   signal SregOut_DAC3_right : std_logic_vector(31 downto 0);
   signal SregOut_DAC3_left  : std_logic_vector(31 downto 0);
   signal SregOut_DAC4_right : std_logic_vector(31 downto 0);
   signal SregOut_DAC4_left  : std_logic_vector(31 downto 0);
	
	signal AD1939_DAC_SDATA1_right : std_logic;
	signal AD1939_DAC_SDATA1_left  : std_logic;
	signal AD1939_DAC_SDATA2_right : std_logic;
	signal AD1939_DAC_SDATA2_left  : std_logic;
	signal AD1939_DAC_SDATA3_right : std_logic;
	signal AD1939_DAC_SDATA3_left  : std_logic;
	signal AD1939_DAC_SDATA4_right : std_logic;
	signal AD1939_DAC_SDATA4_left  : std_logic;

begin

---------------------------------------------------------------------------------------------------	
   -------------------------------------------------------------
	-- ADC1 Right
   -------------------------------------------------------------
	S2P_ADC1_right : Serial2Parallel_32bits PORT MAP (
		clock	 		=> AD1939_ADC_BCLK,
		shiftin	 	=> AD1939_ADC_SDATA1,
		q	 			=> SregOut_ADC1_right
	);
   
	process (AD1939_ADC_LRCLK)
	begin
		if ( falling_edge(AD1939_ADC_LRCLK) ) then  -- LRCLK -> Left Low so capture when low
			AD1939_Data_ADC1_Right <= SregOut_ADC1_right(30 downto 7);
		end if;
	end process;

   -------------------------------------------------------------
	-- ADC1 Left
   -------------------------------------------------------------
	S2P_ADC1_left : Serial2Parallel_32bits PORT MAP (
		clock	 		=> AD1939_ADC_BCLK,
		shiftin	 	=> AD1939_ADC_SDATA1,
		q	 			=> SregOut_ADC1_left
	);

 	process (AD1939_ADC_LRCLK)
	begin
		if ( rising_edge(AD1939_ADC_LRCLK) ) then  -- LRCLK -> Left Low so capture on rising edge
			AD1939_Data_ADC1_Left <= SregOut_ADC1_left(30 downto 7);
		end if;
	end process;

---------------------------------------------------------------------------------------------------	
	-------------------------------------------------------------
	-- ADC2 Right
   -------------------------------------------------------------
	S2P_ADC2_right : Serial2Parallel_32bits PORT MAP (
		clock	 		=> AD1939_ADC_BCLK,
		shiftin	 	=> AD1939_ADC_SDATA2,
		q	 			=> SregOut_ADC2_right
	);

 	process (AD1939_ADC_LRCLK)
	begin
		if ( falling_edge(AD1939_ADC_LRCLK) ) then -- LRCLK -> Left Low so capture on falling edge
			AD1939_Data_ADC2_Right <= SregOut_ADC2_right(30 downto 7);
		end if;
	end process;

	-------------------------------------------------------------
	-- ADC2 Left
   -------------------------------------------------------------
	S2P_ADC2_left : Serial2Parallel_32bits PORT MAP (
		clock	 		=> AD1939_ADC_BCLK,
		shiftin	 	=> AD1939_ADC_SDATA2,
		q	 			=> SregOut_ADC2_left
	);

	process (AD1939_ADC_LRCLK)
	begin
		if ( rising_edge(AD1939_ADC_LRCLK) ) then  -- LRCLK -> Left Low so capture on rising edge
			AD1939_Data_ADC2_Left <= SregOut_ADC2_left(30 downto 7);
		end if;
	end process;


---------------------------------------------------------------------------------------------------	
   -------------------------------------------------------------
	-- DAC1 Right
   -------------------------------------------------------------
	P2S_DAC1_right : Parallel2Serial_32bits PORT MAP (
		clock	 		=> AD1939_ADC_BCLK,
		data	 		=> '0' & AD1939_Data_DAC1_right & "0000000",
		load	 		=> not AD1939_ADC_LRCLK,    -- LRCLK -> Left Low so load when low
		shiftout	 	=> AD1939_DAC_SDATA1_right
	);
   -------------------------------------------------------------
	-- DAC1 Left
   -------------------------------------------------------------
	P2S_DAC1_left : Parallel2Serial_32bits PORT MAP (
		clock	 		=> AD1939_ADC_BCLK,
		data	 		=> '0' & AD1939_Data_DAC1_left & "0000000",
		load	 		=> AD1939_ADC_LRCLK,    -- LRCLK -> Left Low so load when high
		shiftout	 	=> AD1939_DAC_SDATA1_left
	);
	process (AD1939_ADC_BCLK, AD1939_ADC_LRCLK, AD1939_DAC_SDATA1_left, AD1939_DAC_SDATA1_right)
	begin
		if (AD1939_ADC_LRCLK = '1') then  -- LRCLK -> Left Low 
			AD1939_DAC_SDATA1 <= AD1939_DAC_SDATA1_right;
		else
			AD1939_DAC_SDATA1 <= AD1939_DAC_SDATA1_left;		
		end if;
	end process;
	
---------------------------------------------------------------------------------------------------	
   -------------------------------------------------------------
	-- DAC2 Right
   -------------------------------------------------------------
	P2S_DAC2_right : Parallel2Serial_32bits PORT MAP (
		clock	 		=> AD1939_ADC_BCLK,
		data	 		=> '0' & AD1939_Data_DAC2_right & "0000000",
		load	 		=> not AD1939_ADC_LRCLK,    -- LRCLK -> Left Low so load when low
		shiftout	 	=> AD1939_DAC_SDATA2_right
	);
   -------------------------------------------------------------
	-- DAC2 Left
   -------------------------------------------------------------
	P2S_DAC2_left : Parallel2Serial_32bits PORT MAP (
		clock	 		=> AD1939_ADC_BCLK,
		data	 		=> '0' & AD1939_Data_DAC2_left & "0000000",
		load	 		=> AD1939_ADC_LRCLK,    -- LRCLK -> Left Low so load when high
		shiftout	 	=> AD1939_DAC_SDATA2_left
	);
	process (AD1939_ADC_BCLK,AD1939_ADC_LRCLK, AD1939_DAC_SDATA2_right, AD1939_DAC_SDATA2_left)
	begin
		if (AD1939_ADC_LRCLK = '1') then  -- LRCLK -> Left Low 
			AD1939_DAC_SDATA2 <= AD1939_DAC_SDATA2_right;
		else
			AD1939_DAC_SDATA2 <= AD1939_DAC_SDATA2_left;		
		end if;
	end process;

	
---------------------------------------------------------------------------------------------------	
   -------------------------------------------------------------
	-- DAC3 Right
   -------------------------------------------------------------
	P2S_DAC3_right : Parallel2Serial_32bits PORT MAP (
		clock	 		=> AD1939_ADC_BCLK,
		data	 		=> '0' & AD1939_Data_DAC3_right & "0000000",
		load	 		=> not AD1939_ADC_LRCLK,    -- LRCLK -> Left Low so load when low
		shiftout	 	=> AD1939_DAC_SDATA3_right
	);
   -------------------------------------------------------------
	-- DAC3 Left
   -------------------------------------------------------------
	P2S_DAC3_left : Parallel2Serial_32bits PORT MAP (
		clock	 		=> AD1939_ADC_BCLK,
		data	 		=> '0' & AD1939_Data_DAC3_left & "0000000",
		load	 		=> AD1939_ADC_LRCLK,    -- LRCLK -> Left Low so load when high
		shiftout	 	=> AD1939_DAC_SDATA3_left
	);
	process (AD1939_ADC_BCLK, AD1939_ADC_LRCLK, AD1939_DAC_SDATA3_right, AD1939_DAC_SDATA3_left)
	begin
		if (AD1939_ADC_LRCLK = '1') then  -- LRCLK -> Left Low 
			AD1939_DAC_SDATA3 <= AD1939_DAC_SDATA3_right;
		else
			AD1939_DAC_SDATA3 <= AD1939_DAC_SDATA3_left;		
		end if;
	end process;
	

---------------------------------------------------------------------------------------------------	
   -------------------------------------------------------------
	-- DAC4 Right
   -------------------------------------------------------------
	P2S_DAC4_right : Parallel2Serial_32bits PORT MAP (
		clock	 		=> AD1939_ADC_BCLK,
		data	 		=> '0' & AD1939_Data_DAC4_right & "0000000",
		load	 		=> not AD1939_ADC_LRCLK,    -- LRCLK -> Left Low so load when low
		shiftout	 	=> AD1939_DAC_SDATA4_right
	);
   -------------------------------------------------------------
	-- DAC4 Left
   -------------------------------------------------------------
	P2S_DAC4_left : Parallel2Serial_32bits PORT MAP (
		clock	 		=> AD1939_ADC_BCLK,
		data	 		=> '0' & AD1939_Data_DAC4_left & "0000000",
		load	 		=> AD1939_ADC_LRCLK,    -- LRCLK -> Left Low so load when high
		shiftout	 	=> AD1939_DAC_SDATA4_left
	);
	process (AD1939_ADC_BCLK, AD1939_ADC_LRCLK, AD1939_DAC_SDATA4_right, AD1939_DAC_SDATA4_left)
	begin
		if (AD1939_ADC_LRCLK = '1') then  -- LRCLK -> Left Low 
			AD1939_DAC_SDATA4 <= AD1939_DAC_SDATA4_right;
		else
			AD1939_DAC_SDATA4 <= AD1939_DAC_SDATA4_left;		
		end if;
	end process;

	
	
end behavioral;

	
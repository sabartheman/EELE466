----------------------------------------------------------------------------------
--
-- Company:          Flat Earth, Inc.
-- Author/Engineer:	Ross K. Snider
--
-- Create Date:      10/05/2016
--
-- Design Name:      Audio_Processing.vhd  
--       				
-- Description:      The Audio_Processing component is the top level component
--                   for the audio processing data plane in the FPGA fabric.
--
-- Target Device(s): Altera DE0-Nano-Soc Evaluation Board
-- Tool versions:    Quartus Prime 16.0
--
-- Dependencies:     
--
-- Revisions:        1.0 (File Created)
--
-- Additional Comments: 
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Audio_Processing is
	port
	(	
		AD1939_MCLK    : in std_logic; -- 12.8 MHz Master Clock from AD1939 crystal
		-----------------------------------------------------------------------------------------------------------
		-- Abstracted data channels, i.e. interface to data plane 
		-- Interface for reading and writing AD1939 ADC/DAC (sample) 24-bit data (data is in 2's complement form)???
		-----------------------------------------------------------------------------------------------------------
		-- Data from ADCs
		AD1939_Data_ADC1_Left   : in std_logic_vector (23 downto 0); 
		AD1939_Data_ADC1_Right  : in std_logic_vector (23 downto 0); 
		AD1939_Data_ADC2_Left   : in std_logic_vector (23 downto 0); 
		AD1939_Data_ADC2_Right  : in std_logic_vector (23 downto 0); 
		AD1939_Data_ADCs_ready  : in std_logic;                        -- pulse 1 BCLK period wide signifies data is ready to read from input audio bus channels 	
      --	Data to DACs	
		AD1939_Data_DAC1_Left   : out std_logic_vector (23 downto 0);    -- On the rising edge of the DAC_LRCLK, these DAC signals will be captured 
		AD1939_Data_DAC1_Right  : out std_logic_vector (23 downto 0); 
		AD1939_Data_DAC2_Left   : out std_logic_vector (23 downto 0); 
		AD1939_Data_DAC2_Right  : out std_logic_vector (23 downto 0); 
		AD1939_Data_DAC3_Left   : out std_logic_vector (23 downto 0); 
		AD1939_Data_DAC3_Right  : out std_logic_vector (23 downto 0); 
		AD1939_Data_DAC4_Left   : out std_logic_vector (23 downto 0); 
		AD1939_Data_DAC4_Right  : out std_logic_vector (23 downto 0)
	);
end Audio_Processing;

architecture behavioral of Audio_Processing is
	

begin

----------------------------------------------------------
--
-- Just simple pass-through I/O connectivity here....
--
----------------------------------------------------------

	AD1939_Data_DAC1_right <= AD1939_Data_ADC2_right;
	AD1939_Data_DAC1_Left  <= AD1939_Data_ADC2_Left;
	
	AD1939_Data_DAC2_right <= AD1939_Data_ADC1_right;
	AD1939_Data_DAC2_Left  <= AD1939_Data_ADC1_Left;
	
 	AD1939_Data_DAC3_right <= AD1939_Data_ADC1_right;  -- send channel 1 to DAC3
	AD1939_Data_DAC3_Left  <= AD1939_Data_ADC1_Left;
  
	AD1939_Data_DAC4_right <= AD1939_Data_ADC1_right;  -- send channel 1 to DAC4
	AD1939_Data_DAC4_Left  <= AD1939_Data_ADC1_Left;



end behavioral;
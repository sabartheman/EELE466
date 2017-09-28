----------------------------------------------------------------------------------
-- Company:          Montana State University
-- Author/Engineer:	 Ross Snider 
-- 
-- Create Date:    14:17:04 3/7/2017 
-- Design Name: 
-- Module Name:    Avalon Streaming passthrough
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
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.numeric_std.all;


entity audio_avalon is
	port (
		clk 			    	: in std_logic;
		reset_n 		    	: in std_logic;
		------------------------------------------------------------
		-- Avalon Memory Mapped Slave Signals
		------------------------------------------------------------
		avs_s1_address 	    : in std_logic_vector(2 downto 0);  -- determines number of registers
		avs_s1_write 		    : in std_logic;
		avs_s1_writedata 	    : in std_logic_vector(31 downto 0);
		avs_s1_read 		    : in std_logic;
		avs_s1_readdata 	    : out std_logic_vector(31 downto 0);
		------------------------------------------------------------
		-- Avalon Streaming Interface Signals (Sink)
		------------------------------------------------------------
		ast_sink_data         : in std_logic_vector(23 downto 0);
      ast_sink_valid        : in std_logic;
		ast_sink_error        : in std_logic_vector( 1 downto 0);
		------------------------------------------------------------
		-- Avalon Streaming Interface Signals (Source)
		------------------------------------------------------------
		ast_source_data       : out std_logic_vector(23 downto 0);
      ast_source_valid      : out std_logic;
		ast_source_error      : out std_logic_vector( 1 downto 0);
		------------------------------------------------------------
		-- external conduit signals
		------------------------------------------------------------
		switch 			       : in std_logic;
		LED 			          : out std_logic
	);
end audio_avalon;

architecture behavior of audio_avalon is


	signal enable_read  : std_logic;
	signal enable_write : std_logic;
	signal reg_address  : std_logic_vector(2 downto 0);
	
	signal reg1       : std_logic_vector(31 downto 0);  
	signal sample_in  : std_logic_vector(23 downto 0);  
	signal sample_out : std_logic_vector(23 downto 0);  

begin
	enable_read  <= avs_s1_read;
	enable_write <= avs_s1_write;
	reg_address  <= avs_s1_address;
	
	---------------------------------------------------
	-- Write to Register 1 data (address 0)
	---------------------------------------------------
	process (clk)
	begin
		if rising_edge(clk) and (enable_write = '1') and (reg_address = "000") then
			reg1 <= avs_s1_writedata(31 downto 0);
		end if;
	end process;

	---------------------------------------------------
	-- Read from Register1 (address 0)
	---------------------------------------------------
	process(clk)
	begin
		if rising_edge(clk) and (enable_read = '1') and (reg_address = "000") then
			avs_s1_readdata <= reg1;
		end if;
	end process;
	
	--------------------------------------------------------------------------
	-- Read from Avalon Stream input (Sink) and place data on output (Source)
	--------------------------------------------------------------------------
	process(clk)
	begin
		if rising_edge(clk) and (ast_sink_valid = '1') then
			sample_in       <= ast_sink_data;
		   ast_source_data <= sample_out;
		end if;
	end process;
	
	--------------------------------------------------------------------------
	-- Pass through valid and error signals
	--------------------------------------------------------------------------	
	ast_source_valid <= ast_sink_valid;  
	ast_source_error <= ast_sink_error;
   
	--------------------------------------------------------------------------
	-- Pass through data (any processing goes here)
	--------------------------------------------------------------------------	
	sample_out <= sample_in;  
	
end behavior;




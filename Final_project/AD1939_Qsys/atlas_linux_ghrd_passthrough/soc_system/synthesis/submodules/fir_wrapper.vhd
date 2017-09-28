library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity fir_wrapper is
	port(
		clk					:in  std_logic;
		reset				:in  std_logic;
		data_valid			:in  std_logic;
		GPIO_SW				:in  std_logic_vector(3  downto 0);
		stream_input		:in  std_logic_vector(31 downto 0);

		stream_output		:out std_logic_vector(31 downto 0)

		);
end entity;

architecture arch of fir_wrapper is

	signal data_input	:std_logic_vector(31 downto 0);
	signal data_output  	:std_logic_vector(31 downto 0);

	component fir_filter is
		port(
			--going to assume all data is valid, 
			--making qsys integration simple
			clk				:in  std_logic;
			reset			:in  std_logic;
			SW_input		:in  std_logic_vector (3 downto 0);
			data_input 		:in  std_logic_vector (31 downto 0);
			data_output		:out std_logic_vector (31 downto 0));
	end component;


begin
A1 : fir_filter port map (clk,reset,GPIO_SW,data_input,data_output);
--A1 : fir_filter port map (clk,reset,data_input,data_output);

sync_to_clock : process(clk, data_valid)

begin
	--making the data syncronus to the clock
	--the data_valid is very important here
	--otherwise I have seen straight noise.
	if(rising_edge(clk) and data_valid = '1')then
		data_input    <= stream_input;
		stream_output <= data_output;
	end if;

end process;




end architecture ; -- arch
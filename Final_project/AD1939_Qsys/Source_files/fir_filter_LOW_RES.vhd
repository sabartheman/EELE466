library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


--this is a transpose fir filter.  Seemed to be the most
--efficient and lightweight, when researching
entity fir_filter is
	port(
			--going to assume all data is valid, 
			--making qsys integration simple
			clk				:in  std_logic;
			reset			:in  std_logic;
			data_input 		:in  std_logic_vector (31 downto 0);

			data_output		:out std_logic_vector (31 downto 0));
end entity;


architecture FIR_arch of fir_filter is


	--basic fir filter.
	--probably nto using these values
	--signal Q1		:std_logic_vector(23 downto 0) := "000011001100110011001100";  --about .2, just under that value
	--signal Q2		:std_logic_vector(23 downto 0) := "000110011001100110011000";  --about .4
	--signal Q3		:std_logic_vector(23 downto 0) := "000110011001100110011000";
	--signal Q4		:std_logic_vector(23 downto 0) := "000011001100110011001100";


	--an array to step through values to sum together.
	type co_efficients_type is array(10 downto 0) of signed(31 downto 0);
	type co_efficients_type_20 is array(20 downto 0) of signed(31 downto 0);

	--values were determined using matlab filter designer.
	--also used the firpm function to try and find filter coefficients as well
--	constant co_efficients : co_efficients_type := (
--		"00000001011110011010011100000000",		--   .0922
--		"00000001101001010111101000000000",		--   .1029
--		"10000001100110100000001000000000",		--  -.1001
--		"10000011000110001001001100000000",		--  -.1935
--		"00000000101100100010110100000000",		--   .0435
--		"00000011101110111001100100000000",		--   .2333
--		"00000000101100100010110100000000",		--   .0435
--		"10000011000110001001001100000000",		--  -.1935
--		"10000001100110100000001000000000",		--  -.1001
--		"00000001101001010111101000000000",		--   .1029
--		"00000001011110011010011100000000");	--   .0922
	


		--low based FIR filter
--		constant co_efficients : co_efficients_type := (
--		"00000100101011111011100000000000",		-- -0.2929
--		"10000000111001111101010100000000",		-- -0.0566
--		"00000000100000001001110100000000",		--  0.0314
--		"00000010011110010011111000000000",		--  0.1546
--		"00000100001011110001101100000000",		--  0.2615
--		"00000100110110011110100000000000",		--  0.3032
--		"00000100001011110001101100000000",		--  0.2615
--		"00000010011110010011111000000000",		--  0.1546
--		"00000000100000001001110100000000",		--  0.0314
--		"10000000111001111101010100000000",		-- -0.0566
--		"10000100101011111011100000000000");	-- -0.2929
	
		--midpass filter
--		constant co_efficients : co_efficients_type := (
--		"00000000111010000110000000000000",		--  0.056732
--		"00000001101101010111111000000000",		--  0.10681
--		"10000001011110001111110000000000",		-- -0.092037
--		"10000011101111101110000000000000",		-- -0.2341
--		"00000000101111000100000000000000",		--  0.045959
--		"00000100101110100001111100000000",		--  0.29544
--		"00000000101111000100000000000000",		--  0.045959
--		"10000011101111101110000000000000",		-- -0.2341
--		"10000001011110001111110000000000",		-- -0.092037
--		"00000001101101010111111000000000",		--  0.10681
--		"00000000111010000110000000000000");	--  0.056732

		--lowpass filter simple
		constant co_efficients : co_efficients_type := (
		"00000000111001110000000011100111",
		"00000001010101011010111001010001",
		"00000001101111001110100101111111",
		"00000010000100001110100011100001",
		"00000010010001111011111000111011",
		"00000010010110101100101101110100",
		"00000010010001111011111000111011",
		"00000010000100001110100011100001",
		"00000001101111001110100101111111",
		"00000001010101011010111001010001",
		"00000000111001110000000011100111");

		constant co_efficients_20 : co_efficients_type_20 := (
			"00000000000111111010111000010110",   
			"00000000010000110101000011110111",   
			"00000000011011011010000011100111",   
			"00000000100111001100011111101011",   
			"00000000110011100101100001110011",   
			"00000000111111110111101001000001",   
			"00000001001011010010010001010011",   
			"00000001010101000101111001010110",   
			"00000001011100101000001100011001",   
			"00000001100001010111110100111010",   
			"00000001100010111111011110110010",   
			"00000001100001010111110100111010",   
			"00000001011100101000001100011001",   
			"00000001010101000101111001010110",   
			"00000001001011010010010001010011",   
			"00000000111111110111101001000001",   
			"00000000110011100101100001110011",   
			"00000000100111001100011111101011",   
			"00000000011011011010000011100111",   
			"00000000010000110101000011110111",   
			"00000000000111111010111000010110");


	
	--constant avlues left to right, top to bottom
	--0.0564 0.0834    0.1086    0.1291    0.1425    0.1472    0.1425    0.1291    0.1086    0.0834    0.0564
	--



	--created a couple of arrays to push values to during loop
	type MULT_TYPE is array(20 downto 0) of signed(31 downto 0);
	signal MULT : MULT_TYPE;
	

	type ADD_TYPE is array(20 downto 0) of signed(38 downto 0);
	signal ADD : ADD_TYPE;

	type ADD_TYPE is array(20 downto 0) of signed(38 downto 0);
	signal ADD : ADD_TYPE;
		

	--Maybe resolution is falling off, attempt to keep it.
	TYPE MULT_TYPE_RES is array(20 downto 0) of signed(63 downto 0);
	signal MULTI_RES : MULT_TYPE_RES;


	TYPE ADD_TYPE_RES is array(20 downto 0) of signed(63 downto 0);
	signal ADD_RES : ADD_TYPE_RES;

	--need at least one zero for this process
	--need at least one zero for this process
	constant ZERO : signed(31 downto 0) := (others => '0');

	signal mod_input		: signed(31 downto 0);
	
	--to make the process a little easier
	signal dummy		:std_logic := '0';
	signal mult_pass	:signed(63 downto 0);
	signal add_output	:signed(38 downto 0);
begin



--do I care about clock?, this might end up hurting me if the process takes too long.
Sync_on_clock : process(clk,reset)




begin
	
	if(rising_edge(clk) AND reset = '0') then
		
		--need to convert to signed for manipulation
		mod_input <= signed(data_input);
		for I in 20 downto 0 loop
			
			mult_pass <= mod_input * co_efficients_20(20-I);
			--need to chop down to size
			MULT(I) <= mult_pass(55 downto 24);
			--will only run once per process
			
			if I = 0 then
				ADD(I) <= "0000000" & (ZERO + MULT(0));
			else
				ADD(I) <= ("0000000" & MULT(I)) + ADD(I-1);
			end if;

			end loop;
			add_output <= ADD(20);
			data_output <= std_logic_vector(add_output(32 downto 1));
		

	else
		--this part should be doing nothing otherwise.
		--could use this signal to debug, would only indicate reset is backwards
		dummy <= '1';

	end if;

end process;




end architecture ; -- arch
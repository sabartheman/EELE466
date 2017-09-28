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
			SW_input		:in  std_logic_vector(3 downto 0);
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


	
	--lowpass filter simple windowing, doesn't seem to work very well.
	--at 4kHz there should be -20dB, and at 6kHz there should be -40dB
	type co_efficients_type_20 is array(20 downto 0) of signed(31 downto 0);
	
	--fstop1 at 500
	--fpass1 at 1000
	--fpass2 at 2500
	--fstop2 at 3000
	constant co_efficients_20 : co_efficients_type_20 := (
		"11111111110000011111011010101000",
		"11111111110111011010100010111001",
		"00000000000000100011010110001111",
		"00000000001011011100001111101001",
		"00000000010111011010111100001100",
		"00000000100011101011110010011000",
		"00000000101111010110010001000111",
		"00000000111001100010001010000011",
		"00000001000001011100110100100000",
		"00000001000110011110000101000101",
		"00000001001000001100001000010110",
		"00000001000110011110000101000101",
		"00000001000001011100110100100000",
		"00000000111001100010001010000011",
		"00000000101111010110010001000111",
		"00000000100011101011110010011000",
		"00000000010111011010111100001100",
		"00000000001011011100001111101001",
		"00000000000000100011010110001111",
		"11111111110111011010100010111001",
		"11111111110000011111011010101000");

	--midband pass
	--fstop1 at 2500
	--fpass1 at 3000
	--fpass2 at 3500
	--fstop3 at 4000
	constant co_efficients2_20 : co_efficients_type_20 := (
		"11111111110000011101100011110110",
		"11111111101010101001000000101111",
		"11111111100111101110101001011001",
		"11111111101000100000000011000010",
		"11111111101101000101100011001101",
		"11111111110100111010100001101001",
		"11111111111110110010011000011000",
		"00000000001001000101100100010110",
		"00000000010010000100001111000010",
		"00000000011000001010111011001101",
		"00000000011010010101010001000011",
		"00000000011000001010111011001101",
		"00000000010010000100001111000010",
		"00000000001001000101100100010110",
		"11111111111110110010011000011000",
		"11111111110100111010100001101001",
		"11111111101101000101100011001101",
		"11111111101000100000000011000010",
		"11111111100111101110101001011001",
		"11111111101010101001000000101111",
		"11111111110000011101100011110110");

	--midhigh range pass
	--fstop1 at 6000
	--fpass1 at 6300
	--fpass2 at 7300
	--fstop2 at 7700
	constant co_efficients3_20 : co_efficients_type_20 := (
		"11111111101111110010110010010100",
		"00000000000111110011000101010000",
		"00000000100000100101001100010101",
		"00000000100110101001111001001001",
		"00000000010010101111100111101000",
		"11111111110000110001100100100111",
		"11111111011000010100110100111110",
		"11111111011011011101110001000011",
		"11111111111000110011000010010001",
		"00000000011011101011110011000101",
		"00000000101011000001001011010001",
		"00000000011011101011110011000101",
		"11111111111000110011000010010001",
		"11111111011011011101110001000011",
		"11111111011000010100110100111110",
		"11111111110000110001100100100111",
		"00000000010010101111100111101000",
		"00000000100110101001111001001001",
		"00000000100000100101001100010101",
		"00000000000111110011000101010000",
		"11111111101111110010110010010100");

	--constant avlues left to right, top to bottom
	--0.0564 0.0834    0.1086    0.1291    0.1425    0.1472    0.1425    0.1291    0.1086    0.0834    0.0564
	--



	--created a couple of arrays to push values to during loop
	type MULT_TYPE is array(20 downto 0) of signed(31 downto 0);
	signal MULT : MULT_TYPE;
	

	type ADD_TYPE is array(20 downto 0) of signed(38 downto 0);
	signal ADD : ADD_TYPE;

		

	--Maybe resolution is falling off, attempt to keep it.
	TYPE MULT_TYPE_RES is array(20 downto 0) of signed(63 downto 0);
	signal MULTI_RES : MULT_TYPE_RES;


	TYPE ADD_TYPE_RES is array(20 downto 0) of signed(70 downto 0);
	signal ADD_RES : ADD_TYPE_RES;


	TYPE FOURTH_ORDER is array(3 downto 0) of signed(63 downto 0);
	signal y_out : FOURTH_ORDER;
	--need at least one zero for this process
	--need at least one zero for this process
	constant ZERO : signed(63 downto 0) := (others => '0');

	signal mod_input		: signed(31 downto 0);
	
	--to make the process a little easier
	signal dummy		:std_logic := '0';
	signal mult_pass	:signed(63 downto 0);
	signal add_output	:signed(70 downto 0);
	signal switches		:std_logic_vector(3 downto 0);
	signal data_out_sig	:std_logic_vector(31 downto 0);

begin

	switches <= SW_input;


--do I care about clock?, this might end up hurting me if the process takes too long.
Sync_on_clock : process(clk,switches)

begin

	
		if(rising_edge(clk)) then
			
			mod_input <= signed(data_input);
			if (switches = "0000") then
			--need to convert to signed for manipulation
			--0.0508    0.0566    0.0587    0.0566
				
				for I in 0 to 20 loop	
					MULTI_RES(I) <=  mod_input * co_efficients_20(I);
					--was mult_pass(55 downto 24);
					--will only run once per process
					if I = 0 then
						ADD_RES(I) <= "0000000" &(ZERO +  MULTI_RES(I));
					else
						ADD_RES(I) <= ("0000000" & MULTI_RES(I)) + ADD_RES(I-1);
					end if;
				end loop;
				add_output <= ADD_RES(20);
				data_out_sig <= std_logic_vector(add_output(60 downto 29));
			

			elsif (switches = "0001") then 
				
				for I in 0 to 20 loop	
					MULTI_RES(I) <=  mod_input * co_efficients2_20(I);
					--was mult_pass(55 downto 24);
					--will only run once per process
					if I = 0 then
						ADD_RES(I) <= "0000000" &(ZERO +  MULTI_RES(I));
					else
						ADD_RES(I) <= ("0000000" & MULTI_RES(I)) + ADD_RES(I-1);
					end if;
				end loop;
				add_output <= ADD_RES(20);
				data_out_sig <= std_logic_vector(add_output(58 downto 27));
			
			elsif (switches = "0010") then
			
				for I in 0 to 20 loop	
					MULTI_RES(I) <=  mod_input * co_efficients3_20(I);
					--was mult_pass(55 downto 24);
					--will only run oncse per process
					if I = 0 then
						ADD_RES(I) <= "0000000" &(ZERO +  MULTI_RES(I));
					else
						ADD_RES(I) <= ("0000000" & MULTI_RES(I)) + ADD_RES(I-1);
					end if;
				end loop;
				add_output <= ADD_RES(20);
				data_out_sig <= std_logic_vector(add_output(58 downto 27));
					
			elsif (switches = "0100") then
			--a try at a different method to push in values.
			--0.0508    0.0566    0.0587    0.0566
				
				--manually doing each iteration for a low lass filter.
				--at 5Khz should have -40dB
				MULTI_RES(0) <= mod_input * "00000000110011111111010101000100";

				MULTI_RES(1) <= mod_input * "00000000111001111111011110101111";   

				MULTI_RES(2) <= mod_input * "00000000111100000100011100010011";

				MULTI_RES(3) <= mod_input * "00000000111001111111011110101111";


				add_output <= ("0000000" & MULTI_RES(0)) + ("0000000" & MULTI_RES(1)) + ("0000000" & MULTI_RES(2)) + ("0000000" & MULTI_RES(3));
				
					
	
				--add_output <= ADD_RES(20);

				data_out_sig <= std_logic_vector(add_output(59 downto 28));
			end if;
		
		data_output <= data_out_sig;

	end if;
		
		

end process;

end architecture ; -- arch

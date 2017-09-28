library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


--this is a transpose fir filter.  Seemed to be the most
--efficient and lightweight, when researching
entity FIR is
	port(
			--going to assume all data is valid, 
			--making qsys integration simple
			clk			:in  std_logic;
			reset		:in  std_logic;
			input 		:in  std_logic_vector (23 downto 0);

			output		:out std_logic_vector (23 downto 0)
		);
end entity;


architecture FIR_arch of FIR is


	--basic fir filter.
	--probably nto using these values
	--signal Q1		:std_logic_vector(23 downto 0) := "000011001100110011001100";  --about .2, just under that value
	--signal Q2		:std_logic_vector(23 downto 0) := "000110011001100110011000";  --about .4
	--signal Q3		:std_logic_vector(23 downto 0) := "000110011001100110011000";
	--signal Q4		:std_logic_vector(23 downto 0) := "000011001100110011001100";


	--an array to step through values to sum together.
	type co_efficients_type is array(10 downto 0) of signed(23 downto 0);

	--values were determined using matlab filter designer.
	--also used the firpm function to try and find filter coefficients as well
	constant co_efficients : co_efficients_type := (
		"100100101011111011100000",		-- -0.2929
		"100000111001111101010100",		-- -0.0566
		"000000100000001001110100",		--  0.0314
		"000010011110010011111000",		--  0.1546
		"000100001011110001101100",		--  0.2615
		"000100110110011110100000",		--  0.3032
		"000100001011110001101100",		--  0.2615
		"000010011110010011111000",		--  0.1546
		"000000100000001001110100",		--  0.0314
		"100000111001111101010100",		-- -0.0566
		"100100101011111011100000");	-- -0.2929
	
	--created a couple of arrays to push values to during loop
	type MULT_TYPE is array(10 downto 0) of signed(23 downto 0);
	signal MULT : MULT_TYPE;
	
	type ADD_TYPE is array(10 downto 0) of signed(23 downto 0);
	signal ADD : ADD_TYPE;
	
	--need at least one zero for this process
	--need at least one zero for this process
	constant ZERO : signed(23 downto 0) := (others => '0');

	signal mod_input		: signed(23 downto 0);
	
	--to make the process a little easier
	signal dummy		:std_logic := '0';
	signal mult_pass	:signed(47 downto 0);
begin



--do I care about clock?, this might end up hurting me if the process takes too long.
Sync_on_clock : process(clk,reset)




begin
	
	if(rising_edge(clk) AND reset = '0') then
		
		--need to convert to signed for manipulation
		mod_input <= signed(input);
		for I in 10 downto 0 loop
			
			mult_pass <= mod_input * co_efficients(10-I);
			--need to chop down to size
			MULT(I) <= mult_pass(43 downto 20);
			--will only run once per process
			
			if I = 0 then
				ADD(I) <= ZERO + MULT(0);
			else
				ADD(I) <= MULT(I) + ADD(I-1);
			end if;

		end loop;


	else
		--this part should be doing nothing otherwise.
		--could use this signal to debug, would only indicate reset is backwards
		dummy <= '1';

	end if;

end process;




end architecture ; -- arch
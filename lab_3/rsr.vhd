library ieee;
use ieee.std_logic_1164.all;
use IEEE.std_logic_arith.all;


entity rsr is
--this might be cased inside of a wrapper. probably.
	port(
	--inputs
	clk				:in  std_logic;
	input				:in  std_logic_vector(27  downto 0); --input length
	W					:in  std_logic_vector(5   downto 0);  --word length
	F					:in  std_logic_vector(5   downto 0);  --floating point length

	--outputs	
	Yout				:out std_logic_vector(27 downto 0)
	);

end entity;


architecture rsr_arch of rsr is
--the initial guess of Yo
component guess
	port(
	clk				:in  std_logic;
	input				:in  std_logic_vector(27 downto 0);  --word length
	W					:in  std_logic_vector(5  downto 0);
	F					:in  std_logic_vector(5  downto 0);  --floating point lengths
	Yout				:out std_logic_vector(27 downto 0)   --output of the initial guess Yo	
	);
end component;

																		 --iterating the newton method until convergence.
component iterations
	port(
	clk				:in  std_logic;
	inx				:in  std_logic_vector(27  downto 0);
	yguess			:in  std_logic_vector(27  downto 0);
	outy				:out std_logic_vector(27 downto 0)
	);
end component;


	--latch signals 
	signal linput	:std_logic_vector(27 downto 0);
	signal lW, lF	:std_logic_vector(5  downto 0);
	signal gyout   :std_logic_vector(27 downto 0);


begin

--latching the values on clock cycle.
latch_values : process(clk)

	begin 

		if(rising_edge(clk)) then
			linput <= input;
			lW 	 <= W;
			lF		 <= F;
		end if;

end process;
--PART 1
A1 : guess port map(clk, linput, lW, lF, gyout);
--PART 2
A2 : iterations port map(clk,linput, gyout, Yout);


end architecture;
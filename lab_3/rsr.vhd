library ieee;
use ieee.std_logic_1164.all;


entity rsr is
--this might be cased inside of a wrapper. probably.
	port(
	--inputs
	clk	:in std_logic;
	input	:in std_logic_vector(27 downto 0); --input length
	W	:in std_logic_vector(4 downto 0);  --word length
	F	:in std_logic_vector(4 downto 0);  --floating point length
--	Z	:in std_logic_vector(27 downto 0); --number of leading zeros
	--other things?
	--outputs	
	Yout	:out std_logic_vector(31 downto 0)

	);

end entity;


architecture rsr_arch of rsr is
--the initial guess of Yo
component guess
	port(
	clk	:in std_logic;
	input	:in std_logic_vector(27 downto 0); --word length
	W	:in std_logic_vector(4 downto 0);
	F	:in std_logic_vector(4 downto 0);  --floating point lengths
	Yout	:out std_logic_vector(31 downto 0) --output of the initial guess Yo	
	);
end component;

--iterating the newton method until convergence.
component iterations
	port(
	clk	:in std_logic;
	);
end component;



begin






end architecture;
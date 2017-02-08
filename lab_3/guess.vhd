library ieee;
use ieee.std_logic_1164.all;


entity guess is
port(
	clk	:in std_logic;
	input	:in std_logic_vector(27 downto 0); --word length
	W	:in std_logic_vector(4 downto 0);
	F	:in std_logic_vector(4 downto 0);  --floating point length
	
	Yout	:out std_logic_vector(31 downto 0) --output of the initial guess Yo	
	);
end entity;


architecture guess_arch of guess is

component lzc
	port (
        clk        : in  std_logic;
        lzc_vector : in  std_logic_vector (27 downto 0);
        lzc_count  : out std_logic_vector ( 4 downto 0)
    );
end component;

signal beta, alpha	:std_logic_vector(4 downto 0); --these can be negative or positive
signal Z		:std_logic_vector(4 downto 0); -- number of zeros
begin

--step 1
A0 : lzc port map(clk,input,Z);

--step 2
beta <= signed(W - F - Z - '1');

--step 3
process()
begin
	if (beta(0) == '0') then
		alpha <= signed((-2*beta) + .5*beta);
	else
		alpha <= signed((-2*beta) + .5*beta + .5);
	end if;
end process;



end architecture;
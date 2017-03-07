library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity guess is
port(
	clk	:in std_logic;
	input	:in std_logic_vector(27 downto 0); --word length
	W	:in std_logic_vector(5 downto 0);
	F	:in std_logic_vector(5 downto 0);  --floating point length
	
	Yout	:out std_logic_vector(27 downto 0) --output of the initial guess Yo	
	);
end entity;


architecture guess_arch of guess is



component lzc
	port (
        clk        : in  std_logic;
        lzc_vector : in  std_logic_vector (27 downto 0);
        lzc_count  : out std_logic_vector (4	 downto 0)
    );
end component;

component ROM1 --Created by quartus through the basic functions
	PORT
	(
		address		: IN STD_LOGIC_VECTOR (7 DOWNTO 0);
		clock		: IN STD_LOGIC := '1';
		q		: OUT STD_LOGIC_VECTOR (7 DOWNTO 0)
	);
end component;




signal beta						:signed          (5  downto 0); --these can be negative or positive
signal shiftbeta, alpha		:signed          (11 downto 0);
signal Z							:std_logic_vector(4  downto 0); -- number of zeros
signal Xa, Xb					:signed          (27 downto 0);
signal lookupvalue			:std_logic_vector(7  downto 0); -- from the rom included in project.
signal shiftaddr				:std_logic_vector(17 downto 0);

signal yguess					:std_logic_vector(46 downto 0);


constant B0						:signed          (5  downto 0) := "000001";		 --1/2
constant B1						:signed			  (8  downto 0) := "010110101";    --.707


begin

--step 1
A1 : lzc port map(clk,input,Z);

--step 2
beta <= (signed(W) - signed(F) - signed(Z) - "000001");

--step 3
compute_alpha : process(beta, input, alpha, shiftbeta)
begin
	shiftbeta <=  (beta srl 1)*B0;


	if (beta(0) = '0') then	
		alpha <= signed(("111110"*beta) + shiftbeta);
	elsif (beta(0) = '1') then
		alpha <= signed(("111110"*beta) + (shiftbeta)+ (B0 srl 1)); --may be fail point
	end if;
	
	
	---shifting by alpha bits to compute x(alpha) 
	---and shifting by -beta bits to compute x(beta)

	
--step 4
	Xa  <= signed(input) sll to_integer(alpha);	
--step 5
	Xb  <= signed(input) srl to_integer(beta);

	 

end process;

--step 6
	--at this point we will look for the address to get one of the final values
romlookup : ROM1 port map(std_logic_vector(Xb(13 downto 6)), clk, lookupvalue);
	
	
--Yout <= ( (lookupvalue));
	
	--this was used to debug vhdl for steps 1 - 6
	

	
	
	
	
	--step 7
compute_yguess : process(Xa, Xb, clk, beta,lookupvalue, shiftaddr, yguess)

begin
		
		
		
		
		shiftaddr <= std_logic_vector((signed("0" & lookupvalue) srl 1)*B1);
	
	
		if (beta(0) = '0') then
			
			yguess <= "0000000000" & std_logic_vector(Xa * signed("0" & lookupvalue) sll 6);
			
			
		elsif(beta(0) = '1') then
		 
			yguess <= std_logic_vector(Xa * signed("0" & shiftaddr));
		
		
		end if;
	
	   
end process;

	--goofin around
	--Yout <=  std_logic_vector((signed(yguess(40 downto 13))*"11"-signed(input)*(signed(yguess) sll 2))/"10")(27 downto 0);
	
	Yout <=  yguess(40 downto 13);
	
	--above here all checks out
	--guess is all done
	
end architecture;

--   cosim stuff

--   C:\modeltech64_10.5c\win64

--   vmap altera_mf "C:/Users/s96s544/Desktop/EELE466-master/lab_3/simlib/vhdl_libs/altera_mf"
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity iterations is
	port(
	clk				:in  std_logic;
	inx				:in  std_logic_vector(27 downto 0);
	yguess			:in  std_logic_vector(27 downto 0);
	outy				:out std_logic_vector(27 downto 0)
	);
	
end entity;


architecture iterations_arch of iterations is


component Newtons_method
	port(
	clk				:in std_logic;
	Xin		 		:in std_logic_vector(27 downto 0);
	Yin		 		:in std_logic_vector(55 downto 0);
	Yguessout 		:out std_logic_vector(55 downto 0)	
	);
end component;

	
	
	signal yin 	   						:std_logic_vector(55 downto 0); 
	signal Xinput							:std_logic_vector(27 downto 0); 
	signal Yest1,Yest2,Yest3			:std_logic_vector(55 downto 0);
	signal Yfinal							:std_logic_vector(55 downto 0);
	
begin


--need to have this loop quite a few times to get accuracy downto to 2^-14
--newtons method yn+1=(yn(3-xyn^2))/2 n>=0 


xinput <= inx;
yin <= "00000000000000" & yguess & "00000000000000";


Gen_latch : for I in 0 to 3 generate

	Firstloop: if I=0 generate
		A0 : Newtons_method port map (clk,xinput, yin, Yest1);
	end generate Firstloop;
	
	Secondloop: if (I=1) generate
		A1 : Newtons_method port map (clk,xinput, Yest1, Yest2);
	end generate Secondloop;

	thirdloop: if (I=2) generate
		A2 : Newtons_method port map (clk,xinput, Yest2, Yest3);
	end generate thirdloop;

	
	
	Finalloop: if I = 3 generate
		A3 : Newtons_method port map (clk,xinput, Yest3, Yfinal);
	end generate Finalloop;
	
end generate Gen_latch;



outy <= Yfinal(41 downto 14);

--Latch : Newtons_method port map (clk,Xinput,yguess, outy);


end architecture;

	--
--CLK_set : process(clk, inx, yguess,Yest)
--begin
--	for I in 0 to 3 loop
--
--		 
--			
--			--if(rising_edge(clk)) then
--				if(I = 0 ) then
--				yin <= yguess;
--				else
--				yin <= Yest;
--				end if;
--				
--			--end if;
--	
--	end loop;
--
--end process;

--Yestimate : Newtons_method port map(clk,xinput, yin, Yest);
	

--loop for iteration
--
--for I in 0 to 8 loop
--	yn1 <= (yn*(three - (unsigned(inx)*(yn*yn)))*half);
--
--	yn  <= yn1(83 downto 56); --chopping yn1 downto to proper size
--	
--end loop;

--yn1 <= yn*(three - (unsigned(inx)*(yn*yn)));
--yn1 <= (yn*(three - (unsigned(inx)*(yn*yn)))*half srl 1);
--yn  <= yn1(54 downto 27);




--   cosim stuff

--   C:\modeltech64_10.5c\win64

--   vmap altera_mf "C:/Users/s96s544/Desktop/EELE466-master/lab_3/simlib/vhdl_libs/altera_mf"
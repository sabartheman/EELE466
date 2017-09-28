library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;



entity DE0_SOC_NoHPS_Top_Level is
	port(
		----------------------------------------
		--  CLOCK Inputs
		----------------------------------------
		FPGA_CLK1_50  :  in std_logic;
		FPGA_CLK2_50  :  in std_logic;
		FPGA_CLK3_50  :  in std_logic;
		----------------------------------------
		--  Push Button Inputs (KEY) - 2 inputs
		----------------------------------------
		KEY : in std_logic_vector(1 downto 0);
		----------------------------------------
		--  Switch Inputs (SW) - 4 inputs
		----------------------------------------
		SW  : in std_logic_vector(3 downto 0);
		----------------------------------------
		--  LED Outputs - 8 outputs
		----------------------------------------
		LED : out std_logic_vector(7 downto 0);
		----------------------------------------
		--  GPIO
		----------------------------------------
		GPIO_0 : inout std_logic_vector(35 downto 0);
		GPIO_1 : inout std_logic_vector(35 downto 0)
	);
end entity DE0_SOC_NoHPS_Top_Level;


architecture DE0_SOC_NoHPS_arch of DE0_SOC_NoHPS_Top_Level is

	component PLL1 is
		port (
			refclk   : in  std_logic := 'X'; -- clk
			rst      : in  std_logic := 'X'; -- reset
			outclk_0 : out std_logic;        -- clk
			outclk_1 : out std_logic;        -- clk
			outclk_2 : out std_logic;        -- clk
			outclk_3 : out std_logic;        -- clk
			locked   : out std_logic         -- export
		);
	end component PLL1;

	
	component spi_commands is
	  generic(
	
	  command_used_g          : std_logic 	:= '1';
	  address_used_g          : std_logic 	:= '1';
	  command_width_bytes_g   : natural 	:= 1;
	  address_width_bytes_g   : natural 	:= 1;
	  data_length_bit_width_g : natural 	:= 8;
	  cpol_cpha               : std_logic_vector(1 downto 0) := "00"
	  );
		port(
			clk	           :in	std_logic;	
			rst_n 	        :in	std_logic;
			
			command_in      : in  std_logic_vector(command_width_bytes_g*8-1 downto 0);
			address_in      : in  std_logic_vector(address_width_bytes_g*8-1 downto 0);
			address_en_in   : in  std_logic;
			data_length_in  : in  std_logic_vector(data_length_bit_width_g - 1 downto 0);
			
			master_slave_data_in      :in   std_logic_vector(7 downto 0);
			master_slave_data_rdy_in  :in   std_logic;
			master_slave_data_ack_out :out  std_logic;
			command_busy_out          :out  std_logic;
			command_done              :out  std_logic;
	
			slave_master_data_out     : out std_logic_vector(7 downto 0);
			slave_master_data_ack_out : out std_logic;
	
			miso 				:in	std_logic;	
			mosi 				:out  std_logic;	
			sclk 				:out  std_logic;	
			cs_n 				:out  std_logic 
		);
	end component;
	
	---------------------------------------------------------
	-- Signal declarations
	---------------------------------------------------------
	signal CLK_100    : std_logic;
	signal CLK_50     : std_logic;
	signal CLK_10     : std_logic;
	signal CLK_5      : std_logic;
	signal system_rst : std_logic;
	
	signal AD1939_spi_command       		: std_logic_vector(7 downto 0);  
	constant AD1939_spi_command_read  	: std_logic_vector(7 downto 0) := "00001001";  -- Insee page 24 of AD1939 data sheet   Note: AD1939_spi_command <= AD1939_spi_command_read or AD1939_spi_command_write
	constant AD1939_spi_command_write 	: std_logic_vector(7 downto 0) := "00001000";  -- see page 24 of AD1939 data sheet
	signal AD1939_spi_register_address  : std_logic_vector(7 downto 0);  
   signal AD1939_spi_write_data        : std_logic_vector(7 downto 0);  -- data to be written to AD1939 register
	signal AD1939_spi_write_data_rdy    : std_logic;                     -- assert (clock pulse) to write data
	signal AD1939_spi_busy          		: std_logic;                     -- If 1, the spi is busy servicing a command. Wait until 0 to send another command. 
   signal AD1939_spi_read_data         : std_logic_vector(7 downto 0);  -- data read from AD1939 register
   signal AD1939_spi_read_data_ack  	: std_logic;                     -- data ready to be read
	signal AD1939_spi_CIN 					: std_logic;  							-- AD1939 SPI signal = data to AD1939 SPI registers
	signal AD1939_spi_COUT 					: std_logic;  							-- AD1939 SPI signal = data from AD1939 SPI registers
	signal AD1939_spi_CCLK 					: std_logic;  							-- AD1939 SPI signal = sclk: serial clock
	signal AD1939_spi_CLATCH_n 			: std_logic;  							-- AD1939 SPI signal = ss_n: slave select (active low)
	
begin

	system_pll: PLL1 
		port map (
			refclk   => FPGA_CLK1_50,  -- 50 MHz Reference Clock
			rst      => system_rst,    -- Reset
			outclk_0 => CLK_100,       -- 100 MHz Clock
			outclk_1 => CLK_50,        --  50 MHz Clock
			outclk_2 => CLK_10,        --  10 MHz Clock
			outclk_3 => CLK_5,         --   5 MHz Clock
			locked   => open           -- port driven high when the PLL acquires lock
		);


	spi_AD1939: spi_commands
		generic map (
			command_used_g            => '1',  -- command field is used
			address_used_g            => '1',  -- address field is used
			command_width_bytes_g     =>  1,   -- command is 1 byte
			address_width_bytes_g     =>  1,   -- address is 1 byte
			data_length_bit_width_g   =>  8,   -- data length is 8 bits (Note: AD1939 uses a 24-bit input data word where: Global_Address=23:17="0000100", R/W=16 (read=1), Register_Address=15:8, Register_Data=7:0    See Table 14 on page 24 of AD1939 Data Sheet).
			cpol_cpha                 => "00"  -- AD1939:  CPOL=0, CPHA=0
		)
		port map (
			clk	                    => CLK_5,  								-- 5 MHz clock (10 MHz max)
			rst_n 	                 => not system_rst,						-- component reset
			command_in                => AD1939_spi_command,  				-- Command includes Global Address (0000100) and is either Read ("00001001") or Write ("00001000").
			address_in                => AD1939_spi_register_address,  	-- Register Address.  There are 17 Control Registers from address 0 to address 16.  See Control Register descriptions starting on page 24 of AD1939 Data Sheet
			address_en_in             => '1',          						-- 1=Address field will be used.
			data_length_in            => "00000001",   						-- Data payload will be 1 byte ("00000001").	
			master_slave_data_in      => AD1939_spi_write_data,			-- data to be written to an AD1939 register
			master_slave_data_rdy_in  => AD1939_spi_write_data_rdy,    	-- assert (clock pulse) to write the data
			master_slave_data_ack_out => open,                         	-- ignore acknowledgement 
			command_busy_out          => AD1939_spi_busy,					-- If 1, the spi is busy servicing a command. Wait until 0 to send another command. 
			slave_master_data_out     => AD1939_spi_read_data,				-- data read from AD1939 register
			slave_master_data_ack_out => AD1939_spi_read_data_ack,		-- data ready to be read
			miso 				           => AD1939_spi_COUT,					-- AD1939 SPI signal = data from AD1939 SPI registers
			mosi 					        => AD1939_spi_CIN,						-- AD1939 SPI signal = data to AD1939 SPI registers
			sclk 					        => AD1939_spi_CCLK,					-- AD1939 SPI signal = sclk: serial clock
			cs_n 					        => AD1939_spi_CLATCH_n				-- AD1939 SPI signal = ss_n: slave select (active low)
		);
		
   GPIO_0(7) <= AD1939_spi_CIN;       -- AD1939 SPI signal = mosi data to AD1939 registers    -- Eval Board J1:p8 (CDATA)
   GPIO_0(4) <= AD1939_spi_COUT;      -- AD1939 SPI signal = miso data from AD1939 registers  -- Eval Board J1:p5 (COUT)
   GPIO_0(6) <= AD1939_spi_CCLK;      -- AD1939 SPI signal = sclk: serial clock               -- Eval Board J1:p7 (CCLK)
   GPIO_0(8) <= AD1939_spi_CLATCH_n;  -- AD1939 SPI signal = ss_n: slave select (active low)  -- Eval Board J1:p9 (CLATCH_n)
	
	system_rst <= not KEY(1);   -- the KEY pushbuttons are active low when pressed.
	
	LED(3 downto 0) <= SW;
	LED(7 downto 4) <= (others => '0');

	
	
	AD1939_spi_command 				<= AD1939_spi_command_write;
	AD1939_spi_register_address 	<= "00000000";
	AD1939_spi_write_data         <= "10000000";
	AD1939_spi_write_data_rdy     <= not KEY(0);
	
	
	
	
	
	

end architecture DE0_SOC_NoHPS_arch;

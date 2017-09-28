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
		--  The KEY inputs produce a '0' when pressed (asserted)
		--  and produce a '1' in the rest state
		--  a better label for KEY would be Push_Button_n 
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
		GPIO_1 : inout std_logic_vector(35 downto 0);
		


--      ///////// ADC /////////
      ADC_CONVST					: out STD_LOGIC;
		ADC_SCK						: out STD_LOGIC;
		ADC_SDI						: out STD_LOGIC;
		ADC_SDO						: in STD_LOGIC;
		
--		///////// ARDUINO /////////
		ARDUINO_IO					: inout STD_LOGIC_VECTOR(15 downto 0);
		ARDUINO_RESET_N			: inout STD_LOGIC;
		
      
--`ifdef ENABLE_CLK
--      ///////// CLK /////////
--      CLK_I2C_SCL 				: out STD_LOGIC;
--      CLK_I2C_SDA					: inout STD_LOGIC;
		
--`endif /*ENABLE_CLK*/

--`ifdef ENABLE_HPS
--      ///////// HPS /////////
      HPS_CONV_USB_N				: inout STD_LOGIC;
      HPS_DDR3_ADDR				: out STD_LOGIC_VECTOR(14 downto 0);
      HPS_DDR3_BA					: out STD_LOGIC_VECTOR(2 downto 0);
      HPS_DDR3_CAS_N				: out STD_LOGIC;
      HPS_DDR3_CKE				: out STD_LOGIC;
      HPS_DDR3_CK_N				: out STD_LOGIC;
      HPS_DDR3_CK_P				: out STD_LOGIC;
      HPS_DDR3_CS_N				: out STD_LOGIC;
      HPS_DDR3_DM					: out STD_LOGIC_VECTOR(3 downto 0);
      HPS_DDR3_DQ					: inout STD_LOGIC_VECTOR(31 downto 0);
      HPS_DDR3_DQS_N				: inout STD_LOGIC_VECTOR(3 downto 0);
      HPS_DDR3_DQS_P				: inout STD_LOGIC_VECTOR(3 downto 0);
      HPS_DDR3_ODT				: out STD_LOGIC;
      HPS_DDR3_RAS_N				: out STD_LOGIC;
      HPS_DDR3_RESET_N			: out STD_LOGIC;
      HPS_DDR3_RZQ				: in STD_LOGIC;
      HPS_DDR3_WE_N				: out STD_LOGIC;
      HPS_ENET_GTX_CLK			: out STD_LOGIC;
      HPS_ENET_INT_N				: inout STD_LOGIC;
      HPS_ENET_MDC				: out STD_LOGIC;
      HPS_ENET_MDIO				: inout STD_LOGIC;
      HPS_ENET_RX_CLK			: in STD_LOGIC;
      HPS_ENET_RX_DATA			: in STD_LOGIC_VECTOR(3 downto 0);
      HPS_ENET_RX_DV				: in STD_LOGIC;
      HPS_ENET_TX_DATA			: out STD_LOGIC_VECTOR(3 downto 0);
      HPS_ENET_TX_EN				: out STD_LOGIC;
      HPS_GSENSOR_INT			: inout STD_LOGIC;
      HPS_I2C0_SCLK				: inout STD_LOGIC;
      HPS_I2C0_SDAT				: inout STD_LOGIC;
      HPS_I2C1_SCLK				: inout STD_LOGIC;
      HPS_I2C1_SDAT				: inout STD_LOGIC;
      HPS_KEY						: inout STD_LOGIC;
      HPS_LED						: inout STD_LOGIC;
      HPS_LTC_GPIO				: inout STD_LOGIC;
      HPS_SD_CLK					: out STD_LOGIC;
      HPS_SD_CMD					: inout STD_LOGIC;
      HPS_SD_DATA					: inout STD_LOGIC_VECTOR(3 downto 0);
      HPS_SPIM_CLK				: out STD_LOGIC;
      HPS_SPIM_MISO				: in STD_LOGIC;
      HPS_SPIM_MOSI				: out STD_LOGIC;
      HPS_SPIM_SS					: inout STD_LOGIC;
      HPS_UART_RX					: in STD_LOGIC;
      HPS_UART_TX					: out STD_LOGIC;
      HPS_USB_CLKOUT				: in STD_LOGIC;
      HPS_USB_DATA				: inout STD_LOGIC_VECTOR(7 downto 0);
      HPS_USB_DIR					: in STD_LOGIC;
      HPS_USB_NXT					: in STD_LOGIC;
      HPS_USB_STP					: out STD_LOGIC
--`endif /*ENABLE_HPS*/		
			
	
	-- Ported from ghrd.v
	--fpga_clk_50 <= FPGA_CLK1_50;
	--assign stm_hw_events    = {{15{1'b0}}, SW, {8{1'b0}}, fpga_debounced_buttons};	
			
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	);
end entity DE0_SOC_NoHPS_Top_Level;


architecture DE0_SOC_NoHPS_arch of DE0_SOC_NoHPS_Top_Level is

	signal hps_fpga_reset_n					: STD_LOGIC;
	signal fpga_debounced_buttons			: STD_LOGIC_VECTOR(3 downto 0);
	signal hps_reset_req						: STD_LOGIC_VECTOR(2 downto 0);
	signal hps_cold_reset					: STD_LOGIC;
	signal hps_warm_reset					: STD_LOGIC;
	signal hps_debug_reset					: STD_LOGIC;
	signal stm_hw_events						: STD_LOGIC_VECTOR(27 downto 0);
	signal fpga_clk_50					 	: STD_LOGIC;

	signal i2c_0_i2c_serial_sda_in		: STD_LOGIC;
	signal i2c_serial_scl_in				: STD_LOGIC;
	signal i2c_serial_sda_oe				: STD_LOGIC;
	signal serial_scl_oe						: STD_LOGIC;
	--signal LED 									: std_logic_vector(7 downto 0);
	
	
	signal spi_0_external_MISO				: STD_LOGIC;
	signal spi_0_external_MOSI				: STD_LOGIC;
	signal spi_0_external_SCLK				: STD_LOGIC;
	signal spi_0_external_SS_n				: STD_LOGIC;


	signal avalon_streaming_passthrough_l_avalon_streaming_source_data  :   std_logic_vector(23 downto 0);                    -- data
	signal avalon_streaming_passthrough_l_avalon_streaming_source_error :   std_logic_vector(1 downto 0);                     -- error
	signal avalon_streaming_passthrough_l_avalon_streaming_source_valid :   std_logic;                                        -- valid
	signal avalon_streaming_passthrough_r_avalon_streaming_source_data  :   std_logic_vector(23 downto 0);                    -- data
	signal avalon_streaming_passthrough_r_avalon_streaming_source_error :   std_logic_vector(1 downto 0);                     -- error
	signal avalon_streaming_passthrough_r_avalon_streaming_source_valid :   std_logic;                                        -- valid
	signal avalon_streaming_passthrough_r_conduit_end_signal1_out       :   std_logic;                                        -- signal1_out
	signal avalon_streaming_passthrough_r_conduit_end_signal1_in        :   std_logic                     := 'X';             -- signal1_in
	signal avalon_streaming_passthrough_r_avalon_streaming_sink_data    :   std_logic_vector(23 downto 0) := (others => 'X'); -- data
	signal avalon_streaming_passthrough_r_avalon_streaming_sink_valid   :   std_logic                     := 'X';             -- valid
	signal avalon_streaming_passthrough_r_avalon_streaming_sink_error   :   std_logic_vector(1 downto 0)  := (others => 'X'); -- error
	signal avalon_streaming_passthrough_l_avalon_streaming_sink_data    :   std_logic_vector(23 downto 0) := (others => 'X'); -- data
	signal avalon_streaming_passthrough_l_avalon_streaming_sink_valid   :   std_logic                     := 'X';             -- valid
	signal avalon_streaming_passthrough_l_avalon_streaming_sink_error   :   std_logic_vector(1 downto 0)  := (others => 'X');  -- error



	COMPONENT debounce is
		GENERIC ( WIDTH : INTEGER := 2; POLARITY : STRING := "LOW"; TIMEOUT : INTEGER := 50000; TIMEOUT_WIDTH : INTEGER := 16 );
		PORT
		(
			clk			:	 IN STD_LOGIC;
			reset_n		:	 IN STD_LOGIC;
			data_in		:	 IN STD_LOGIC_VECTOR(WIDTH-1 DOWNTO 0);
			data_out		:	 OUT STD_LOGIC_VECTOR(WIDTH-1 DOWNTO 0)
		);
	END COMPONENT;
	
--	COMPONENT hps_reset is
--		PORT
--		(
--			source_clk	: IN STD_LOGIC;
--			source	 	: IN STD_LOGIC_VECTOR(3 DOWNTO 0);
--		);
--	END COMPONENT;
	
	COMPONENT altera_edge_detector
	GENERIC ( PULSE_EXT : INTEGER := 6; EDGE_TYPE : INTEGER := 1; IGNORE_RST_WHILE_BUSY : INTEGER := 1 );
	PORT
	(
		clk		:	 IN STD_LOGIC;
		rst_n		:	 IN STD_LOGIC;
		signal_in		:	 IN STD_LOGIC;
		pulse_out		:	 OUT STD_LOGIC
	);
	END COMPONENT;
	
	
	component OnePulse is
		port(
			clk      	    			: in  std_logic;  
			reset                   : in  std_logic;
			push_button	            : in  std_logic;  -- push button to generate pulse
			single_pulse            : out std_logic   -- pulse of 1 clock cycle sent out when push button is pressed
			);
	end component;
	
	
	

	component soc_system is
        port (
            button_pio_external_connection_export : in    std_logic_vector(3 downto 0)  := (others => 'X'); -- export
            clk_clk                               : in    std_logic                     := 'X';             -- clk
            custom_leds_0_leds_leds               : out   std_logic_vector(7 downto 0);                     -- leds
            dipsw_pio_external_connection_export  : in    std_logic_vector(3 downto 0)  := (others => 'X'); -- export
            hps_0_f2h_cold_reset_req_reset_n      : in    std_logic                     := 'X';             -- reset_n
            hps_0_f2h_debug_reset_req_reset_n     : in    std_logic                     := 'X';             -- reset_n
            hps_0_f2h_stm_hw_events_stm_hwevents  : in    std_logic_vector(27 downto 0) := (others => 'X'); -- stm_hwevents
            hps_0_f2h_warm_reset_req_reset_n      : in    std_logic                     := 'X';             -- reset_n
            hps_0_h2f_reset_reset_n               : out   std_logic;                                        -- reset_n
            hps_0_hps_io_hps_io_emac1_inst_TX_CLK : out   std_logic;                                        -- hps_io_emac1_inst_TX_CLK
            hps_0_hps_io_hps_io_emac1_inst_TXD0   : out   std_logic;                                        -- hps_io_emac1_inst_TXD0
            hps_0_hps_io_hps_io_emac1_inst_TXD1   : out   std_logic;                                        -- hps_io_emac1_inst_TXD1
            hps_0_hps_io_hps_io_emac1_inst_TXD2   : out   std_logic;                                        -- hps_io_emac1_inst_TXD2
            hps_0_hps_io_hps_io_emac1_inst_TXD3   : out   std_logic;                                        -- hps_io_emac1_inst_TXD3
            hps_0_hps_io_hps_io_emac1_inst_RXD0   : in    std_logic                     := 'X';             -- hps_io_emac1_inst_RXD0
            hps_0_hps_io_hps_io_emac1_inst_MDIO   : inout std_logic                     := 'X';             -- hps_io_emac1_inst_MDIO
            hps_0_hps_io_hps_io_emac1_inst_MDC    : out   std_logic;                                        -- hps_io_emac1_inst_MDC
            hps_0_hps_io_hps_io_emac1_inst_RX_CTL : in    std_logic                     := 'X';             -- hps_io_emac1_inst_RX_CTL
            hps_0_hps_io_hps_io_emac1_inst_TX_CTL : out   std_logic;                                        -- hps_io_emac1_inst_TX_CTL
            hps_0_hps_io_hps_io_emac1_inst_RX_CLK : in    std_logic                     := 'X';             -- hps_io_emac1_inst_RX_CLK
            hps_0_hps_io_hps_io_emac1_inst_RXD1   : in    std_logic                     := 'X';             -- hps_io_emac1_inst_RXD1
            hps_0_hps_io_hps_io_emac1_inst_RXD2   : in    std_logic                     := 'X';             -- hps_io_emac1_inst_RXD2
            hps_0_hps_io_hps_io_emac1_inst_RXD3   : in    std_logic                     := 'X';             -- hps_io_emac1_inst_RXD3
            hps_0_hps_io_hps_io_sdio_inst_CMD     : inout std_logic                     := 'X';             -- hps_io_sdio_inst_CMD
            hps_0_hps_io_hps_io_sdio_inst_D0      : inout std_logic                     := 'X';             -- hps_io_sdio_inst_D0
            hps_0_hps_io_hps_io_sdio_inst_D1      : inout std_logic                     := 'X';             -- hps_io_sdio_inst_D1
            hps_0_hps_io_hps_io_sdio_inst_CLK     : out   std_logic;                                        -- hps_io_sdio_inst_CLK
            hps_0_hps_io_hps_io_sdio_inst_D2      : inout std_logic                     := 'X';             -- hps_io_sdio_inst_D2
            hps_0_hps_io_hps_io_sdio_inst_D3      : inout std_logic                     := 'X';             -- hps_io_sdio_inst_D3
            hps_0_hps_io_hps_io_usb1_inst_D0      : inout std_logic                     := 'X';             -- hps_io_usb1_inst_D0
            hps_0_hps_io_hps_io_usb1_inst_D1      : inout std_logic                     := 'X';             -- hps_io_usb1_inst_D1
            hps_0_hps_io_hps_io_usb1_inst_D2      : inout std_logic                     := 'X';             -- hps_io_usb1_inst_D2
            hps_0_hps_io_hps_io_usb1_inst_D3      : inout std_logic                     := 'X';             -- hps_io_usb1_inst_D3
            hps_0_hps_io_hps_io_usb1_inst_D4      : inout std_logic                     := 'X';             -- hps_io_usb1_inst_D4
            hps_0_hps_io_hps_io_usb1_inst_D5      : inout std_logic                     := 'X';             -- hps_io_usb1_inst_D5
            hps_0_hps_io_hps_io_usb1_inst_D6      : inout std_logic                     := 'X';             -- hps_io_usb1_inst_D6
            hps_0_hps_io_hps_io_usb1_inst_D7      : inout std_logic                     := 'X';             -- hps_io_usb1_inst_D7
            hps_0_hps_io_hps_io_usb1_inst_CLK     : in    std_logic                     := 'X';             -- hps_io_usb1_inst_CLK
            hps_0_hps_io_hps_io_usb1_inst_STP     : out   std_logic;                                        -- hps_io_usb1_inst_STP
            hps_0_hps_io_hps_io_usb1_inst_DIR     : in    std_logic                     := 'X';             -- hps_io_usb1_inst_DIR
            hps_0_hps_io_hps_io_usb1_inst_NXT     : in    std_logic                     := 'X';             -- hps_io_usb1_inst_NXT
            hps_0_hps_io_hps_io_spim1_inst_CLK    : out   std_logic;                                        -- hps_io_spim1_inst_CLK
            hps_0_hps_io_hps_io_spim1_inst_MOSI   : out   std_logic;                                        -- hps_io_spim1_inst_MOSI
            hps_0_hps_io_hps_io_spim1_inst_MISO   : in    std_logic                     := 'X';             -- hps_io_spim1_inst_MISO
            hps_0_hps_io_hps_io_spim1_inst_SS0    : out   std_logic;                                        -- hps_io_spim1_inst_SS0
            hps_0_hps_io_hps_io_uart0_inst_RX     : in    std_logic                     := 'X';             -- hps_io_uart0_inst_RX
            hps_0_hps_io_hps_io_uart0_inst_TX     : out   std_logic;                                        -- hps_io_uart0_inst_TX
            hps_0_hps_io_hps_io_i2c0_inst_SDA     : inout std_logic                     := 'X';             -- hps_io_i2c0_inst_SDA
            hps_0_hps_io_hps_io_i2c0_inst_SCL     : inout std_logic                     := 'X';             -- hps_io_i2c0_inst_SCL
            hps_0_hps_io_hps_io_i2c1_inst_SDA     : inout std_logic                     := 'X';             -- hps_io_i2c1_inst_SDA
            hps_0_hps_io_hps_io_i2c1_inst_SCL     : inout std_logic                     := 'X';             -- hps_io_i2c1_inst_SCL
            hps_0_hps_io_hps_io_gpio_inst_GPIO09  : inout std_logic                     := 'X';             -- hps_io_gpio_inst_GPIO09
            hps_0_hps_io_hps_io_gpio_inst_GPIO35  : inout std_logic                     := 'X';             -- hps_io_gpio_inst_GPIO35
            hps_0_hps_io_hps_io_gpio_inst_GPIO40  : inout std_logic                     := 'X';             -- hps_io_gpio_inst_GPIO40
            hps_0_hps_io_hps_io_gpio_inst_GPIO53  : inout std_logic                     := 'X';             -- hps_io_gpio_inst_GPIO53
            hps_0_hps_io_hps_io_gpio_inst_GPIO54  : inout std_logic                     := 'X';             -- hps_io_gpio_inst_GPIO54
            hps_0_hps_io_hps_io_gpio_inst_GPIO61  : inout std_logic                     := 'X';             -- hps_io_gpio_inst_GPIO61
            memory_mem_a                          : out   std_logic_vector(14 downto 0);                    -- mem_a
            memory_mem_ba                         : out   std_logic_vector(2 downto 0);                     -- mem_ba
            memory_mem_ck                         : out   std_logic;                                        -- mem_ck
            memory_mem_ck_n                       : out   std_logic;                                        -- mem_ck_n
            memory_mem_cke                        : out   std_logic;                                        -- mem_cke
            memory_mem_cs_n                       : out   std_logic;                                        -- mem_cs_n
            memory_mem_ras_n                      : out   std_logic;                                        -- mem_ras_n
            memory_mem_cas_n                      : out   std_logic;                                        -- mem_cas_n
            memory_mem_we_n                       : out   std_logic;                                        -- mem_we_n
            memory_mem_reset_n                    : out   std_logic;                                        -- mem_reset_n
            memory_mem_dq                         : inout std_logic_vector(31 downto 0) := (others => 'X'); -- mem_dq
            memory_mem_dqs                        : inout std_logic_vector(3 downto 0)  := (others => 'X'); -- mem_dqs
            memory_mem_dqs_n                      : inout std_logic_vector(3 downto 0)  := (others => 'X'); -- mem_dqs_n
            memory_mem_odt                        : out   std_logic;                                        -- mem_odt
            memory_mem_dm                         : out   std_logic_vector(3 downto 0);                     -- mem_dm
            memory_oct_rzqin                      : in    std_logic                     := 'X';             -- oct_rzqin
            reset_reset_n                         : in    std_logic                     := 'X';             -- reset_n
            external_ad1939_spi_cin      : out   std_logic;                                        -- ad1939_spi_cin
            external_ad1939_spi_cclk     : out   std_logic;                                        -- ad1939_spi_cclk
            external_ad1939_spi_clatch_n : out   std_logic;                                        -- ad1939_spi_clatch_n
            external_ad1939_adc_sdata1   : in    std_logic                     := 'X';             -- ad1939_adc_sdata1
            external_ad1939_adc_sdata2   : in    std_logic                     := 'X';             -- ad1939_adc_sdata2
            external_ad1939_adc_bclk     : in    std_logic                     := 'X';             -- ad1939_adc_bclk
            external_ad1939_adc_lrclk    : in    std_logic                     := 'X';             -- ad1939_adc_lrclk
            external_ad1939_dac_sdata1   : out   std_logic;                                        -- ad1939_dac_sdata1
            external_ad1939_dac_sdata2   : out   std_logic;                                        -- ad1939_dac_sdata2
            external_ad1939_dac_sdata3   : out   std_logic;                                        -- ad1939_dac_sdata3
            external_ad1939_dac_sdata4   : out   std_logic;                                        -- ad1939_dac_sdata4
            external_ad1939_dac_bclk     : out   std_logic;                                        -- ad1939_dac_bclk
            external_ad1939_dac_lrclk    : out   std_logic;                                        -- ad1939_dac_lrclk
            external_ad1939_spi_cout     : in    std_logic                     := 'X'              -- ad1939_spi_cout


        );
    end component soc_system;



	component PLL1 is
		port (
			refclk   : in  std_logic := 'X'; -- clk         -- 50 MHz Reference Clock
			rst      : in  std_logic := 'X'; -- reset       -- reset
			outclk_0 : out std_logic;        -- clk         -- 100 MHz Clock
			outclk_1 : out std_logic;        -- clk         --  50 MHz Clock
			outclk_2 : out std_logic;        -- clk         --  10 MHz Clock
			outclk_3 : out std_logic;        -- clk         --   5 MHz Clock
			locked   : out std_logic         -- export      -- port driven high when the PLL acquires lock
		);
	end component PLL1;

	
--	component DebouncePulse is
--	port(
--		clk      	    			: in  std_logic;  -- 50 MHz clock input assumed.  If different, change input_clock_divider below to generate the 1 Mhz clock correctly
--		push_button	            : in  std_logic;  -- push button input will be debounced
--		single_pulse            : out std_logic   -- pulse of 1 clock cycle sent out when push button is pressed
--		);
--	end component DebouncePulse;

	
--	component OnePulse is
--	port(
--		clk      	    			: in  std_logic;  
--		push_button	            : in  std_logic;  
--		single_pulse            : out std_logic   -- pulse of 1 clock cycle sent out when push button is pressed
--		);
--	end component;
--
	
	---------------------------------------------------------
	-- Signal declarations
	---------------------------------------------------------
	signal CLK_100    : std_logic;
	signal CLK_50     : std_logic;
	signal CLK_10     : std_logic;
	signal CLK_5      : std_logic;
	signal system_rst : std_logic;
	signal single_pulse : std_logic;
	signal Push_Button : std_logic_vector(1 downto 0);  -- a better description of KEY input, which should really be labelled as KEY_n


	-----------------------------------------------------------------------------------------------------
	-- AD1939 SPI physical signals
   -----------------------------------------------------------------------------------------------------
	signal   AD1939_spi_CIN 				  : std_logic;  							-- AD1939 SPI signal = data to AD1939 SPI registers
	signal   AD1939_spi_COUT 				  : std_logic;  							-- AD1939 SPI signal = data from AD1939 SPI registers
	signal   AD1939_spi_CCLK 				  : std_logic;  							-- AD1939 SPI signal = sclk: serial clock
	signal   AD1939_spi_CLATCH_n 			  : std_logic;  							-- AD1939 SPI signal = ss_n: slave select (active low)
	-----------------------------------------------------------------------------------------------------
	-- AD1939 Serial data physical signals
   -----------------------------------------------------------------------------------------------------
	signal   AD1939_ADC_SDATA1          : std_logic;   -- Serial data from AD1939 pin 27 ASDATA1, ADC1 24-bit normal stereo serial mode
	signal   AD1939_ADC_SDATA2          : std_logic;   -- Serial data from AD1939 pin 26 ASDATA2, ADC2 24-bit normal stereo serial mode
	signal   AD1939_ADC_BCLK            : std_logic;   -- Serial data from AD1939 pin 28 ABCLK, Bit Clock for ADCs (Master Mode)
	signal   AD1939_ADC_LRCLK           : std_logic;   -- Serial data from AD1939 pin 29 ALRCLK, LR Clock for ADCs (Master Mode)
	signal   AD1939_DAC_SDATA1          : std_logic;   -- Serial data to AD1939 pin 20 DSDATA1, DAC1 24-bit normal stereo serial mode
	signal   AD1939_DAC_SDATA2          : std_logic;   -- Serial data to AD1939 pin 19 DSDATA2, DAC2 24-bit normal stereo serial mode
	signal   AD1939_DAC_SDATA3          : std_logic := '0';   -- Serial data to AD1939 pin 18 DSDATA3, DAC3 24-bit normal stereo serial mode
	signal   AD1939_DAC_SDATA4          : std_logic := '0';   -- Serial data to AD1939 pin 15 DSDATA4, DAC4 24-bit normal stereo serial mode
	signal   AD1939_DAC_BCLK            : std_logic;   -- Serial data to AD1939 pin 21 DBCLK, Bit Clock for DACs (Slave Mode)
	signal   AD1939_DAC_LRCLK           : std_logic;   -- Serial data to AD1939 pin 22 DLRCLK, LR Clock for DACs (Slave Mode)
	signal   AD1939_HDR1_MCLK           : std_logic;   
	-----------------------------------------------------------------------------------------------------
	-- Data plane audio bus signals 
   -----------------------------------------------------------------------------------------------------
	signal   AD1939_Data_ADC1_Left   : std_logic_vector (23 downto 0); 
	signal   AD1939_Data_ADC1_Right  : std_logic_vector (23 downto 0); 
	signal   AD1939_Data_ADC2_Left   : std_logic_vector (23 downto 0); 
	signal   AD1939_Data_ADC2_Right  : std_logic_vector (23 downto 0); 
	signal   AD1939_Data_ADCs_ready  : std_logic;                        -- pulse 1 BCLK period wide signifies data is ready to read from ADCs (this pulse occurs at the sample rate Fs) 	
	signal   AD1939_Data_DAC1_Left   : std_logic_vector (23 downto 0);    -- On the rising edge of the DAC_LRCLK, these DAC signals will be captured 
	signal   AD1939_Data_DAC1_Right  : std_logic_vector (23 downto 0); 
	signal   AD1939_Data_DAC2_Left   : std_logic_vector (23 downto 0); 
	signal   AD1939_Data_DAC2_Right  : std_logic_vector (23 downto 0); 
	signal   AD1939_Data_DAC3_Left   : std_logic_vector (23 downto 0); 
	signal   AD1939_Data_DAC3_Right  : std_logic_vector (23 downto 0); 
	signal   AD1939_Data_DAC4_Left   : std_logic_vector (23 downto 0); 
	signal   AD1939_Data_DAC4_Right  : std_logic_vector (23 downto 0);

	signal   AD1939_MCLK  : std_logic;
	
	signal   switches     : std_logic_vector(3 downto 0);

	
begin

	Push_Button <= not KEY;  -- push button : a better description of KEY input, which should really be labelled as KEY_n
	
--	u3 : DebouncePulse
--	port map (
--		clk      	    			=> CLK_50,  -- 50 MHz clock input assumed.  If different, change input_clock_divider below to generate the 1 Mhz clock correctly
--		push_button	            => Push_Button(0),   -- push button input will be debounced
--		single_pulse            => single_pulse   -- pulse of 1 clock cycle sent out when push button is pressed
--		);
--	system_rst <= single_pulse;   

--	u3 : OnePulse
--	port map (
--		clk      	    			=> AD1939_ADC_BCLK,  
--		push_button	            => Push_Button(0),   
--		single_pulse            => single_pulse   -- pulse of 1 clock cycle sent out when push button is pressed
--		);
--	system_rst <= single_pulse;   
		
	system_pll: PLL1 port map (
		refclk   => FPGA_CLK1_50,  -- 50 MHz Reference Clock
		rst      => not KEY(1),    -- Reset
		outclk_0 => CLK_100,       -- 100 MHz Clock
		outclk_1 => CLK_50,        --  50 MHz Clock
		outclk_2 => CLK_10,        --  10 MHz Clock
		outclk_3 => CLK_5,         --   5 MHz Clock
		locked   => open           -- port driven high when the PLL acquires lock
	);
		

	-------------------------------------------------------------------------------------------------------------------------
	-- SPI is connected to the GPIO 0 connector (top edge of board near power connector)
	-------------------------------------------------------------------------------------------------------------------------
   GPIO_1(11) <= AD1939_spi_CIN;       -- AD1939 SPI signal = mosi data to AD1939 registers    -- Eval Board J1:p8 (CDATA)
   GPIO_1(8)  <= AD1939_spi_COUT;      -- AD1939 SPI signal = miso data from AD1939 registers  -- Eval Board J1:p5 (COUT)
   GPIO_1(9)  <= AD1939_spi_CCLK;     -- AD1939 SPI signal = sclk: serial clock               -- Eval Board J1:p7 (CCLK)
   GPIO_1(6)  <= AD1939_spi_CLATCH_n;  -- AD1939 SPI signal = ss_n: slave select (active low)  -- Eval Board J1:p9 (CLATCH_n)
	
	-------------------------------------------------------------------------------------------------------------------------
	-- Serial data is connected to the GPIO 1 connector (bottom edge of board near push buttons)
	-------------------------------------------------------------------------------------------------------------------------
	AD1939_HDR1_MCLK 		<= GPIO_1(22);      		 -- Eval Board HDR1-J28:p4  (MCLK)   
	--GPIO_1(5)  				<= AD1939_DAC_SDATA4; 	 -- Eval Board HDR1-J28:p6  (DSDATA4)  -- Serial data to AD1939 pin 15 DSDATA4, DAC4 24-bit normal stereo serial mode
	--GPIO_1(7)  				<= AD1939_DAC_SDATA3; 	 -- Eval Board HDR1-J28:p8  (DSDATA3)  -- Serial data to AD1939 pin 18 DSDATA3, DAC3 24-bit normal stereo serial mode
	GPIO_1(20)  			<= AD1939_DAC_SDATA2; 	 -- Eval Board HDR1-J28:p10 (DSDATA2)  -- Serial data to AD1939 pin 19 DSDATA2, DAC2 24-bit normal stereo serial mode
	GPIO_1(21) 				<= AD1939_DAC_SDATA1; 	 -- Eval Board HDR1-J28:p12 (DSDATA1)  -- Serial data to AD1939 pin 20 DSDATA1, DAC1 24-bit normal stereo serial mode
	GPIO_1(18) 				<= GPIO_1(12); --AD1939_DAC_BCLK; 		 -- Eval Board HDR1-J28:p14 (DBCLK) 	-- Serial data to AD1939 pin 21 DBCLK, Bit Clock for DACs (Slave Mode)
	GPIO_1(16) 				<= GPIO_1(13); --AD1939_DAC_LRCLK;  	 -- Eval Board HDR1-J28:p16 (DLRCLK)   -- Serial data to AD1939 pin 22 DLRCLK, LR Clock for DACs (Slave Mode)
	AD1939_ADC_SDATA2 	<= GPIO_1(14); 	 		 -- Eval Board HDR1-J28:p18 (ASDATA2)  -- Serial data from AD1939 pin 26 ASDATA2, ADC2 24-bit normal stereo serial mode
	AD1939_ADC_SDATA1 	<= GPIO_1(15); 	 		 -- Eval Board HDR1-J28:p20 (ASDATA1)  -- Serial data from AD1939 pin 27 ASDATA1, ADC1 24-bit normal stereo serial mode   -- Eval Board HDR1-J28:p8 (CDATA)	
	AD1939_ADC_BCLK 		<= GPIO_1(12); 		 	 -- Eval Board HDR1-J28:p22 (ABCLK) 	-- Serial data from AD1939 pin 28 ABCLK, Bit Clock for ADCs (Master Mode)
	AD1939_ADC_LRCLK   	<= GPIO_1(13); 	    	 -- Eval Board HDR1-J28:p24 (ALRCLK)   -- Serial data from AD1939 pin 29 ALRCLK, LR Clock for ADCs (Master Mode)
	
	
	
--	GPIO_1(5)  				<= GPIO_1(19); 	 -- Eval Board HDR1-J28:p6  (DSDATA4)  -- Serial data to AD1939 pin 15 DSDATA4, DAC4 24-bit normal stereo serial mode
--	GPIO_1(7)  				<= GPIO_1(19); 	 -- Eval Board HDR1-J28:p8  (DSDATA3)  -- Serial data to AD1939 pin 18 DSDATA3, DAC3 24-bit normal stereo serial mode
--	GPIO_1(9)  				<= GPIO_1(17); 	 -- Eval Board HDR1-J28:p10 (DSDATA2)  -- Serial data to AD1939 pin 19 DSDATA2, DAC2 24-bit normal stereo serial mode
--	GPIO_1(11) 				<= GPIO_1(19); 	 -- Eval Board HDR1-J28:p12 (DSDATA1)  -- Serial data to AD1939 pin 20 DSDATA1, DAC1 24-bit normal stereo serial mode
--	GPIO_1(13) 				<= GPIO_1(21); 		 -- Eval Board HDR1-J28:p14 (DBCLK) 	-- Serial data to AD1939 pin 21 DBCLK, Bit Clock for DACs (Slave Mode)
--	GPIO_1(15) 				<= GPIO_1(23);  	 -- Eval Board HDR1-J28:p16 (DLRCLK)   -- Serial data to AD1939 pin 22 DLRCLK, LR Clock for DACs (Slave Mode)
	
	
	switches <= GPIO_1(2) & GPIO_1(3) & GPIO_1(1) & GPIO_1(0);
	--LED(3 downto 0) <= (others => '0');
	--LED(7 downto 4) <= switches;
	GPIO_1(23) <= '1';
	
	

	
	
	
	
    u0 : component soc_system
        port map (
            button_pio_external_connection_export => fpga_debounced_buttons,
            clk_clk                               => FPGA_CLK1_50,
            custom_leds_0_leds_leds               => LED,
            dipsw_pio_external_connection_export  => SW,
            hps_0_f2h_cold_reset_req_reset_n      => not hps_cold_reset,
            hps_0_f2h_debug_reset_req_reset_n     => not hps_debug_reset ,
            hps_0_f2h_stm_hw_events_stm_hwevents  => stm_hw_events,
            hps_0_f2h_warm_reset_req_reset_n      => not hps_warm_reset,
            hps_0_h2f_reset_reset_n               => hps_fpga_reset_n,
            hps_0_hps_io_hps_io_emac1_inst_TX_CLK => HPS_ENET_GTX_CLK,
            hps_0_hps_io_hps_io_emac1_inst_TXD0   => HPS_ENET_TX_DATA(0),
            hps_0_hps_io_hps_io_emac1_inst_TXD1   => HPS_ENET_TX_DATA(1),
            hps_0_hps_io_hps_io_emac1_inst_TXD2   => HPS_ENET_TX_DATA(2), 
            hps_0_hps_io_hps_io_emac1_inst_TXD3   => HPS_ENET_TX_DATA(3),
            hps_0_hps_io_hps_io_emac1_inst_RXD0   => HPS_ENET_RX_DATA(0),
            hps_0_hps_io_hps_io_emac1_inst_MDIO   => HPS_ENET_MDIO,
            hps_0_hps_io_hps_io_emac1_inst_MDC    => HPS_ENET_MDC,
            hps_0_hps_io_hps_io_emac1_inst_RX_CTL => HPS_ENET_RX_DV,
            hps_0_hps_io_hps_io_emac1_inst_TX_CTL => HPS_ENET_TX_EN,
            hps_0_hps_io_hps_io_emac1_inst_RX_CLK => HPS_ENET_RX_CLK,
            hps_0_hps_io_hps_io_emac1_inst_RXD1   => HPS_ENET_RX_DATA(1),
            hps_0_hps_io_hps_io_emac1_inst_RXD2   => HPS_ENET_RX_DATA(2),
            hps_0_hps_io_hps_io_emac1_inst_RXD3   => HPS_ENET_RX_DATA(3),
            hps_0_hps_io_hps_io_sdio_inst_CMD     => HPS_SD_CMD,
            hps_0_hps_io_hps_io_sdio_inst_D0      => HPS_SD_DATA(0),
            hps_0_hps_io_hps_io_sdio_inst_D1      => HPS_SD_DATA(1),
            hps_0_hps_io_hps_io_sdio_inst_CLK     => HPS_SD_CLK,
            hps_0_hps_io_hps_io_sdio_inst_D2      => HPS_SD_DATA(2),
            hps_0_hps_io_hps_io_sdio_inst_D3      => HPS_SD_DATA(3),
            hps_0_hps_io_hps_io_usb1_inst_D0      => HPS_USB_DATA(0),
            hps_0_hps_io_hps_io_usb1_inst_D1      => HPS_USB_DATA(1),
            hps_0_hps_io_hps_io_usb1_inst_D2      => HPS_USB_DATA(2),      --                               .hps_io_usb1_inst_D2
            hps_0_hps_io_hps_io_usb1_inst_D3      => HPS_USB_DATA(3),      --                               .hps_io_usb1_inst_D3
            hps_0_hps_io_hps_io_usb1_inst_D4      => HPS_USB_DATA(4),      --                               .hps_io_usb1_inst_D4
            hps_0_hps_io_hps_io_usb1_inst_D5      => HPS_USB_DATA(5),      --                               .hps_io_usb1_inst_D5
            hps_0_hps_io_hps_io_usb1_inst_D6      => HPS_USB_DATA(6),      --                               .hps_io_usb1_inst_D6
            hps_0_hps_io_hps_io_usb1_inst_D7      => HPS_USB_DATA(7),      --                               .hps_io_usb1_inst_D7
            hps_0_hps_io_hps_io_usb1_inst_CLK     => HPS_USB_CLKOUT,     --                               .hps_io_usb1_inst_CLK
            hps_0_hps_io_hps_io_usb1_inst_STP     => HPS_USB_STP,     --                               .hps_io_usb1_inst_STP
            hps_0_hps_io_hps_io_usb1_inst_DIR     => HPS_USB_DIR,     --                               .hps_io_usb1_inst_DIR
            hps_0_hps_io_hps_io_usb1_inst_NXT     => HPS_USB_NXT,     --                               .hps_io_usb1_inst_NXT
            hps_0_hps_io_hps_io_spim1_inst_CLK    => HPS_SPIM_CLK,    --                               .hps_io_spim1_inst_CLK
            hps_0_hps_io_hps_io_spim1_inst_MOSI   => HPS_SPIM_MOSI,   --                               .hps_io_spim1_inst_MOSI
            hps_0_hps_io_hps_io_spim1_inst_MISO   => HPS_SPIM_MISO,   --                               .hps_io_spim1_inst_MISO
            hps_0_hps_io_hps_io_spim1_inst_SS0    => HPS_SPIM_SS,    --                               .hps_io_spim1_inst_SS0
            hps_0_hps_io_hps_io_uart0_inst_RX     => HPS_UART_RX,     --                               .hps_io_uart0_inst_RX
            hps_0_hps_io_hps_io_uart0_inst_TX     => HPS_UART_TX,     --                               .hps_io_uart0_inst_TX
            hps_0_hps_io_hps_io_i2c0_inst_SDA     => HPS_I2C0_SDAT,     --                               .hps_io_i2c0_inst_SDA
            hps_0_hps_io_hps_io_i2c0_inst_SCL     => HPS_I2C0_SCLK,     --                               .hps_io_i2c0_inst_SCL
            hps_0_hps_io_hps_io_i2c1_inst_SDA     => HPS_I2C1_SDAT,     --                               .hps_io_i2c1_inst_SDA
            hps_0_hps_io_hps_io_i2c1_inst_SCL     => HPS_I2C1_SCLK,
            hps_0_hps_io_hps_io_gpio_inst_GPIO09  => HPS_CONV_USB_N,
            hps_0_hps_io_hps_io_gpio_inst_GPIO35  => HPS_ENET_INT_N,
            hps_0_hps_io_hps_io_gpio_inst_GPIO40  => HPS_LTC_GPIO,
            hps_0_hps_io_hps_io_gpio_inst_GPIO53  => HPS_LED,
            hps_0_hps_io_hps_io_gpio_inst_GPIO54  => HPS_KEY,
            hps_0_hps_io_hps_io_gpio_inst_GPIO61  => HPS_GSENSOR_INT,
            memory_mem_a                          => HPS_DDR3_ADDR,                          --                         memory.mem_a
            memory_mem_ba                         => HPS_DDR3_BA,                         --                               .mem_ba
            memory_mem_ck                         => HPS_DDR3_CK_P,                         --                               .mem_ck
            memory_mem_ck_n                       => HPS_DDR3_CK_N,                       --                               .mem_ck_n
            memory_mem_cke                        => HPS_DDR3_CKE,                        --                               .mem_cke
            memory_mem_cs_n                       => HPS_DDR3_CS_N,                       --                               .mem_cs_n
            memory_mem_ras_n                      => HPS_DDR3_RAS_N,                      --                               .mem_ras_n
            memory_mem_cas_n                      => HPS_DDR3_CAS_N,                      --                               .mem_cas_n
            memory_mem_we_n                       => HPS_DDR3_WE_N,                       --                               .mem_we_n
            memory_mem_reset_n                    => HPS_DDR3_RESET_N,                    --                               .mem_reset_n
            memory_mem_dq                         => HPS_DDR3_DQ,                         --                               .mem_dq
            memory_mem_dqs                        => HPS_DDR3_DQS_P,                        --                               .mem_dqs
            memory_mem_dqs_n                      => HPS_DDR3_DQS_N,                      --                               .mem_dqs_n
            memory_mem_odt                        => HPS_DDR3_ODT,                        --                               .mem_odt
            memory_mem_dm                         => HPS_DDR3_DM,                         --                               .mem_dm
            memory_oct_rzqin                      => HPS_DDR3_RZQ,                      --                               .oct_rzqin
            reset_reset_n                         => hps_fpga_reset_n,                          --                          reset.reset_n
	
	         external_ad1939_spi_cin      => AD1939_spi_CIN,      -- ad1939_de0_nano_0_conduit_external.ad1939_spi_cin
            external_ad1939_spi_cclk     => AD1939_spi_CCLK,     --                                   .ad1939_spi_cclk
            external_ad1939_spi_clatch_n => AD1939_spi_CLATCH_n, --                                   .ad1939_spi_clatch_n
            external_ad1939_adc_sdata1   => AD1939_ADC_SDATA1,   --                                   .ad1939_adc_sdata1
            external_ad1939_adc_sdata2   => AD1939_ADC_SDATA2,   --                                   .ad1939_adc_sdata2
            external_ad1939_adc_bclk     => AD1939_ADC_BCLK,     --                                   .ad1939_adc_bclk
            external_ad1939_adc_lrclk    => AD1939_ADC_LRCLK,    --                                   .ad1939_adc_lrclk
            external_ad1939_dac_sdata1   => AD1939_DAC_SDATA1,   --                                   .ad1939_dac_sdata1
            external_ad1939_dac_sdata2   => AD1939_DAC_SDATA2,   --                                   .ad1939_dac_sdata2
            external_ad1939_dac_sdata3   => AD1939_DAC_SDATA3,   --                                   .ad1939_dac_sdata3
            external_ad1939_dac_sdata4   => AD1939_DAC_SDATA4,   --                                   .ad1939_dac_sdata4
            external_ad1939_dac_bclk     => AD1939_DAC_BCLK,     --                                   .ad1939_dac_bclk
            external_ad1939_dac_lrclk    => AD1939_DAC_LRCLK,    --                                   .ad1939_dac_lrclk
            external_ad1939_spi_cout     => AD1939_spi_COUT      --   
        );

		  
		  		  
		  
		  
		  
		  
		
	avalon_streaming_passthrough_l_avalon_streaming_sink_error<="00"; --no errors present
	avalon_streaming_passthrough_r_avalon_streaming_sink_error<="00"; --no errors present
	
	
	--Create a single fastclock pulse when the l/r clock asserts (eg: the "ready"/"valid signal")
	validGen1 : component  OnePulse
	port map(
		clk      	    		=>	FPGA_CLK1_50,  
		reset                => '0', --hps_fpga_reset_n,
		push_button	         => AD1939_Data_ADCs_ready,
		single_pulse         => open --fir_compiler_ii_0_avalon_streaming_sink_valid
		);
	
	
	
	--Pass the signal to the right output when the valid signal requests it
	process (avalon_streaming_passthrough_r_avalon_streaming_source_valid)
	begin
	
		if (rising_edge(avalon_streaming_passthrough_r_avalon_streaming_source_valid)) then
			AD1939_Data_DAC2_Right <= avalon_streaming_passthrough_r_avalon_streaming_source_data;
		end if;
	end process;
	
	--Pass the signal to the right output when the valid signal requests it
	process (avalon_streaming_passthrough_l_avalon_streaming_source_valid)
	begin
	
		if (rising_edge(avalon_streaming_passthrough_l_avalon_streaming_source_valid)) then
			AD1939_Data_DAC2_Left  <= avalon_streaming_passthrough_l_avalon_streaming_source_data;
		end if;
	end process;
	
	
	
	
	
	
	debounce_inst: component debounce
	port map (	
		clk			=> fpga_clk_50,
		reset_n		=> hps_fpga_reset_n,  
		data_in		=> KEY,
		data_out		=> fpga_debounced_buttons(1 downto 0)
	);
	
	
	
	
	
--	hps_reset_inst: component hps_reset
--	port map (
--		source_clk => fpga_clk_50,
--		source     => hps_reset_req
--	);
	
	
	
	pulse_cold_reset: component altera_edge_detector 
	generic map ( PULSE_EXT => 6, EDGE_TYPE => 1, IGNORE_RST_WHILE_BUSY => 1 )
	port map (	
		clk       => fpga_clk_50,
		rst_n     => hps_fpga_reset_n,
		signal_in => hps_reset_req(0),
		pulse_out => hps_cold_reset
	);
	
	
	pulse_warm_reset: component altera_edge_detector 
	generic map ( PULSE_EXT => 2, EDGE_TYPE => 1, IGNORE_RST_WHILE_BUSY => 1 )
	port map (	
		clk       => fpga_clk_50,
		rst_n     => hps_fpga_reset_n,
		signal_in => hps_reset_req(1),
		pulse_out => hps_warm_reset
	);
	
	pulse_debug_reset: component altera_edge_detector 
	generic map ( PULSE_EXT => 32, EDGE_TYPE => 1, IGNORE_RST_WHILE_BUSY => 1 )
	port map (	
		clk       => fpga_clk_50,
		rst_n     => hps_fpga_reset_n,
		signal_in => hps_reset_req(2),
		pulse_out => hps_debug_reset
	);	
	
	
	

	
	-- Data Tri-State
	GPIO_1(4)	<= '1' when (i2c_serial_sda_oe = '1') else 'Z';
	
	-- Data In
	i2c_0_i2c_serial_sda_in <= GPIO_1(4);
	
	
	--Clock Tri-State
	GPIO_1(5)	<= '1' when (serial_scl_oe = '1') else 'Z';
						
	--Clock In
	i2c_serial_scl_in <= GPIO_1(5);
	
	
	
	--GPIO_1(5) <= CLK_I2C_SCL;
	--GPIO_1(6) <= CLK_I2C_SDA;

	
	
	
	

end architecture DE0_SOC_NoHPS_arch;

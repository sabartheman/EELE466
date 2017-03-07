-- -------------------------------------------------------------
-- 
-- File Name: C:\Users\d57w762\Desktop\lab4\hdlsrc\hdlcoder_led_blinking_4bit\led_count_ip_SimpleDualPortRAM_16x32b.vhd
-- Created: 2017-03-07 12:53:51
-- 
-- Generated by MATLAB 9.0 and HDL Coder 3.8
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: led_count_ip_SimpleDualPortRAM_16x32b
-- Source Path: led_count_ip/led_count_ip_axi4/led_count_ip_axi4_module/led_count_ip_rdfifo_data/led_count_ip_rdfifo_data_classic/led_count_ip_rdfifo_data_classic_ram_16x32b/led_count_ip_SimpleDualPortRAM_16x32b
-- Hierarchy Level: 6
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY led_count_ip_SimpleDualPortRAM_16x32b IS
  PORT( clk                               :   IN    std_logic;
        enb                               :   IN    std_logic;
        wr_din                            :   IN    std_logic_vector(31 DOWNTO 0);  -- ufix32
        wr_addr                           :   IN    std_logic_vector(3 DOWNTO 0);  -- ufix4
        wr_en                             :   IN    std_logic;  -- ufix1
        rd_addr                           :   IN    std_logic_vector(3 DOWNTO 0);  -- ufix4
        rd_dout                           :   OUT   std_logic_vector(31 DOWNTO 0)  -- ufix32
        );
END led_count_ip_SimpleDualPortRAM_16x32b;


ARCHITECTURE rtl OF led_count_ip_SimpleDualPortRAM_16x32b IS

  -- Local Type Definitions
  CONSTANT AddrWidth : INTEGER := 4;
  CONSTANT DataWidth : INTEGER := 32;
  TYPE ram_type IS ARRAY (2**AddrWidth - 1 DOWNTO 0) of std_logic_vector(DataWidth - 1 DOWNTO 0);

  -- Signals
  SIGNAL ram                              : ram_type := (OTHERS => (OTHERS => '0'));
  SIGNAL data_int                         : std_logic_vector(DataWidth - 1 DOWNTO 0) := (OTHERS => '0');
  SIGNAL wr_addr_unsigned                 : unsigned(3 DOWNTO 0);  -- ufix4
  SIGNAL rd_addr_unsigned                 : unsigned(3 DOWNTO 0);  -- ufix4

BEGIN
  wr_addr_unsigned <= unsigned(wr_addr);

  rd_addr_unsigned <= unsigned(rd_addr);

  led_count_ip_SimpleDualPortRAM_16x32b_process: PROCESS (clk)
  BEGIN
    IF clk'event AND clk = '1' THEN
      IF enb = '1' THEN
        IF wr_en = '1' THEN
          ram(to_integer(wr_addr_unsigned)) <= wr_din;
        END IF;
        data_int <= ram(to_integer(rd_addr_unsigned));
      END IF;
    END IF;
  END PROCESS led_count_ip_SimpleDualPortRAM_16x32b_process;

  rd_dout <= data_int;

END rtl;


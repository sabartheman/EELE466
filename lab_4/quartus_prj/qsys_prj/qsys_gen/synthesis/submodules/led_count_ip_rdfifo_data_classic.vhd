-- -------------------------------------------------------------
-- 
-- File Name: C:\Users\d57w762\Desktop\lab4\hdlsrc\hdlcoder_led_blinking_4bit\led_count_ip_rdfifo_data_classic.vhd
-- Created: 2017-03-07 12:53:51
-- 
-- Generated by MATLAB 9.0 and HDL Coder 3.8
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: led_count_ip_rdfifo_data_classic
-- Source Path: led_count_ip/led_count_ip_axi4/led_count_ip_axi4_module/led_count_ip_rdfifo_data/led_count_ip_rdfifo_data_classic
-- Hierarchy Level: 4
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY led_count_ip_rdfifo_data_classic IS
  PORT( clk                               :   IN    std_logic;
        reset                             :   IN    std_logic;
        enb                               :   IN    std_logic;
        In_rsvd                           :   IN    std_logic_vector(31 DOWNTO 0);  -- ufix32
        Push                              :   IN    std_logic;  -- ufix1
        Pop                               :   IN    std_logic;  -- ufix1
        Out_rsvd                          :   OUT   std_logic_vector(31 DOWNTO 0);  -- ufix32
        Empty                             :   OUT   std_logic;  -- ufix1
        Full                              :   OUT   std_logic;  -- ufix1
        Num                               :   OUT   std_logic_vector(4 DOWNTO 0)  -- ufix5
        );
END led_count_ip_rdfifo_data_classic;


ARCHITECTURE rtl OF led_count_ip_rdfifo_data_classic IS

  -- Component Declarations
  COMPONENT led_count_ip_rdfifo_data_classic_ram_16x32b
    PORT( clk                             :   IN    std_logic;
          enb                             :   IN    std_logic;
          wr_din                          :   IN    std_logic_vector(31 DOWNTO 0);  -- ufix32
          wr_addr                         :   IN    std_logic_vector(3 DOWNTO 0);  -- ufix4
          wr_en                           :   IN    std_logic;  -- ufix1
          rd_addr                         :   IN    std_logic_vector(3 DOWNTO 0);  -- ufix4
          rd_dout                         :   OUT   std_logic_vector(31 DOWNTO 0)  -- ufix32
          );
  END COMPONENT;

  -- Component Configuration Statements
  FOR ALL : led_count_ip_rdfifo_data_classic_ram_16x32b
    USE ENTITY work.led_count_ip_rdfifo_data_classic_ram_16x32b(rtl);

  -- Signals
  SIGNAL fifo_front_indx                  : unsigned(3 DOWNTO 0);  -- ufix4
  SIGNAL fifo_front_dir                   : unsigned(3 DOWNTO 0);  -- ufix4
  SIGNAL fifo_back_indx                   : unsigned(3 DOWNTO 0);  -- ufix4
  SIGNAL fifo_back_dir                    : unsigned(3 DOWNTO 0);  -- ufix4
  SIGNAL fifo_sample_count                : unsigned(4 DOWNTO 0);  -- ufix5
  SIGNAL fifo_front_indx_next             : unsigned(3 DOWNTO 0);  -- ufix4
  SIGNAL fifo_front_dir_next              : unsigned(3 DOWNTO 0);  -- ufix4
  SIGNAL fifo_back_indx_next              : unsigned(3 DOWNTO 0);  -- ufix4
  SIGNAL fifo_back_dir_next               : unsigned(3 DOWNTO 0);  -- ufix4
  SIGNAL fifo_sample_count_next           : unsigned(4 DOWNTO 0);  -- ufix5
  SIGNAL fifo_out3                        : std_logic;
  SIGNAL fifo_out4                        : std_logic;
  SIGNAL fifo_out1                        : std_logic;
  SIGNAL fifo_1                           : std_logic;
  SIGNAL fifo_front_indx_temp             : unsigned(3 DOWNTO 0);  -- ufix4
  SIGNAL fifo_back_indx_temp              : unsigned(3 DOWNTO 0);  -- ufix4
  SIGNAL w_waddr                          : unsigned(3 DOWNTO 0);  -- ufix4
  SIGNAL w_we                             : std_logic;  -- ufix1
  SIGNAL w_raddr                          : unsigned(3 DOWNTO 0);  -- ufix4
  SIGNAL Num_tmp                          : unsigned(4 DOWNTO 0);  -- ufix5
  SIGNAL w_cz                             : std_logic;
  SIGNAL w_const                          : std_logic;  -- ufix1
  SIGNAL w_mux1                           : std_logic;  -- ufix1
  SIGNAL w_d1                             : std_logic;  -- ufix1
  SIGNAL w_waddr_1                        : std_logic_vector(31 DOWNTO 0);  -- ufix32
  SIGNAL w_waddr_unsigned                 : unsigned(31 DOWNTO 0);  -- ufix32
  SIGNAL w_d2                             : unsigned(31 DOWNTO 0);  -- ufix32
  SIGNAL w_out                            : unsigned(31 DOWNTO 0);  -- ufix32

BEGIN
  -- us2: Upsample by 1, Sample offset 0 
  -- 
  -- us3: Upsample by 1, Sample offset 0 
  -- 
  -- us1: Upsample by 1, Sample offset 0 
  u_led_count_ip_rdfifo_data_classic_ram_16x32b : led_count_ip_rdfifo_data_classic_ram_16x32b
    PORT MAP( clk => clk,
              enb => enb,
              wr_din => In_rsvd,  -- ufix32
              wr_addr => std_logic_vector(w_waddr),  -- ufix4
              wr_en => w_we,  -- ufix1
              rd_addr => std_logic_vector(w_raddr),  -- ufix4
              rd_dout => w_waddr_1  -- ufix32
              );

  -- FIFO logic controller
  fifo_process : PROCESS (clk)
  BEGIN
    IF clk'EVENT AND clk = '1' THEN
      IF reset = '1' THEN
        fifo_front_indx <= to_unsigned(16#0#, 4);
        fifo_front_dir <= to_unsigned(16#1#, 4);
        fifo_back_indx <= to_unsigned(16#0#, 4);
        fifo_back_dir <= to_unsigned(16#1#, 4);
        fifo_sample_count <= to_unsigned(16#00#, 5);
      ELSIF enb = '1' THEN
        fifo_front_indx <= fifo_front_indx_next;
        fifo_front_dir <= fifo_front_dir_next;
        fifo_back_indx <= fifo_back_indx_next;
        fifo_back_dir <= fifo_back_dir_next;
        fifo_sample_count <= fifo_sample_count_next;
      END IF;
    END IF;
  END PROCESS fifo_process;

  
  fifo_out4 <= '1' WHEN fifo_sample_count = to_unsigned(16#10#, 5) ELSE
      '0';
  
  fifo_out3 <= '1' WHEN fifo_sample_count = to_unsigned(16#00#, 5) ELSE
      '0';
  fifo_out1 <= Push AND (Pop OR ( NOT fifo_out4));
  fifo_1 <= Pop AND ( NOT fifo_out3);
  
  fifo_front_indx_temp <= fifo_front_indx + fifo_front_dir WHEN fifo_1 = '1' ELSE
      fifo_front_indx;
  
  fifo_front_dir_next <= to_unsigned(16#1#, 4) WHEN fifo_front_indx_temp = to_unsigned(16#F#, 4) ELSE
      to_unsigned(16#1#, 4);
  
  fifo_back_indx_temp <= fifo_back_indx + fifo_back_dir WHEN fifo_out1 = '1' ELSE
      fifo_back_indx;
  
  fifo_back_dir_next <= to_unsigned(16#1#, 4) WHEN fifo_back_indx_temp = to_unsigned(16#F#, 4) ELSE
      to_unsigned(16#1#, 4);
  
  fifo_sample_count_next <= fifo_sample_count + to_unsigned(16#01#, 5) WHEN (fifo_out1 AND ( NOT fifo_1)) = '1' ELSE
      fifo_sample_count + to_unsigned(16#1F#, 5) WHEN (( NOT fifo_out1) AND fifo_1) = '1' ELSE
      fifo_sample_count;
  w_waddr <= fifo_back_indx;
  w_we <= fifo_out1;
  w_raddr <= fifo_front_indx;
  Empty <= fifo_out3;
  Full <= fifo_out4;
  Num_tmp <= fifo_sample_count;
  fifo_front_indx_next <= fifo_front_indx_temp;
  fifo_back_indx_next <= fifo_back_indx_temp;

  
  w_cz <= '1' WHEN Num_tmp > to_unsigned(16#00#, 5) ELSE
      '0';

  w_const <= '0';

  
  w_mux1 <= w_const WHEN w_cz = '0' ELSE
      Pop;

  f_d1_process : PROCESS (clk)
  BEGIN
    IF clk'EVENT AND clk = '1' THEN
      IF reset = '1' THEN
        w_d1 <= '0';
      ELSIF enb = '1' THEN
        w_d1 <= w_mux1;
      END IF;
    END IF;
  END PROCESS f_d1_process;


  w_waddr_unsigned <= unsigned(w_waddr_1);

  f_d2_process : PROCESS (clk)
  BEGIN
    IF clk'EVENT AND clk = '1' THEN
      IF reset = '1' THEN
        w_d2 <= to_unsigned(0, 32);
      ELSIF enb = '1' AND w_d1 = '1' THEN
        w_d2 <= w_waddr_unsigned;
      END IF;
    END IF;
  END PROCESS f_d2_process;


  
  w_out <= w_d2 WHEN w_d1 = '0' ELSE
      w_waddr_unsigned;

  Out_rsvd <= std_logic_vector(w_out);

  Num <= std_logic_vector(Num_tmp);

END rtl;


-- -------------------------------------------------------------
-- 
-- File Name: C:\Users\d57w762\Desktop\lab4\hdlsrc\hdlcoder_led_blinking_4bit\led_count_ip_src_led_counter_pkg.vhd
-- Created: 2017-03-07 12:53:47
-- 
-- Generated by MATLAB 9.0 and HDL Coder 3.8
-- 
-- -------------------------------------------------------------


LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

PACKAGE led_count_ip_src_led_counter_pkg IS
  TYPE vector_of_unsigned24 IS ARRAY (NATURAL RANGE <>) OF unsigned(23 DOWNTO 0);
  TYPE vector_of_unsigned4 IS ARRAY (NATURAL RANGE <>) OF unsigned(3 DOWNTO 0);
END led_count_ip_src_led_counter_pkg;


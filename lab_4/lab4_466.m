close all;
clear; clc;

NanoBspPath = 'C:\Users\d57w762\Desktop\Altera_bsp_DE0NanoSoC';
addpath(NanoBspPath);
path(path,NanoBspPath);
QuartusPath = 'C:\altera\16.0_standard\quartus\bin64\quartus.exe';
hdlsetuptoolpath('ToolName','Altera Quartus II','ToolPath',QuartusPath);
open_system('hdlcoder_led_blinking_4bit');
showdemo('hdlcoder_ip_core_tutorial_alterasoc')


%----------------------------------------------------------------------
% Register Settings for Analog Device's AD1939 Audio CODEC
%
% To be used in creating default power-up register settings 
%
% This version of register settings creates VHDL code where the
% register settings are created as constant VHDL signals
% 
% To change the default settings, go the particular register below
% and change the bit settings.  There are 17 registers located at the
% following addresses:
%
%       Address  0  -  PLL and Clock Control 0
%       Address  1  -  PLL and Clock Control 1
%       Address  2  -  DAC Control 0
%       Address  3  -  DAC Control 1
%       Address  4  -  DAC Control 2
%       Address  5  -  DAC individual channel mutes
%       Address  6  -  DAC1 Left  volume control 
%       Address  7  -  DAC1 Right volume control 
%       Address  8  -  DAC2 Left  volume control 
%       Address  9  -  DAC2 Right volume control 
%       Address 10  -  DAC3 Left  volume control 
%       Address 11  -  DAC3 Right volume control 
%       Address 12  -  DAC4 Left  volume control 
%       Address 13  -  DAC4 Right volume control 
%       Address 14  -  ADC Control 0
%       Address 15  -  ADC Control 1
%       Address 16  -  ADC Control 2
%
%       Note: The registers are 8 bits 
%
% Script:   AD1939_Register_Settings.m 
% Author:   Ross K. Snider
% Date:     September 9, 2016
%----------------------------------------------------------------------
clear all
close all

%----------------------------------------------------------------------
% Address  0  -  PLL and Clock Control 0
%----------------------------------------------------------------------
% Register Address
address = '00000';  
%------------------------------
% Bit0 : PLL power-down
% 0 = Normal operation
% 1 = Power-down
% DEFAULT = 0
bit0 = '0';  
%------------------------------
% Bits 2:1 : MCLKI/XI pin Functionality (PLL active), master clock rate
% setting
% 00 = Input 256 (x44.1 kHz or 48 kHz)
% 01 = Input 384 (x44.1 kHz or 48 kHz)
% 10 = Input 512 (x44.1 kHz or 48 kHz)
% 11 = Input 768 (x44.1 kHz or 48 kHz)
% DEFAULT = 00
bits2to1 = '00';
%------------------------------
% Bits 4:3 : MCLK0/XO pin , master clock rate setting
% 00 = XTAL oscillator enabled
% 01 = 256 x fs VCO output
% 10 = 512 x fs VCO output
% 11 = Off
% DEFAULT = 00
bits4to3 = '00';
%------------------------------
% Bits 6:5 : PLL input
% 00 = MCLKI/XI
% 01 = DLRCLK
% 10 = ALRCLK
% 11 = Reserved
% DEFAULT = 00
bits6to5 = '00';
%------------------------------
% Bit7 : Internal master clock enable
% 0 = Disable: ADC and DAC idle
% 1 = Enable: ADC and DAC active
% DEFAULT = 0
bit7 = '1';  
%------------------------------
% Construct Register 1
register{1}.address = address;
register{1}.data    = [bit7 bits6to5 bits4to3 bits2to1 bit0];
register{1}.data_default = '00000000';

%----------------------------------------------------------------------
% Address  1  -  PLL and Clock Control 1
%----------------------------------------------------------------------
% Register Address
address = '00001';  
%------------------------------
% Bit0 : DAC clock source select
% 0 = PLL clock
% 1 = MCLK
% DEFAULT = 0
bit0 = '0';  
%------------------------------
% Bit1 : ADC clock source select
% 0 = PLL clock
% 1 = MCLK
% DEFAULT = 0
bit1 = '0';  
%------------------------------
% Bit2 : On-chip voltage reference
% 0 = Enabled
% 1 = Disabled
% DEFAULT = 0
bit2 = '0';  %
%------------------------------
% Bit3 : PLL lock indicator (read only)
% 0 = Not locked
% 1 = Locked
% DEFAULT = 0 (not relevant)
bit3 = '0';  % (write will be ignored)
%------------------------------
% Bits 7:4 : Reserved
bits7to4 = '0000'; %(set to zero)
%------------------------------
% Construct Register 2
register{2}.address = address;
register{2}.data    = [bits7to4 bit3 bit2 bit1 bit0];
register{2}.data_default = '00000000';

%----------------------------------------------------------------------
% Address  2  -  DAC Control 0 Register
%----------------------------------------------------------------------
% Register Address
address = '00010';  
%------------------------------
% Bit0 : Power-down
% 0 = Normal
% 1 = Power-down
% DEFAULT = 0
bit0 = '0';  
%------------------------------
% Bits 2:1 : Sample Rate
% 00 = 32kHz/44.1kHz/48kHz
% 01 = 64kHz/88.2kHz/96kHz
% 10 = 128kHz/176.4kHz/192kHz
% 11 = Reserved
% DEFAULT = 00
bits2to1 = '00';
%------------------------------
% Bits 5:3 : SDATA delay (BCLK periods)
% 000 = 1
% 001 = 0
% 010 = 8
% 011 = 12
% 100 = 16
% 101 = Reserved
% 110 = Reserved
% 111 = Reserved
% DEFAULT = 000
bits5to3 = '000';
%------------------------------
% Bits 7:6 : Serial Format
% 00 = Stereo (normal)
% 01 = TDM (daisy chain)
% 10 = DAC AUX mode
% 11 = Dual-line TDM
% DEFAULT = 00
bits7to6 = '00';
%------------------------------
% Construct Register 3
register{3}.address = address;
register{3}.data    = [bits7to6 bits5to3 bits2to1 bit0];
register{3}.data_default = '00000000';


%----------------------------------------------------------------------
% Address  3  -  DAC Control 1 Register
%----------------------------------------------------------------------
% Register Address
address = '00011';  
%------------------------------
% Bit0 : BCLK active edge (TDM in)
% 0 = Latch in mid cycle (normal)
% 1 = Latch in at end of cycle (pipeline)
% DEFAULT = 0
bit0 = '0';  
%------------------------------
% Bits 2:1 : BCLKs per frame
% 00 = 64  (2 channels)
% 01 = 128 (4 channels)
% 10 = 256 (8 channels)
% 11 = 512 (16 channels)
% DEFAULT = 00
bits2to1 = '00';
%------------------------------
% Bit3 : LRCLK polarity
% 0 = Left low
% 1 = Left high
% DEFAULT = 0
bit3 = '0';  
%------------------------------
% Bit4 : LRCLK master/slave
% 0 = Slave
% 1 = Master
% DEFAULT = 0
bit4 = '0';  
%------------------------------
% Bit5 : BCLK master/slave
% 0 = Slave
% 1 = Master
% DEFAULT = 0
bit5 = '0';  
%------------------------------
% Bit6 : BCLK source
% 0 = DBCLK pin
% 1 = Internally generated
% DEFAULT = 0
bit6 = '0';  
%------------------------------
% Bit7 : BCLK polarity
% 0 = Normal
% 1 = Inverted
% DEFAULT = 0
bit7 = '0';  
%------------------------------
% Construct Register 4
register{4}.address = address;
register{4}.data    = [bit7 bit6 bit5 bit4 bit3 bits2to1 bit0];
register{4}.data_default = '00000000';


%----------------------------------------------------------------------
% Address  4  -  DAC Control 2 Register
%----------------------------------------------------------------------
% Register Address
address = '00100';  
%------------------------------
% Bit0 : Master Mute
% 0 = Unmute
% 1 = Mute
% DEFAULT = 0
bit0 = '0';  
%------------------------------
% Bits 2:1 : De-emphasis (32 kHz / 44.1 kHz / 48 kHz mode only)
% 00 = Flat
% 01 = 48 kHz curve
% 10 = 44.1 kHz curve
% 11 = 32 kHz curve
% DEFAULT = 00
bits2to1 = '00';
%------------------------------
% Bits 4:3 : Word width (bits)
% 00 = 24
% 01 = 20
% 10 = Reserved
% 11 = 16
% DEFAULT = 00
bits4to3 = '00';
%------------------------------
% Bit5 : DAC output polarity
% 0 = Noninverted
% 1 = Inverted
% DEFAULT = 0
bit5 = '0';  
%------------------------------
% Bits 7:6 : Reserved
% DEFAULT = 00
bits7to6 = '00';
%------------------------------
% Construct Register 5
register{5}.address = address;
register{5}.data    = [bits7to6 bit5 bits4to3 bits2to1 bit0];
register{5}.data_default = '00000000';


%----------------------------------------------------------------------
% Address  5  -  DAC Individual Channel Mutes
%----------------------------------------------------------------------
% Register Address
address = '00101';  
%------------------------------
% Bit0 : DAC 1 Left mute
% 0 = Unmute
% 1 = Mute
% DEFAULT = 0
bit0 = '0';  
%------------------------------
% Bit1 : DAC 1 Right mute
% 0 = Unmute
% 1 = Mute
% DEFAULT = 0
bit1 = '0';  
%------------------------------
% Bit2 : DAC 2 Left mute
% 0 = Unmute
% 1 = Mute
% DEFAULT = 0
bit2 = '0';  
%------------------------------
% Bit3 : DAC 2 Right mute
% 0 = Unmute
% 1 = Mute
% DEFAULT = 0
bit3 = '0';  
%------------------------------
% Bit4 : DAC 3 Left mute
% 0 = Unmute
% 1 = Mute
% DEFAULT = 0
bit4 = '0';  
%------------------------------
% Bit5 : DAC 3 Right mute
% 0 = Unmute
% 1 = Mute
% DEFAULT = 0
bit5 = '0';  
%------------------------------
% Bit6 : DAC 4 Left mute
% 0 = Unmute
% 1 = Mute
% DEFAULT = 0
bit6 = '0';  
%------------------------------
% Bit7 : DAC 4 Right mute
% 0 = Unmute
% 1 = Mute
% DEFAULT = 0
bit7 = '0';  
%------------------------------
% Construct Register 6
register{6}.address = address;
register{6}.data    = [bit7 bit6 bit5 bit4 bit3 bit2 bit1 bit0];
register{6}.data_default = '00000000';


%----------------------------------------------------------------------
% Address  6  -  DAC 1 Left Volume Control 
%----------------------------------------------------------------------
% Register Address
address = '00110';  
%------------------------------
% Bits 7:0 
% 0 = Unmute
% 1 = Mute
% DEFAULT = 0
bit0 = '0';  
%------------------------------
% Bit1 : DAC 1 Right mute
% 0 = No attenuation
% 1 to 254 = -3/8 dB per step  (8=-3dB;  254=-95.25dB)
% 255 = Full Attenuation
% DEFAULT = '00000000';
bits7to0 = '00000000';  
%------------------------------
% Construct Register 7
register{7}.address = address;
register{7}.data    = [bits7to0];
register{7}.data_default = '00000000';


%----------------------------------------------------------------------
% Address  7  -  DAC 1 Right Volume Control 
%----------------------------------------------------------------------
% Register Address
address = '00111';  
%------------------------------
% Bits 7:0 
% 0 = Unmute
% 1 = Mute
% DEFAULT = 0
bit0 = '0';  
%------------------------------
% Bit1 : DAC 1 Right mute
% 0 = No attenuation
% 1 to 254 = -3/8 dB per step  (8=-3dB;  254=-95.25dB)
% 255 = Full Attenuation
% DEFAULT = '00000000';
bits7to0 = '00000000';  
%------------------------------
% Construct Register 8
register{8}.address = address;
register{8}.data    = [bits7to0];
register{8}.data_default = '00000000';



%----------------------------------------------------------------------
% Address  8  -  DAC 2 Left Volume Control 
%----------------------------------------------------------------------
% Register Address
address = '01000';  
%------------------------------
% Bits 7:0 
% 0 = Unmute
% 1 = Mute
% DEFAULT = 0
bit0 = '0';  
%------------------------------
% Bit1 : DAC 1 Right mute
% 0 = No attenuation
% 1 to 254 = -3/8 dB per step  (8=-3dB;  254=-95.25dB)
% 255 = Full Attenuation
% DEFAULT = '00000000';
bits7to0 = '00000000';  
%------------------------------
% Construct Register 9
register{9}.address = address;
register{9}.data    = [bits7to0];
register{9}.data_default = '00000000';


%----------------------------------------------------------------------
% Address  9  -  DAC 2 Right Volume Control 
%----------------------------------------------------------------------
% Register Address
address = '01001';  
%------------------------------
% Bits 7:0 
% 0 = Unmute
% 1 = Mute
% DEFAULT = 0
bit0 = '0';  
%------------------------------
% Bit1 : DAC 1 Right mute
% 0 = No attenuation
% 1 to 254 = -3/8 dB per step  (8=-3dB;  254=-95.25dB)
% 255 = Full Attenuation
% DEFAULT = '00000000';
bits7to0 = '00000000';  
%------------------------------
% Construct Register 10
register{10}.address = address;
register{10}.data    = [bits7to0];
register{10}.data_default = '00000000';


%----------------------------------------------------------------------
% Address  10  -  DAC 3 Left Volume Control 
%----------------------------------------------------------------------
% Register Address
address = '01010';  
%------------------------------
% Bits 7:0 
% 0 = Unmute
% 1 = Mute
% DEFAULT = 0
bit0 = '0';  
%------------------------------
% Bit1 : DAC 1 Right mute
% 0 = No attenuation
% 1 to 254 = -3/8 dB per step  (8=-3dB;  254=-95.25dB)
% 255 = Full Attenuation
% DEFAULT = '00000000';
bits7to0 = '00000000';  
%------------------------------
% Construct Register 11
register{11}.address = address;
register{11}.data    = [bits7to0];
register{11}.data_default = '00000000';


%----------------------------------------------------------------------
% Address  11  -  DAC 3 Right Volume Control 
%----------------------------------------------------------------------
% Register Address
address = '01011';  
%------------------------------
% Bits 7:0 
% 0 = Unmute
% 1 = Mute
% DEFAULT = 0
bit0 = '0';  
%------------------------------
% Bit1 : DAC 1 Right mute
% 0 = No attenuation
% 1 to 254 = -3/8 dB per step  (8=-3dB;  254=-95.25dB)
% 255 = Full Attenuation
% DEFAULT = '00000000';
bits7to0 = '00000000';  
%------------------------------
% Construct Register 12
register{12}.address = address;
register{12}.data    = [bits7to0];
register{12}.data_default = '00000000';


%----------------------------------------------------------------------
% Address  12  -  DAC 4 Left Volume Control 
%----------------------------------------------------------------------
% Register Address
address = '01100';  
%------------------------------
% Bits 7:0 
% 0 = Unmute
% 1 = Mute
% DEFAULT = 0
bit0 = '0';  
%------------------------------
% Bit1 : DAC 1 Right mute
% 0 = No attenuation
% 1 to 254 = -3/8 dB per step  (8=-3dB;  254=-95.25dB)
% 255 = Full Attenuation
% DEFAULT = '00000000';
bits7to0 = '00000000';  
%------------------------------
% Construct Register 13
register{13}.address = address;
register{13}.data    = [bits7to0];
register{13}.data_default = '00000000';


%----------------------------------------------------------------------
% Address  13  -  DAC 4 Right Volume Control 
%----------------------------------------------------------------------
% Register Address
address = '01101';  
%------------------------------
% Bits 7:0 
% 0 = Unmute
% 1 = Mute
% DEFAULT = 0
bit0 = '0';  
%------------------------------
% Bit1 : DAC 1 Right mute
% 0 = No attenuation
% 1 to 254 = -3/8 dB per step  (8=-3dB;  254=-95.25dB)
% 255 = Full Attenuation
% DEFAULT = '00000000';
bits7to0 = '00000000';  
%------------------------------
% Construct Register 14
register{14}.address = address;
register{14}.data    = [bits7to0];
register{14}.data_default = '00000000';


%----------------------------------------------------------------------
% Address  14  -  ADC Control 0 Register
%----------------------------------------------------------------------
% Register Address
address = '01110';  
%------------------------------
% Bit0 : Power-down
% 0 = Normal
% 1 = Power-down
% DEFAULT = 0
bit0 = '0';  
%------------------------------
% Bit1 : High-pass filter
% 0 = Off
% 1 = On
% DEFAULT = 0
bit1 = '0';  
%------------------------------
% Bit2 : ADC 1 Left mute
% 0 = Unmute
% 1 = Mute
% DEFAULT = 0
bit2 = '0';  
%------------------------------
% Bit3 : ADC 1 Right mute
% 0 = Unmute
% 1 = Mute
% DEFAULT = 0
bit3 = '0';  
%------------------------------
% Bit4 : ADC 2 Left mute
% 0 = Unmute
% 1 = Mute
% DEFAULT = 0
bit4 = '0';  
%------------------------------
% Bit5 : ADC 2 Right mute
% 0 = Unmute
% 1 = Mute
% DEFAULT = 0
bit5 = '0';  
%------------------------------
% Bits 7:6 : Output sample rate (Fs)
% 00 = 32 kHz / 44.1 kHz / 48 kHz
% 01 = 64 kHz / 88.2 kHz / 96 kHz
% 10 = 128 kHz / 176.4 kHz / 192 kHz
% 11 = Reserved
% DEFAULT = 00
bits7to6 = '00';
%------------------------------
% Construct Register 15
register{15}.address = address;
register{15}.data    = [bits7to6 bit5 bit4 bit3 bit2 bit1 bit0];
register{15}.data_default = '00000000';


%----------------------------------------------------------------------
% Address  15  -  ADC Control 1 Register
%----------------------------------------------------------------------
% Register Address
address = '01111';  
%------------------------------
% Bits 1:0 : Word width (bits)
% 00 = 24
% 01 = 20
% 10 = Reserved
% 11 = 16
% DEFAULT = 00
bits1to0 = '00';
%------------------------------
% Bits 4:2 : SDATA delay (BCLK periods)
% 000 = 1
% 001 = 0
% 010 = 8
% 011 = 12
% 100 = 16
% 101 = Reserved
% 110 = Reserved
% 111 = Reserved
% DEFAULT = 000
bits4to2 = '000';
%------------------------------
% Bits 6:5 : Serial Format
% 00 = Stereo 
% 01 = TDM (daisy chain)
% 10 = ADC AUX mode
% 11 = Reserved
% DEFAULT = 00
bits6to5 = '00';
%------------------------------
% Bit7 : BCLK active edge (TDM in)
% 0 = Latch in mid cycle (normal)
% 1 = Latch in at end of cycle (pipeline)
% DEFAULT = 0
bit7 = '0';  
%------------------------------
% Construct Register 16
register{16}.address = address;
register{16}.data    = [bit7 bits6to5 bits4to2 bits1to0];
register{16}.data_default = '00000000';


%----------------------------------------------------------------------
% Address  16  -  ADC Control 2 Register
%----------------------------------------------------------------------
% Register Address
address = '10000';  
%------------------------------
% Bit 0 : LRCLK format
% 0 = 50/50
% 1 = Pulse
% DEFAULT = 0
bit0 = '0';
%------------------------------
% Bit 1 : BCLK polarity
% 0 = Drive out on falling edge (DEF)
% 1 = Drive out on rising edge
% DEFAULT = 0
bit1 = '0';
%------------------------------
% Bit 2 : LRCLK polarity
% 0 = Left low
% 1 = Left high
% DEFAULT = 0
bit2 = '0';
%------------------------------
% Bit 3 : LRCLK master/slave
% 0 = Slave
% 1 = Master
% DEFAULT = 0
bit3 = '1';  %**Master**
%------------------------------
% Bits 5:4 : BCLKs per frame
% 00 = 64
% 01 = 128
% 10 = 256
% 11 = 512
% DEFAULT = 00
bits5to4 = '00';
%------------------------------
% Bit 6 : BCLK master/slave
% 0 = Slave
% 1 = Master
% DEFAULT = 0
bit6 = '1';  %**Master**
%------------------------------
% Bit7 : BCLK source
% 0 = ABCLK pin
% 1 = Internally generated
% DEFAULT = 0
bit7 = '1';  %**Internally**
%------------------------------
% Construct Register 17
register{17}.address = address;
register{17}.data    = [bit7 bit6 bits5to4 bit3 bit2 bit1 bit0];
register{17}.data_default = '00000000';



%---------------------------------------------------------------
% Print out VHDL code that can be used for signal constants
% that can be cut & pasted into AD1939_Control.vhd
%---------------------------------------------------------------
fid = fopen('AD1939_Register_Settings_VHDL_code.txt','w');
fprintf(fid,'-- Power-up register settings to be pasted into AD1939_control.vhd as signal constants\n');
fprintf(fid,'-- Only non-default register settings on power-up are generated\n');
fprintf(fid,'-- Date generated: %s\n', date);
fprintf(fid,'---------------- Cut VHDL Code Starting Here --------------------------\n');
regcount=0;
for k = 1:length(register)
    if strcmp(register{k}.data, register{k}.data_default) == 0
        % Register Address
        disp([' Register ' num2str(k) ' (Address=' num2str(k-1) ') has non-default data settings(' register{k}.data ') and VHDL code will be generated.'])
        string = ['--  AD1939 Register ' num2str(k) '(Address=' num2str(k-1) ') with non-default power-up settings:']; fprintf(fid,'%s\n',string);
        if regcount < 11
            string = ['constant Reg0' num2str(regcount) '_Addr : std_logic_vector (4 downto 0) := "' register{k}.address '";']; fprintf(fid,'%s\n',string);
            string = ['constant Reg0' num2str(regcount) '_Data : std_logic_vector (7 downto 0) := "' register{k}.data '";']; fprintf(fid,'%s\n',string);
        else
            string = ['constant Reg' num2str(regcount) '_Addr : std_logic_vector (4 downto 0) := "' register{k}.address '";']; fprintf(fid,'%s\n',string);
            string = ['constant Reg' num2str(regcount) '_Data : std_logic_vector (7 downto 0) := "' register{k}.data '";']; fprintf(fid,'%s\n',string);
        end
        regcount=regcount+1;
    end
end
binstring = dec2bin(regcount);
N = length(binstring);
leadingzeros = 4-N;
switch leadingzeros
    case 0
        % do nothing
    case 1
        binstring = ['0' binstring];
    case 2
        binstring = ['00' binstring];
    case 3
        binstring = ['000' binstring];
    otherwise
        % do nothing
end        
fprintf(fid,'--  Total number of registers to be written at power-up: \n');
string = ['constant RegTotal   : std_logic_vector (3 downto 0) := "' binstring '";']; fprintf(fid,'%s\n',string);

fclose(fid);











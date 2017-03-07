function hRD = plugin_rd()
% Reference design definition

%   Copyright 2015 The MathWorks, Inc.

% Construct reference design object
hRD = hdlcoder.ReferenceDesign('SynthesisTool', 'Altera QUARTUS II');

hRD.ReferenceDesignName = 'My test reference design';
hRD.BoardName = 'Altera Cyclone V DE0-Nano-SoC';

% Tool information
hRD.SupportedToolVersion = {'16.1'};

%% Add custom design files
% add custom Quartus design
hRD.addCustomQsysDesign( 'CustomQsysPrjFile', 'system_soc.qsys');
% system_soc.qsys was generated using ...

   
% add custom files, use relative path
hRD.CustomFiles = {}; %{'DE0_SOC_NoHPS.qsf'};
hRD.CustomConstraints = {};%{'DE0_SOC_NoHPS.sdc', 'fft.tcl'};

%% Add interfaces
% add clock interface
hRD.addClockInterface( ...
    'ClockConnection',     'pll_0.outclk0', ...
    'ResetConnection',     'hps_0.h2f_reset',...
    'DefaultFrequencyMHz', 50);

% add AXI4 slave interfaces
hRD.addAXI4SlaveInterface( ...
    'InterfaceConnection', 'hps_0.h2f_axi_master', ...
    'BaseAddress',         '0x0000_0000' ); %,...
    %'InterfaceType',       'AXI4',...                                          % [ 'AXI4-Lite'| 'AXI4' ]
    %'InterfaceID',         'JTAG AXI4 Interface');  

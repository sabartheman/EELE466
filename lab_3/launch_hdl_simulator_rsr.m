tclcmd = { ...
'vsimmatlabsysobj rsr -t 1ns -novopt  -socket 61182;', ...
'add wave rsr/*;', ...
};
vsim('tclstart',tclcmd,'vsimdir','C:\modeltech64_10.5c\win64')

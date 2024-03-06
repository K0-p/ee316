## Switches
## Connects pin V17 (SW0 on the board) to input a in our gate module
set_property PACKAGE_PIN V17 [get_ports {sw0}]	
## Sets the switch to use 3.3V logic				
	set_property IOSTANDARD LVCMOS33 [get_ports {sw0}]    

## Connects pin V16 (SW1 on the board) to input b in our gate module
set_property PACKAGE_PIN V16 [get_ports {sw1}]			
## Sets the switch to use 3.3V logic
	set_property IOSTANDARD LVCMOS33 [get_ports {sw1}]    
	
set_property PACKAGE_PIN W16 [get_ports {sw2}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {sw2}]
set_property PACKAGE_PIN W17 [get_ports {sw3}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {sw3}]



##7 segment display
set_property PACKAGE_PIN W7 [get_ports {a}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {a}]
set_property PACKAGE_PIN W6 [get_ports {b}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {b}]
set_property PACKAGE_PIN U8 [get_ports {c}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {c}]
set_property PACKAGE_PIN V8 [get_ports {d}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {d}]
set_property PACKAGE_PIN U5 [get_ports {e}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {e}]
set_property PACKAGE_PIN V5 [get_ports {f}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {f}]
set_property PACKAGE_PIN U7 [get_ports {g}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {g}]

set_property PACKAGE_PIN V7 [get_ports {gp}]							
	set_property IOSTANDARD LVCMOS33 [get_ports {gp}]

set_property PACKAGE_PIN U2 [get_ports {an0}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {an0}]
set_property PACKAGE_PIN U4 [get_ports {an1}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {an1}]
set_property PACKAGE_PIN V4 [get_ports {an2}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {an2}]
set_property PACKAGE_PIN W4 [get_ports {an3}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {an3}]

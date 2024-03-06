## This file is the constraints file. It maps the input/output variables in your design modules to the actual hardware.
## Each pin corresponds to a device on the board. For example, pin V17 corresponds to SW0, the rightmost switch.
## We use CMOS (LVCMOS33) logic on the board, meaning a "0" is 0V, and a "1" is 3.3V.
## You don't need to understand every line of this file, but be able to describe what each of the 6 uncommented lines does.

## This file is a general .xdc for the Basys3 rev C board
## To use it in a project:
## - uncomment the lines corresponding to used pins
## - rename the used ports (in each line, after get_ports) according to the top level signal names in the project

## Clock signal - Uncomment if needed (will be used in future labs)
#set_property PACKAGE_PIN W5 [get_ports clk]							
	#set_property IOSTANDARD LVCMOS33 [get_ports clk]
	#create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports clk]
 
## Switches
## Connects pin V17 (SW0 on the board) to input a in our gate module
set_property PACKAGE_PIN V17 [get_ports {up}]	
## Sets the switch to use 3.3V logic				
	set_property IOSTANDARD LVCMOS33 [get_ports {up}]    

## Connects pin V16 (SW1 on the board) to input b in our gate module
set_property PACKAGE_PIN V16 [get_ports {center}]			
## Sets the switch to use 3.3V logic
	set_property IOSTANDARD LVCMOS33 [get_ports {center}]    
set_property PACKAGE_PIN W16 [get_ports {left}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {left}]
set_property PACKAGE_PIN W17 [get_ports {right}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {right}]
	
	
## LEDs
## Connects the output c in our gate module to pin U16 (LED0 on-board)		
set_property PACKAGE_PIN U16 [get_ports {combo0}]	
## Sets the LED to use 3.3V logic		
	set_property IOSTANDARD LVCMOS33 [get_ports {combo0}]    
set_property PACKAGE_PIN E19 [get_ports {combo1}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {combo1}]
set_property PACKAGE_PIN U19 [get_ports {combo2}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {combo2}]
set_property PACKAGE_PIN V19 [get_ports {combo3}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {combo3}]
set_property PACKAGE_PIN W18 [get_ports {combo4}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {combo4}]
set_property PACKAGE_PIN U15 [get_ports {combo5}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {combo5}]
set_property PACKAGE_PIN U14 [get_ports {combo6}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {combo6}]
set_property PACKAGE_PIN V14 [get_ports {combo7}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {combo7}]

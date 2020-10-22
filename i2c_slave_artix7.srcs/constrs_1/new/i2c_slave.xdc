############## NET - IOSTANDARD ######################
set_property CFGBVS VCCO [current_design]
set_property CONFIG_VOLTAGE 3.3 [current_design]
#############SPI Configurate Setting##################
set_property BITSTREAM.CONFIG.SPI_BUSWIDTH 4 [current_design] 
set_property CONFIG_MODE SPIx4 [current_design] 
set_property BITSTREAM.CONFIG.CONFIGRATE 50 [current_design] 
############## clock define##################
create_clock -period 5.000 [get_ports sys_clk_p]
set_property PACKAGE_PIN V4 [get_ports sys_clk_p]
set_property IOSTANDARD DIFF_SSTL15 [get_ports sys_clk_p]
############## reset key define##################
set_property IOSTANDARD LVCMOS33 [get_ports {rst_n}]
set_property PACKAGE_PIN T20 [get_ports {rst_n}]
#############io Setting##############################
set_property IOSTANDARD LVCMOS33 [get_ports {test}]
set_property PACKAGE_PIN G21 [get_ports {test}]

set_property PULLUP true [get_ports {i2c_sda}]
set_property IOSTANDARD LVCMOS33 [get_ports {i2c_sda}]
set_property PACKAGE_PIN G22 [get_ports {i2c_sda}]

set_property PULLUP true [get_ports {i2c_scl}]
set_property IOSTANDARD LVCMOS33 [get_ports {i2c_scl}]
set_property PACKAGE_PIN B17  [get_ports {i2c_scl}]

#set_property SEVERITY {Warning} [get_drc_checks UCIO-1]
set_property SRC_FILE_INFO {cfile:c:/TDD/lab03spi-g03/Ejercicios/scr/xci/WCLK/WCLK.xdc rfile:../../../scr/xci/WCLK/WCLK.xdc id:1 order:EARLY scoped_inst:generate_clock_10Mhz/inst} [current_design]
set_property SRC_FILE_INFO {cfile:C:/TDD/lab03spi-g03/Ejercicios/Constraints/contraints_7seg_v3.xdc rfile:../../../Constraints/contraints_7seg_v3.xdc id:2} [current_design]
current_instance generate_clock_10Mhz/inst
set_property src_info {type:SCOPED_XDC file:1 line:57 export:INPUT save:INPUT read:READ} [current_design]
set_input_jitter [get_clocks -of_objects [get_ports CLK_100MHZ]] 0.1
current_instance
set_property src_info {type:XDC file:2 line:20 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN R7 [get_ports {periodos_pi[2]}]
set_property src_info {type:XDC file:2 line:21 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD LVCMOS33 [get_ports {periodos_pi[2]}]
set_property src_info {type:XDC file:2 line:724 export:INPUT save:INPUT read:READ} [current_design]
create_generated_clock -name pllclk -source [get_ports clk_100Mhz_pi] -divide_by 10 [get_pins generate_clock_10Mhz/clk_10Mhz]
set_property src_info {type:XDC file:2 line:725 export:INPUT save:INPUT read:READ} [current_design]
set_output_delay -clock [get_clocks pllclk] 0.000 [get_ports -filter { NAME =~  "*" && DIRECTION == "OUT" }]

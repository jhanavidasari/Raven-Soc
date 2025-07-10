set_host_options -max_cores 2

source "/home1/BPPD08/JhanaviD/VLSI_PD/Raven_soc/spimemio/pnr/scripts/design_setup.tcl"
set REPORT_QOR 0
set CURRENT_STEP init_design
#sh mkdir ../reports/$CURRENT_STEP 
#sh mkdir ../outputs/$CURRENT_STEP 
set target_library $LINK_LIBRARY
set link_library $LINK_LIBRARY

create_lib -ref_libs $REFERENCE_LIBRARY -technology $TECH_FILE ../work/${DESIGN_LIBRARY}
####### Read Verilog #########
read_verilog "/home1/BPPD08/JhanaviD/VLSI_PD/Raven_soc/spimemio/synth/outputs/spimemio.mapped.v"
CURRENT_DESIGN $DESIGN_NAME 

###### Read_upf #########

if {[file exists [which $UPF_SUPPLEMENTAL_FILE]]} {set_app_options -name mv.upf.enable_golden_upf -value true}

if {[file exists [which $UPF_FILE]]} { \
	load_upf $UPF_FILE
if {[file exists [which $UPF_SUPPLEMENTAL_FILE]]} {
load_upf -supplemental $UPF_SUPPLEMENTAL_FILE
} elseif {$UPF_SUPPLEMENTAL_FILE != ""} {
puts "Error: UPF_SUPPLEMENTAL_FILE($UPF_SUPPLEMENTAL_FILE)is invalid. Please correct it." }
puts "Info: Running commit_upf"
commit_upf
}
elseif {$UPF_FILE != ""} {
puts "Error: UPF file($UPF_FILE) is invalid. Please correct it." }



#load_upf $UPF_FILE
###### Timing and constrains #######
source $TCL_MCMM_SETUP_FILE
source $TCL_PARASITIC_SETUP_FILE

##### NDR and metal layer direction ########
source "/home1/BPPD08/JhanaviD/VLSI_PD/Raven_soc/spimemio/pnr/scripts/cts_ndr.tcl"
define_user_attribute -type string -name routing_direction -classes routing_rule
set_attribute -objects [get_layers {M1 M5 M7 M9}] -name routing_direction -value vertical
set_attribute -objects [get_layers {M2 M4 M6 M8 MRDL}] -name routing_direction -value horizontal
redirect ../reports/${CURRENT_STEP}/clock_routing_rules {report_clock_routing_rules}
redirect ../reports/${CURRENT_STEP}/clock_settings {report_clock_settings }
redirect ../reports/${CURRENT_STEP}/routing_rules {report_routing_rules -verbose}

######## Lib cell usage restriction #############
source ../../../simpleuart/pnr/scripts/set_lib_cell_purpose.tcl 
set_attribute [get_lib_cells */*AO*] dont_touch true
#set_app_var simplified_verification_mode true
set_svf ${OUTPUTS_DIR}/${DESIGN_NAME}.mapped.svf

####### Sanity checks and QOR reports ###################
if ($REPORT_QOR) {
	redirect ../reports/${CURRENT_STEP}/qor
	{source ../scripts/REPORT_QOR.tcl}	

}
report_msg -summary
print_message_info -ids * -summary
echo [date] > ../init_design 
save_block -as spimemio/init_design 
save_lib
close_block
close_lib


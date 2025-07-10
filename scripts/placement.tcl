###############################################################################################################
################################# Placement RULES #############################################
###############################################################################################################
#

set_host_options -max_cores 4
set REPORT_QOR 1
set PREVIOUS_STEP powerplan
source "/home1/BPPD08/JhanaviD/VLSI_PD/Raven_soc/spimemio/pnr/scripts/design_setup.tcl"
set CURRENT_STEP placement
#sh mkdir ../reports/${CURRENT_STEP}
#sh mkdir ../outputs/${CURRENT_STEP}
open_lib ${DESIGN_LIBRARY}
copy_block -from ${DESIGN_NAME}/${PREVIOUS_STEP} -to ${DESIGN_NAME}/${CURRENT_STEP}
current_block ${DESIGN_NAME}/${CURRENT_STEP}
link_block
set_svf ${OUTPUTS_DIR}/${DESIGN_NAME}.${CURRENT_STEP}.mapped.svf


set_dont_touch [get_cells -hier *latch] true
set_vsdc ${OUTPUTS_DIR}/${DESIGN_NAME}.${CURRENT_STEP}.vsdc -replace
###############################################################################################################
## Set active scenarios for the step (please include CTS and holdscenarios for CCD)
###############################################################################################################

if {$PLACE_OPT_ACTIVE_SCENARIO_LIST != ""} {
set_scenario_status -active false [get_scenarios -filter active]
set_scenario_status -active true $PLACE_OPT_ACTIVE_SCENARIO_LIST}
if {[sizeof_collection [get_scenarios -filter "hold && active"]] == 0} {puts "Warning: No active hold scenario is found. Recommended to enable hold scenarios here such that CCD skewing can consider them."
puts "Info: Please activate hold scenarios for place_opt if they are available." }
############################################
#### Variables
############################################
set_app_options -name place.coarse.max_density -value 0.6
set_app_options -name place.coarse.continue_on_missing_scandef -value true
############################################
## IO Buffers
############################################
catch {add_buffer [get_nets -of_objects [get_ports]] [get_lib_cells */*SAEDRVT*BUF_20] }
magnet_placement [get_ports *]
set_attr [get_cells eco_cell*] physical_status fixed



############################################
#### Placement
############################################
create_placement -congestion
check_legality -verbose
legalize_placement
set_attr [get_lib_cells *lvt*/*] threshold_voltage_group LVT
set_threshold_voltage_group_type -type low_vt LVT
set_multi_vth_constraint -low_vt_percentage 8 -cost cell_count
place_opt -to final_opto


connect_pg_net
#################################Sanity checks and QoR
#######Report#####################
if {$REPORT_QOR} { \
redirect ../reports/${CURRENT_STEP}/qor \
{source ../scripts/REPORT_QOR.tcl}
} 
##############################Save###############
###########
save_block
create_abstract -read_only
create_frame -block_all true
save_lib
echo [date] > ../placement
close_blocks -f
close_lib
exit



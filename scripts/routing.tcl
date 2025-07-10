
set_host_options -max_cores 4
source "/home1/BPPD08/JhanaviD/VLSI_PD/Raven_soc/spimemio/pnr/scripts/design_setup.tcl"

set REPORT_QOR 1
set PREVIOUS_STEP cts
set CURRENT_STEP routing
sh mkdir ../outputs/${CURRENT_STEP}
sh mkdir ../reports/${CURRENT_STEP}
open_lib ${DESIGN_LIBRARY}
copy_block -from ${DESIGN_NAME}/${PREVIOUS_STEP} -to \
${DESIGN_NAME}/${CURRENT_STEP}
current_block ${DESIGN_NAME}/${CURRENT_STEP}
link_block
set_svf ${OUTPUTS_DIR}/${DESIGN_NAME}.${CURRENT_STEP}.svf
## Set active scenarios for the step

if {$ROUTE_OPT_ACTIVE_SCENARIO_LIST != ""} {
set_scenario_status -active false [get_scenarios -filter active]
set_scenario_status -active true $ROUTE_ACTIVE_SCENARIO_LIST}
if {[sizeof_collection [get_scenarios -filter "hold && active"]] == 0} {
puts "Warning: No active hold scenario is found. Recommended to
enable hold scenarios here such that CCD skewing can consider them."
puts "Info: Please activate hold scenarios for CTS if they are
available." }
############################################
#### Variables
############################################
set_app_options -name route.detail.timing_driven -value true
set_app_options -name route.track.timing_driven -value true
set_app_options -name route.track.crosstalk_driven -value true
set_app_options -name route.global.timing_driven -value true
set_app_options -name route.common.global_min_layer_mode -value \
allow_pin_connection
set_app_options -name route.common.global_max_layer_mode -value \
soft
set_app_options -name time.si_enable_analysis -value true
set_app_options -name time.enable_si_timing_windows -value true
set_app_options -name time.enable_ccs_rcv_cap -value true
set_ignored_layers -max_routing_layer M8 -min_routing_layer M2
################################################
##############################
## Routing CTS flow
################################################
##############################
#Either do these seperately
#route_global
#route_track
#route_detail
#OR
route_auto
################################################
##############################
## Incremental route_detail for fixing routing DRCs
################################################
##############################
#route_detail -incremental true -initial_drc_from_input true
#The below is for the student to understand how much QoR is improved by route_opt
report_qor -summary
save_block -as init_route
route_opt
connect_pg_net
####################################
## Sanity checks and QoR Report
####################################
if {$REPORT_QOR} {
redirect ../reports/${CURRENT_STEP}/qor \
{source ../scripts/REPORT_QOR.tcl}
}
####################################
## Save
####################################
save_block
create_abstract
create_frame -block_all true
save_lib
echo [date] > ../route
close_blocks -f
close_lib

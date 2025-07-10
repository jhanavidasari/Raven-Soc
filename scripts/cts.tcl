###############################################################################################################
#################################  CTS .TCL #############################################
###############################################################################################################
#
set_host_options -max 2
source "/home1/BPPD08/JhanaviD/VLSI_PD/Raven_soc/spimemio/pnr/scripts/design_setup.tcl"

set REPORT_QOR 1
set PREVIOUS_STEP placement
set CURRENT_STEP cts
sh mkdir ../reports/cts
sh mkdir ../outputs/cts

open_lib ${DESIGN_LIBRARY}
copy_block -from ${DESIGN_NAME}/${PREVIOUS_STEP} -to ${DESIGN_NAME}/${CURRENT_STEP}
current_block ${DESIGN_NAME}/${CURRENT_STEP}
link_block
set_svf ${OUTPUTS_DIR}/${DESIGN_NAME}.${CURRENT_STEP}.mapped.svf

##############################################################################################################
## Set active scenarios for the step (please include CTS and holdscenarios for CCD)
###############################################################################################################

if {$CLOCK_OPT_CTS_ACTIVE_SCENARIO_LIST != ""} {
set_scenario_status -active false [get_scenarios -filter active]
set_scenario_status -active true $CLOCK_OPT_CTS_ACTIVE_SCENARIO_LIST}
if {[sizeof_collection [get_scenarios -filter "hold && active"]] == 0} {puts "Warning: No active hold scenario is found. Recommended to enable hold scenarios here such that CCD skewing can consider them."
puts "Info: Please activate hold scenarios for clock_opt if they are available." }
############################################
#### Variables
############################################
set_app_options -name cts.common.user_instance_name_prefix -value clock_opt_cts_
set_app_options -name opt.common.user_instance_name_prefix -value clock_opt_cts_opt_

set_app_options -name cts.common.max_fanout -value 32


############################################
#### CLOCK OPT CTS FLOW
############################################

clock_opt -from build_clock -to build_clock
clock_opt -from route_clock -to route_clock

clock_opt

connect_pg_net



############################################
#### SANITY CHECKS AND QOR REPORT
############################################

if {$REPORT_QOR} {
	redirect ../reports/${CURRENT_STEP}/qor \
	{source ../scripts/REPORT_QOR.tcl}
}

#if {$REPORT_QOR} { 

 #      redirect ../reports/${CURRENT_STEP}/qor {source ../scripts/report_qor.tcl}

#}


save_block
create_abstract -read_only
create_frame -block_all true
save_lib
echo [date] > ../cts
close_blocks -f
close_lib
exit



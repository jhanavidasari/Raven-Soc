set_host_options -max_cores 16
########### Design_setup #################

source "/home1/BPPD08/JhanaviD/VLSI_PD/Raven_soc/spimemio/pnr/scripts/design_setup.tcl"
set REPORT_QOR 0
set PREVIOUS_STEP init_design
set CURRENT_STEP floorplan
open_lib ${DESIGN_LIBRARY}
copy_block -from ${DESIGN_NAME}/${PREVIOUS_STEP} -to ${DESIGN_NAME}/${CURRENT_STEP}
current_block ${DESIGN_NAME}/${CURRENT_STEP}
set_early_data_check_policy -policy lenient -if_not_exist
link_block
set_svf ${OUTPUTS_DIR}/${DESIGN_NAME}.${CURRENT_STEP}.mapped.svf
################# Initializing Flooplan #################3
initialize_floorplan -core_utilization 0.5 -core_offset {1}
set_block_pin_constraints -self -allowed_layers {M5 M7} -sides 2
place_pins -ports [get_ports -filter direction==out]
set_block_pin_constraints -self -allowed_layers {M4 M6} -sides 3
place_pins -ports [get_ports -filter direction==in]
set_attr [get_ports *] physical_status fixed 
############3########### Track ##########################
remove_track -layer M1
create_track -layer M1 -coord 1.111 -space 0.037
report_track
################################################################################################################
###CONNECT_PG_NET###################
#################################################################################################################

connect_pg_net -automatic
############## Boundary cells insertion ####################
set_boundary_cell_rules \
			-top_boundary_cells [get_lib_cells */*CAPT2]\
			-bottom_boundary_cells [get_lib_cells */*CAPB2]\
			-right_boundary_cell [get_lib_cells */*CAPBIN13]\
			-left_boundary_cell [get_lib_cells */*CAPBTAP6]\
			-prefix ENDCAP

compile_targeted_boundary_cells -target_objects [get_voltage_areas]

check_legality -cells [get_cells bound*]

############### Save ############################33
save_block

save_lib

echo [date] > ../floorplan

close_block -f

close_lib

exit
			






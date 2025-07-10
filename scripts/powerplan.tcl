set_host_options -max_cores 4
########### Design_setup #################

#source "/home1/BPPD08/JhanaviD/VLSI_PD/Raven_soc/simpleuart/pnr/scripts/design_setup.tcl"
source "/home1/BPPD08/JhanaviD/VLSI_PD/Raven_soc/spimemio/pnr/scripts/design_setup.tcl"

set REPORT_QOR 1
set PREVIOUS_STEP floorplan
set CURRENT_STEP powerplan
open_lib ${DESIGN_LIBRARY}
copy_block -from ${DESIGN_NAME}/${PREVIOUS_STEP} -to ${DESIGN_NAME}/${CURRENT_STEP}
current_block ${DESIGN_NAME}/${CURRENT_STEP}
set_early_data_check_policy -policy lenient -if_not_exist
link_block
set_svf ${OUTPUTS_DIR}/${DESIGN_NAME}.${CURRENT_STEP}.mapped.svf
set_attr [get_lib_cells */*TIE*] dont_touch false
set_lib_cell_purpose -include optimization [get_lib_cells */*TIE*]

############# Patter
remove_pg_strategies -all
remove_pg_patterns -all
remove_pg_regions -all
remove_pg_via_master_rules -all
remove_pg_strategy_via_rules -all
remove_routes -net_types {power ground} -ring -stripe -macro_pin_connect -lib_cell_pin_connect > /dev/null
connect_pg_net

create_pg_mesh_pattern mesh_pattern_rsoc \
                 -layers {{{vertical_layer: M9} {width: 0.12} \
{pitch: 4.8} {offset: 1.6} {spacing:interleaving} {trim:true}} \
{{horizontal_layer: M8}{width: 0.12} \
 {pitch: 4.8} {offset: 1.6}{spacing:interleaving} {trim:true }}}

set_pg_strategy strat_rsoc_mesh \
   -pattern {{name: mesh_pattern_rsoc} \
             {nets: VDD VSS}} \
	     -extension {{stop: design_boundary_and_generate_pin}} -core
compile_pg -strategies {strat_rsoc_mesh}

#create_pg_mesh_pattern Mesh_lower \
                        -layers { {{horizontal_layer :M8} {width :0.12} {spacing :interleaving} \
                                  {pitch :4} {offset :1.6} {trim :true}} \
                                { {vertical_layer :M9} {width :0.12} {spacing :interleaving} \
                                   {pitch :4} {offset :1.6} {trim :true}} }
                                   
#set_pg_strategy Strategy_lower \
 			-polygon {{1 1} {16 117}}\
			-pattern {{name :Mesh_lower} {nets :VDDo}}\
		#	-extension {stop :design_boundary_and_generate_pin} \
			-core

#compile_pg -strategies {Strategy_lower}


create_pg_std_cell_conn_pattern rail_pattern -rail_width 0.094 -layers M1 


set_pg_strategy M1_rails -core \
   -pattern {{name: rail_pattern} {nets: VDD VSS}} 


compile_pg -strategies M1_rails
create_pg_vias -nets {VDD VSS} -from_layers M1 -to_layers M9 -drc no_check
check_pg_connectivity
check_pg_drc

##SANITY_CHECK_AND_QOR_REPORT


if {$REPORT_QOR} { 

       redirect ../reports/${CURRENT_STEP}/qor {source ../scripts/REPORT_QOR.tcl}

}
##SAVE
##################################################################################
save_block

save_lib

echo [date] > ../powerplan

close_block -f

close_lib

exit1
        
create_pg_mesh_pattern Mesh_Upper \
	-layers { \
		 {{horizontal_layer: M9}  {width: 0.12} {spacing: interleaving} {pitch: 4.8}  {offset: 1.6} {trim : true}}  \
		 {{vertical_layer: M8} {width: 0.12} {spacing: interleaving} {pitch: 4.8} {offset: 1.6} {trim : true}} \
		} \
	-via_rule { {intersection: adjacent} {via_master : default} }


set_pg_strategy Strategy_Upper \
	-voltage_areas DEFAULT_VA \
	-pattern   { {name: Mesh_Upper} {nets:{VDD VSS}}} \
	-extension {{{side:1} {nets: VDD} {direction: T} {stop:design_boundary_and_generate_pin}} \
                       {{side:1} {nets: VSS} {direction: T} {stop:design_boundary_and_generate_pin}}}



compile_pg -strategies {Strategy_Upper}

create_pg_vias -nets {VDD VSS} -from_layers M1 -to_layers M8 -drc no_check
create_pg_std_cell_conn_pattern P_std_cell_rail -layers M1

set_pg_strategy M1_vddl_rail \
	-voltage_areas DEFAULT_VA\
	-pattern {{name: P_std_cell_rail}{nets: VDD VSS}} 

set_pg_strategy_via_rule rail_via_rule -via_rule \
                         {{intersection: adjacent} {via_master: default}}

compile_pg -strategies {M1_vddl_rail} -via_rule rail_via_rule



remove_scenarios -all
remove_modes -all
remove_corners -all

set mode1 				"func" ;# name for mode1	
set mode_constraints($mode1)            "../../../simpleuart/pnr/scripts/rsoc_m_func.tcl" ;# for mode1 specific SDC constraints

set mode2				"turbo_func" ;# name for mode1	
set mode_constraints($mode2)            "../../../simpleuart/pnr/scripts/rsoc_m_turbo_func.tcl" ;# for mode1 specific SDC constraints

## Corner constraints; expand it as needed
set corner1 				"ff_0p72vm40c" ;# name of corner1	
set corner_constraints($corner1)        "../../../spimemio/pnr/scripts/rsoc_c_ff0p72vm40c" ;# for corner1 specific SDC constraints 

set corner2 				"ss_0p6v125c" ;# name of corner2	
set corner_constraints($corner2)        "../../../spimemio/pnr/scripts/rsoc_c_ss0p6v125c" ;# for corner2 specific SDC constraints 

## Scenario constraints; expand it as needed; "::" is used as the separator following time.scenario_auto_name_separator default
set scenario1 				"${mode1}::${corner1}" ;# scenario1 with mode1 and corner1
set scenario_constraints($scenario1)    "" ;# for scenario1 specific SDC constraints

set scenario2 				"${mode1}::${corner2}" ;# scenario1 with mode1 and corner2
set scenario_constraints($scenario2)    "" ;# for scenario2 specific SDC constraints

set scenario3 				"${mode2}::${corner1}" ;# scenario1 with mode1 and corner1
set scenario_constraints($scenario3)    "" ;# for scenario1 specific SDC constraints

#set scenario4 				"${mode2}::${corner2}" ;# scenario1 with mode1 and corner2
#set scenario_constraints($scenario4)    "" ;# for scenario2 specific SDC constraints
#set s_constr(func.ss_0p6vm40c) "../../../simpleuart/pnr/scripts/rsoc_s_func.ss_0p6vm40c.tcl"
#set s_constr(func.ff_0p72v125c) "../../../simpleuart/pnr/scripts/rsoc_s_func.ff_0p72v125c.tcl"
#set s_constr(turbo_func.ff_0p72v125c) "../../../simpleuart/pnr/scripts/rsoc_s_turbo_func.ff_0p72v125c.tcl"
#set s_constr(turbo_func.ss_m40c) "rsoc_s_turbo_func.ss_0p6vm40c.tcl"

########################################
## Create modes, corners, and scenarios first
########################################
remove_modes -all; remove_corners -all; remove_scenarios -all

foreach m [array name mode_constraints] {
	puts "RM-info: create_mode $m"
	create_mode $m
}

foreach c [array name corner_constraints] {
	puts "RM-info: create_corner $c"
	create_corner $c
}

foreach s [array name scenario_constraints] {
	set m [lindex [split $s :] 0]
	set c [lindex [split $s :] end]
	create_scenario -name $s -mode $m -corner $c
}

## Populate mode contraints
foreach m [array name mode_constraints] {
	current_mode $m

	current_scenario [index_collection [get_scenarios -mode $m] 0] 
	# ensures a current_scenario exists in case provided mode constraints are actually scenario specific

	puts "RM-info: current_mode $m"
	source -echo $mode_constraints($m)
}

## Populate corner contraints
#  Please ensure parasitics are assigned to the corners properly
foreach c [array name corner_constraints] {
	current_corner $c

	current_scenario [index_collection [get_scenarios -corner $c] 0] 
	# ensures a current_scenario exists in case provided corner constraints are actually scenario specific

	puts "RM-info: current_corner $c"
	source -echo $corner_constraints($c)

	# pls ensure $corner_constraints($c) includes set_parasitic_parameters command for the corresponding corner,
	# for example, set_parasitic_parameters -late_spec $parasitics1 -early_spec $parasitics2,
	# where the command points to the parasitics read by the read_parasitic_tech commands.
	# Specify TCL_PARASITIC_SETUP_FILE in design_setup.tcl for your read_parasitic_tech commands.
	# read_parasitic_tech_example.tcl is provided as an example.
}

## Populate scenario constraints
foreach s [array name scenario_constraints] {
	current_scenario $s
	puts "RM-info: current_scenario $s"
	source -echo $scenario_constraints($s)
}


########################################
## Configure analysis settings for scenarios
########################################
# Below are just examples to show usage of set_scenario_status (actual usage shold depend on your objective)
# scenario1 is a setup scenario and scenario2 is a hold scenario

set_scenario_status ${scenario1} -none -setup true -hold false -leakage_power true -dynamic_power true -max_transition true -max_capacitance true -min_capacitance false -active true
set_scenario_status ${scenario2} -none -setup false -hold true -leakage_power true -dynamic_power false -max_transition true -max_capacitance false -min_capacitance true -active true
set_scenario_status ${scenario3} -none -setup false -hold true -leakage_power true -dynamic_power false -max_transition true -max_capacitance false -min_capacitance true -active true




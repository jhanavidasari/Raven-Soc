######## Tech_Setup ############3



######### Creating MilkyWay Library ######
create_mw_lib Hard_macro_spimemio.mw \
        -technology $Tech_file \
	-mw_reference_library $milkyway_ref_library \
        -open
####### Reading RTL ###############
#################################	

analyze -format verilog [glob ../../../../raven_rtl/spimemio.v] 

elaborate spimemio

current_design spimemio


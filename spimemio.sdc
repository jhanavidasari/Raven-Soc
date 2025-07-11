set_units -time ns

create_clock -period 1.5 [get_ports clk] 

set_input_delay -max 0.9 -clock clk [all_inputs]
set_output_delay -max 0.9 -clock clk [all_outputs]
set_load -pin_load 0.15 [all_outputs]
set_max_fanout 15 [get_clocks clk]
set_max_transition 0.15 [get_clocks clk]
set_max_capacitance 0.15 [get_clocks clk]




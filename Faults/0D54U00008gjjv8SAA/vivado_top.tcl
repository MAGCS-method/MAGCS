# CRITICAL WARNING: [Synth 8-5821] Potential divide by zero
set_msg_config -id {Synth 8-5821} -new_severity {WARNING}

read_verilog rtl.v
synth_design -part xc7k70t -top top -flatten_hierarchy rebuilt -gated_clock_conversion auto -bufg 49 -directive LogicCompaction -fsm_extraction gray -resource_sharing off -control_set_opt_threshold 17
write_verilog -force syn_vivado.v

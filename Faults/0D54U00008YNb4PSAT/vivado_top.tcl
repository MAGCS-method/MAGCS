read_verilog rtl.v
synth_design -top top -flatten_hierarchy none -gated_clock_conversion auto -bufg 13 -directive RuntimeOptimized -fsm_extraction johnson -resource_sharing auto -control_set_opt_threshold 27 -shreg_min_size 13
write_verilog -force syn_vivado.v

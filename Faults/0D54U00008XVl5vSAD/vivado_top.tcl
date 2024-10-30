read_verilog rtl.v
synth_design -part xcvp1802-lsvc4072-2MP-e-S -top top -directive AreaMultThresholdDSP -fsm_extraction one_hot -resource_sharing on -control_set_opt_threshold 34 -shreg_min_size 8 -incremental_mode off -assert  
write_verilog -force syn_vivado.v

read_verilog rtl.v
synth_design -top top -flatten_hierarchy rebuilt -directive PowerOptimized_high -fsm_extraction auto -resource_sharing on -cascade_dsp auto -incremental_mode quick -assert -keep_equivalent_registers -no_lc
write_verilog -force syn_vivado.v

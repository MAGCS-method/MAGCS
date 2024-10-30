read_verilog rtl.v
synth_design -part xcvp1802-lsvc4072-2MP-e-S -top top -flatten_hierarchy rebuilt -directive PowerOptimized_high -fsm_extraction auto -resource_sharing on
write_verilog -force syn_vivado.v

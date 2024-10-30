read_verilog rtl.v
synth_design -top top -flatten_hierarchy full -gated_clock_conversion auto -bufg 45 -directive AreaOptimized_high -fsm_extraction sequential -resource_sharing off 
write_verilog -force syn_vivado.v

read_verilog rtl.v
synth_design -top top -flatten_hierarchy full -gated_clock_conversion on -directive FewerCarryChains -resource_sharing on  
write_verilog -force syn_vivado.v

read_verilog rtl.v
synth_design -top top -flatten_hierarchy rebuilt -gated_clock_conversion auto -bufg 49 -directive LogicCompaction -fsm_extraction gray -resource_sharing off 
write_verilog -force syn_vivado.v

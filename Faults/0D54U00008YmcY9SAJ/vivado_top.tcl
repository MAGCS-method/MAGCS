read_verilog rtl.v
synth_design -top top -flatten_hierarchy full -gated_clock_conversion auto -directive AlternateRoutability -fsm_extraction sequential 
write_verilog -force syn_vivado.v

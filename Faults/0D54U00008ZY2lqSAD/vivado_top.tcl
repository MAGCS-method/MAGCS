read_verilog rtl.v
synth_design -top top -flatten_hierarchy none -gated_clock_conversion auto -directive AlternateRoutability -assert -no_lc -no_srlextract -keep_equivalent_registers -retiming 
write_verilog -force syn_vivado.v

read_verilog rtl.v
synth_design -part xc7k70t -top top -flatten_hierarchy full -gated_clock_conversion auto -bufg 45
write_verilog -force syn_vivado.v

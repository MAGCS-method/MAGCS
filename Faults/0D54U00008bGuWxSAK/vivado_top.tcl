read_verilog rtl.v
synth_design -top top -flatten_hierarchy none -directive AlternateRoutability -fsm_extraction off -max_bram_cascade_height 21 -max_uram_cascade_height 45 -cascade_dsp force -incremental_mode aggressive -retiming -no_lc 
write_verilog -force syn_vivado.v

               yosys -p "
            read_verilog rtl.v         
	    hierarchy; proc; opt_clean; opt_dff; opt_demorgan; opt_lut_ins; opt_merge; opt_reduce; opt_dff; opt_expr; opt_muxtree; opt_share; opt_dff; opt_clean; opt_lut_ins; opt_reduce; opt_demorgan; 
            write_verilog syn_yosys.v"

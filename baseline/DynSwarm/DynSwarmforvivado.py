import random
import Check_Vivado

def generate_random_params():
    top = "top"
    flatten_hierarchy = "rebuilt"
    gated_clock_conversion = "auto"
    bufg = 1
    directive = "RuntimeOptimized"
    fsm_extraction = "auto"
    resource_sharing = "auto"
    control_set_opt_threshold = 1
    shreg_min_size = 1
    max_bram = 1
    max_uram = 1
    max_dsp = 1
    max_bram_cascade_height = 1
    max_uram_cascade_height = 1
    cascade_dsp = "auto"
    incremental_mode = "default"
    
    other = random.sample(["-retiming ", "-keep_equivalent_registers ", "-no_lc ", "-no_srlextract ", "-assert "], k=random.randint(1, 5))
    
    params = {
        "top": top,
        "flatten_hierarchy": flatten_hierarchy,
        "gated_clock_conversion": gated_clock_conversion,
        "bufg": bufg,
        "directive": directive,
        "fsm_extraction": fsm_extraction,
        "resource_sharing": resource_sharing,
        "control_set_opt_threshold": control_set_opt_threshold,
        "shreg_min_size": shreg_min_size,
        "max_bram": max_bram,
        "max_uram": max_uram,
        "max_dsp": max_dsp,
        "max_bram_cascade_height": max_bram_cascade_height,
        "max_uram_cascade_height": max_uram_cascade_height,
        "cascade_dsp": cascade_dsp,
        "incremental_mode": incremental_mode,
        "other": other,
    }
    return params

def main():
    params = generate_random_params()
    
    synth_command = [
        f"synth_design -top {params['top']}",
        f"-flatten_hierarchy {params['flatten_hierarchy']}",
        f"-gated_clock_conversion {params['gated_clock_conversion']}",
        f"-bufg {params['bufg']}",
        f"-directive {params['directive']}",
        f"-fsm_extraction {params['fsm_extraction']}",
        f"-resource_sharing {params['resource_sharing']}",
        f"-control_set_opt_threshold {params['control_set_opt_threshold']}",
        f"-shreg_min_size {params['shreg_min_size']}",
        f"-max_bram {params['max_bram']}",
        f"-max_uram {params['max_uram']}",
        f"-max_dsp {params['max_dsp']}",
        f"-max_bram_cascade_height {params['max_bram_cascade_height']}",
        f"-max_uram_cascade_height {params['max_uram_cascade_height']}",
        f"-cascade_dsp {params['cascade_dsp']}",
        f"-incremental_mode {params['incremental_mode']}"
    ] + params['other']  

    random.shuffle(synth_command[2:])
    synth_command = " ".join(synth_command)
    
    print('##############################')
    print(synth_command)
    return synth_command

if __name__ == "__main__":
    for i in range(1000):
        print(i)
        seq = main()
        print(seq)
        Check_Vivado.fault_chenk(i, seq)

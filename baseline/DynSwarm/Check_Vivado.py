import os
import shutil
import subprocess

def test_file_update():
    current_dir = os.path.dirname(os.path.abspath(__file__))
    source_dir = os.path.join(current_dir, "program_test")
    target_dir = os.path.join(current_dir, "action_program_test_vivado")
    
    if os.path.exists(target_dir):
        shutil.rmtree(target_dir)
    
    shutil.copytree(source_dir, target_dir)
    return 0

def equal_check(vivado_command, fault_folder):
    base_dir = os.path.join(os.getcwd(), "action_program_test_vivado")
    fault_number = 0
    timeout_number = 0

    os.makedirs(fault_folder, exist_ok=True)

    for folder in os.listdir(base_dir):
        folder_path = os.path.join(base_dir, folder, "equiv_identity_vivado")

        if os.path.isdir(folder_path) and "rtl.v" in os.listdir(folder_path):
            vivado_tcl_script = f"""
                read_verilog rtl.v
                {vivado_command}
                write_verilog -force syn_vivado.v
            """
            tcl_script_path = os.path.join(folder_path, "synth.tcl")
            with open(tcl_script_path, 'w') as f:
                f.write(vivado_tcl_script)

            vivado_cli_command = f"vivado -mode batch -source {tcl_script_path}"
            
            try:
                process = subprocess.run(
                    vivado_cli_command, 
                    shell=True, 
                    cwd=folder_path, 
                    stdout=subprocess.PIPE, 
                    stderr=subprocess.PIPE,
                    check=True
                )
            except subprocess.CalledProcessError as e:
                fault_number += 1
                shutil.copytree(os.path.join(base_dir, folder), os.path.join(fault_folder, folder))
                continue

            syn_vivado_path = os.path.join(folder_path, "syn_vivado.v")
            if not os.path.exists(syn_vivado_path):
                fault_number += 1
                shutil.copytree(os.path.join(base_dir, folder), os.path.join(fault_folder, folder))
                continue
            
            with open(syn_vivado_path, 'r') as file:
                file_content = file.read()
            file_content = file_content.replace('top', 'top_2')
            with open(syn_vivado_path, 'w') as file:
                file.write(file_content)

            sby_command = "sby proof.sby"
            result = subprocess.run(sby_command, shell=True, cwd=folder_path, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
            
            proof_folder = os.path.join(folder_path, "proof")
            if os.path.isdir(proof_folder):
                logfile_path = os.path.join(proof_folder, "logfile.txt")
                if os.path.exists(logfile_path):
                    with open(logfile_path, "r") as logfile:
                        log_content = logfile.read()
                        if "ERROR" in log_content:
                            if "timeout" in log_content:
                                timeout_number += 1
                            else:
                                fault_number += 1
                                shutil.copytree(os.path.join(base_dir, folder), os.path.join(fault_folder, folder))
            else:
                fault_number += 1
                shutil.copytree(os.path.join(base_dir, folder), os.path.join(fault_folder, folder))

    return fault_number

def fault_chenk(new_episode, command_sequence):
    test_file_update()
    os.makedirs(f"fault_collection_vivado/{new_episode}", exist_ok=True)
    fault_folder = f"fault_collection_vivado/{new_episode}"
    fault_number = equal_check(command_sequence, fault_folder)
    return fault_number

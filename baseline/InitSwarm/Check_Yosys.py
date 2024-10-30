import os
import shutil
import subprocess

def test_file_update():
    current_dir = os.path.dirname(os.path.abspath(__file__))
    source_dir = os.path.join(current_dir, "program_test")
    target_dir = os.path.join(current_dir, "action_program_test_yosys")
    
    if os.path.exists(target_dir):
        shutil.rmtree(target_dir)
    
    shutil.copytree(source_dir, target_dir)
    return 0

def equal_check(command_sequence, fault_folder):
    base_dir = os.path.join(os.getcwd(), "action_program_test_yosys")
    fault_number = 0

    os.makedirs(fault_folder, exist_ok=True)

    for folder in os.listdir(base_dir):
        folder_path = os.path.join(base_dir, folder, "equiv_identity_yosys")

        if os.path.isdir(folder_path) and "rtl.v" in os.listdir(folder_path):
            yosys_command = [
                "yosys", "-p", 
                f"read_verilog rtl.v; hierarchy; {command_sequence} write_verilog syn_yosys.v"
            ]
            
            try:
                process = subprocess.run(
                    yosys_command, 
                    cwd=folder_path, 
                    stdout=subprocess.PIPE, 
                    stderr=subprocess.PIPE,
                    check=True,
                    env=os.environ
                )
            except subprocess.CalledProcessError:
                fault_number += 1
                fault_target_path = os.path.join(fault_folder, folder)
                if os.path.exists(fault_target_path):
                    shutil.rmtree(fault_target_path)
                shutil.copytree(os.path.join(base_dir, folder), fault_target_path)
                continue

            syn_yosys_path = os.path.join(folder_path, "syn_yosys.v")
            if not os.path.exists(syn_yosys_path):
                fault_number += 1
                fault_target_path = os.path.join(fault_folder, folder)
                if os.path.exists(fault_target_path):
                    shutil.rmtree(fault_target_path)
                shutil.copytree(os.path.join(base_dir, folder), fault_target_path)
                continue
            
            with open(syn_yosys_path, 'r') as file:
                file_content = file.read()
            file_content = file_content.replace('top', 'top_2')
            with open(syn_yosys_path, 'w') as file:
                file.write(file_content)

            sby_command = ["sby", "proof.sby"]
            proof_sby_path = os.path.join(folder_path, "proof.sby")
            if os.path.exists(proof_sby_path):
                result = subprocess.run(sby_command, cwd=folder_path, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
            else:
                fault_number += 1
                continue
            
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
    os.makedirs("fault_collection_yosys", exist_ok=True)
    os.makedirs(f"fault_collection_yosys/{new_episode}", exist_ok=True)
    fault_folder = f"fault_collection_yosys/{new_episode}"
    fault_number = equal_check(command_sequence, fault_folder)
    return fault_number

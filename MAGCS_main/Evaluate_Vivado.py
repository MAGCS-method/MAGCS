import os
import shutil
import subprocess

def test_file_update():

    current_dir = os.path.dirname(os.path.abspath(__file__))
    print(current_dir)
    

    source_dir = os.path.join(current_dir, "program_test")
    print(source_dir)
    

    target_dir = os.path.join(current_dir, "action_program_test_vivado")
    print(target_dir)
    

    if os.path.exists(target_dir):
        shutil.rmtree(target_dir)
    

    shutil.copytree(source_dir, target_dir)
    print("copied")

    return 0

def equal_check(vivado_command, timeout_folder, fault_folder):

    base_dir = os.path.join(os.getcwd(), "action_program_test_vivado")
    fault_number = 0
    timeout_number = 0


    os.makedirs(timeout_folder, exist_ok=True)
    os.makedirs(fault_folder, exist_ok=True)


    for folder in os.listdir(base_dir):
        folder_path = os.path.join(base_dir, folder, "equiv_identity_vivado")
        print(f"Current folder path: {folder_path}")


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
            print(f"Executing Vivado command in {folder_path}: {vivado_cli_command}")
            
            try:

                process = subprocess.run(
                    vivado_cli_command, 
                    shell=True, 
                    cwd=folder_path, 
                    stdout=subprocess.PIPE, 
                    stderr=subprocess.PIPE,
                    check=True
                )
                print("Vivado command executed successfully.")
                print("Standard Output:", process.stdout.decode())
                print("Standard Error:", process.stderr.decode())
            except subprocess.CalledProcessError as e:
                print("Vivado command failed.")
                print("Standard Output:", e.stdout.decode())
                print("Standard Error:", e.stderr.decode())
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
            print("Modified syn_vivado.v: 'top' changed to 'top_2'.")

            sby_command = "sby proof.sby"
            print(f"Executing SBY command in {folder_path}: {sby_command}")
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
                                shutil.copytree(os.path.join(base_dir, folder), os.path.join(timeout_folder, folder))
                            else:
                                fault_number += 1
                                shutil.copytree(os.path.join(base_dir, folder), os.path.join(fault_folder, folder))
            else:
                fault_number += 1
                shutil.copytree(os.path.join(base_dir, folder), os.path.join(fault_folder, folder))

    print(f"Fault number: {fault_number}")
    print(f"Timeout number: {timeout_number}")

    return fault_number, timeout_number

def Evaluate_main(new_episode,command_sequence):
    test_file_update()
    print(new_episode)
    print(command_sequence)
    os.makedirs(f"timeout_collection_vivado/{new_episode}", exist_ok=True)
    os.makedirs(f"fault_collection_vivado/{new_episode}", exist_ok=True)
    timeout_folder = f"timeout_collection_vivado/{new_episode}"
    fault_folder = f"fault_collection_vivado/{new_episode}"
    print(timeout_folder)
    print(fault_folder)
    fault_number, timeout_number =equal_check(command_sequence,timeout_folder,fault_folder)

    print(f"Fault number: {fault_number}")
    print(f"Timeout number: {timeout_number}")

    return fault_number, timeout_number


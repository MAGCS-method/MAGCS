import os
import shutil
import subprocess

def test_file_update():

    current_dir = os.path.dirname(os.path.abspath(__file__))
    print(current_dir)
    

    source_dir = os.path.join(current_dir, "program_test")
    print(source_dir)
    

    target_dir = os.path.join(current_dir, "action_program_test_yosys")
    print(target_dir)
    

    if os.path.exists(target_dir):
        shutil.rmtree(target_dir)
    

    shutil.copytree(source_dir, target_dir)
    print("copied")

    return 0

def equal_check(command_sequence, timeout_folder, fault_folder):

    base_dir = os.path.join(os.getcwd(), "action_program_test_yosys")
    fault_number = 0
    timeout_number = 0


    os.makedirs(timeout_folder, exist_ok=True)
    os.makedirs(fault_folder, exist_ok=True)


    for folder in os.listdir(base_dir):
        folder_path = os.path.join(base_dir, folder, "equiv_identity_yosys")
        print(f"Current folder path: {folder_path}")


        if os.path.isdir(folder_path) and "rtl.v" in os.listdir(folder_path):
            yosys_command = [
                "yosys", "-p", 
                f"read_verilog rtl.v; {command_sequence} write_verilog syn_yosys.v"
            ]
            print(f"Executing Yosys command in {folder_path}: {' '.join(yosys_command)}")
            
            try:
  
                process = subprocess.run(
                    yosys_command, 
                    cwd=folder_path, 
                    stdout=subprocess.PIPE, 
                    stderr=subprocess.PIPE,
                    check=True,
                    env=os.environ  
                )
                print("Yosys command executed successfully.")
                print("Standard Output:", process.stdout.decode())
                print("Standard Error:", process.stderr.decode())
            except subprocess.CalledProcessError as e:
                print("Yosys command failed.")
                fault_number += 1
                fault_target_path = os.path.join(fault_folder, folder)
                if os.path.exists(fault_target_path):
                    shutil.rmtree(fault_target_path)
                shutil.copytree(os.path.join(base_dir, folder), fault_target_path)
                continue  

            syn_yosys_path = os.path.join(folder_path, "syn_yosys.v")
            if not os.path.exists(syn_yosys_path):
                print(f"{syn_yosys_path} not found after Yosys command.")
                fault_number += 1
                fault_target_path = os.path.join(fault_folder, folder)
                if os.path.exists(fault_target_path):
                    shutil.rmtree(fault_target_path)
                shutil.copytree(os.path.join(base_dir, folder), fault_target_path)
                continue
            
            print(f"Modifying {syn_yosys_path} to replace 'top' with 'top_2'.")
            with open(syn_yosys_path, 'r') as file:
                file_content = file.read()
            file_content = file_content.replace('top', 'top_2')
            with open(syn_yosys_path, 'w') as file:
                file.write(file_content)
            print(f"Modified syn_yosys.v: 'top' changed to 'top_2' in {syn_yosys_path}.")

            sby_command = ["sby", "proof.sby"]
            proof_sby_path = os.path.join(folder_path, "proof.sby")
            if os.path.exists(proof_sby_path):
                print(f"Executing SBY command in {folder_path}: {' '.join(sby_command)}")
                result = subprocess.run(sby_command, cwd=folder_path, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
                print("SBY command executed successfully.")
                print("SBY Output:", result.stdout.decode())
                print("SBY Error:", result.stderr.decode())
            else:
                print(f"proof.sby not found in {folder_path}")
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
                                shutil.copytree(os.path.join(base_dir, folder), os.path.join(timeout_folder, folder))
                            else:
                                fault_number += 1
                                shutil.copytree(os.path.join(base_dir, folder), os.path.join(fault_folder, folder))
            else:
                print(f"{proof_folder} not generated after SBY command.")
                fault_number += 1
                shutil.copytree(os.path.join(base_dir, folder), os.path.join(fault_folder, folder))

    print(f"Fault number: {fault_number}")
    print(f"Timeout number: {timeout_number}")

    return fault_number, timeout_number




def Evaluate_main(new_episode,command_sequence):
    test_file_update()
    print(new_episode)
    print(command_sequence)

    os.makedirs("timeout_collection_yosys", exist_ok=True)
    os.makedirs("fault_collection_yosys", exist_ok=True)

    os.makedirs(f"timeout_collection_yosys/{new_episode}", exist_ok=True)
    os.makedirs(f"fault_collection_yosys/{new_episode}", exist_ok=True)

    timeout_folder = f"timeout_collection_yosys/{new_episode}"
    fault_folder = f"fault_collection_yosys/{new_episode}"
    print(timeout_folder)
    print(fault_folder)
    fault_number, timeout_number =equal_check(command_sequence,timeout_folder,fault_folder)

    print(f"Fault number: {fault_number}")
    print(f"Timeout number: {timeout_number}")

    return fault_number, timeout_number



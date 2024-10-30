import os
import pandas as pd
import shutil

selected_features_path = "/rtl_set/selected_features.csv"
data = pd.read_csv(selected_features_path)

output_dir = "/MAGCS/program_set/output"
destination_dir = "/MAGCS/program_test"

os.makedirs(destination_dir, exist_ok=True)

for file_name in data["file"]:
    folder_name = os.path.splitext(file_name)[0]
    source_folder = os.path.join(output_dir, folder_name)
    
    if os.path.isdir(source_folder):
        destination_folder = os.path.join(destination_dir, folder_name)
        
        shutil.copytree(source_folder, destination_folder)
        print(f"Copied {source_folder} to {destination_folder}")
    else:
        print(f"Folder {source_folder} does not exist.")

print("All specified folders have been copied.")

import os
import pandas as pd
import ALL_get_feature
import time

start_time = time.time()
feature_data = [] 

def read_file_and_extract_features(file_path):
    for root, dirs, files in os.walk(file_path):
        for file in files:
            if file.endswith(".v"):
                full_file_path = os.path.join(root, file)
                features = ALL_get_feature.main(full_file_path)
                print(f"Extracted features for {file}: {features}")

                row = [file] + list(features.values())
                feature_data.append(row)

    if feature_data:
        columns = ["file"] + list(features.keys()) 
        feature_df = pd.DataFrame(feature_data, columns=columns)
        csv_path = os.path.join(file_path, "feature.csv")  
        feature_df.to_csv(csv_path, index=False)

    print(f"Time taken: {time.time() - start_time:.2f} seconds.")

def main(file_path):
    read_file_and_extract_features(file_path)

if __name__ == "__main__":
    file_path = "/rtl_set"
    main(file_path)

import pandas as pd
import numpy as np
from sklearn.metrics.pairwise import cosine_similarity
import random


file_path = "/feature.csv"
data = pd.read_csv(file_path)

features = data.iloc[:, 1:].values

random.seed(42)  
initial_index = random.choice(range(len(features)))
selected_indices = [initial_index]

def cosine_distance(row, other_rows):
    return 1 - cosine_similarity([row], other_rows).flatten()

for _ in range(1999):  
    remaining_indices = list(set(range(len(features))) - set(selected_indices))
    current_features = np.sum(features[selected_indices], axis=0)  
    distances = {idx: cosine_distance(current_features, [features[idx]])[0] for idx in remaining_indices}
    
    next_index = max(distances, key=distances.get)
    selected_indices.append(next_index)

selected_rows = data.iloc[selected_indices]
print("Selected rows:")
print(selected_rows)


selected_rows.to_csv("/selected_features.csv", index=False)

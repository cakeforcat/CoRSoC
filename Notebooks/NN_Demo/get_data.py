import os
import numpy as np

def normalize_array(arr):

  # find the minimum and maximum values in the array.
  min_val = -2
  max_val = 2

  normalized_arr = 256 * (arr - min_val) / (max_val - min_val) - 128

  return normalized_arr

def get_mlp_data():
    folder = "/home/xilinx/jupyter_notebooks/data"

    files = os.listdir(folder)

    filtered_files = files

    filtered_files.remove('.ipynb_checkpoints')

    factor = 2
    noFiles = len(filtered_files)

    arr = np.ndarray((int(7800*noFiles/factor),1,128*factor*2), float)
    labels = np.ndarray((int(7800*noFiles/factor),4))

    i = 0;
    for idx, npz in enumerate(filtered_files):

        a = np.load(os.path.join(folder, npz))

        start_idx = (idx*int(7800/factor)) if idx <20 else (idx)*int(7800/factor)-1
        end_idx = (1+idx)*int(7800/factor) if idx <20 else (1+idx)*int(7800/factor)-1

        # print(f"start index: {start_idx}, end index {end_idx}, activate channels: {a['active_channels']}")

        reshaped_arr = a["samples"].reshape(int(7800/factor),1, 128*factor)

        float_array = np.ndarray((int(7800/factor),1, 128*factor*2), float)
        for j in range(reshaped_arr.shape[0]):
            float_array[j] = np.ravel((reshaped_arr[j].real, reshaped_arr[j].imag),'F')


        arr[start_idx:end_idx] = float_array
        labels[start_idx:end_idx] = np.tile(a["active_channels"],  (int(7800/factor), 1))

        i+=1
        if i >= noFiles:
            break

    normalized_array = normalize_array(arr)
    return normalized_array, labels

def get_cnn_data():
    folder = "/home/xilinx/jupyter_notebooks/data"

    files = os.listdir(folder)

    filtered_files = files

    filtered_files.remove('.ipynb_checkpoints')

    factor = 2
    noFiles = len(filtered_files)

    arr = np.ndarray((int(7800*noFiles/factor),1,16,16,2), float)
    labels = np.ndarray((int(7800*noFiles/factor),4))

    i = 0;
    for idx, npz in enumerate(filtered_files):

        a = np.load(os.path.join(folder, npz))

        start_idx = (idx*int(7800/factor)) if idx <20 else (idx)*int(7800/factor)-1
        end_idx = (1+idx)*int(7800/factor) if idx <20 else (1+idx)*int(7800/factor)-1

        # print(f"start index: {start_idx}, end index {end_idx}, activate channels: {a['active_channels']}")

        reshaped_arr = a["samples"].reshape(int(7800/factor), 1,16,16)

        float_array = np.stack((reshaped_arr.real, reshaped_arr.imag), axis=4) 


        arr[start_idx:end_idx] = float_array
        labels[start_idx:end_idx] = np.tile(a["active_channels"],  (int(7800/factor), 1))

        i+=1
        if i >= noFiles:
            break

    normalized_array = normalize_array(arr)
    return normalized_array, labels
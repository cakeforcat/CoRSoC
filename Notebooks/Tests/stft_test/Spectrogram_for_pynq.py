import numpy as np
import matplotlib.pyplot as plt
import scipy.io

# Load .mat file
mat_data = scipy.io.loadmat('C:/Users/andre/CoRSoC/IPs/Stimulus/PLUTO_TEST_DATA.mat')
print(mat_data.keys())

data = mat_data['data_samples'][0]

# Define parameters
fs = 16e6
N = 2048  # FFT size
num_samples = len(data)
Num_Segments = num_samples // N

# Prepare axes
n = np.arange(N)
f_axis_1N = (n / N * fs) / 1e6  # Frequency axis: 0 to fs in MHz
f_axis_1N_ = (np.arange(-N/2, N/2) * (fs / N)) / 1e6  # Frequency axis: -fs/2 to fs/2 in MHz
t_axis_1N = np.linspace(0, num_samples / fs, Num_Segments) * 1e3  # Time axis in ms

# Create frequency and time axis matrices (if needed)
f_axis = np.tile(f_axis_1N, (Num_Segments, 1))
f_axis_ = np.tile(f_axis_1N_, (Num_Segments, 1))

# Initialize arrays for spectrograms
Data = np.zeros((Num_Segments, N), dtype=float)
Data_shift = np.zeros_like(Data)
t_axis = np.zeros(num_samples)

for i in range(Num_Segments):
    index = slice(i * N, (i + 1) * N)
    t_axis[index] = t_axis_1N[i]
    fft_result = np.abs(np.fft.fft(data[index], n=N))
    Data[i, :] = 20 * np.log10(fft_result + 1e-20)  # Avoid log(0)
    Data_shift[i, :] = np.fft.fftshift(Data[i, :])

# Clamp values to avoid very low dB values
Data[Data < -128] = -128
Data_shift[Data_shift < -128] = -128

# Plot regular spectrogram
plt.figure()
plt.imshow(Data, aspect='auto',
           extent=[f_axis_1N[0], f_axis_1N[-1], t_axis_1N[-1], t_axis_1N[0]],
           vmin=-127, vmax=np.max(Data), cmap='jet')
plt.title('Spectrogram')
plt.xlabel('Frequency (MHz)')
plt.ylabel('Time (ms)')
plt.colorbar(label='Magnitude (dB)')

# Plot fftshifted spectrogram
plt.figure()
plt.imshow(Data_shift, aspect='auto',
           extent=[f_axis_1N_[0], f_axis_1N_[-1], t_axis_1N[-1], t_axis_1N[0]],
           vmin=-127, vmax=np.max(Data_shift), cmap='jet')
plt.title('Spectrogram (FFT Shifted)')
plt.xlabel('Frequency (MHz)')
plt.ylabel('Time (ms)')
plt.colorbar(label='Magnitude (dB)')

plt.show()

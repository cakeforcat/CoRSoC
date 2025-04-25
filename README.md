# CoRSoC
Cognitive Radio System on Chip

Cognitive radios (CRs) can dynamically switch the frequency they broadcast on, helping alleviate the overuse and inefficient allocation of frequency spectra that plague existing wireless networks. In this project, a proof-of-concept CR was created for use on Radio Frequency System on Chip (RFSoC) devices. RFSoCs are designed specifically for radio applications as they come with dedicated RF front-end hardware, which enables the Gigahertz sampling rates required for high-frequency radio. Our design uses a loop-back structure to transmit and receive signals on a single board, as well as all required processing. The cognitive portion was implemented using a variety of spectrum sensing paradigms, including machine learning as well as more established techniques. These are used within CRs to determine the most optimal carrier frequency for transmission. 

## Transmitter & Receiver
The IP for the transmitter and receiver were adapted from the QPSK demo from strathSDR, the fork with the modifications completed are available at link here.

## Legacy decimators
Our initial design caused a 64MHz output with 8 samples per cycle. This meant that two IP designs were developed, SSR decimator (located in /IPs/Decimator_SSR) and Slicer Decimator (located in /IPs/Legacy_Slicer_Decimator), to reduce to 1 sample per cycle. Further Decimator (located in /IPs/Legacy_Further_Decimator) reduced the sampling rate to 16MHz. Each location has an associated startup file with parameters, etc.

## STFT
The STFT produces the current spectrum and spectrogram of the RF environment, to provide visual aid to users as well as showing the transmission of the CoRSoC. The IP core was developed using 16 MHz sampling rate, initially with test tones (located in /IPs/STFT/16MHz_test_tone) then with ADALM-PLUTO stimulus (located in /IPs/STFT/ADALM). Both IPs have scripts which produce a spectrogram, and some spectras. The ADALM-PLUTO data has extra scripts ‘*_7bits’ and ‘*_max_dB’ since this was for testing purposes to provide evidence for using 8 bits for the final output. Each location has an associated startup file with parameters, etc.

## ADALM-PLUTO Test Stimulus
ADALM-PLUTO data is valuable to test IP cores with the data it will encounter, must handle and cope with when deployed on the ZCU111. The extract_test_data script (located in IPs/Stimulus) extracted data and the Stimulus IP (located in IPs/Stimulus) provided IP core access to real world data in simulation environment.

## Legacy Test Stimulus
A test stimulus was created to aid testing of IP cores (located in /IPs/Test/ram_re_ip), with a Constant_Stream IP (located in /IPs/Test/constant_ip) used when Jupyter notebook and Vivado weren’t working together. There are 3 associated IPI designs. The 1st is a ram_re and ram_im (use script for ram_re) stimulus with decimator and supporting infrastructure (located in /IPs/Test/dsp_dec_test), the 2nd includes a FIFO with no decimator and no ram_im  but debug via System ILA (located in /IPIs/Test/dsp_fifo_test), and the 3rd includes a Constant_Stream with debug via System ILA (located in /IPIs/Test/dsp_constant_stim_test) though the associated bootloader has not been created. 


## Spectrum Sensing

### Energy Detection

### Matched Filter

### CNN
A NN was implemented directly in the PL for spectrum sensingusing Brevitas and FINN. A model was originally designed with full precision, with intention apply post training quantization. While this was unsuccesful work done attempting this is shown in PTQ. Quantization aware training however was succesful and its work is in QAT. Three models were developed with Brevitas. Two small ones capable of running on a PYNQ-Z2, and one larger one with the original optimal design to be used as part of the larger CR.

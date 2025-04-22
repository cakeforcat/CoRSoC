# CoRSoC
Cognitive Radio System on Chip

Cognitive radios (CRs) can dynamically switch the frequency they broadcast on, helping alleviate the overuse and inefficient allocation of frequency spectra that plague existing wireless networks. In this project, a proof-of-concept CR was created for use on Radio Frequency System on Chip (RFSoC) devices. RFSoCs are designed specifically for radio applications as they come with dedicated RF front-end hardware, which enables the Gigahertz sampling rates required for high-frequency radio. Our design uses a loop-back structure to transmit and receive signals on a single board, as well as all required processing. The cognitive portion was implemented using a variety of spectrum sensing paradigms, including machine learning as well as more established techniques. These are used within CRs to determine the most optimal carrier frequency for transmission. 

## Transmitter & Receiver
The IP for the transmitter and receiver were adapted from the QPSK demo from strathSDR, the fork with the modifications completed are available at link here.

## STFT

## Spectrum Sensing

### Energy Detection

### Matched Filter

### CNN
A NN was implemented directly in the PL for spectrum sensingusing Brevitas and FINN. A model was originally designed with full precision, with intention apply post training quantization. While this was unsuccesful work done attempting this is shown in PTQ. Quantization aware training however was succesful and its work is in QAT. Three models were developed with Brevitas. Two small ones capable of running on a PYNQ-Z2, and one larger one with the original optimal design to be used as part of the larger CR.

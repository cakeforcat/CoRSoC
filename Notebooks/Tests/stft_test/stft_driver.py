class DataInspector(DefaultIP):
    def __init__
    # Initialize stft_buffer
     self.stft_buff = allocate(shape=2048, ), dtype=np.int16)
    
    def get_stft_frame(self):
        """Get a single buffer of frequency domain data from the stft
        """
        self.axi_dma_1.recvchannel.transfer(self.stft_buff)
        self.axi_dma_1.recvchannel.wait()
        a_stft_frame = np.array(self.stft_buff, dtype=single)
    return a_stft_frame
    
class QPSKRx(DefaultHierarchy):
    def get_stft_data(self):
        return self.axi_dma_1.get_stft_frame(self.axi_dma_1)
   
def _rx_display_generator(self):
    stft_domains = {'Time', 'Frequency'}
    im = Image.fromarray(np.uint8(aframe[:, :, 0]*255/aframe.max()))
    im
    '''plot_stft_frame = self.plot_group(
        'stft', stft_domains, self.qpsk_rx.get_stft_data, fs=16e6
        '''
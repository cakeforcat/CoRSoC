load C:/Xilinx/Vivado/2024.1/lib/win64.o/librdi_dsp_tcltasks.dll
cd {C:/Users/andre/CoRSoC/IPs/Decimator/wavedata}
dsp_wave_convert {Decimator.wfv} 
set_param project.waveformStandaloneMode 1
start_gui
current_fileset
dsp_register_design_manager
dsp_open_waveform {Decimator.wdb}
open_wave_config {Decimator.wcfg}
source C:/Xilinx/Vivado/2024.1/scripts/sysgen/tcl/SgPaSlaveInterp.tcl

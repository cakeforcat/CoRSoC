# Note: This file is produced automatically, and will be overwritten the next
# time you press "Generate" in System Generator. 
#


namespace eval ::xilinx::dsp::planaheaddriver {
	set VHDL2008Support 1
	set Compilation {HDL Netlist}
	set CompilationFlow {STANDARD}
	set DSPDevice {xczu28dr}
	set DSPFamily {zynquplus}
	set DSPPackage {ffvg1517}
	set DSPSpeed {-2-e}
	set FPGAClockPeriod 0.015625
	set GenerateTestBench 0
	set HDLLanguage {vhdl}
	set IPOOCCacheRootPath {C:/Users/andre/AppData/Local/Xilinx/Sysgen/SysgenVivado/win64.o/ip}
	set ImplStrategyName {Vivado Implementation Defaults}
	set Project {dut_ip}
	set ProjectFiles {
		{{conv_pkg.vhd} -lib {xil_defaultlib}}
		{{synth_reg.vhd} -lib {xil_defaultlib}}
		{{synth_reg_w_init.vhd} -lib {xil_defaultlib}}
		{{srl17e.vhd} -lib {xil_defaultlib}}
		{{srl33e.vhd} -lib {xil_defaultlib}}
		{{synth_reg_reg.vhd} -lib {xil_defaultlib}}
		{{single_reg_w_init.vhd} -lib {xil_defaultlib}}
		{{xlclockdriver_rd.vhd} -lib {xil_defaultlib}}
		{{vivado_ip.tcl}}
		{{dut_ip_entity_declarations.vhd} -lib {xil_defaultlib}}
		{{dut_ip.vhd} -lib {xil_defaultlib}}
		{{dut_ip_clock.xdc}}
		{{dut_ip.xdc}}
	}
	set SimPeriod 1.95312e-09
	set SimTime 1.95313e-06
	set SimulationTime {215.64062500 ns}
	set SynthStrategyName {Vivado Synthesis Defaults}
	set SynthesisTool {Vivado}
	set TargetDir {C:/Users/andre/Year5/19520/IP/Input_Decimator/Potential/netlist/ip/DUT_IP/src}
	set TopLevelModule {dut_ip}
	set TopLevelSimulinkHandle 4.00183
	set VHDLLib {xil_defaultlib}
	set TopLevelPortInterface {}
	dict set TopLevelPortInterface s_axis_re_tvalid Name {s_axis_re_tvalid}
	dict set TopLevelPortInterface s_axis_re_tvalid Type Bool
	dict set TopLevelPortInterface s_axis_re_tvalid ArithmeticType xlUnsigned
	dict set TopLevelPortInterface s_axis_re_tvalid BinaryPoint 0
	dict set TopLevelPortInterface s_axis_re_tvalid Width 1
	dict set TopLevelPortInterface s_axis_re_tvalid DatFile {decimator_dut_ip_s_axis_re_tvalid.dat}
	dict set TopLevelPortInterface s_axis_re_tvalid IconText {s_axis_re_tvalid}
	dict set TopLevelPortInterface s_axis_re_tvalid Direction in
	dict set TopLevelPortInterface s_axis_re_tvalid Period 8
	dict set TopLevelPortInterface s_axis_re_tvalid Interface 0
	dict set TopLevelPortInterface s_axis_re_tvalid InterfaceName {}
	dict set TopLevelPortInterface s_axis_re_tvalid InterfaceString {DATA}
	dict set TopLevelPortInterface s_axis_re_tvalid ClockDomain {dut_ip}
	dict set TopLevelPortInterface s_axis_re_tvalid Locs {}
	dict set TopLevelPortInterface s_axis_re_tvalid IOStandard {}
	dict set TopLevelPortInterface s_axis_re_tdata Name {s_axis_re_tdata}
	dict set TopLevelPortInterface s_axis_re_tdata Type UFix_128_0
	dict set TopLevelPortInterface s_axis_re_tdata ArithmeticType xlUnsigned
	dict set TopLevelPortInterface s_axis_re_tdata BinaryPoint 0
	dict set TopLevelPortInterface s_axis_re_tdata Width 128
	dict set TopLevelPortInterface s_axis_re_tdata DatFile {decimator_dut_ip_s_axis_re_tdata.dat}
	dict set TopLevelPortInterface s_axis_re_tdata IconText {s_axis_re_tdata}
	dict set TopLevelPortInterface s_axis_re_tdata Direction in
	dict set TopLevelPortInterface s_axis_re_tdata Period 8
	dict set TopLevelPortInterface s_axis_re_tdata Interface 0
	dict set TopLevelPortInterface s_axis_re_tdata InterfaceName {}
	dict set TopLevelPortInterface s_axis_re_tdata InterfaceString {DATA}
	dict set TopLevelPortInterface s_axis_re_tdata ClockDomain {dut_ip}
	dict set TopLevelPortInterface s_axis_re_tdata Locs {}
	dict set TopLevelPortInterface s_axis_re_tdata IOStandard {}
	dict set TopLevelPortInterface s_axis_im_tvalid Name {s_axis_im_tvalid}
	dict set TopLevelPortInterface s_axis_im_tvalid Type Bool
	dict set TopLevelPortInterface s_axis_im_tvalid ArithmeticType xlUnsigned
	dict set TopLevelPortInterface s_axis_im_tvalid BinaryPoint 0
	dict set TopLevelPortInterface s_axis_im_tvalid Width 1
	dict set TopLevelPortInterface s_axis_im_tvalid DatFile {decimator_dut_ip_s_axis_im_tvalid.dat}
	dict set TopLevelPortInterface s_axis_im_tvalid IconText {s_axis_im_tvalid}
	dict set TopLevelPortInterface s_axis_im_tvalid Direction in
	dict set TopLevelPortInterface s_axis_im_tvalid Period 8
	dict set TopLevelPortInterface s_axis_im_tvalid Interface 0
	dict set TopLevelPortInterface s_axis_im_tvalid InterfaceName {}
	dict set TopLevelPortInterface s_axis_im_tvalid InterfaceString {DATA}
	dict set TopLevelPortInterface s_axis_im_tvalid ClockDomain {dut_ip}
	dict set TopLevelPortInterface s_axis_im_tvalid Locs {}
	dict set TopLevelPortInterface s_axis_im_tvalid IOStandard {}
	dict set TopLevelPortInterface s_axis_im_tdata Name {s_axis_im_tdata}
	dict set TopLevelPortInterface s_axis_im_tdata Type UFix_128_0
	dict set TopLevelPortInterface s_axis_im_tdata ArithmeticType xlUnsigned
	dict set TopLevelPortInterface s_axis_im_tdata BinaryPoint 0
	dict set TopLevelPortInterface s_axis_im_tdata Width 128
	dict set TopLevelPortInterface s_axis_im_tdata DatFile {decimator_dut_ip_s_axis_im_tdata.dat}
	dict set TopLevelPortInterface s_axis_im_tdata IconText {s_axis_im_tdata}
	dict set TopLevelPortInterface s_axis_im_tdata Direction in
	dict set TopLevelPortInterface s_axis_im_tdata Period 8
	dict set TopLevelPortInterface s_axis_im_tdata Interface 0
	dict set TopLevelPortInterface s_axis_im_tdata InterfaceName {}
	dict set TopLevelPortInterface s_axis_im_tdata InterfaceString {DATA}
	dict set TopLevelPortInterface s_axis_im_tdata ClockDomain {dut_ip}
	dict set TopLevelPortInterface s_axis_im_tdata Locs {}
	dict set TopLevelPortInterface s_axis_im_tdata IOStandard {}
	dict set TopLevelPortInterface out2 Name {out2}
	dict set TopLevelPortInterface out2 Type Bool
	dict set TopLevelPortInterface out2 ArithmeticType xlUnsigned
	dict set TopLevelPortInterface out2 BinaryPoint 0
	dict set TopLevelPortInterface out2 Width 1
	dict set TopLevelPortInterface out2 DatFile {}
	dict set TopLevelPortInterface out2 IconText {Delay}
	dict set TopLevelPortInterface out2 Direction out
	dict set TopLevelPortInterface out2 Period 8
	dict set TopLevelPortInterface out2 Interface 0
	dict set TopLevelPortInterface out2 InterfaceName {}
	dict set TopLevelPortInterface out2 InterfaceString {DATA}
	dict set TopLevelPortInterface out2 ClockDomain {dut_ip}
	dict set TopLevelPortInterface out2 Locs {}
	dict set TopLevelPortInterface out2 IOStandard {}
	dict set TopLevelPortInterface out3 Name {out3}
	dict set TopLevelPortInterface out3 Type UFix_32_0
	dict set TopLevelPortInterface out3 ArithmeticType xlUnsigned
	dict set TopLevelPortInterface out3 BinaryPoint 0
	dict set TopLevelPortInterface out3 Width 32
	dict set TopLevelPortInterface out3 DatFile {}
	dict set TopLevelPortInterface out3 IconText {Concat}
	dict set TopLevelPortInterface out3 Direction out
	dict set TopLevelPortInterface out3 Period 8
	dict set TopLevelPortInterface out3 Interface 0
	dict set TopLevelPortInterface out3 InterfaceName {}
	dict set TopLevelPortInterface out3 InterfaceString {DATA}
	dict set TopLevelPortInterface out3 ClockDomain {dut_ip}
	dict set TopLevelPortInterface out3 Locs {}
	dict set TopLevelPortInterface out3 IOStandard {}
	dict set TopLevelPortInterface s_axis_tready Name {s_axis_tready}
	dict set TopLevelPortInterface s_axis_tready Type Bool
	dict set TopLevelPortInterface s_axis_tready ArithmeticType xlUnsigned
	dict set TopLevelPortInterface s_axis_tready BinaryPoint 0
	dict set TopLevelPortInterface s_axis_tready Width 1
	dict set TopLevelPortInterface s_axis_tready DatFile {decimator_dut_ip_s_axis_tready.dat}
	dict set TopLevelPortInterface s_axis_tready IconText {s_axis_tready}
	dict set TopLevelPortInterface s_axis_tready Direction out
	dict set TopLevelPortInterface s_axis_tready Period 1
	dict set TopLevelPortInterface s_axis_tready Interface 0
	dict set TopLevelPortInterface s_axis_tready InterfaceName {}
	dict set TopLevelPortInterface s_axis_tready InterfaceString {DATA}
	dict set TopLevelPortInterface s_axis_tready ClockDomain {dut_ip}
	dict set TopLevelPortInterface s_axis_tready Locs {}
	dict set TopLevelPortInterface s_axis_tready IOStandard {}
	dict set TopLevelPortInterface clk Name {clk}
	dict set TopLevelPortInterface clk Type -
	dict set TopLevelPortInterface clk ArithmeticType xlUnsigned
	dict set TopLevelPortInterface clk BinaryPoint 0
	dict set TopLevelPortInterface clk Width 1
	dict set TopLevelPortInterface clk DatFile {}
	dict set TopLevelPortInterface clk Direction in
	dict set TopLevelPortInterface clk Period 1
	dict set TopLevelPortInterface clk Interface 6
	dict set TopLevelPortInterface clk InterfaceName {}
	dict set TopLevelPortInterface clk InterfaceString {CLOCK}
	dict set TopLevelPortInterface clk ClockDomain {dut_ip}
	dict set TopLevelPortInterface clk Locs {}
	dict set TopLevelPortInterface clk IOStandard {}
	dict set TopLevelPortInterface clk AssociatedInterfaces {}
	dict set TopLevelPortInterface clk AssociatedResets {}
	set MemoryMappedPort {}
}

source SgPaProject.tcl
::xilinx::dsp::planaheadworker::dsp_create_project
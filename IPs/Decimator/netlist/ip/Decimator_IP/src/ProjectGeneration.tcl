# Note: This file is produced automatically, and will be overwritten the next
# time you press "Generate" in System Generator. 
#


namespace eval ::xilinx::dsp::planaheaddriver {
	set VHDL2008Support 1
	set Compilation {IP Catalog}
	set CompilationFlow {IP}
	set CreateInterfaceDocument {off}
	set DSPDevice {xczu28dr}
	set DSPFamily {zynquplus}
	set DSPPackage {ffvg1517}
	set DSPSpeed {-2-e}
	set FPGAClockPeriod 0.015625
	set GenerateTestBench 0
	set HDLLanguage {vhdl}
	set IPOOCCacheRootPath {C:/Users/andre/AppData/Local/Xilinx/Sysgen/SysgenVivado/win64.o/ip}
	set IP_Auto_Infer {1}
	set IP_Categories_Text {Vitis Model Composer}
	set IP_Common_Repos {0}
	set IP_Description {}
	set IP_Dir {}
	set IP_Library_Text {VMC}
	set IP_LifeCycle_Menu {1}
	set IP_Logo {sysgen_icon_100.png}
	set IP_Name {Decimator}
	set IP_Revision {370275264}
	set IP_Socket_IP {0}
	set IP_Socket_IP_Proj_Path {}
	set IP_Vendor_Text {CoRSoC}
	set IP_Version_Text {1.0}
	set ImplStrategyName {Vivado Implementation Defaults}
	set PostProjectCreationProc {dsp_package_for_vivado_ip_integrator}
	set Project {decimator_ip}
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
		{{decimator_ip_dist_mem_gen_v8_0_i0_vivado.coe}}
		{{decimator_ip_time_division_multiplexer.v}}
		{{conv_pkg.v}}
		{{synth_reg.v}}
		{{synth_reg_w_init.v}}
		{{convert_type.v}}
		{{decimator_ip_time_division_multiplexer1.v}}
		{{conv_pkg.v}}
		{{synth_reg.v}}
		{{synth_reg_w_init.v}}
		{{convert_type.v}}
		{{decimator_ip_entity_declarations.vhd} -lib {xil_defaultlib}}
		{{decimator_ip.vhd} -lib {xil_defaultlib}}
		{{decimator_ip_clock.xdc}}
		{{decimator_ip.xdc}}
	}
	set SimPeriod 1.95312e-09
	set SimTime 3.51562e-05
	set SimulationTime {481.26562500 ns}
	set SynthStrategyName {Vivado Synthesis Defaults}
	set SynthesisTool {Vivado}
	set TargetDir {C:/Users/andre/CoRSoC/IPs/Decimator/netlist/ip/Decimator_IP/src}
	set TopLevelModule {decimator_ip}
	set TopLevelSimulinkHandle 8.00061
	set VHDLLib {xil_defaultlib}
	set TopLevelPortInterface {}
	dict set TopLevelPortInterface s_axis_re_tvalid Name {s_axis_re_tvalid}
	dict set TopLevelPortInterface s_axis_re_tvalid Type Bool
	dict set TopLevelPortInterface s_axis_re_tvalid ArithmeticType xlUnsigned
	dict set TopLevelPortInterface s_axis_re_tvalid BinaryPoint 0
	dict set TopLevelPortInterface s_axis_re_tvalid Width 1
	dict set TopLevelPortInterface s_axis_re_tvalid DatFile {decimator_decimator_ip_s_axis_re_tvalid.dat}
	dict set TopLevelPortInterface s_axis_re_tvalid IconText {s_axis_re_tvalid}
	dict set TopLevelPortInterface s_axis_re_tvalid Direction in
	dict set TopLevelPortInterface s_axis_re_tvalid Period 8
	dict set TopLevelPortInterface s_axis_re_tvalid Interface 0
	dict set TopLevelPortInterface s_axis_re_tvalid InterfaceName {}
	dict set TopLevelPortInterface s_axis_re_tvalid InterfaceString {DATA}
	dict set TopLevelPortInterface s_axis_re_tvalid ClockDomain {decimator_ip}
	dict set TopLevelPortInterface s_axis_re_tvalid Locs {}
	dict set TopLevelPortInterface s_axis_re_tvalid IOStandard {}
	dict set TopLevelPortInterface s_axis_re_tdata Name {s_axis_re_tdata}
	dict set TopLevelPortInterface s_axis_re_tdata Type UFix_128_0
	dict set TopLevelPortInterface s_axis_re_tdata ArithmeticType xlUnsigned
	dict set TopLevelPortInterface s_axis_re_tdata BinaryPoint 0
	dict set TopLevelPortInterface s_axis_re_tdata Width 128
	dict set TopLevelPortInterface s_axis_re_tdata DatFile {decimator_decimator_ip_s_axis_re_tdata.dat}
	dict set TopLevelPortInterface s_axis_re_tdata IconText {s_axis_re_tdata}
	dict set TopLevelPortInterface s_axis_re_tdata Direction in
	dict set TopLevelPortInterface s_axis_re_tdata Period 8
	dict set TopLevelPortInterface s_axis_re_tdata Interface 0
	dict set TopLevelPortInterface s_axis_re_tdata InterfaceName {}
	dict set TopLevelPortInterface s_axis_re_tdata InterfaceString {DATA}
	dict set TopLevelPortInterface s_axis_re_tdata ClockDomain {decimator_ip}
	dict set TopLevelPortInterface s_axis_re_tdata Locs {}
	dict set TopLevelPortInterface s_axis_re_tdata IOStandard {}
	dict set TopLevelPortInterface s_axis_im_tvalid Name {s_axis_im_tvalid}
	dict set TopLevelPortInterface s_axis_im_tvalid Type Bool
	dict set TopLevelPortInterface s_axis_im_tvalid ArithmeticType xlUnsigned
	dict set TopLevelPortInterface s_axis_im_tvalid BinaryPoint 0
	dict set TopLevelPortInterface s_axis_im_tvalid Width 1
	dict set TopLevelPortInterface s_axis_im_tvalid DatFile {decimator_decimator_ip_s_axis_im_tvalid.dat}
	dict set TopLevelPortInterface s_axis_im_tvalid IconText {s_axis_im_tvalid}
	dict set TopLevelPortInterface s_axis_im_tvalid Direction in
	dict set TopLevelPortInterface s_axis_im_tvalid Period 8
	dict set TopLevelPortInterface s_axis_im_tvalid Interface 0
	dict set TopLevelPortInterface s_axis_im_tvalid InterfaceName {}
	dict set TopLevelPortInterface s_axis_im_tvalid InterfaceString {DATA}
	dict set TopLevelPortInterface s_axis_im_tvalid ClockDomain {decimator_ip}
	dict set TopLevelPortInterface s_axis_im_tvalid Locs {}
	dict set TopLevelPortInterface s_axis_im_tvalid IOStandard {}
	dict set TopLevelPortInterface s_axis_im_tdata Name {s_axis_im_tdata}
	dict set TopLevelPortInterface s_axis_im_tdata Type UFix_128_0
	dict set TopLevelPortInterface s_axis_im_tdata ArithmeticType xlUnsigned
	dict set TopLevelPortInterface s_axis_im_tdata BinaryPoint 0
	dict set TopLevelPortInterface s_axis_im_tdata Width 128
	dict set TopLevelPortInterface s_axis_im_tdata DatFile {decimator_decimator_ip_s_axis_im_tdata.dat}
	dict set TopLevelPortInterface s_axis_im_tdata IconText {s_axis_im_tdata}
	dict set TopLevelPortInterface s_axis_im_tdata Direction in
	dict set TopLevelPortInterface s_axis_im_tdata Period 8
	dict set TopLevelPortInterface s_axis_im_tdata Interface 0
	dict set TopLevelPortInterface s_axis_im_tdata InterfaceName {}
	dict set TopLevelPortInterface s_axis_im_tdata InterfaceString {DATA}
	dict set TopLevelPortInterface s_axis_im_tdata ClockDomain {decimator_ip}
	dict set TopLevelPortInterface s_axis_im_tdata Locs {}
	dict set TopLevelPortInterface s_axis_im_tdata IOStandard {}
	dict set TopLevelPortInterface m_axis_tdata Name {m_axis_tdata}
	dict set TopLevelPortInterface m_axis_tdata Type UFix_32_0
	dict set TopLevelPortInterface m_axis_tdata ArithmeticType xlUnsigned
	dict set TopLevelPortInterface m_axis_tdata BinaryPoint 0
	dict set TopLevelPortInterface m_axis_tdata Width 32
	dict set TopLevelPortInterface m_axis_tdata DatFile {decimator_decimator_ip_m_axis_tdata.dat}
	dict set TopLevelPortInterface m_axis_tdata IconText {m_axis_tdata}
	dict set TopLevelPortInterface m_axis_tdata Direction out
	dict set TopLevelPortInterface m_axis_tdata Period 8
	dict set TopLevelPortInterface m_axis_tdata Interface 0
	dict set TopLevelPortInterface m_axis_tdata InterfaceName {}
	dict set TopLevelPortInterface m_axis_tdata InterfaceString {DATA}
	dict set TopLevelPortInterface m_axis_tdata ClockDomain {decimator_ip}
	dict set TopLevelPortInterface m_axis_tdata Locs {}
	dict set TopLevelPortInterface m_axis_tdata IOStandard {}
	dict set TopLevelPortInterface m_axis_tvalid Name {m_axis_tvalid}
	dict set TopLevelPortInterface m_axis_tvalid Type Bool
	dict set TopLevelPortInterface m_axis_tvalid ArithmeticType xlUnsigned
	dict set TopLevelPortInterface m_axis_tvalid BinaryPoint 0
	dict set TopLevelPortInterface m_axis_tvalid Width 1
	dict set TopLevelPortInterface m_axis_tvalid DatFile {decimator_decimator_ip_m_axis_tvalid.dat}
	dict set TopLevelPortInterface m_axis_tvalid IconText {m_axis_tvalid}
	dict set TopLevelPortInterface m_axis_tvalid Direction out
	dict set TopLevelPortInterface m_axis_tvalid Period 8
	dict set TopLevelPortInterface m_axis_tvalid Interface 0
	dict set TopLevelPortInterface m_axis_tvalid InterfaceName {}
	dict set TopLevelPortInterface m_axis_tvalid InterfaceString {DATA}
	dict set TopLevelPortInterface m_axis_tvalid ClockDomain {decimator_ip}
	dict set TopLevelPortInterface m_axis_tvalid Locs {}
	dict set TopLevelPortInterface m_axis_tvalid IOStandard {}
	dict set TopLevelPortInterface s_axis_tready Name {s_axis_tready}
	dict set TopLevelPortInterface s_axis_tready Type Bool
	dict set TopLevelPortInterface s_axis_tready ArithmeticType xlUnsigned
	dict set TopLevelPortInterface s_axis_tready BinaryPoint 0
	dict set TopLevelPortInterface s_axis_tready Width 1
	dict set TopLevelPortInterface s_axis_tready DatFile {decimator_decimator_ip_s_axis_tready.dat}
	dict set TopLevelPortInterface s_axis_tready IconText {s_axis_tready}
	dict set TopLevelPortInterface s_axis_tready Direction out
	dict set TopLevelPortInterface s_axis_tready Period 1
	dict set TopLevelPortInterface s_axis_tready Interface 0
	dict set TopLevelPortInterface s_axis_tready InterfaceName {}
	dict set TopLevelPortInterface s_axis_tready InterfaceString {DATA}
	dict set TopLevelPortInterface s_axis_tready ClockDomain {decimator_ip}
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
	dict set TopLevelPortInterface clk ClockDomain {decimator_ip}
	dict set TopLevelPortInterface clk Locs {}
	dict set TopLevelPortInterface clk IOStandard {}
	dict set TopLevelPortInterface clk AssociatedInterfaces {}
	dict set TopLevelPortInterface clk AssociatedResets {}
	set MemoryMappedPort {}
}

source SgPaProject.tcl
::xilinx::dsp::planaheadworker::dsp_create_project
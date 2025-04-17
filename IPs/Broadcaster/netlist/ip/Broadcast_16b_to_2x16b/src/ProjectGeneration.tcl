# Note: This file is produced automatically, and will be overwritten the next
# time you press "Generate" in System Generator. 
#


namespace eval ::xilinx::dsp::planaheaddriver {
	set VHDL2008Support 1
	set BoardFileVersion {1.4}
	set BoardName {zcu111}
	set BoardRevision {Rev 1.0}
	set BoardVendor {xilinx.com}
	set Compilation {IP Catalog}
	set CompilationFlow {IP}
	set CreateInterfaceDocument {off}
	set DSPDevice {xczu28dr}
	set DSPFamily {zynquplus}
	set DSPPackage {ffvg1517}
	set DSPSpeed {-2-e}
	set FPGAClockPeriod 5
	set GenerateTestBench 0
	set HDLLanguage {vhdl}
	set IPOOCCacheRootPath {C:/Users/cakef/AppData/Local/Xilinx/Sysgen/SysgenVivado/win64.o/ip}
	set IP_Auto_Infer {1}
	set IP_Categories_Text {Vitis Model Composer}
	set IP_Common_Repos {0}
	set IP_Description {}
	set IP_Dir {}
	set IP_Library_Text {VMC}
	set IP_LifeCycle_Menu {1}
	set IP_Logo {sysgen_icon_100.png}
	set IP_Name {Broadcast}
	set IP_Revision {375727276}
	set IP_Socket_IP {0}
	set IP_Socket_IP_Proj_Path {}
	set IP_Vendor_Text {CoRSoC}
	set IP_Version_Text {1.0}
	set ImplStrategyName {Vivado Implementation Defaults}
	set PostProjectCreationProc {dsp_package_for_vivado_ip_integrator}
	set Project {broadcast_16b_to_2x16b}
	set ProjectFiles {
		{{conv_pkg.vhd} -lib {xil_defaultlib}}
		{{synth_reg.vhd} -lib {xil_defaultlib}}
		{{synth_reg_w_init.vhd} -lib {xil_defaultlib}}
		{{srl17e.vhd} -lib {xil_defaultlib}}
		{{srl33e.vhd} -lib {xil_defaultlib}}
		{{synth_reg_reg.vhd} -lib {xil_defaultlib}}
		{{single_reg_w_init.vhd} -lib {xil_defaultlib}}
		{{xlclockdriver_rd.vhd} -lib {xil_defaultlib}}
		{{broadcast_16b_to_2x16b_entity_declarations.vhd} -lib {xil_defaultlib}}
		{{broadcast_16b_to_2x16b.vhd} -lib {xil_defaultlib}}
		{{broadcast_16b_to_2x16b_clock.xdc}}
		{{broadcast_16b_to_2x16b.xdc}}
	}
	set SimPeriod 7.8125e-09
	set SimTime 3.90625e-08
	set SimulationTime {230.00000000 ns}
	set SynthStrategyName {Vivado Synthesis Defaults}
	set SynthesisTool {Vivado}
	set TargetDir {C:/Users/cakef/Documents/GitHub/CoRSoC/IPs/Broadcaster/netlist/ip/Broadcast_16b_to_2x16b/src}
	set TopLevelModule {broadcast_16b_to_2x16b}
	set TopLevelSimulinkHandle 2.00171
	set VHDLLib {xil_defaultlib}
	set TopLevelPortInterface {}
	dict set TopLevelPortInterface s_axis_tvalid Name {s_axis_tvalid}
	dict set TopLevelPortInterface s_axis_tvalid Type Bool
	dict set TopLevelPortInterface s_axis_tvalid ArithmeticType xlUnsigned
	dict set TopLevelPortInterface s_axis_tvalid BinaryPoint 0
	dict set TopLevelPortInterface s_axis_tvalid Width 1
	dict set TopLevelPortInterface s_axis_tvalid DatFile {broadcast_broadcast_16b_to_2x16b_s_axis_tvalid.dat}
	dict set TopLevelPortInterface s_axis_tvalid IconText {s_axis_tvalid}
	dict set TopLevelPortInterface s_axis_tvalid Direction in
	dict set TopLevelPortInterface s_axis_tvalid Period 1
	dict set TopLevelPortInterface s_axis_tvalid Interface 0
	dict set TopLevelPortInterface s_axis_tvalid InterfaceName {}
	dict set TopLevelPortInterface s_axis_tvalid InterfaceString {DATA}
	dict set TopLevelPortInterface s_axis_tvalid ClockDomain {broadcast_16b_to_2x16b}
	dict set TopLevelPortInterface s_axis_tvalid Locs {}
	dict set TopLevelPortInterface s_axis_tvalid IOStandard {}
	dict set TopLevelPortInterface s_axis_tdata Name {s_axis_tdata}
	dict set TopLevelPortInterface s_axis_tdata Type UFix_16_0
	dict set TopLevelPortInterface s_axis_tdata ArithmeticType xlUnsigned
	dict set TopLevelPortInterface s_axis_tdata BinaryPoint 0
	dict set TopLevelPortInterface s_axis_tdata Width 16
	dict set TopLevelPortInterface s_axis_tdata DatFile {broadcast_broadcast_16b_to_2x16b_s_axis_tdata.dat}
	dict set TopLevelPortInterface s_axis_tdata IconText {s_axis_tdata}
	dict set TopLevelPortInterface s_axis_tdata Direction in
	dict set TopLevelPortInterface s_axis_tdata Period 1
	dict set TopLevelPortInterface s_axis_tdata Interface 0
	dict set TopLevelPortInterface s_axis_tdata InterfaceName {}
	dict set TopLevelPortInterface s_axis_tdata InterfaceString {DATA}
	dict set TopLevelPortInterface s_axis_tdata ClockDomain {broadcast_16b_to_2x16b}
	dict set TopLevelPortInterface s_axis_tdata Locs {}
	dict set TopLevelPortInterface s_axis_tdata IOStandard {}
	dict set TopLevelPortInterface m_1_axis_tready Name {m_1_axis_tready}
	dict set TopLevelPortInterface m_1_axis_tready Type Bool
	dict set TopLevelPortInterface m_1_axis_tready ArithmeticType xlUnsigned
	dict set TopLevelPortInterface m_1_axis_tready BinaryPoint 0
	dict set TopLevelPortInterface m_1_axis_tready Width 1
	dict set TopLevelPortInterface m_1_axis_tready DatFile {broadcast_broadcast_16b_to_2x16b_m_1_axis_tready.dat}
	dict set TopLevelPortInterface m_1_axis_tready IconText {m_1_axis_tready}
	dict set TopLevelPortInterface m_1_axis_tready Direction in
	dict set TopLevelPortInterface m_1_axis_tready Period 1
	dict set TopLevelPortInterface m_1_axis_tready Interface 0
	dict set TopLevelPortInterface m_1_axis_tready InterfaceName {}
	dict set TopLevelPortInterface m_1_axis_tready InterfaceString {DATA}
	dict set TopLevelPortInterface m_1_axis_tready ClockDomain {broadcast_16b_to_2x16b}
	dict set TopLevelPortInterface m_1_axis_tready Locs {}
	dict set TopLevelPortInterface m_1_axis_tready IOStandard {}
	dict set TopLevelPortInterface m_0_axis_tready Name {m_0_axis_tready}
	dict set TopLevelPortInterface m_0_axis_tready Type Bool
	dict set TopLevelPortInterface m_0_axis_tready ArithmeticType xlUnsigned
	dict set TopLevelPortInterface m_0_axis_tready BinaryPoint 0
	dict set TopLevelPortInterface m_0_axis_tready Width 1
	dict set TopLevelPortInterface m_0_axis_tready DatFile {broadcast_broadcast_16b_to_2x16b_m_0_axis_tready.dat}
	dict set TopLevelPortInterface m_0_axis_tready IconText {m_0_axis_tready}
	dict set TopLevelPortInterface m_0_axis_tready Direction in
	dict set TopLevelPortInterface m_0_axis_tready Period 1
	dict set TopLevelPortInterface m_0_axis_tready Interface 0
	dict set TopLevelPortInterface m_0_axis_tready InterfaceName {}
	dict set TopLevelPortInterface m_0_axis_tready InterfaceString {DATA}
	dict set TopLevelPortInterface m_0_axis_tready ClockDomain {broadcast_16b_to_2x16b}
	dict set TopLevelPortInterface m_0_axis_tready Locs {}
	dict set TopLevelPortInterface m_0_axis_tready IOStandard {}
	dict set TopLevelPortInterface m_0_axis_tdata Name {m_0_axis_tdata}
	dict set TopLevelPortInterface m_0_axis_tdata Type UFix_16_0
	dict set TopLevelPortInterface m_0_axis_tdata ArithmeticType xlUnsigned
	dict set TopLevelPortInterface m_0_axis_tdata BinaryPoint 0
	dict set TopLevelPortInterface m_0_axis_tdata Width 16
	dict set TopLevelPortInterface m_0_axis_tdata DatFile {broadcast_broadcast_16b_to_2x16b_m_0_axis_tdata.dat}
	dict set TopLevelPortInterface m_0_axis_tdata IconText {m_0_axis_tdata}
	dict set TopLevelPortInterface m_0_axis_tdata Direction out
	dict set TopLevelPortInterface m_0_axis_tdata Period 1
	dict set TopLevelPortInterface m_0_axis_tdata Interface 0
	dict set TopLevelPortInterface m_0_axis_tdata InterfaceName {}
	dict set TopLevelPortInterface m_0_axis_tdata InterfaceString {DATA}
	dict set TopLevelPortInterface m_0_axis_tdata ClockDomain {broadcast_16b_to_2x16b}
	dict set TopLevelPortInterface m_0_axis_tdata Locs {}
	dict set TopLevelPortInterface m_0_axis_tdata IOStandard {}
	dict set TopLevelPortInterface m_0_axis_tvalid Name {m_0_axis_tvalid}
	dict set TopLevelPortInterface m_0_axis_tvalid Type Bool
	dict set TopLevelPortInterface m_0_axis_tvalid ArithmeticType xlUnsigned
	dict set TopLevelPortInterface m_0_axis_tvalid BinaryPoint 0
	dict set TopLevelPortInterface m_0_axis_tvalid Width 1
	dict set TopLevelPortInterface m_0_axis_tvalid DatFile {broadcast_broadcast_16b_to_2x16b_m_0_axis_tvalid.dat}
	dict set TopLevelPortInterface m_0_axis_tvalid IconText {m_0_axis_tvalid}
	dict set TopLevelPortInterface m_0_axis_tvalid Direction out
	dict set TopLevelPortInterface m_0_axis_tvalid Period 1
	dict set TopLevelPortInterface m_0_axis_tvalid Interface 0
	dict set TopLevelPortInterface m_0_axis_tvalid InterfaceName {}
	dict set TopLevelPortInterface m_0_axis_tvalid InterfaceString {DATA}
	dict set TopLevelPortInterface m_0_axis_tvalid ClockDomain {broadcast_16b_to_2x16b}
	dict set TopLevelPortInterface m_0_axis_tvalid Locs {}
	dict set TopLevelPortInterface m_0_axis_tvalid IOStandard {}
	dict set TopLevelPortInterface m_1_axis_tdata Name {m_1_axis_tdata}
	dict set TopLevelPortInterface m_1_axis_tdata Type UFix_16_0
	dict set TopLevelPortInterface m_1_axis_tdata ArithmeticType xlUnsigned
	dict set TopLevelPortInterface m_1_axis_tdata BinaryPoint 0
	dict set TopLevelPortInterface m_1_axis_tdata Width 16
	dict set TopLevelPortInterface m_1_axis_tdata DatFile {broadcast_broadcast_16b_to_2x16b_m_1_axis_tdata.dat}
	dict set TopLevelPortInterface m_1_axis_tdata IconText {m_1_axis_tdata}
	dict set TopLevelPortInterface m_1_axis_tdata Direction out
	dict set TopLevelPortInterface m_1_axis_tdata Period 1
	dict set TopLevelPortInterface m_1_axis_tdata Interface 0
	dict set TopLevelPortInterface m_1_axis_tdata InterfaceName {}
	dict set TopLevelPortInterface m_1_axis_tdata InterfaceString {DATA}
	dict set TopLevelPortInterface m_1_axis_tdata ClockDomain {broadcast_16b_to_2x16b}
	dict set TopLevelPortInterface m_1_axis_tdata Locs {}
	dict set TopLevelPortInterface m_1_axis_tdata IOStandard {}
	dict set TopLevelPortInterface m_1_axis_tvalid Name {m_1_axis_tvalid}
	dict set TopLevelPortInterface m_1_axis_tvalid Type Bool
	dict set TopLevelPortInterface m_1_axis_tvalid ArithmeticType xlUnsigned
	dict set TopLevelPortInterface m_1_axis_tvalid BinaryPoint 0
	dict set TopLevelPortInterface m_1_axis_tvalid Width 1
	dict set TopLevelPortInterface m_1_axis_tvalid DatFile {broadcast_broadcast_16b_to_2x16b_m_1_axis_tvalid.dat}
	dict set TopLevelPortInterface m_1_axis_tvalid IconText {m_1_axis_tvalid}
	dict set TopLevelPortInterface m_1_axis_tvalid Direction out
	dict set TopLevelPortInterface m_1_axis_tvalid Period 1
	dict set TopLevelPortInterface m_1_axis_tvalid Interface 0
	dict set TopLevelPortInterface m_1_axis_tvalid InterfaceName {}
	dict set TopLevelPortInterface m_1_axis_tvalid InterfaceString {DATA}
	dict set TopLevelPortInterface m_1_axis_tvalid ClockDomain {broadcast_16b_to_2x16b}
	dict set TopLevelPortInterface m_1_axis_tvalid Locs {}
	dict set TopLevelPortInterface m_1_axis_tvalid IOStandard {}
	dict set TopLevelPortInterface s_axis_tready Name {s_axis_tready}
	dict set TopLevelPortInterface s_axis_tready Type Bool
	dict set TopLevelPortInterface s_axis_tready ArithmeticType xlUnsigned
	dict set TopLevelPortInterface s_axis_tready BinaryPoint 0
	dict set TopLevelPortInterface s_axis_tready Width 1
	dict set TopLevelPortInterface s_axis_tready DatFile {broadcast_broadcast_16b_to_2x16b_s_axis_tready.dat}
	dict set TopLevelPortInterface s_axis_tready IconText {s_axis_tready}
	dict set TopLevelPortInterface s_axis_tready Direction out
	dict set TopLevelPortInterface s_axis_tready Period 1
	dict set TopLevelPortInterface s_axis_tready Interface 0
	dict set TopLevelPortInterface s_axis_tready InterfaceName {}
	dict set TopLevelPortInterface s_axis_tready InterfaceString {DATA}
	dict set TopLevelPortInterface s_axis_tready ClockDomain {broadcast_16b_to_2x16b}
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
	dict set TopLevelPortInterface clk ClockDomain {broadcast_16b_to_2x16b}
	dict set TopLevelPortInterface clk Locs {}
	dict set TopLevelPortInterface clk IOStandard {}
	dict set TopLevelPortInterface clk AssociatedInterfaces {}
	dict set TopLevelPortInterface clk AssociatedResets {}
	set MemoryMappedPort {}
}

source SgPaProject.tcl
::xilinx::dsp::planaheadworker::dsp_create_project
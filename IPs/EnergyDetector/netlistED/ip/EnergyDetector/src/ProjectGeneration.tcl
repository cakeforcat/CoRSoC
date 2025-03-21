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
	set FPGAClockPeriod 0.0625
	set GenerateTestBench 0
	set HDLLanguage {vhdl}
	set IPOOCCacheRootPath {C:/Users/jojok/AppData/Local/Xilinx/Sysgen/SysgenVivado/win64.o/ip}
	set IP_Auto_Infer {1}
	set IP_Categories_Text {Vitis Model Composer}
	set IP_Common_Repos {0}
	set IP_Description {}
	set IP_Dir {}
	set IP_Library_Text {VMC}
	set IP_LifeCycle_Menu {1}
	set IP_Logo {sysgen_icon_100.png}
	set IP_Name {EnergyDetector}
	set IP_Revision {372260606}
	set IP_Socket_IP {0}
	set IP_Socket_IP_Proj_Path {}
	set IP_Vendor_Text {CoRSoC}
	set IP_Version_Text {1.0}
	set ImplStrategyName {Vivado Implementation Defaults}
	set PostProjectCreationProc {dsp_package_for_vivado_ip_integrator}
	set Project {energydetector}
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
		{{energydetector_dist_mem_gen_i0_vivado.coe}}
		{{energydetector_entity_declarations.vhd} -lib {xil_defaultlib}}
		{{energydetector.vhd} -lib {xil_defaultlib}}
		{{energydetector_clock.xdc}}
		{{energydetector.xdc}}
	}
	set SimPeriod 6.25e-08
	set SimTime 0.0001875
	set SimulationTime {387.56250000 ns}
	set SynthStrategyName {Vivado Synthesis Defaults}
	set SynthesisTool {Vivado}
	set TargetDir {C:/Users/jojok/Desktop/university/Project/netlistED/ip/EnergyDetector/src}
	set TopLevelModule {energydetector}
	set TopLevelSimulinkHandle 12.0009
	set VHDLLib {xil_defaultlib}
	set TopLevelPortInterface {}
	dict set TopLevelPortInterface s_axis_tvalid Name {s_axis_tvalid}
	dict set TopLevelPortInterface s_axis_tvalid Type Bool
	dict set TopLevelPortInterface s_axis_tvalid ArithmeticType xlUnsigned
	dict set TopLevelPortInterface s_axis_tvalid BinaryPoint 0
	dict set TopLevelPortInterface s_axis_tvalid Width 1
	dict set TopLevelPortInterface s_axis_tvalid DatFile {energydetect_energydetector_s_axis_tvalid.dat}
	dict set TopLevelPortInterface s_axis_tvalid IconText {s_axis_tvalid}
	dict set TopLevelPortInterface s_axis_tvalid Direction in
	dict set TopLevelPortInterface s_axis_tvalid Period 1
	dict set TopLevelPortInterface s_axis_tvalid Interface 0
	dict set TopLevelPortInterface s_axis_tvalid InterfaceName {}
	dict set TopLevelPortInterface s_axis_tvalid InterfaceString {DATA}
	dict set TopLevelPortInterface s_axis_tvalid ClockDomain {energydetector}
	dict set TopLevelPortInterface s_axis_tvalid Locs {}
	dict set TopLevelPortInterface s_axis_tvalid IOStandard {}
	dict set TopLevelPortInterface s_axis_tuser Name {s_axis_tuser}
	dict set TopLevelPortInterface s_axis_tuser Type UFix_32_0
	dict set TopLevelPortInterface s_axis_tuser ArithmeticType xlUnsigned
	dict set TopLevelPortInterface s_axis_tuser BinaryPoint 0
	dict set TopLevelPortInterface s_axis_tuser Width 32
	dict set TopLevelPortInterface s_axis_tuser DatFile {energydetect_energydetector_s_axis_tuser.dat}
	dict set TopLevelPortInterface s_axis_tuser IconText {s_axis_tuser}
	dict set TopLevelPortInterface s_axis_tuser Direction in
	dict set TopLevelPortInterface s_axis_tuser Period 1
	dict set TopLevelPortInterface s_axis_tuser Interface 0
	dict set TopLevelPortInterface s_axis_tuser InterfaceName {}
	dict set TopLevelPortInterface s_axis_tuser InterfaceString {DATA}
	dict set TopLevelPortInterface s_axis_tuser ClockDomain {energydetector}
	dict set TopLevelPortInterface s_axis_tuser Locs {}
	dict set TopLevelPortInterface s_axis_tuser IOStandard {}
	dict set TopLevelPortInterface s_axis_tlast Name {s_axis_tlast}
	dict set TopLevelPortInterface s_axis_tlast Type Bool
	dict set TopLevelPortInterface s_axis_tlast ArithmeticType xlUnsigned
	dict set TopLevelPortInterface s_axis_tlast BinaryPoint 0
	dict set TopLevelPortInterface s_axis_tlast Width 1
	dict set TopLevelPortInterface s_axis_tlast DatFile {energydetect_energydetector_s_axis_tlast.dat}
	dict set TopLevelPortInterface s_axis_tlast IconText {s_axis_tlast}
	dict set TopLevelPortInterface s_axis_tlast Direction in
	dict set TopLevelPortInterface s_axis_tlast Period 1
	dict set TopLevelPortInterface s_axis_tlast Interface 0
	dict set TopLevelPortInterface s_axis_tlast InterfaceName {}
	dict set TopLevelPortInterface s_axis_tlast InterfaceString {DATA}
	dict set TopLevelPortInterface s_axis_tlast ClockDomain {energydetector}
	dict set TopLevelPortInterface s_axis_tlast Locs {}
	dict set TopLevelPortInterface s_axis_tlast IOStandard {}
	dict set TopLevelPortInterface s_axis_tdata Name {s_axis_tdata}
	dict set TopLevelPortInterface s_axis_tdata Type UFix_32_0
	dict set TopLevelPortInterface s_axis_tdata ArithmeticType xlUnsigned
	dict set TopLevelPortInterface s_axis_tdata BinaryPoint 0
	dict set TopLevelPortInterface s_axis_tdata Width 32
	dict set TopLevelPortInterface s_axis_tdata DatFile {energydetect_energydetector_s_axis_tdata.dat}
	dict set TopLevelPortInterface s_axis_tdata IconText {s_axis_tdata}
	dict set TopLevelPortInterface s_axis_tdata Direction in
	dict set TopLevelPortInterface s_axis_tdata Period 1
	dict set TopLevelPortInterface s_axis_tdata Interface 0
	dict set TopLevelPortInterface s_axis_tdata InterfaceName {}
	dict set TopLevelPortInterface s_axis_tdata InterfaceString {DATA}
	dict set TopLevelPortInterface s_axis_tdata ClockDomain {energydetector}
	dict set TopLevelPortInterface s_axis_tdata Locs {}
	dict set TopLevelPortInterface s_axis_tdata IOStandard {}
	dict set TopLevelPortInterface m_axis_tdata Name {m_axis_tdata}
	dict set TopLevelPortInterface m_axis_tdata Type Fix_32_16
	dict set TopLevelPortInterface m_axis_tdata ArithmeticType xlSigned
	dict set TopLevelPortInterface m_axis_tdata BinaryPoint 16
	dict set TopLevelPortInterface m_axis_tdata Width 32
	dict set TopLevelPortInterface m_axis_tdata DatFile {energydetect_energydetector_m_axis_tdata.dat}
	dict set TopLevelPortInterface m_axis_tdata IconText {m_axis_tdata}
	dict set TopLevelPortInterface m_axis_tdata Direction out
	dict set TopLevelPortInterface m_axis_tdata Period 1
	dict set TopLevelPortInterface m_axis_tdata Interface 0
	dict set TopLevelPortInterface m_axis_tdata InterfaceName {}
	dict set TopLevelPortInterface m_axis_tdata InterfaceString {DATA}
	dict set TopLevelPortInterface m_axis_tdata ClockDomain {energydetector}
	dict set TopLevelPortInterface m_axis_tdata Locs {}
	dict set TopLevelPortInterface m_axis_tdata IOStandard {}
	dict set TopLevelPortInterface m_axis_tlast Name {m_axis_tlast}
	dict set TopLevelPortInterface m_axis_tlast Type Bool
	dict set TopLevelPortInterface m_axis_tlast ArithmeticType xlUnsigned
	dict set TopLevelPortInterface m_axis_tlast BinaryPoint 0
	dict set TopLevelPortInterface m_axis_tlast Width 1
	dict set TopLevelPortInterface m_axis_tlast DatFile {energydetect_energydetector_m_axis_tlast.dat}
	dict set TopLevelPortInterface m_axis_tlast IconText {m_axis_tlast}
	dict set TopLevelPortInterface m_axis_tlast Direction out
	dict set TopLevelPortInterface m_axis_tlast Period 1
	dict set TopLevelPortInterface m_axis_tlast Interface 0
	dict set TopLevelPortInterface m_axis_tlast InterfaceName {}
	dict set TopLevelPortInterface m_axis_tlast InterfaceString {DATA}
	dict set TopLevelPortInterface m_axis_tlast ClockDomain {energydetector}
	dict set TopLevelPortInterface m_axis_tlast Locs {}
	dict set TopLevelPortInterface m_axis_tlast IOStandard {}
	dict set TopLevelPortInterface m_axis_tvalid Name {m_axis_tvalid}
	dict set TopLevelPortInterface m_axis_tvalid Type Bool
	dict set TopLevelPortInterface m_axis_tvalid ArithmeticType xlUnsigned
	dict set TopLevelPortInterface m_axis_tvalid BinaryPoint 0
	dict set TopLevelPortInterface m_axis_tvalid Width 1
	dict set TopLevelPortInterface m_axis_tvalid DatFile {energydetect_energydetector_m_axis_tvalid.dat}
	dict set TopLevelPortInterface m_axis_tvalid IconText {m_axis_tvalid}
	dict set TopLevelPortInterface m_axis_tvalid Direction out
	dict set TopLevelPortInterface m_axis_tvalid Period 1
	dict set TopLevelPortInterface m_axis_tvalid Interface 0
	dict set TopLevelPortInterface m_axis_tvalid InterfaceName {}
	dict set TopLevelPortInterface m_axis_tvalid InterfaceString {DATA}
	dict set TopLevelPortInterface m_axis_tvalid ClockDomain {energydetector}
	dict set TopLevelPortInterface m_axis_tvalid Locs {}
	dict set TopLevelPortInterface m_axis_tvalid IOStandard {}
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
	dict set TopLevelPortInterface clk ClockDomain {energydetector}
	dict set TopLevelPortInterface clk Locs {}
	dict set TopLevelPortInterface clk IOStandard {}
	dict set TopLevelPortInterface clk AssociatedInterfaces {}
	dict set TopLevelPortInterface clk AssociatedResets {}
	set MemoryMappedPort {}
}

source SgPaProject.tcl
::xilinx::dsp::planaheadworker::dsp_create_project
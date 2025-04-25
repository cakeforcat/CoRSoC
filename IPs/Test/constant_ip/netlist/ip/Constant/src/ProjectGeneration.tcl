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
	set FPGAClockPeriod 0.01
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
	set IP_Name {Constant_Stream}
	set IP_Revision {374596754}
	set IP_Socket_IP {0}
	set IP_Socket_IP_Proj_Path {}
	set IP_Vendor_Text {CoRSoC}
	set IP_Version_Text {1.0}
	set ImplStrategyName {Vivado Implementation Defaults}
	set PostProjectCreationProc {dsp_package_for_vivado_ip_integrator}
	set Project {constant_x0}
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
		{{constant_entity_declarations.vhd} -lib {xil_defaultlib}}
		{{constant_x0.vhd} -lib {xil_defaultlib}}
		{{constant_x0_clock.xdc}}
		{{constant_x0.xdc}}
	}
	set SimPeriod 1e-08
	set SimTime 1e-07
	set SimulationTime {200.11000000 ns}
	set SynthStrategyName {Vivado Synthesis Defaults}
	set SynthesisTool {Vivado}
	set TargetDir {C:/Users/andre/CoRSoC/IPs/Test/constant_ip/netlist/ip/Constant/src}
	set TopLevelModule {constant_x0}
	set TopLevelSimulinkHandle 2.00061
	set VHDLLib {xil_defaultlib}
	set TopLevelPortInterface {}
	dict set TopLevelPortInterface constant_in_nan Name {constant_in_nan}
	dict set TopLevelPortInterface constant_in_nan Type Bool
	dict set TopLevelPortInterface constant_in_nan ArithmeticType xlUnsigned
	dict set TopLevelPortInterface constant_in_nan BinaryPoint 0
	dict set TopLevelPortInterface constant_in_nan Width 1
	dict set TopLevelPortInterface constant_in_nan DatFile {constant_ip_constant_constant_in_nan.dat}
	dict set TopLevelPortInterface constant_in_nan IconText {constant_in_nan}
	dict set TopLevelPortInterface constant_in_nan Direction in
	dict set TopLevelPortInterface constant_in_nan Period 1
	dict set TopLevelPortInterface constant_in_nan Interface 0
	dict set TopLevelPortInterface constant_in_nan InterfaceName {}
	dict set TopLevelPortInterface constant_in_nan InterfaceString {DATA}
	dict set TopLevelPortInterface constant_in_nan ClockDomain {constant}
	dict set TopLevelPortInterface constant_in_nan Locs {}
	dict set TopLevelPortInterface constant_in_nan IOStandard {}
	dict set TopLevelPortInterface constant_out Name {constant_out}
	dict set TopLevelPortInterface constant_out Type UFix_32_14
	dict set TopLevelPortInterface constant_out ArithmeticType xlUnsigned
	dict set TopLevelPortInterface constant_out BinaryPoint 14
	dict set TopLevelPortInterface constant_out Width 32
	dict set TopLevelPortInterface constant_out DatFile {constant_ip_constant_constant_out.dat}
	dict set TopLevelPortInterface constant_out IconText {Constant_Out}
	dict set TopLevelPortInterface constant_out Direction out
	dict set TopLevelPortInterface constant_out Period 1
	dict set TopLevelPortInterface constant_out Interface 0
	dict set TopLevelPortInterface constant_out InterfaceName {}
	dict set TopLevelPortInterface constant_out InterfaceString {DATA}
	dict set TopLevelPortInterface constant_out ClockDomain {constant}
	dict set TopLevelPortInterface constant_out Locs {}
	dict set TopLevelPortInterface constant_out IOStandard {}
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
	dict set TopLevelPortInterface clk ClockDomain {constant}
	dict set TopLevelPortInterface clk Locs {}
	dict set TopLevelPortInterface clk IOStandard {}
	dict set TopLevelPortInterface clk AssociatedInterfaces {}
	dict set TopLevelPortInterface clk AssociatedResets {}
	set MemoryMappedPort {}
}

source SgPaProject.tcl
::xilinx::dsp::planaheadworker::dsp_create_project
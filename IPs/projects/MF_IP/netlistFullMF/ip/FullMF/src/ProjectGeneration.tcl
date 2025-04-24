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
	set FPGAClockPeriod 0.0390625
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
	set IP_Name {FullMF}
	set IP_Revision {375676384}
	set IP_Socket_IP {0}
	set IP_Socket_IP_Proj_Path {}
	set IP_Vendor_Text {CoRSoC}
	set IP_Version_Text {1.2}
	set ImplStrategyName {Vivado Implementation Defaults}
	set PostProjectCreationProc {dsp_package_for_vivado_ip_integrator}
	set Project {fullmf}
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
		{{fullmf_dist_mem_gen_i0_vivado.coe}}
		{{fullmf_entity_declarations.vhd} -lib {xil_defaultlib}}
		{{fullmf.vhd} -lib {xil_defaultlib}}
		{{fullmf_clock.xdc}}
		{{fullmf.xdc}}
	}
	set SimPeriod 1.95313e-08
	set SimTime 0.000117187
	set SimulationTime {434.41406250 ns}
	set SynthStrategyName {Vivado Synthesis Defaults}
	set SynthesisTool {Vivado}
	set TargetDir {C:/Users/jojok/Desktop/university/Project/TraditionalCognitiveIPs/MF_IP/netlistFullMF/ip/FullMF/src}
	set TopLevelModule {fullmf}
	set TopLevelSimulinkHandle 388
	set VHDLLib {xil_defaultlib}
	set TopLevelPortInterface {}
	dict set TopLevelPortInterface s_axis_tvalid Name {s_axis_tvalid}
	dict set TopLevelPortInterface s_axis_tvalid Type Bool
	dict set TopLevelPortInterface s_axis_tvalid ArithmeticType xlUnsigned
	dict set TopLevelPortInterface s_axis_tvalid BinaryPoint 0
	dict set TopLevelPortInterface s_axis_tvalid Width 1
	dict set TopLevelPortInterface s_axis_tvalid DatFile {fullmf_fullmf_s_axis_tvalid.dat}
	dict set TopLevelPortInterface s_axis_tvalid IconText {s_axis_tvalid}
	dict set TopLevelPortInterface s_axis_tvalid Direction in
	dict set TopLevelPortInterface s_axis_tvalid Period 2
	dict set TopLevelPortInterface s_axis_tvalid Interface 0
	dict set TopLevelPortInterface s_axis_tvalid InterfaceName {}
	dict set TopLevelPortInterface s_axis_tvalid InterfaceString {DATA}
	dict set TopLevelPortInterface s_axis_tvalid ClockDomain {fullmf}
	dict set TopLevelPortInterface s_axis_tvalid Locs {}
	dict set TopLevelPortInterface s_axis_tvalid IOStandard {}
	dict set TopLevelPortInterface s_axis_tuser Name {s_axis_tuser}
	dict set TopLevelPortInterface s_axis_tuser Type UFix_16_0
	dict set TopLevelPortInterface s_axis_tuser ArithmeticType xlUnsigned
	dict set TopLevelPortInterface s_axis_tuser BinaryPoint 0
	dict set TopLevelPortInterface s_axis_tuser Width 16
	dict set TopLevelPortInterface s_axis_tuser DatFile {fullmf_fullmf_s_axis_tuser.dat}
	dict set TopLevelPortInterface s_axis_tuser IconText {s_axis_tuser}
	dict set TopLevelPortInterface s_axis_tuser Direction in
	dict set TopLevelPortInterface s_axis_tuser Period 2
	dict set TopLevelPortInterface s_axis_tuser Interface 0
	dict set TopLevelPortInterface s_axis_tuser InterfaceName {}
	dict set TopLevelPortInterface s_axis_tuser InterfaceString {DATA}
	dict set TopLevelPortInterface s_axis_tuser ClockDomain {fullmf}
	dict set TopLevelPortInterface s_axis_tuser Locs {}
	dict set TopLevelPortInterface s_axis_tuser IOStandard {}
	dict set TopLevelPortInterface s_axis_tlast Name {s_axis_tlast}
	dict set TopLevelPortInterface s_axis_tlast Type Bool
	dict set TopLevelPortInterface s_axis_tlast ArithmeticType xlUnsigned
	dict set TopLevelPortInterface s_axis_tlast BinaryPoint 0
	dict set TopLevelPortInterface s_axis_tlast Width 1
	dict set TopLevelPortInterface s_axis_tlast DatFile {fullmf_fullmf_s_axis_tlast.dat}
	dict set TopLevelPortInterface s_axis_tlast IconText {s_axis_tlast}
	dict set TopLevelPortInterface s_axis_tlast Direction in
	dict set TopLevelPortInterface s_axis_tlast Period 2
	dict set TopLevelPortInterface s_axis_tlast Interface 0
	dict set TopLevelPortInterface s_axis_tlast InterfaceName {}
	dict set TopLevelPortInterface s_axis_tlast InterfaceString {DATA}
	dict set TopLevelPortInterface s_axis_tlast ClockDomain {fullmf}
	dict set TopLevelPortInterface s_axis_tlast Locs {}
	dict set TopLevelPortInterface s_axis_tlast IOStandard {}
	dict set TopLevelPortInterface s_axis_tdata7 Name {s_axis_tdata7}
	dict set TopLevelPortInterface s_axis_tdata7 Type Fix_16_14
	dict set TopLevelPortInterface s_axis_tdata7 ArithmeticType xlSigned
	dict set TopLevelPortInterface s_axis_tdata7 BinaryPoint 14
	dict set TopLevelPortInterface s_axis_tdata7 Width 16
	dict set TopLevelPortInterface s_axis_tdata7 DatFile {fullmf_fullmf_s_axis_tdata7.dat}
	dict set TopLevelPortInterface s_axis_tdata7 IconText {s_axis_tdata7}
	dict set TopLevelPortInterface s_axis_tdata7 Direction in
	dict set TopLevelPortInterface s_axis_tdata7 Period 2
	dict set TopLevelPortInterface s_axis_tdata7 Interface 0
	dict set TopLevelPortInterface s_axis_tdata7 InterfaceName {}
	dict set TopLevelPortInterface s_axis_tdata7 InterfaceString {DATA}
	dict set TopLevelPortInterface s_axis_tdata7 ClockDomain {fullmf}
	dict set TopLevelPortInterface s_axis_tdata7 Locs {}
	dict set TopLevelPortInterface s_axis_tdata7 IOStandard {}
	dict set TopLevelPortInterface s_axis_tdata6 Name {s_axis_tdata6}
	dict set TopLevelPortInterface s_axis_tdata6 Type Fix_16_14
	dict set TopLevelPortInterface s_axis_tdata6 ArithmeticType xlSigned
	dict set TopLevelPortInterface s_axis_tdata6 BinaryPoint 14
	dict set TopLevelPortInterface s_axis_tdata6 Width 16
	dict set TopLevelPortInterface s_axis_tdata6 DatFile {fullmf_fullmf_s_axis_tdata6.dat}
	dict set TopLevelPortInterface s_axis_tdata6 IconText {s_axis_tdata6}
	dict set TopLevelPortInterface s_axis_tdata6 Direction in
	dict set TopLevelPortInterface s_axis_tdata6 Period 2
	dict set TopLevelPortInterface s_axis_tdata6 Interface 0
	dict set TopLevelPortInterface s_axis_tdata6 InterfaceName {}
	dict set TopLevelPortInterface s_axis_tdata6 InterfaceString {DATA}
	dict set TopLevelPortInterface s_axis_tdata6 ClockDomain {fullmf}
	dict set TopLevelPortInterface s_axis_tdata6 Locs {}
	dict set TopLevelPortInterface s_axis_tdata6 IOStandard {}
	dict set TopLevelPortInterface s_axis_tdata5 Name {s_axis_tdata5}
	dict set TopLevelPortInterface s_axis_tdata5 Type Fix_16_14
	dict set TopLevelPortInterface s_axis_tdata5 ArithmeticType xlSigned
	dict set TopLevelPortInterface s_axis_tdata5 BinaryPoint 14
	dict set TopLevelPortInterface s_axis_tdata5 Width 16
	dict set TopLevelPortInterface s_axis_tdata5 DatFile {fullmf_fullmf_s_axis_tdata5.dat}
	dict set TopLevelPortInterface s_axis_tdata5 IconText {s_axis_tdata5}
	dict set TopLevelPortInterface s_axis_tdata5 Direction in
	dict set TopLevelPortInterface s_axis_tdata5 Period 2
	dict set TopLevelPortInterface s_axis_tdata5 Interface 0
	dict set TopLevelPortInterface s_axis_tdata5 InterfaceName {}
	dict set TopLevelPortInterface s_axis_tdata5 InterfaceString {DATA}
	dict set TopLevelPortInterface s_axis_tdata5 ClockDomain {fullmf}
	dict set TopLevelPortInterface s_axis_tdata5 Locs {}
	dict set TopLevelPortInterface s_axis_tdata5 IOStandard {}
	dict set TopLevelPortInterface s_axis_tdata4 Name {s_axis_tdata4}
	dict set TopLevelPortInterface s_axis_tdata4 Type Fix_16_14
	dict set TopLevelPortInterface s_axis_tdata4 ArithmeticType xlSigned
	dict set TopLevelPortInterface s_axis_tdata4 BinaryPoint 14
	dict set TopLevelPortInterface s_axis_tdata4 Width 16
	dict set TopLevelPortInterface s_axis_tdata4 DatFile {fullmf_fullmf_s_axis_tdata4.dat}
	dict set TopLevelPortInterface s_axis_tdata4 IconText {s_axis_tdata4}
	dict set TopLevelPortInterface s_axis_tdata4 Direction in
	dict set TopLevelPortInterface s_axis_tdata4 Period 2
	dict set TopLevelPortInterface s_axis_tdata4 Interface 0
	dict set TopLevelPortInterface s_axis_tdata4 InterfaceName {}
	dict set TopLevelPortInterface s_axis_tdata4 InterfaceString {DATA}
	dict set TopLevelPortInterface s_axis_tdata4 ClockDomain {fullmf}
	dict set TopLevelPortInterface s_axis_tdata4 Locs {}
	dict set TopLevelPortInterface s_axis_tdata4 IOStandard {}
	dict set TopLevelPortInterface s_axis_tdata3 Name {s_axis_tdata3}
	dict set TopLevelPortInterface s_axis_tdata3 Type Fix_16_14
	dict set TopLevelPortInterface s_axis_tdata3 ArithmeticType xlSigned
	dict set TopLevelPortInterface s_axis_tdata3 BinaryPoint 14
	dict set TopLevelPortInterface s_axis_tdata3 Width 16
	dict set TopLevelPortInterface s_axis_tdata3 DatFile {fullmf_fullmf_s_axis_tdata3.dat}
	dict set TopLevelPortInterface s_axis_tdata3 IconText {s_axis_tdata3}
	dict set TopLevelPortInterface s_axis_tdata3 Direction in
	dict set TopLevelPortInterface s_axis_tdata3 Period 2
	dict set TopLevelPortInterface s_axis_tdata3 Interface 0
	dict set TopLevelPortInterface s_axis_tdata3 InterfaceName {}
	dict set TopLevelPortInterface s_axis_tdata3 InterfaceString {DATA}
	dict set TopLevelPortInterface s_axis_tdata3 ClockDomain {fullmf}
	dict set TopLevelPortInterface s_axis_tdata3 Locs {}
	dict set TopLevelPortInterface s_axis_tdata3 IOStandard {}
	dict set TopLevelPortInterface s_axis_tdata2 Name {s_axis_tdata2}
	dict set TopLevelPortInterface s_axis_tdata2 Type Fix_16_14
	dict set TopLevelPortInterface s_axis_tdata2 ArithmeticType xlSigned
	dict set TopLevelPortInterface s_axis_tdata2 BinaryPoint 14
	dict set TopLevelPortInterface s_axis_tdata2 Width 16
	dict set TopLevelPortInterface s_axis_tdata2 DatFile {fullmf_fullmf_s_axis_tdata2.dat}
	dict set TopLevelPortInterface s_axis_tdata2 IconText {s_axis_tdata2}
	dict set TopLevelPortInterface s_axis_tdata2 Direction in
	dict set TopLevelPortInterface s_axis_tdata2 Period 2
	dict set TopLevelPortInterface s_axis_tdata2 Interface 0
	dict set TopLevelPortInterface s_axis_tdata2 InterfaceName {}
	dict set TopLevelPortInterface s_axis_tdata2 InterfaceString {DATA}
	dict set TopLevelPortInterface s_axis_tdata2 ClockDomain {fullmf}
	dict set TopLevelPortInterface s_axis_tdata2 Locs {}
	dict set TopLevelPortInterface s_axis_tdata2 IOStandard {}
	dict set TopLevelPortInterface s_axis_tdata1 Name {s_axis_tdata1}
	dict set TopLevelPortInterface s_axis_tdata1 Type Fix_16_14
	dict set TopLevelPortInterface s_axis_tdata1 ArithmeticType xlSigned
	dict set TopLevelPortInterface s_axis_tdata1 BinaryPoint 14
	dict set TopLevelPortInterface s_axis_tdata1 Width 16
	dict set TopLevelPortInterface s_axis_tdata1 DatFile {fullmf_fullmf_s_axis_tdata1.dat}
	dict set TopLevelPortInterface s_axis_tdata1 IconText {s_axis_tdata1}
	dict set TopLevelPortInterface s_axis_tdata1 Direction in
	dict set TopLevelPortInterface s_axis_tdata1 Period 2
	dict set TopLevelPortInterface s_axis_tdata1 Interface 0
	dict set TopLevelPortInterface s_axis_tdata1 InterfaceName {}
	dict set TopLevelPortInterface s_axis_tdata1 InterfaceString {DATA}
	dict set TopLevelPortInterface s_axis_tdata1 ClockDomain {fullmf}
	dict set TopLevelPortInterface s_axis_tdata1 Locs {}
	dict set TopLevelPortInterface s_axis_tdata1 IOStandard {}
	dict set TopLevelPortInterface s_axis_tdata Name {s_axis_tdata}
	dict set TopLevelPortInterface s_axis_tdata Type Fix_16_14
	dict set TopLevelPortInterface s_axis_tdata ArithmeticType xlSigned
	dict set TopLevelPortInterface s_axis_tdata BinaryPoint 14
	dict set TopLevelPortInterface s_axis_tdata Width 16
	dict set TopLevelPortInterface s_axis_tdata DatFile {fullmf_fullmf_s_axis_tdata.dat}
	dict set TopLevelPortInterface s_axis_tdata IconText {s_axis_tdata}
	dict set TopLevelPortInterface s_axis_tdata Direction in
	dict set TopLevelPortInterface s_axis_tdata Period 2
	dict set TopLevelPortInterface s_axis_tdata Interface 0
	dict set TopLevelPortInterface s_axis_tdata InterfaceName {}
	dict set TopLevelPortInterface s_axis_tdata InterfaceString {DATA}
	dict set TopLevelPortInterface s_axis_tdata ClockDomain {fullmf}
	dict set TopLevelPortInterface s_axis_tdata Locs {}
	dict set TopLevelPortInterface s_axis_tdata IOStandard {}
	dict set TopLevelPortInterface m_axis_tdata Name {m_axis_tdata}
	dict set TopLevelPortInterface m_axis_tdata Type Fix_32_16
	dict set TopLevelPortInterface m_axis_tdata ArithmeticType xlSigned
	dict set TopLevelPortInterface m_axis_tdata BinaryPoint 16
	dict set TopLevelPortInterface m_axis_tdata Width 32
	dict set TopLevelPortInterface m_axis_tdata DatFile {fullmf_fullmf_m_axis_tdata.dat}
	dict set TopLevelPortInterface m_axis_tdata IconText {m_axis_tdata}
	dict set TopLevelPortInterface m_axis_tdata Direction out
	dict set TopLevelPortInterface m_axis_tdata Period 2
	dict set TopLevelPortInterface m_axis_tdata Interface 0
	dict set TopLevelPortInterface m_axis_tdata InterfaceName {}
	dict set TopLevelPortInterface m_axis_tdata InterfaceString {DATA}
	dict set TopLevelPortInterface m_axis_tdata ClockDomain {fullmf}
	dict set TopLevelPortInterface m_axis_tdata Locs {}
	dict set TopLevelPortInterface m_axis_tdata IOStandard {}
	dict set TopLevelPortInterface m_axis_tlast Name {m_axis_tlast}
	dict set TopLevelPortInterface m_axis_tlast Type Bool
	dict set TopLevelPortInterface m_axis_tlast ArithmeticType xlUnsigned
	dict set TopLevelPortInterface m_axis_tlast BinaryPoint 0
	dict set TopLevelPortInterface m_axis_tlast Width 1
	dict set TopLevelPortInterface m_axis_tlast DatFile {fullmf_fullmf_m_axis_tlast.dat}
	dict set TopLevelPortInterface m_axis_tlast IconText {m_axis_tlast}
	dict set TopLevelPortInterface m_axis_tlast Direction out
	dict set TopLevelPortInterface m_axis_tlast Period 2
	dict set TopLevelPortInterface m_axis_tlast Interface 0
	dict set TopLevelPortInterface m_axis_tlast InterfaceName {}
	dict set TopLevelPortInterface m_axis_tlast InterfaceString {DATA}
	dict set TopLevelPortInterface m_axis_tlast ClockDomain {fullmf}
	dict set TopLevelPortInterface m_axis_tlast Locs {}
	dict set TopLevelPortInterface m_axis_tlast IOStandard {}
	dict set TopLevelPortInterface m_axis_tvalid Name {m_axis_tvalid}
	dict set TopLevelPortInterface m_axis_tvalid Type Bool
	dict set TopLevelPortInterface m_axis_tvalid ArithmeticType xlUnsigned
	dict set TopLevelPortInterface m_axis_tvalid BinaryPoint 0
	dict set TopLevelPortInterface m_axis_tvalid Width 1
	dict set TopLevelPortInterface m_axis_tvalid DatFile {fullmf_fullmf_m_axis_tvalid.dat}
	dict set TopLevelPortInterface m_axis_tvalid IconText {m_axis_tvalid}
	dict set TopLevelPortInterface m_axis_tvalid Direction out
	dict set TopLevelPortInterface m_axis_tvalid Period 2
	dict set TopLevelPortInterface m_axis_tvalid Interface 0
	dict set TopLevelPortInterface m_axis_tvalid InterfaceName {}
	dict set TopLevelPortInterface m_axis_tvalid InterfaceString {DATA}
	dict set TopLevelPortInterface m_axis_tvalid ClockDomain {fullmf}
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
	dict set TopLevelPortInterface clk ClockDomain {fullmf}
	dict set TopLevelPortInterface clk Locs {}
	dict set TopLevelPortInterface clk IOStandard {}
	dict set TopLevelPortInterface clk AssociatedInterfaces {}
	dict set TopLevelPortInterface clk AssociatedResets {}
	set MemoryMappedPort {}
}

source SgPaProject.tcl
::xilinx::dsp::planaheadworker::dsp_create_project
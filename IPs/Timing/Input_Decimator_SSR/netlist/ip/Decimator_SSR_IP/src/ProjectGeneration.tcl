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
	set FPGAClockPeriod 0.015625
	set GenerateTestBench 0
	set HDLLanguage {verilog}
	set IPOOCCacheRootPath {C:/Users/andre/AppData/Local/Xilinx/Sysgen/SysgenVivado/win64.o/ip}
	set IP_Auto_Infer {1}
	set IP_Categories_Text {Vitis Model Composer}
	set IP_Common_Repos {0}
	set IP_Description {}
	set IP_Dir {}
	set IP_Library_Text {VMC}
	set IP_LifeCycle_Menu {1}
	set IP_Logo {sysgen_icon_100.png}
	set IP_Name {Decimator_SSR}
	set IP_Revision {369770501}
	set IP_Socket_IP {0}
	set IP_Socket_IP_Proj_Path {}
	set IP_Vendor_Text {CoRSoC}
	set IP_Version_Text {1.0}
	set ImplStrategyName {Vivado Implementation Defaults}
	set PostProjectCreationProc {dsp_package_for_vivado_ip_integrator}
	set Project {decimator_ssr_ip}
	set ProjectFiles {
		{{conv_pkg.v}}
		{{synth_reg.v}}
		{{synth_reg_w_init.v}}
		{{convert_type.v}}
		{{xlclockdriver_rd.v}}
		{{vivado_ip.tcl}}
		{{decimator_ssr_ip_entity_declarations.v}}
		{{decimator_ssr_ip.v}}
		{{decimator_ssr_ip_clock.xdc}}
		{{decimator_ssr_ip.xdc}}
	}
	set SimPeriod 1.5625e-08
	set SimTime 9.375e-05
	set SimulationTime {293.76562500 ns}
	set SynthStrategyName {Vivado Synthesis Defaults}
	set SynthesisTool {Vivado}
	set TargetDir {C:/Users/andre/Year5/19520/IP/Input_Decimator_SSR/netlist/ip/Decimator_SSR_IP/src}
	set TopLevelModule {decimator_ssr_ip}
	set TopLevelSimulinkHandle 4.04041
	set TopLevelPortInterface {}
	dict set TopLevelPortInterface s_axis_re_tdata_7 Name {s_axis_re_tdata_7}
	dict set TopLevelPortInterface s_axis_re_tdata_7 Type Fix_16_15
	dict set TopLevelPortInterface s_axis_re_tdata_7 ArithmeticType xlSigned
	dict set TopLevelPortInterface s_axis_re_tdata_7 BinaryPoint 15
	dict set TopLevelPortInterface s_axis_re_tdata_7 Width 16
	dict set TopLevelPortInterface s_axis_re_tdata_7 DatFile {decimator_ssr_decimator_ssr_ip_s_axis_re_tdata_s_axis_re_tdata_7.dat}
	dict set TopLevelPortInterface s_axis_re_tdata_7 IconText {s_axis_re_tdata_7}
	dict set TopLevelPortInterface s_axis_re_tdata_7 Direction in
	dict set TopLevelPortInterface s_axis_re_tdata_7 Period 1
	dict set TopLevelPortInterface s_axis_re_tdata_7 Interface 0
	dict set TopLevelPortInterface s_axis_re_tdata_7 InterfaceName {}
	dict set TopLevelPortInterface s_axis_re_tdata_7 InterfaceString {DATA}
	dict set TopLevelPortInterface s_axis_re_tdata_7 ClockDomain {decimator_ssr_ip}
	dict set TopLevelPortInterface s_axis_re_tdata_7 Locs {}
	dict set TopLevelPortInterface s_axis_re_tdata_7 IOStandard {}
	dict set TopLevelPortInterface s_axis_re_tdata_6 Name {s_axis_re_tdata_6}
	dict set TopLevelPortInterface s_axis_re_tdata_6 Type Fix_16_15
	dict set TopLevelPortInterface s_axis_re_tdata_6 ArithmeticType xlSigned
	dict set TopLevelPortInterface s_axis_re_tdata_6 BinaryPoint 15
	dict set TopLevelPortInterface s_axis_re_tdata_6 Width 16
	dict set TopLevelPortInterface s_axis_re_tdata_6 DatFile {decimator_ssr_decimator_ssr_ip_s_axis_re_tdata_s_axis_re_tdata_6.dat}
	dict set TopLevelPortInterface s_axis_re_tdata_6 IconText {s_axis_re_tdata_6}
	dict set TopLevelPortInterface s_axis_re_tdata_6 Direction in
	dict set TopLevelPortInterface s_axis_re_tdata_6 Period 1
	dict set TopLevelPortInterface s_axis_re_tdata_6 Interface 0
	dict set TopLevelPortInterface s_axis_re_tdata_6 InterfaceName {}
	dict set TopLevelPortInterface s_axis_re_tdata_6 InterfaceString {DATA}
	dict set TopLevelPortInterface s_axis_re_tdata_6 ClockDomain {decimator_ssr_ip}
	dict set TopLevelPortInterface s_axis_re_tdata_6 Locs {}
	dict set TopLevelPortInterface s_axis_re_tdata_6 IOStandard {}
	dict set TopLevelPortInterface s_axis_re_tdata_5 Name {s_axis_re_tdata_5}
	dict set TopLevelPortInterface s_axis_re_tdata_5 Type Fix_16_15
	dict set TopLevelPortInterface s_axis_re_tdata_5 ArithmeticType xlSigned
	dict set TopLevelPortInterface s_axis_re_tdata_5 BinaryPoint 15
	dict set TopLevelPortInterface s_axis_re_tdata_5 Width 16
	dict set TopLevelPortInterface s_axis_re_tdata_5 DatFile {decimator_ssr_decimator_ssr_ip_s_axis_re_tdata_s_axis_re_tdata_5.dat}
	dict set TopLevelPortInterface s_axis_re_tdata_5 IconText {s_axis_re_tdata_5}
	dict set TopLevelPortInterface s_axis_re_tdata_5 Direction in
	dict set TopLevelPortInterface s_axis_re_tdata_5 Period 1
	dict set TopLevelPortInterface s_axis_re_tdata_5 Interface 0
	dict set TopLevelPortInterface s_axis_re_tdata_5 InterfaceName {}
	dict set TopLevelPortInterface s_axis_re_tdata_5 InterfaceString {DATA}
	dict set TopLevelPortInterface s_axis_re_tdata_5 ClockDomain {decimator_ssr_ip}
	dict set TopLevelPortInterface s_axis_re_tdata_5 Locs {}
	dict set TopLevelPortInterface s_axis_re_tdata_5 IOStandard {}
	dict set TopLevelPortInterface s_axis_re_tdata_4 Name {s_axis_re_tdata_4}
	dict set TopLevelPortInterface s_axis_re_tdata_4 Type Fix_16_15
	dict set TopLevelPortInterface s_axis_re_tdata_4 ArithmeticType xlSigned
	dict set TopLevelPortInterface s_axis_re_tdata_4 BinaryPoint 15
	dict set TopLevelPortInterface s_axis_re_tdata_4 Width 16
	dict set TopLevelPortInterface s_axis_re_tdata_4 DatFile {decimator_ssr_decimator_ssr_ip_s_axis_re_tdata_s_axis_re_tdata_4.dat}
	dict set TopLevelPortInterface s_axis_re_tdata_4 IconText {s_axis_re_tdata_4}
	dict set TopLevelPortInterface s_axis_re_tdata_4 Direction in
	dict set TopLevelPortInterface s_axis_re_tdata_4 Period 1
	dict set TopLevelPortInterface s_axis_re_tdata_4 Interface 0
	dict set TopLevelPortInterface s_axis_re_tdata_4 InterfaceName {}
	dict set TopLevelPortInterface s_axis_re_tdata_4 InterfaceString {DATA}
	dict set TopLevelPortInterface s_axis_re_tdata_4 ClockDomain {decimator_ssr_ip}
	dict set TopLevelPortInterface s_axis_re_tdata_4 Locs {}
	dict set TopLevelPortInterface s_axis_re_tdata_4 IOStandard {}
	dict set TopLevelPortInterface s_axis_re_tdata_3 Name {s_axis_re_tdata_3}
	dict set TopLevelPortInterface s_axis_re_tdata_3 Type Fix_16_15
	dict set TopLevelPortInterface s_axis_re_tdata_3 ArithmeticType xlSigned
	dict set TopLevelPortInterface s_axis_re_tdata_3 BinaryPoint 15
	dict set TopLevelPortInterface s_axis_re_tdata_3 Width 16
	dict set TopLevelPortInterface s_axis_re_tdata_3 DatFile {decimator_ssr_decimator_ssr_ip_s_axis_re_tdata_s_axis_re_tdata_3.dat}
	dict set TopLevelPortInterface s_axis_re_tdata_3 IconText {s_axis_re_tdata_3}
	dict set TopLevelPortInterface s_axis_re_tdata_3 Direction in
	dict set TopLevelPortInterface s_axis_re_tdata_3 Period 1
	dict set TopLevelPortInterface s_axis_re_tdata_3 Interface 0
	dict set TopLevelPortInterface s_axis_re_tdata_3 InterfaceName {}
	dict set TopLevelPortInterface s_axis_re_tdata_3 InterfaceString {DATA}
	dict set TopLevelPortInterface s_axis_re_tdata_3 ClockDomain {decimator_ssr_ip}
	dict set TopLevelPortInterface s_axis_re_tdata_3 Locs {}
	dict set TopLevelPortInterface s_axis_re_tdata_3 IOStandard {}
	dict set TopLevelPortInterface s_axis_re_tdata_2 Name {s_axis_re_tdata_2}
	dict set TopLevelPortInterface s_axis_re_tdata_2 Type Fix_16_15
	dict set TopLevelPortInterface s_axis_re_tdata_2 ArithmeticType xlSigned
	dict set TopLevelPortInterface s_axis_re_tdata_2 BinaryPoint 15
	dict set TopLevelPortInterface s_axis_re_tdata_2 Width 16
	dict set TopLevelPortInterface s_axis_re_tdata_2 DatFile {decimator_ssr_decimator_ssr_ip_s_axis_re_tdata_s_axis_re_tdata_2.dat}
	dict set TopLevelPortInterface s_axis_re_tdata_2 IconText {s_axis_re_tdata_2}
	dict set TopLevelPortInterface s_axis_re_tdata_2 Direction in
	dict set TopLevelPortInterface s_axis_re_tdata_2 Period 1
	dict set TopLevelPortInterface s_axis_re_tdata_2 Interface 0
	dict set TopLevelPortInterface s_axis_re_tdata_2 InterfaceName {}
	dict set TopLevelPortInterface s_axis_re_tdata_2 InterfaceString {DATA}
	dict set TopLevelPortInterface s_axis_re_tdata_2 ClockDomain {decimator_ssr_ip}
	dict set TopLevelPortInterface s_axis_re_tdata_2 Locs {}
	dict set TopLevelPortInterface s_axis_re_tdata_2 IOStandard {}
	dict set TopLevelPortInterface s_axis_re_tdata_1 Name {s_axis_re_tdata_1}
	dict set TopLevelPortInterface s_axis_re_tdata_1 Type Fix_16_15
	dict set TopLevelPortInterface s_axis_re_tdata_1 ArithmeticType xlSigned
	dict set TopLevelPortInterface s_axis_re_tdata_1 BinaryPoint 15
	dict set TopLevelPortInterface s_axis_re_tdata_1 Width 16
	dict set TopLevelPortInterface s_axis_re_tdata_1 DatFile {decimator_ssr_decimator_ssr_ip_s_axis_re_tdata_s_axis_re_tdata_1.dat}
	dict set TopLevelPortInterface s_axis_re_tdata_1 IconText {s_axis_re_tdata_1}
	dict set TopLevelPortInterface s_axis_re_tdata_1 Direction in
	dict set TopLevelPortInterface s_axis_re_tdata_1 Period 1
	dict set TopLevelPortInterface s_axis_re_tdata_1 Interface 0
	dict set TopLevelPortInterface s_axis_re_tdata_1 InterfaceName {}
	dict set TopLevelPortInterface s_axis_re_tdata_1 InterfaceString {DATA}
	dict set TopLevelPortInterface s_axis_re_tdata_1 ClockDomain {decimator_ssr_ip}
	dict set TopLevelPortInterface s_axis_re_tdata_1 Locs {}
	dict set TopLevelPortInterface s_axis_re_tdata_1 IOStandard {}
	dict set TopLevelPortInterface s_axis_re_tdata_0 Name {s_axis_re_tdata_0}
	dict set TopLevelPortInterface s_axis_re_tdata_0 Type Fix_16_15
	dict set TopLevelPortInterface s_axis_re_tdata_0 ArithmeticType xlSigned
	dict set TopLevelPortInterface s_axis_re_tdata_0 BinaryPoint 15
	dict set TopLevelPortInterface s_axis_re_tdata_0 Width 16
	dict set TopLevelPortInterface s_axis_re_tdata_0 DatFile {decimator_ssr_decimator_ssr_ip_s_axis_re_tdata_s_axis_re_tdata_0.dat}
	dict set TopLevelPortInterface s_axis_re_tdata_0 IconText {s_axis_re_tdata_0}
	dict set TopLevelPortInterface s_axis_re_tdata_0 Direction in
	dict set TopLevelPortInterface s_axis_re_tdata_0 Period 1
	dict set TopLevelPortInterface s_axis_re_tdata_0 Interface 0
	dict set TopLevelPortInterface s_axis_re_tdata_0 InterfaceName {}
	dict set TopLevelPortInterface s_axis_re_tdata_0 InterfaceString {DATA}
	dict set TopLevelPortInterface s_axis_re_tdata_0 ClockDomain {decimator_ssr_ip}
	dict set TopLevelPortInterface s_axis_re_tdata_0 Locs {}
	dict set TopLevelPortInterface s_axis_re_tdata_0 IOStandard {}
	dict set TopLevelPortInterface s_axis_im_tdata_7 Name {s_axis_im_tdata_7}
	dict set TopLevelPortInterface s_axis_im_tdata_7 Type Fix_16_15
	dict set TopLevelPortInterface s_axis_im_tdata_7 ArithmeticType xlSigned
	dict set TopLevelPortInterface s_axis_im_tdata_7 BinaryPoint 15
	dict set TopLevelPortInterface s_axis_im_tdata_7 Width 16
	dict set TopLevelPortInterface s_axis_im_tdata_7 DatFile {decimator_ssr_decimator_ssr_ip_s_axis_im_tdata_s_axis_im_tdata_7.dat}
	dict set TopLevelPortInterface s_axis_im_tdata_7 IconText {s_axis_im_tdata_7}
	dict set TopLevelPortInterface s_axis_im_tdata_7 Direction in
	dict set TopLevelPortInterface s_axis_im_tdata_7 Period 1
	dict set TopLevelPortInterface s_axis_im_tdata_7 Interface 0
	dict set TopLevelPortInterface s_axis_im_tdata_7 InterfaceName {}
	dict set TopLevelPortInterface s_axis_im_tdata_7 InterfaceString {DATA}
	dict set TopLevelPortInterface s_axis_im_tdata_7 ClockDomain {decimator_ssr_ip}
	dict set TopLevelPortInterface s_axis_im_tdata_7 Locs {}
	dict set TopLevelPortInterface s_axis_im_tdata_7 IOStandard {}
	dict set TopLevelPortInterface s_axis_im_tdata_6 Name {s_axis_im_tdata_6}
	dict set TopLevelPortInterface s_axis_im_tdata_6 Type Fix_16_15
	dict set TopLevelPortInterface s_axis_im_tdata_6 ArithmeticType xlSigned
	dict set TopLevelPortInterface s_axis_im_tdata_6 BinaryPoint 15
	dict set TopLevelPortInterface s_axis_im_tdata_6 Width 16
	dict set TopLevelPortInterface s_axis_im_tdata_6 DatFile {decimator_ssr_decimator_ssr_ip_s_axis_im_tdata_s_axis_im_tdata_6.dat}
	dict set TopLevelPortInterface s_axis_im_tdata_6 IconText {s_axis_im_tdata_6}
	dict set TopLevelPortInterface s_axis_im_tdata_6 Direction in
	dict set TopLevelPortInterface s_axis_im_tdata_6 Period 1
	dict set TopLevelPortInterface s_axis_im_tdata_6 Interface 0
	dict set TopLevelPortInterface s_axis_im_tdata_6 InterfaceName {}
	dict set TopLevelPortInterface s_axis_im_tdata_6 InterfaceString {DATA}
	dict set TopLevelPortInterface s_axis_im_tdata_6 ClockDomain {decimator_ssr_ip}
	dict set TopLevelPortInterface s_axis_im_tdata_6 Locs {}
	dict set TopLevelPortInterface s_axis_im_tdata_6 IOStandard {}
	dict set TopLevelPortInterface s_axis_im_tdata_5 Name {s_axis_im_tdata_5}
	dict set TopLevelPortInterface s_axis_im_tdata_5 Type Fix_16_15
	dict set TopLevelPortInterface s_axis_im_tdata_5 ArithmeticType xlSigned
	dict set TopLevelPortInterface s_axis_im_tdata_5 BinaryPoint 15
	dict set TopLevelPortInterface s_axis_im_tdata_5 Width 16
	dict set TopLevelPortInterface s_axis_im_tdata_5 DatFile {decimator_ssr_decimator_ssr_ip_s_axis_im_tdata_s_axis_im_tdata_5.dat}
	dict set TopLevelPortInterface s_axis_im_tdata_5 IconText {s_axis_im_tdata_5}
	dict set TopLevelPortInterface s_axis_im_tdata_5 Direction in
	dict set TopLevelPortInterface s_axis_im_tdata_5 Period 1
	dict set TopLevelPortInterface s_axis_im_tdata_5 Interface 0
	dict set TopLevelPortInterface s_axis_im_tdata_5 InterfaceName {}
	dict set TopLevelPortInterface s_axis_im_tdata_5 InterfaceString {DATA}
	dict set TopLevelPortInterface s_axis_im_tdata_5 ClockDomain {decimator_ssr_ip}
	dict set TopLevelPortInterface s_axis_im_tdata_5 Locs {}
	dict set TopLevelPortInterface s_axis_im_tdata_5 IOStandard {}
	dict set TopLevelPortInterface s_axis_im_tdata_4 Name {s_axis_im_tdata_4}
	dict set TopLevelPortInterface s_axis_im_tdata_4 Type Fix_16_15
	dict set TopLevelPortInterface s_axis_im_tdata_4 ArithmeticType xlSigned
	dict set TopLevelPortInterface s_axis_im_tdata_4 BinaryPoint 15
	dict set TopLevelPortInterface s_axis_im_tdata_4 Width 16
	dict set TopLevelPortInterface s_axis_im_tdata_4 DatFile {decimator_ssr_decimator_ssr_ip_s_axis_im_tdata_s_axis_im_tdata_4.dat}
	dict set TopLevelPortInterface s_axis_im_tdata_4 IconText {s_axis_im_tdata_4}
	dict set TopLevelPortInterface s_axis_im_tdata_4 Direction in
	dict set TopLevelPortInterface s_axis_im_tdata_4 Period 1
	dict set TopLevelPortInterface s_axis_im_tdata_4 Interface 0
	dict set TopLevelPortInterface s_axis_im_tdata_4 InterfaceName {}
	dict set TopLevelPortInterface s_axis_im_tdata_4 InterfaceString {DATA}
	dict set TopLevelPortInterface s_axis_im_tdata_4 ClockDomain {decimator_ssr_ip}
	dict set TopLevelPortInterface s_axis_im_tdata_4 Locs {}
	dict set TopLevelPortInterface s_axis_im_tdata_4 IOStandard {}
	dict set TopLevelPortInterface s_axis_im_tdata_3 Name {s_axis_im_tdata_3}
	dict set TopLevelPortInterface s_axis_im_tdata_3 Type Fix_16_15
	dict set TopLevelPortInterface s_axis_im_tdata_3 ArithmeticType xlSigned
	dict set TopLevelPortInterface s_axis_im_tdata_3 BinaryPoint 15
	dict set TopLevelPortInterface s_axis_im_tdata_3 Width 16
	dict set TopLevelPortInterface s_axis_im_tdata_3 DatFile {decimator_ssr_decimator_ssr_ip_s_axis_im_tdata_s_axis_im_tdata_3.dat}
	dict set TopLevelPortInterface s_axis_im_tdata_3 IconText {s_axis_im_tdata_3}
	dict set TopLevelPortInterface s_axis_im_tdata_3 Direction in
	dict set TopLevelPortInterface s_axis_im_tdata_3 Period 1
	dict set TopLevelPortInterface s_axis_im_tdata_3 Interface 0
	dict set TopLevelPortInterface s_axis_im_tdata_3 InterfaceName {}
	dict set TopLevelPortInterface s_axis_im_tdata_3 InterfaceString {DATA}
	dict set TopLevelPortInterface s_axis_im_tdata_3 ClockDomain {decimator_ssr_ip}
	dict set TopLevelPortInterface s_axis_im_tdata_3 Locs {}
	dict set TopLevelPortInterface s_axis_im_tdata_3 IOStandard {}
	dict set TopLevelPortInterface s_axis_im_tdata_2 Name {s_axis_im_tdata_2}
	dict set TopLevelPortInterface s_axis_im_tdata_2 Type Fix_16_15
	dict set TopLevelPortInterface s_axis_im_tdata_2 ArithmeticType xlSigned
	dict set TopLevelPortInterface s_axis_im_tdata_2 BinaryPoint 15
	dict set TopLevelPortInterface s_axis_im_tdata_2 Width 16
	dict set TopLevelPortInterface s_axis_im_tdata_2 DatFile {decimator_ssr_decimator_ssr_ip_s_axis_im_tdata_s_axis_im_tdata_2.dat}
	dict set TopLevelPortInterface s_axis_im_tdata_2 IconText {s_axis_im_tdata_2}
	dict set TopLevelPortInterface s_axis_im_tdata_2 Direction in
	dict set TopLevelPortInterface s_axis_im_tdata_2 Period 1
	dict set TopLevelPortInterface s_axis_im_tdata_2 Interface 0
	dict set TopLevelPortInterface s_axis_im_tdata_2 InterfaceName {}
	dict set TopLevelPortInterface s_axis_im_tdata_2 InterfaceString {DATA}
	dict set TopLevelPortInterface s_axis_im_tdata_2 ClockDomain {decimator_ssr_ip}
	dict set TopLevelPortInterface s_axis_im_tdata_2 Locs {}
	dict set TopLevelPortInterface s_axis_im_tdata_2 IOStandard {}
	dict set TopLevelPortInterface s_axis_im_tdata_1 Name {s_axis_im_tdata_1}
	dict set TopLevelPortInterface s_axis_im_tdata_1 Type Fix_16_15
	dict set TopLevelPortInterface s_axis_im_tdata_1 ArithmeticType xlSigned
	dict set TopLevelPortInterface s_axis_im_tdata_1 BinaryPoint 15
	dict set TopLevelPortInterface s_axis_im_tdata_1 Width 16
	dict set TopLevelPortInterface s_axis_im_tdata_1 DatFile {decimator_ssr_decimator_ssr_ip_s_axis_im_tdata_s_axis_im_tdata_1.dat}
	dict set TopLevelPortInterface s_axis_im_tdata_1 IconText {s_axis_im_tdata_1}
	dict set TopLevelPortInterface s_axis_im_tdata_1 Direction in
	dict set TopLevelPortInterface s_axis_im_tdata_1 Period 1
	dict set TopLevelPortInterface s_axis_im_tdata_1 Interface 0
	dict set TopLevelPortInterface s_axis_im_tdata_1 InterfaceName {}
	dict set TopLevelPortInterface s_axis_im_tdata_1 InterfaceString {DATA}
	dict set TopLevelPortInterface s_axis_im_tdata_1 ClockDomain {decimator_ssr_ip}
	dict set TopLevelPortInterface s_axis_im_tdata_1 Locs {}
	dict set TopLevelPortInterface s_axis_im_tdata_1 IOStandard {}
	dict set TopLevelPortInterface s_axis_im_tdata_0 Name {s_axis_im_tdata_0}
	dict set TopLevelPortInterface s_axis_im_tdata_0 Type Fix_16_15
	dict set TopLevelPortInterface s_axis_im_tdata_0 ArithmeticType xlSigned
	dict set TopLevelPortInterface s_axis_im_tdata_0 BinaryPoint 15
	dict set TopLevelPortInterface s_axis_im_tdata_0 Width 16
	dict set TopLevelPortInterface s_axis_im_tdata_0 DatFile {decimator_ssr_decimator_ssr_ip_s_axis_im_tdata_s_axis_im_tdata_0.dat}
	dict set TopLevelPortInterface s_axis_im_tdata_0 IconText {s_axis_im_tdata_0}
	dict set TopLevelPortInterface s_axis_im_tdata_0 Direction in
	dict set TopLevelPortInterface s_axis_im_tdata_0 Period 1
	dict set TopLevelPortInterface s_axis_im_tdata_0 Interface 0
	dict set TopLevelPortInterface s_axis_im_tdata_0 InterfaceName {}
	dict set TopLevelPortInterface s_axis_im_tdata_0 InterfaceString {DATA}
	dict set TopLevelPortInterface s_axis_im_tdata_0 ClockDomain {decimator_ssr_ip}
	dict set TopLevelPortInterface s_axis_im_tdata_0 Locs {}
	dict set TopLevelPortInterface s_axis_im_tdata_0 IOStandard {}
	dict set TopLevelPortInterface s_axis_re_tvalid Name {s_axis_re_tvalid}
	dict set TopLevelPortInterface s_axis_re_tvalid Type Bool
	dict set TopLevelPortInterface s_axis_re_tvalid ArithmeticType xlUnsigned
	dict set TopLevelPortInterface s_axis_re_tvalid BinaryPoint 0
	dict set TopLevelPortInterface s_axis_re_tvalid Width 1
	dict set TopLevelPortInterface s_axis_re_tvalid DatFile {decimator_ssr_decimator_ssr_ip_s_axis_re_tvalid.dat}
	dict set TopLevelPortInterface s_axis_re_tvalid IconText {s_axis_re_tvalid}
	dict set TopLevelPortInterface s_axis_re_tvalid Direction in
	dict set TopLevelPortInterface s_axis_re_tvalid Period 1
	dict set TopLevelPortInterface s_axis_re_tvalid Interface 0
	dict set TopLevelPortInterface s_axis_re_tvalid InterfaceName {}
	dict set TopLevelPortInterface s_axis_re_tvalid InterfaceString {DATA}
	dict set TopLevelPortInterface s_axis_re_tvalid ClockDomain {decimator_ssr_ip}
	dict set TopLevelPortInterface s_axis_re_tvalid Locs {}
	dict set TopLevelPortInterface s_axis_re_tvalid IOStandard {}
	dict set TopLevelPortInterface s_axis_im_tvalid Name {s_axis_im_tvalid}
	dict set TopLevelPortInterface s_axis_im_tvalid Type Bool
	dict set TopLevelPortInterface s_axis_im_tvalid ArithmeticType xlUnsigned
	dict set TopLevelPortInterface s_axis_im_tvalid BinaryPoint 0
	dict set TopLevelPortInterface s_axis_im_tvalid Width 1
	dict set TopLevelPortInterface s_axis_im_tvalid DatFile {decimator_ssr_decimator_ssr_ip_s_axis_im_tvalid.dat}
	dict set TopLevelPortInterface s_axis_im_tvalid IconText {s_axis_im_tvalid}
	dict set TopLevelPortInterface s_axis_im_tvalid Direction in
	dict set TopLevelPortInterface s_axis_im_tvalid Period 1
	dict set TopLevelPortInterface s_axis_im_tvalid Interface 0
	dict set TopLevelPortInterface s_axis_im_tvalid InterfaceName {}
	dict set TopLevelPortInterface s_axis_im_tvalid InterfaceString {DATA}
	dict set TopLevelPortInterface s_axis_im_tvalid ClockDomain {decimator_ssr_ip}
	dict set TopLevelPortInterface s_axis_im_tvalid Locs {}
	dict set TopLevelPortInterface s_axis_im_tvalid IOStandard {}
	dict set TopLevelPortInterface s_axis_tready Name {s_axis_tready}
	dict set TopLevelPortInterface s_axis_tready Type UFix_1_0
	dict set TopLevelPortInterface s_axis_tready ArithmeticType xlUnsigned
	dict set TopLevelPortInterface s_axis_tready BinaryPoint 0
	dict set TopLevelPortInterface s_axis_tready Width 1
	dict set TopLevelPortInterface s_axis_tready DatFile {decimator_ssr_decimator_ssr_ip_s_axis_tready.dat}
	dict set TopLevelPortInterface s_axis_tready IconText {s_axis_tready}
	dict set TopLevelPortInterface s_axis_tready Direction out
	dict set TopLevelPortInterface s_axis_tready Period 1
	dict set TopLevelPortInterface s_axis_tready Interface 0
	dict set TopLevelPortInterface s_axis_tready InterfaceName {}
	dict set TopLevelPortInterface s_axis_tready InterfaceString {DATA}
	dict set TopLevelPortInterface s_axis_tready ClockDomain {decimator_ssr_ip}
	dict set TopLevelPortInterface s_axis_tready Locs {}
	dict set TopLevelPortInterface s_axis_tready IOStandard {}
	dict set TopLevelPortInterface m_axis_tvalid Name {m_axis_tvalid}
	dict set TopLevelPortInterface m_axis_tvalid Type UFix_1_0
	dict set TopLevelPortInterface m_axis_tvalid ArithmeticType xlUnsigned
	dict set TopLevelPortInterface m_axis_tvalid BinaryPoint 0
	dict set TopLevelPortInterface m_axis_tvalid Width 1
	dict set TopLevelPortInterface m_axis_tvalid DatFile {decimator_ssr_decimator_ssr_ip_m_axis_tvalid.dat}
	dict set TopLevelPortInterface m_axis_tvalid IconText {m_axis_tvalid}
	dict set TopLevelPortInterface m_axis_tvalid Direction out
	dict set TopLevelPortInterface m_axis_tvalid Period 1
	dict set TopLevelPortInterface m_axis_tvalid Interface 0
	dict set TopLevelPortInterface m_axis_tvalid InterfaceName {}
	dict set TopLevelPortInterface m_axis_tvalid InterfaceString {DATA}
	dict set TopLevelPortInterface m_axis_tvalid ClockDomain {decimator_ssr_ip}
	dict set TopLevelPortInterface m_axis_tvalid Locs {}
	dict set TopLevelPortInterface m_axis_tvalid IOStandard {}
	dict set TopLevelPortInterface m_axis_tdata Name {m_axis_tdata}
	dict set TopLevelPortInterface m_axis_tdata Type UFix_32_0
	dict set TopLevelPortInterface m_axis_tdata ArithmeticType xlUnsigned
	dict set TopLevelPortInterface m_axis_tdata BinaryPoint 0
	dict set TopLevelPortInterface m_axis_tdata Width 32
	dict set TopLevelPortInterface m_axis_tdata DatFile {decimator_ssr_decimator_ssr_ip_m_axis_tdata.dat}
	dict set TopLevelPortInterface m_axis_tdata IconText {m_axis_tdata}
	dict set TopLevelPortInterface m_axis_tdata Direction out
	dict set TopLevelPortInterface m_axis_tdata Period 1
	dict set TopLevelPortInterface m_axis_tdata Interface 0
	dict set TopLevelPortInterface m_axis_tdata InterfaceName {}
	dict set TopLevelPortInterface m_axis_tdata InterfaceString {DATA}
	dict set TopLevelPortInterface m_axis_tdata ClockDomain {decimator_ssr_ip}
	dict set TopLevelPortInterface m_axis_tdata Locs {}
	dict set TopLevelPortInterface m_axis_tdata IOStandard {}
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
	dict set TopLevelPortInterface clk ClockDomain {decimator_ssr_ip}
	dict set TopLevelPortInterface clk Locs {}
	dict set TopLevelPortInterface clk IOStandard {}
	dict set TopLevelPortInterface clk AssociatedInterfaces {}
	dict set TopLevelPortInterface clk AssociatedResets {}
	set MemoryMappedPort {}
}

source SgPaProject.tcl
::xilinx::dsp::planaheadworker::dsp_create_project
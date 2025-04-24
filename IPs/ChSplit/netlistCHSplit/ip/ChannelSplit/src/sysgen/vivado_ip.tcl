#-----------------------------------------------------------------
# Vitis Model Composer version 2024.1 IP Tcl source file.
#
# Copyright(C) 1995-2022 by Xilinx, Inc. All rights reserved.
# Copyright(C) 2022-2024 by Advanced Micro Devices, Inc. All rights reserved.
#
# This text/file contains proprietary, confidential information of Xilinx,
# Inc., is distributed under license from Xilinx, Inc., and may be used,
# copied and/or disclosed only pursuant to the terms of a valid license
# agreement with Xilinx, Inc.  Xilinx hereby grants you a license to use
# this text/file solely for design, simulation, implementation and
# creation of design files limited to Xilinx devices or technologies.
# Use with non-Xilinx devices or technologies is expressly prohibited
# and immediately terminates your license unless covered by a separate
# agreement.
#
# Xilinx is providing this design, code, or information "as is" solely
# for use in developing programs and solutions for Xilinx devices.  By
# providing this design, code, or information as one possible
# implementation of this feature, application or standard, Xilinx is
# making no representation that this implementation is free from any
# claims of infringement.  You are responsible for obtaining any rights
# you may require for your implementation.  Xilinx expressly disclaims
# any warranty whatsoever with respect to the adequacy of the
# implementation, including but not limited to warranties of
# merchantability or fitness for a particular purpose.
#
# Xilinx products are not intended for use in life support appliances,
# devices, or systems.  Use in such applications is expressly prohibited.
#
# Any modifications that are made to the source code are done at the user's
# sole risk and will be unsupported.
#
# This copyright and support notice must be retained as part of this
# text at all times.
#-----------------------------------------------------------------

set existingipslist [get_ips]
if {[lsearch $existingipslist channelsplit_c_addsub_v12_0_i0] < 0} {
create_ip -name c_addsub -version 12.0 -vendor xilinx.com -library ip -module_name channelsplit_c_addsub_v12_0_i0
set params_list [list]
lappend params_list CONFIG.Component_Name {channelsplit_c_addsub_v12_0_i0}
lappend params_list CONFIG.AINIT_Value {0}
lappend params_list CONFIG.A_Type {Signed}
lappend params_list CONFIG.A_Width {33}
lappend params_list CONFIG.Add_Mode {Subtract}
lappend params_list CONFIG.B_Constant {false}
lappend params_list CONFIG.B_Type {Signed}
lappend params_list CONFIG.B_Value {0}
lappend params_list CONFIG.B_Width {33}
lappend params_list CONFIG.Borrow_Sense {Active_Low}
lappend params_list CONFIG.Bypass {false}
lappend params_list CONFIG.Bypass_CE_Priority {Bypass_Overrides_CE}
lappend params_list CONFIG.Bypass_Sense {Active_Low}
lappend params_list CONFIG.CE {true}
lappend params_list CONFIG.C_In {false}
lappend params_list CONFIG.C_Out {false}
lappend params_list CONFIG.Implementation {Fabric}
lappend params_list CONFIG.Latency {1}
lappend params_list CONFIG.Out_Width {33}
lappend params_list CONFIG.SCLR {false}
lappend params_list CONFIG.SINIT {false}
lappend params_list CONFIG.SINIT_Value {0}
lappend params_list CONFIG.SSET {false}
lappend params_list CONFIG.Sync_CE_Priority {Sync_Overrides_CE}
lappend params_list CONFIG.Sync_Ctrl_Priority {Reset_Overrides_Set}

set_property -dict $params_list [get_ips channelsplit_c_addsub_v12_0_i0]
}


set existingipslist [get_ips]
if {[lsearch $existingipslist channelsplit_c_addsub_v12_0_i1] < 0} {
create_ip -name c_addsub -version 12.0 -vendor xilinx.com -library ip -module_name channelsplit_c_addsub_v12_0_i1
set params_list [list]
lappend params_list CONFIG.Component_Name {channelsplit_c_addsub_v12_0_i1}
lappend params_list CONFIG.AINIT_Value {0}
lappend params_list CONFIG.A_Type {Signed}
lappend params_list CONFIG.A_Width {33}
lappend params_list CONFIG.Add_Mode {Add}
lappend params_list CONFIG.B_Constant {false}
lappend params_list CONFIG.B_Type {Signed}
lappend params_list CONFIG.B_Value {0}
lappend params_list CONFIG.B_Width {33}
lappend params_list CONFIG.Borrow_Sense {Active_Low}
lappend params_list CONFIG.Bypass {false}
lappend params_list CONFIG.Bypass_CE_Priority {Bypass_Overrides_CE}
lappend params_list CONFIG.Bypass_Sense {Active_Low}
lappend params_list CONFIG.CE {true}
lappend params_list CONFIG.C_In {false}
lappend params_list CONFIG.C_Out {false}
lappend params_list CONFIG.Implementation {Fabric}
lappend params_list CONFIG.Latency {1}
lappend params_list CONFIG.Out_Width {33}
lappend params_list CONFIG.SCLR {false}
lappend params_list CONFIG.SINIT {false}
lappend params_list CONFIG.SINIT_Value {0}
lappend params_list CONFIG.SSET {false}
lappend params_list CONFIG.Sync_CE_Priority {Sync_Overrides_CE}
lappend params_list CONFIG.Sync_Ctrl_Priority {Reset_Overrides_Set}

set_property -dict $params_list [get_ips channelsplit_c_addsub_v12_0_i1]
}


set existingipslist [get_ips]
if {[lsearch $existingipslist channelsplit_fir_compiler_v7_2_i0] < 0} {
create_ip -name fir_compiler -version 7.2 -vendor xilinx.com -library ip -module_name channelsplit_fir_compiler_v7_2_i0
set params_list [list]
lappend params_list CONFIG.Component_Name {channelsplit_fir_compiler_v7_2_i0}
lappend params_list CONFIG.BestPrecision {false}
lappend params_list CONFIG.Blank_Output {false}
lappend params_list CONFIG.Channel_Sequence {Basic}
lappend params_list CONFIG.Clock_Frequency {300.0}
lappend params_list CONFIG.CoefficientSource {Vector}
lappend params_list CONFIG.CoefficientVector {binary:145B62E192B721BFCAD5CF100424243F7102D1CE5722EB3B836E155A7A2312BFB1B32BAAE6EE36BFF0EAFDBB2D314A3FE835C5A5AFD7353C388604AC6C4D62BFD2AAFEAC1C456F3FA23FFF58A2F565BFBD284469721E62BCB8ED20306F654E3F957C77EFEE67433F113A1683AD1E59BF51DCFDD04675393C92021D3E88A7593F60249702BE6141BFA7C4568C1F7D52BF6411D84114B369BCFB8DF836A7EC643F32E1D97AC03763BFB3864B70B2D520BF1BBF419F54BC2ABC24F2A475D1786B3FAD728C9A289772BFB5FC6E4A1630593FDA332BDAB8975DBC82E50ECA77396D3F32F4B06F37437BBF7D191726CFF86E3F9968ABA48FF6373C89BFA22DBA7D663F02617803775880BFF01F1813F4AE793FF9DA155AF2FC7F3CDBADADC06827403F5CCA85B4C8517FBFE519D908BE52813FE8432A525F759C3C5DD2EDEE819D6CBF70F722F14E1D73BF227A6D1BE0A3833FAA2231CB72777DBCF8A536BB336883BFFC596C25BDFB613FE666EED5F6A5813F75994D7C4488903CA4C682D5456B92BF5E435B30D92A8F3F4BB2BA3389176E3F0FECE94C0632AA3C549AFB2F1C09A0BFAC0BD42DCE9FA53FD0C57C6AB2C887BF9CB835461CB1B73C2A289B609E05B1BF0567B7FC31E4C33F54F898706422C2BF9C153EFBB9C0EBBC54F898706422C23F0567B7FC31E4C3BFA2279B609E05B13FA868ABE062DFC43CCFC57C6AB2C8873FAC0BD42DCE9FA5BF149AFB2F1C09A03FA12C4066EF35AABC4BB2BA3389176EBF5E435B30D92A8FBF11C682D5456B923FC0A1C3C2AF8E90BC2D67EED5F6A581BFFC596C25BDFB61BFF8A536BB3368833F305B43A868647D3C717A6D1BE0A383BF70F722F14E1D733F5DD2EDEE819D6C3FAB88A626B962913C2A1AD908BE5281BF5CCA85B4C8517F3FDBADADC0682740BF44EA7FA508638E3C57201813F4AE79BF026178037758803F30BFA22DBA7D66BF67169E0D093C743C751A1726CFF86EBF32F4B06F37437B3F0EE50ECA77396DBF6D66972BC9767EBCB4FC6E4A163059BFAD728C9A2897723FB7F1A475D1786BBF1CB2D038220392BCB2864B70B2D5203F32E1D97AC037633F7D8DF836A7EC64BFB6E7371834BA693CCCC4568C1F7D523F60249702BE61413FF7011D3E88A759BF5B9A6B90ED4339BC5C3A1683AD1E593F957C77EFEE6743BFD6ED20306F654EBF64D0D0093FA16DBCF93FFF58A2F5653FD2AAFEAC1C456FBF388604AC6C4D623F0E00A92125C2963C72EBFDBB2D314ABFB1B32BAAE6EE363FDB6D155A7A23123F825B10C223444C3C9DD5CF10042424BF145B62E192B7213F0000000000000000CBD5CF100424243F55D57837366630BF806E155A7A23123FB2D8EAD2FBF802BC03EBFDBB2D314A3FD0BD73E4FB9961BF3B8604AC6C4D623F2232F79E9CDE493CB73FFF58A2F565BF72B778F50AE3673FB6ED20306F654EBFE8BB74D2F014283C2F3A1683AD1E59BF7210566AE20C673F8A021D3E88A759BF109D9A3086C22CBCC0C4568C1F7D52BFBEE65CF4309F6A3FC68DF836A7EC64BFCD66F27C90276DBCAC864B70B2D520BF7D63D6A08E4C683F12F2A475D1786BBFC3E54CC5DC1167BCE2FC6E4A1630593FDF44B7D9EF3E593F2EE50ECA77396DBF235AF5AB3F1C5E3CFA191726CFF86E3F16B26D57E6BC55BF17BFA22DBA7D66BF4B041CF3980B7BBCC21F1813F4AE793F6B9435344E3277BFE6ADADC0682740BF6024C813023C8EBCEC19D908BE52813F67E34BEE94ED86BF32D2EDEE819D6C3F562C62AF72FF8CBC567A6D1BE0A3833FF9ABC9CD55C991BFB0A536BB3368833FB7F7884C62C9333C3B67EED5F6A5813FAFC95A967AFC97BF37C682D5456B923FD9089DB8A956933C2DB2BA3389176E3FA612823FAD399DBF529AFB2F1C09A03F931EF41FF558B93CEEC57C6AB2C887BF079DD19E845CA0BF79279B609E05B13F08154E1D1DF8B5BC93F898706422C2BFBCE176ADA7C1CB3F92F898706422C2BFA7423DA277EDB5BC01289B609E05B13F079DD19E845CA0BFEDC57C6AB2C887BFE8804781C2E3B1BC929AFB2F1C09A03FA612823FAD399DBF2DB2BA3389176E3F1BB730846E7DA5BCC9C682D5456B923FAFC95A967AFC97BFF566EED5F6A5813F903B92113E5C81BCAFA536BB3368833FF9ABC9CD55C991BF077A6D1BE0A3833F6E4596299DB9973C31D2EDEE819D6C3F67E34BEE94ED86BFA719D908BE52813F829637FABBC1A73CE6ADADC0682740BF6B9435344E3277BF5C1F1813F4AE793FC7BAA89658147BBC70BFA22DBA7D66BF16B26D57E6BC55BF02191726CFF86E3F2E8A93BD10FF5D3CA2E50ECA77396DBFDF44B7D9EF3E593FE2FC6E4A1630593F089BF13469A0793C7FF2A475D1786BBF7D63D6A08E4C683FAC864B70B2D520BF760D6E6B26D9773C448EF836A7EC64BFBEE65CF4309F6A3F9CC4568C1F7D52BFE55C44D7D7285F3C24031D3E88A759BF7210566AE20C673FE3391683AD1E59BFBD4E103F4FBF66BC97ED20306F654EBF72B778F50AE3673F5F3FFF58A2F565BF35C9EFD3D4A396BC3B8604AC6C4D623FD0BD73E4FB9961BF81EAFDBB2D314A3F56D87846295439BC286F155A7A23123F55D57837366630BFF9D5CF100424243FED1B6528FBB6513C}
lappend params_list CONFIG.Coefficient_Buffer_Type {Automatic}
lappend params_list CONFIG.Coefficient_Fanout {false}
lappend params_list CONFIG.Coefficient_File {no_coe_file_loaded}
lappend params_list CONFIG.Coefficient_Fractional_Bits {15}
lappend params_list CONFIG.Coefficient_Reload {false}
lappend params_list CONFIG.Coefficient_Sets {2}
lappend params_list CONFIG.Coefficient_Sign {Signed}
lappend params_list CONFIG.Coefficient_Structure {Inferred}
lappend params_list CONFIG.Coefficient_Width {16}
lappend params_list CONFIG.ColumnConfig {117}
lappend params_list CONFIG.Control_Broadcast_Fanout {false}
lappend params_list CONFIG.Control_Column_Fanout {false}
lappend params_list CONFIG.Control_LUT_Pipeline {false}
lappend params_list CONFIG.Control_Path_Fanout {false}
lappend params_list CONFIG.DATA_Has_TLAST {Not_Required}
lappend params_list CONFIG.DATA_TUSER_Width {1}
lappend params_list CONFIG.Data_Buffer_Type {Automatic}
lappend params_list CONFIG.Data_Fractional_Bits {14}
lappend params_list CONFIG.Data_Path_Broadcast {false}
lappend params_list CONFIG.Data_Path_Fanout {false}
lappend params_list CONFIG.Data_Sign {Signed}
lappend params_list CONFIG.Data_Width {16}
lappend params_list CONFIG.Decimation_Rate {1}
lappend params_list CONFIG.Disable_Half_Band_Centre_Tap {false}
lappend params_list CONFIG.DisplayReloadOrder {false}
lappend params_list CONFIG.Filter_Architecture {Systolic_Multiply_Accumulate}
lappend params_list CONFIG.Filter_Selection {1}
lappend params_list CONFIG.Filter_Type {Single_Rate}
lappend params_list CONFIG.GUI_Behaviour {Sysgen_uUPP}
lappend params_list CONFIG.Gen_MIF_Files {false}
lappend params_list CONFIG.Gen_MIF_from_COE {false}
lappend params_list CONFIG.Gen_MIF_from_Spec {false}
lappend params_list CONFIG.HardwareOversamplingRate {1}
lappend params_list CONFIG.Has_ACLKEN {true}
lappend params_list CONFIG.Has_ARESETn {false}
lappend params_list CONFIG.Input_Buffer_Type {Automatic}
lappend params_list CONFIG.Inter_Column_Pipe_Length {4}
lappend params_list CONFIG.Interpolation_Rate {1}
lappend params_list CONFIG.M_DATA_Has_TREADY {false}
lappend params_list CONFIG.M_DATA_Has_TUSER {Not_Required}
lappend params_list CONFIG.Multi_Column_Support {Automatic}
lappend params_list CONFIG.No_BRAM_Read_First_Mode {false}
lappend params_list CONFIG.No_SRL_Attributes {false}
lappend params_list CONFIG.Num_Reload_Slots {1}
lappend params_list CONFIG.Number_Channels {2}
lappend params_list CONFIG.Number_Paths {1}
lappend params_list CONFIG.Optimal_Column_Lengths {false}
lappend params_list CONFIG.Optimization_Goal {Area}
lappend params_list CONFIG.Optimization_List {None}
lappend params_list CONFIG.Optimization_Selection {None}
lappend params_list CONFIG.Other {false}
lappend params_list CONFIG.Output_Buffer_Type {Automatic}
lappend params_list CONFIG.Output_Rounding_Mode {Full_Precision}
lappend params_list CONFIG.Output_Width {32}
lappend params_list CONFIG.Passband_Max {0.50000000}
lappend params_list CONFIG.Passband_Min {0.00000000}
lappend params_list CONFIG.Pattern_List {P4-0,P4-1,P4-2,P4-3,P4-4}
lappend params_list CONFIG.Pre_Adder_Pipeline {false}
lappend params_list CONFIG.Preference_For_Other_Storage {Automatic}
lappend params_list CONFIG.Quantization {Quantize_Only}
lappend params_list CONFIG.RateSpecification {Maximum_Possible}
lappend params_list CONFIG.Rate_Change_Type {Integer}
lappend params_list CONFIG.Reload_File {no_coe_file_loaded}
lappend params_list CONFIG.Reset_Data_Vector {true}
lappend params_list CONFIG.S_CONFIG_Method {By_Channel}
lappend params_list CONFIG.S_CONFIG_Sync_Mode {On_Vector}
lappend params_list CONFIG.S_DATA_Has_FIFO {false}
lappend params_list CONFIG.S_DATA_Has_TUSER {Not_Required}
lappend params_list CONFIG.SamplePeriod {1}
lappend params_list CONFIG.Sample_Frequency {0.001}
lappend params_list CONFIG.Select_Pattern {All}
lappend params_list CONFIG.Stopband_Max {1.00000000}
lappend params_list CONFIG.Stopband_Min {0.50000000}
lappend params_list CONFIG.Zero_Pack_Factor {1}

set_property -dict $params_list [get_ips channelsplit_fir_compiler_v7_2_i0]
}


set existingipslist [get_ips]
if {[lsearch $existingipslist channelsplit_fir_compiler_v7_2_i1] < 0} {
create_ip -name fir_compiler -version 7.2 -vendor xilinx.com -library ip -module_name channelsplit_fir_compiler_v7_2_i1
set params_list [list]
lappend params_list CONFIG.Component_Name {channelsplit_fir_compiler_v7_2_i1}
lappend params_list CONFIG.BestPrecision {false}
lappend params_list CONFIG.Blank_Output {false}
lappend params_list CONFIG.Channel_Sequence {Basic}
lappend params_list CONFIG.Clock_Frequency {300.0}
lappend params_list CONFIG.CoefficientSource {Vector}
lappend params_list CONFIG.CoefficientVector {binary:0000000000000000CBD5CF100424243F55D57837366630BF806E155A7A23123FB2D8EAD2FBF802BC03EBFDBB2D314A3FD0BD73E4FB9961BF3B8604AC6C4D623F2232F79E9CDE493CB73FFF58A2F565BF72B778F50AE3673FB6ED20306F654EBFE8BB74D2F014283C2F3A1683AD1E59BF7210566AE20C673F8A021D3E88A759BF109D9A3086C22CBCC0C4568C1F7D52BFBEE65CF4309F6A3FC68DF836A7EC64BFCD66F27C90276DBCAC864B70B2D520BF7D63D6A08E4C683F12F2A475D1786BBFC3E54CC5DC1167BCE2FC6E4A1630593FDF44B7D9EF3E593F2EE50ECA77396DBF235AF5AB3F1C5E3CFA191726CFF86E3F16B26D57E6BC55BF17BFA22DBA7D66BF4B041CF3980B7BBCC21F1813F4AE793F6B9435344E3277BFE6ADADC0682740BF6024C813023C8EBCEC19D908BE52813F67E34BEE94ED86BF32D2EDEE819D6C3F562C62AF72FF8CBC567A6D1BE0A3833FF9ABC9CD55C991BFB0A536BB3368833FB7F7884C62C9333C3B67EED5F6A5813FAFC95A967AFC97BF37C682D5456B923FD9089DB8A956933C2DB2BA3389176E3FA612823FAD399DBF529AFB2F1C09A03F931EF41FF558B93CEEC57C6AB2C887BF079DD19E845CA0BF79279B609E05B13F08154E1D1DF8B5BC93F898706422C2BFBCE176ADA7C1CB3F92F898706422C2BFA7423DA277EDB5BC01289B609E05B13F079DD19E845CA0BFEDC57C6AB2C887BFE8804781C2E3B1BC929AFB2F1C09A03FA612823FAD399DBF2DB2BA3389176E3F1BB730846E7DA5BCC9C682D5456B923FAFC95A967AFC97BFF566EED5F6A5813F903B92113E5C81BCAFA536BB3368833FF9ABC9CD55C991BF077A6D1BE0A3833F6E4596299DB9973C31D2EDEE819D6C3F67E34BEE94ED86BFA719D908BE52813F829637FABBC1A73CE6ADADC0682740BF6B9435344E3277BF5C1F1813F4AE793FC7BAA89658147BBC70BFA22DBA7D66BF16B26D57E6BC55BF02191726CFF86E3F2E8A93BD10FF5D3CA2E50ECA77396DBFDF44B7D9EF3E593FE2FC6E4A1630593F089BF13469A0793C7FF2A475D1786BBF7D63D6A08E4C683FAC864B70B2D520BF760D6E6B26D9773C448EF836A7EC64BFBEE65CF4309F6A3F9CC4568C1F7D52BFE55C44D7D7285F3C24031D3E88A759BF7210566AE20C673FE3391683AD1E59BFBD4E103F4FBF66BC97ED20306F654EBF72B778F50AE3673F5F3FFF58A2F565BF35C9EFD3D4A396BC3B8604AC6C4D623FD0BD73E4FB9961BF81EAFDBB2D314A3F56D87846295439BC286F155A7A23123F55D57837366630BFF9D5CF100424243FED1B6528FBB6513C145B62E192B721BFCAD5CF100424243F7102D1CE5722EB3B836E155A7A2312BFB1B32BAAE6EE36BFF0EAFDBB2D314A3FE835C5A5AFD7353C388604AC6C4D62BFD2AAFEAC1C456F3FA23FFF58A2F565BFBD284469721E62BCB8ED20306F654E3F957C77EFEE67433F113A1683AD1E59BF51DCFDD04675393C92021D3E88A7593F60249702BE6141BFA7C4568C1F7D52BF6411D84114B369BCFB8DF836A7EC643F32E1D97AC03763BFB3864B70B2D520BF1BBF419F54BC2ABC24F2A475D1786B3FAD728C9A289772BFB5FC6E4A1630593FDA332BDAB8975DBC82E50ECA77396D3F32F4B06F37437BBF7D191726CFF86E3F9968ABA48FF6373C89BFA22DBA7D663F02617803775880BFF01F1813F4AE793FF9DA155AF2FC7F3CDBADADC06827403F5CCA85B4C8517FBFE519D908BE52813FE8432A525F759C3C5DD2EDEE819D6CBF70F722F14E1D73BF227A6D1BE0A3833FAA2231CB72777DBCF8A536BB336883BFFC596C25BDFB613FE666EED5F6A5813F75994D7C4488903CA4C682D5456B92BF5E435B30D92A8F3F4BB2BA3389176E3F0FECE94C0632AA3C549AFB2F1C09A0BFAC0BD42DCE9FA53FD0C57C6AB2C887BF9CB835461CB1B73C2A289B609E05B1BF0567B7FC31E4C33F54F898706422C2BF9C153EFBB9C0EBBC54F898706422C23F0567B7FC31E4C3BFA2279B609E05B13FA868ABE062DFC43CCFC57C6AB2C8873FAC0BD42DCE9FA5BF149AFB2F1C09A03FA12C4066EF35AABC4BB2BA3389176EBF5E435B30D92A8FBF11C682D5456B923FC0A1C3C2AF8E90BC2D67EED5F6A581BFFC596C25BDFB61BFF8A536BB3368833F305B43A868647D3C717A6D1BE0A383BF70F722F14E1D733F5DD2EDEE819D6C3FAB88A626B962913C2A1AD908BE5281BF5CCA85B4C8517F3FDBADADC0682740BF44EA7FA508638E3C57201813F4AE79BF026178037758803F30BFA22DBA7D66BF67169E0D093C743C751A1726CFF86EBF32F4B06F37437B3F0EE50ECA77396DBF6D66972BC9767EBCB4FC6E4A163059BFAD728C9A2897723FB7F1A475D1786BBF1CB2D038220392BCB2864B70B2D5203F32E1D97AC037633F7D8DF836A7EC64BFB6E7371834BA693CCCC4568C1F7D523F60249702BE61413FF7011D3E88A759BF5B9A6B90ED4339BC5C3A1683AD1E593F957C77EFEE6743BFD6ED20306F654EBF64D0D0093FA16DBCF93FFF58A2F5653FD2AAFEAC1C456FBF388604AC6C4D623F0E00A92125C2963C72EBFDBB2D314ABFB1B32BAAE6EE363FDB6D155A7A23123F825B10C223444C3C9DD5CF10042424BF145B62E192B7213F}
lappend params_list CONFIG.Coefficient_Buffer_Type {Automatic}
lappend params_list CONFIG.Coefficient_Fanout {false}
lappend params_list CONFIG.Coefficient_File {no_coe_file_loaded}
lappend params_list CONFIG.Coefficient_Fractional_Bits {15}
lappend params_list CONFIG.Coefficient_Reload {false}
lappend params_list CONFIG.Coefficient_Sets {2}
lappend params_list CONFIG.Coefficient_Sign {Signed}
lappend params_list CONFIG.Coefficient_Structure {Inferred}
lappend params_list CONFIG.Coefficient_Width {16}
lappend params_list CONFIG.ColumnConfig {117}
lappend params_list CONFIG.Control_Broadcast_Fanout {false}
lappend params_list CONFIG.Control_Column_Fanout {false}
lappend params_list CONFIG.Control_LUT_Pipeline {false}
lappend params_list CONFIG.Control_Path_Fanout {false}
lappend params_list CONFIG.DATA_Has_TLAST {Not_Required}
lappend params_list CONFIG.DATA_TUSER_Width {1}
lappend params_list CONFIG.Data_Buffer_Type {Automatic}
lappend params_list CONFIG.Data_Fractional_Bits {14}
lappend params_list CONFIG.Data_Path_Broadcast {false}
lappend params_list CONFIG.Data_Path_Fanout {false}
lappend params_list CONFIG.Data_Sign {Signed}
lappend params_list CONFIG.Data_Width {16}
lappend params_list CONFIG.Decimation_Rate {1}
lappend params_list CONFIG.Disable_Half_Band_Centre_Tap {false}
lappend params_list CONFIG.DisplayReloadOrder {false}
lappend params_list CONFIG.Filter_Architecture {Systolic_Multiply_Accumulate}
lappend params_list CONFIG.Filter_Selection {1}
lappend params_list CONFIG.Filter_Type {Single_Rate}
lappend params_list CONFIG.GUI_Behaviour {Sysgen_uUPP}
lappend params_list CONFIG.Gen_MIF_Files {false}
lappend params_list CONFIG.Gen_MIF_from_COE {false}
lappend params_list CONFIG.Gen_MIF_from_Spec {false}
lappend params_list CONFIG.HardwareOversamplingRate {1}
lappend params_list CONFIG.Has_ACLKEN {true}
lappend params_list CONFIG.Has_ARESETn {false}
lappend params_list CONFIG.Input_Buffer_Type {Automatic}
lappend params_list CONFIG.Inter_Column_Pipe_Length {4}
lappend params_list CONFIG.Interpolation_Rate {1}
lappend params_list CONFIG.M_DATA_Has_TREADY {false}
lappend params_list CONFIG.M_DATA_Has_TUSER {Not_Required}
lappend params_list CONFIG.Multi_Column_Support {Automatic}
lappend params_list CONFIG.No_BRAM_Read_First_Mode {false}
lappend params_list CONFIG.No_SRL_Attributes {false}
lappend params_list CONFIG.Num_Reload_Slots {1}
lappend params_list CONFIG.Number_Channels {2}
lappend params_list CONFIG.Number_Paths {1}
lappend params_list CONFIG.Optimal_Column_Lengths {false}
lappend params_list CONFIG.Optimization_Goal {Area}
lappend params_list CONFIG.Optimization_List {None}
lappend params_list CONFIG.Optimization_Selection {None}
lappend params_list CONFIG.Other {false}
lappend params_list CONFIG.Output_Buffer_Type {Automatic}
lappend params_list CONFIG.Output_Rounding_Mode {Full_Precision}
lappend params_list CONFIG.Output_Width {32}
lappend params_list CONFIG.Passband_Max {0.50000000}
lappend params_list CONFIG.Passband_Min {0.00000000}
lappend params_list CONFIG.Pattern_List {P4-0,P4-1,P4-2,P4-3,P4-4}
lappend params_list CONFIG.Pre_Adder_Pipeline {false}
lappend params_list CONFIG.Preference_For_Other_Storage {Automatic}
lappend params_list CONFIG.Quantization {Quantize_Only}
lappend params_list CONFIG.RateSpecification {Maximum_Possible}
lappend params_list CONFIG.Rate_Change_Type {Integer}
lappend params_list CONFIG.Reload_File {no_coe_file_loaded}
lappend params_list CONFIG.Reset_Data_Vector {true}
lappend params_list CONFIG.S_CONFIG_Method {By_Channel}
lappend params_list CONFIG.S_CONFIG_Sync_Mode {On_Vector}
lappend params_list CONFIG.S_DATA_Has_FIFO {false}
lappend params_list CONFIG.S_DATA_Has_TUSER {Not_Required}
lappend params_list CONFIG.SamplePeriod {1}
lappend params_list CONFIG.Sample_Frequency {0.001}
lappend params_list CONFIG.Select_Pattern {All}
lappend params_list CONFIG.Stopband_Max {1.00000000}
lappend params_list CONFIG.Stopband_Min {0.50000000}
lappend params_list CONFIG.Zero_Pack_Factor {1}

set_property -dict $params_list [get_ips channelsplit_fir_compiler_v7_2_i1]
}


set existingipslist [get_ips]
if {[lsearch $existingipslist channelsplit_fir_compiler_v7_2_i2] < 0} {
create_ip -name fir_compiler -version 7.2 -vendor xilinx.com -library ip -module_name channelsplit_fir_compiler_v7_2_i2
set params_list [list]
lappend params_list CONFIG.Component_Name {channelsplit_fir_compiler_v7_2_i2}
lappend params_list CONFIG.BestPrecision {false}
lappend params_list CONFIG.Blank_Output {false}
lappend params_list CONFIG.Channel_Sequence {Basic}
lappend params_list CONFIG.Clock_Frequency {300.0}
lappend params_list CONFIG.CoefficientSource {Vector}
lappend params_list CONFIG.CoefficientVector {binary:145B62E192B721BFD288B8085A4C24BF4416274A547CD0BEF0335030CAB4113F431F9F0C01EC36BFDC75DBD640334BBF77D0256259881ABFD620525FE144613F0C354DD550356F3F998CB087A274673FE25CC1DD7DFC2D3FCD22F216FBA84BBF5880A6AEE251433F0FF3EA8CA18C5B3F0DE25D643C3C343F204B8E13147656BF53092499A73E41BF2EC68AB213C9543F088A979526023E3F3F2E893FBC9461BFF7480D7B2EFB62BFC7F5778ACE5E233F5DBDE9AAFAB5403FE12941FCDC1666BFB0E2075FDC4272BF6AD222F5259E5DBF7A35E3EE677A343F814516AF3E6B66BFEDAFFB68229B7ABFCD1BA35D2F9572BFC6830774664C34BF569619FCDD6760BFBB9F3E2501AA7FBF26082AFB70687FBF796F5ACAD57B58BFCDC309FF415336BF8F82FC666D137EBF9B6F1A10788F85BF0617F62D93F76ABF9448B1FC9DA7623FAAFA3914D02D72BFBF8A477EA6D888BF70C15A489E0B77BF08FD879ECFC2773FC46E03C191EB603F233E8C9775AA86BF660AC07502F580BF658E0DE1A610853FC19BD6AD8BFA8C3F5B027EDB0C9873BFFBE9F33B3A5E86BF2D3FADB5F306913F3C92EFD082D8A33FF5363201B15E8F3F78BFD9908AEE8ABF31BB37DDF6A9A03F88FDF8578EFFC13F4A664C027932C83F44DF81A61C6CB83F68CADCDA8D3BB0BF7FD921E02DB9C1BF6D51108BC2F3B6BFC8ED0BDABA9F8EBFB91645375D4673BFF2D27C3010F3A2BF1C3FB54289D3A5BF8B4FAE23B9F58CBF15C9A6CE42D0553F64E472EABAD38ABFE572405FBA4799BF5AFC2D64C81089BFC30CF670E88A663F4B88AF6B215E5EBFC8D473B5B6D48ABF916A8912C58783BFADDF4836C0AC653F60391612529E6F3F82C103B9A1E773BF6DBA6FA7145E7ABF42E3FF98E716603FE75734058656793F43BB3A295B97463FAAE95F1AF5DA6BBFC77DE36D4157533FBEA79177C0D4793F44B69FFD36966F3FF6156F4FD32E4BBF8990B71787DB413F18FD8F2A9401753FF466F85C7796743F09D9017E5765503F33FFE6395D20243F42E9378CCBE36B3FAD2D46967065733FC203B046835A603FEEA888FC05E9DDBEF77FDB85B0045C3F6FD0194F59956D3F2E239A5EC786623F5B7B2B6A1E49EABED36637C4E294383FAC648AA6CD23623F19FA128E948D603F4FDB6A6058C80A3F1845BE9B91913ABF900A6A1A107A553F62E8F334E0AA613F753EA6C0D44D2B3F4C159B24E0AD64BF5AB84CD8A4D169BF8CC0A110C1C45ABFC860EEACB89119BFFC4C439E813C2D3FA665F18EAB8419BF5D4A0C03D39829BF45F155FC62C8FABEE412B031C5B7153F0000000000000000A41A5AAD5CFB233F914EDFA0B165303F6807939A968F123F41FC90471A0DE7BE1BA602DFC324493F32C3E753FB94613FF9C93669CF47633FF68DB980526A2F3F3D44BA858E5A64BF0FB42D3231D067BFD77BA20EEC7350BF9D02E39861380D3FD2E05690BE6D56BF7276D7AC3FE966BFCA48B290F07D5CBFE5F4A6CA9A6D11BFD23C15C8D5B94FBFF46E2157335B6ABF2C8EA53882CD67BFA2D49334F30C38BFAE0550393BAF1BBF42BF62C9EDEF67BF8C12F0EEE7F56FBFD552911B38DE4BBF4106D2C03ACA533F777A91BEA7B858BF40CB3399425C71BF73889D2CE0C957BFDF3FA521B32D673F7E9244222423553FE1C924BEF43F6BBF62644C52894260BF93D6508C423E723FD9DEED2BD65F763F8A131EDFA9EE43BF08251AE6C77961BF61BAF7A94944773F0DAF78F11AEA853F491FE627BAF4713FF1C4FA3676A057BF9028AA4279D4783F468A4EFFD7D3903F406AF971B6BD883F4CC581FCD75D483FF04ED4D7F0E5743F3D1EDD041370963F29FB8608F8D2973FFD3699846BF2763FFD6D7FB60B98603F5C3A42032B009B3F140A0941DE04A53F86B60A1E112D913F5704D42EAE4578BF150287AFDBD29D3FB1E40B7DB395B63F29C90E764DF0B03FA640891DB0FEB0BFB9F0E1F912EDC8BF9A599097E053C8BF4713D2D59D0FB2BFBC83B71209099D3F5110642A56EB9C3FA94F6A01D91C90BF448EF006CAD594BF708D4F89649F883F62D707F9D162993F5C8A2B2C4991743F7A00A6E920BB7FBFF3B4D1A5571E793F431356709E73943F2B053BBE5950883FCB6026FF9C4553BF41466A752E1B673F7A94650F6CBB8D3F01F62311DD3D8B3F5774F303E57C653F299E1A5205154D3F69DF425832C2823FD8A42CBD8F2A883F759DAB35BC68723FEE5EBBD6E82B1BBF594B3B94C58C723F89FC4AADD0FF813F95DE36486009743F8DF8676188E83DBF0358D15904F7503F8EC4D41951C9753FF9DFAD55B860713FED3276B08C873CBF87C165AE743253BF628021A219C4613FACCD267C9396683F0286AE273C1431BF8945A1E0EAF861BF4AC4231222CA27BF4D97A2939A4F5A3F3710FB393A4F16BF575A09052B1E63BF8AE7B6CC70255ABF6C6737C4E294383F04A188688E3CF23ED841DA40800A60BF3766C9E8E9C161BF52F39662EF4A3CBF02B517949F000B3F34D7A815801360BFAC4A11E82D026FBF32616E1FB97467BF89034B65CE3F2DBF7ACE8812CEDC563F8083CB179873523F1F15F2639BAB313FE9AD97C698EAE4BEE0335C5BCD81243FCB5E7E302A492C3F4148C9D79CFF1B3F}
lappend params_list CONFIG.Coefficient_Buffer_Type {Automatic}
lappend params_list CONFIG.Coefficient_Fanout {false}
lappend params_list CONFIG.Coefficient_File {no_coe_file_loaded}
lappend params_list CONFIG.Coefficient_Fractional_Bits {15}
lappend params_list CONFIG.Coefficient_Reload {false}
lappend params_list CONFIG.Coefficient_Sets {2}
lappend params_list CONFIG.Coefficient_Sign {Signed}
lappend params_list CONFIG.Coefficient_Structure {Inferred}
lappend params_list CONFIG.Coefficient_Width {16}
lappend params_list CONFIG.ColumnConfig {117}
lappend params_list CONFIG.Control_Broadcast_Fanout {false}
lappend params_list CONFIG.Control_Column_Fanout {false}
lappend params_list CONFIG.Control_LUT_Pipeline {false}
lappend params_list CONFIG.Control_Path_Fanout {false}
lappend params_list CONFIG.DATA_Has_TLAST {Not_Required}
lappend params_list CONFIG.DATA_TUSER_Width {1}
lappend params_list CONFIG.Data_Buffer_Type {Automatic}
lappend params_list CONFIG.Data_Fractional_Bits {14}
lappend params_list CONFIG.Data_Path_Broadcast {false}
lappend params_list CONFIG.Data_Path_Fanout {false}
lappend params_list CONFIG.Data_Sign {Signed}
lappend params_list CONFIG.Data_Width {16}
lappend params_list CONFIG.Decimation_Rate {1}
lappend params_list CONFIG.Disable_Half_Band_Centre_Tap {false}
lappend params_list CONFIG.DisplayReloadOrder {false}
lappend params_list CONFIG.Filter_Architecture {Systolic_Multiply_Accumulate}
lappend params_list CONFIG.Filter_Selection {1}
lappend params_list CONFIG.Filter_Type {Single_Rate}
lappend params_list CONFIG.GUI_Behaviour {Sysgen_uUPP}
lappend params_list CONFIG.Gen_MIF_Files {false}
lappend params_list CONFIG.Gen_MIF_from_COE {false}
lappend params_list CONFIG.Gen_MIF_from_Spec {false}
lappend params_list CONFIG.HardwareOversamplingRate {1}
lappend params_list CONFIG.Has_ACLKEN {true}
lappend params_list CONFIG.Has_ARESETn {false}
lappend params_list CONFIG.Input_Buffer_Type {Automatic}
lappend params_list CONFIG.Inter_Column_Pipe_Length {4}
lappend params_list CONFIG.Interpolation_Rate {1}
lappend params_list CONFIG.M_DATA_Has_TREADY {false}
lappend params_list CONFIG.M_DATA_Has_TUSER {Not_Required}
lappend params_list CONFIG.Multi_Column_Support {Automatic}
lappend params_list CONFIG.No_BRAM_Read_First_Mode {false}
lappend params_list CONFIG.No_SRL_Attributes {false}
lappend params_list CONFIG.Num_Reload_Slots {1}
lappend params_list CONFIG.Number_Channels {2}
lappend params_list CONFIG.Number_Paths {1}
lappend params_list CONFIG.Optimal_Column_Lengths {false}
lappend params_list CONFIG.Optimization_Goal {Area}
lappend params_list CONFIG.Optimization_List {None}
lappend params_list CONFIG.Optimization_Selection {None}
lappend params_list CONFIG.Other {false}
lappend params_list CONFIG.Output_Buffer_Type {Automatic}
lappend params_list CONFIG.Output_Rounding_Mode {Full_Precision}
lappend params_list CONFIG.Output_Width {32}
lappend params_list CONFIG.Passband_Max {0.50000000}
lappend params_list CONFIG.Passband_Min {0.00000000}
lappend params_list CONFIG.Pattern_List {P4-0,P4-1,P4-2,P4-3,P4-4}
lappend params_list CONFIG.Pre_Adder_Pipeline {false}
lappend params_list CONFIG.Preference_For_Other_Storage {Automatic}
lappend params_list CONFIG.Quantization {Quantize_Only}
lappend params_list CONFIG.RateSpecification {Maximum_Possible}
lappend params_list CONFIG.Rate_Change_Type {Integer}
lappend params_list CONFIG.Reload_File {no_coe_file_loaded}
lappend params_list CONFIG.Reset_Data_Vector {true}
lappend params_list CONFIG.S_CONFIG_Method {By_Channel}
lappend params_list CONFIG.S_CONFIG_Sync_Mode {On_Vector}
lappend params_list CONFIG.S_DATA_Has_FIFO {false}
lappend params_list CONFIG.S_DATA_Has_TUSER {Not_Required}
lappend params_list CONFIG.SamplePeriod {1}
lappend params_list CONFIG.Sample_Frequency {0.001}
lappend params_list CONFIG.Select_Pattern {All}
lappend params_list CONFIG.Stopband_Max {1.00000000}
lappend params_list CONFIG.Stopband_Min {0.50000000}
lappend params_list CONFIG.Zero_Pack_Factor {1}

set_property -dict $params_list [get_ips channelsplit_fir_compiler_v7_2_i2]
}


set existingipslist [get_ips]
if {[lsearch $existingipslist channelsplit_fir_compiler_v7_2_i3] < 0} {
create_ip -name fir_compiler -version 7.2 -vendor xilinx.com -library ip -module_name channelsplit_fir_compiler_v7_2_i3
set params_list [list]
lappend params_list CONFIG.Component_Name {channelsplit_fir_compiler_v7_2_i3}
lappend params_list CONFIG.BestPrecision {false}
lappend params_list CONFIG.Blank_Output {false}
lappend params_list CONFIG.Channel_Sequence {Basic}
lappend params_list CONFIG.Clock_Frequency {300.0}
lappend params_list CONFIG.CoefficientSource {Vector}
lappend params_list CONFIG.CoefficientVector {binary:0000000000000000A41A5AAD5CFB233F914EDFA0B165303F6807939A968F123F41FC90471A0DE7BE1BA602DFC324493F32C3E753FB94613FF9C93669CF47633FF68DB980526A2F3F3D44BA858E5A64BF0FB42D3231D067BFD77BA20EEC7350BF9D02E39861380D3FD2E05690BE6D56BF7276D7AC3FE966BFCA48B290F07D5CBFE5F4A6CA9A6D11BFD23C15C8D5B94FBFF46E2157335B6ABF2C8EA53882CD67BFA2D49334F30C38BFAE0550393BAF1BBF42BF62C9EDEF67BF8C12F0EEE7F56FBFD552911B38DE4BBF4106D2C03ACA533F777A91BEA7B858BF40CB3399425C71BF73889D2CE0C957BFDF3FA521B32D673F7E9244222423553FE1C924BEF43F6BBF62644C52894260BF93D6508C423E723FD9DEED2BD65F763F8A131EDFA9EE43BF08251AE6C77961BF61BAF7A94944773F0DAF78F11AEA853F491FE627BAF4713FF1C4FA3676A057BF9028AA4279D4783F468A4EFFD7D3903F406AF971B6BD883F4CC581FCD75D483FF04ED4D7F0E5743F3D1EDD041370963F29FB8608F8D2973FFD3699846BF2763FFD6D7FB60B98603F5C3A42032B009B3F140A0941DE04A53F86B60A1E112D913F5704D42EAE4578BF150287AFDBD29D3FB1E40B7DB395B63F29C90E764DF0B03FA640891DB0FEB0BFB9F0E1F912EDC8BF9A599097E053C8BF4713D2D59D0FB2BFBC83B71209099D3F5110642A56EB9C3FA94F6A01D91C90BF448EF006CAD594BF708D4F89649F883F62D707F9D162993F5C8A2B2C4991743F7A00A6E920BB7FBFF3B4D1A5571E793F431356709E73943F2B053BBE5950883FCB6026FF9C4553BF41466A752E1B673F7A94650F6CBB8D3F01F62311DD3D8B3F5774F303E57C653F299E1A5205154D3F69DF425832C2823FD8A42CBD8F2A883F759DAB35BC68723FEE5EBBD6E82B1BBF594B3B94C58C723F89FC4AADD0FF813F95DE36486009743F8DF8676188E83DBF0358D15904F7503F8EC4D41951C9753FF9DFAD55B860713FED3276B08C873CBF87C165AE743253BF628021A219C4613FACCD267C9396683F0286AE273C1431BF8945A1E0EAF861BF4AC4231222CA27BF4D97A2939A4F5A3F3710FB393A4F16BF575A09052B1E63BF8AE7B6CC70255ABF6C6737C4E294383F04A188688E3CF23ED841DA40800A60BF3766C9E8E9C161BF52F39662EF4A3CBF02B517949F000B3F34D7A815801360BFAC4A11E82D026FBF32616E1FB97467BF89034B65CE3F2DBF7ACE8812CEDC563F8083CB179873523F1F15F2639BAB313FE9AD97C698EAE4BEE0335C5BCD81243FCB5E7E302A492C3F4148C9D79CFF1B3F145B62E192B721BFD288B8085A4C24BF4416274A547CD0BEF0335030CAB4113F431F9F0C01EC36BFDC75DBD640334BBF77D0256259881ABFD620525FE144613F0C354DD550356F3F998CB087A274673FE25CC1DD7DFC2D3FCD22F216FBA84BBF5880A6AEE251433F0FF3EA8CA18C5B3F0DE25D643C3C343F204B8E13147656BF53092499A73E41BF2EC68AB213C9543F088A979526023E3F3F2E893FBC9461BFF7480D7B2EFB62BFC7F5778ACE5E233F5DBDE9AAFAB5403FE12941FCDC1666BFB0E2075FDC4272BF6AD222F5259E5DBF7A35E3EE677A343F814516AF3E6B66BFEDAFFB68229B7ABFCD1BA35D2F9572BFC6830774664C34BF569619FCDD6760BFBB9F3E2501AA7FBF26082AFB70687FBF796F5ACAD57B58BFCDC309FF415336BF8F82FC666D137EBF9B6F1A10788F85BF0617F62D93F76ABF9448B1FC9DA7623FAAFA3914D02D72BFBF8A477EA6D888BF70C15A489E0B77BF08FD879ECFC2773FC46E03C191EB603F233E8C9775AA86BF660AC07502F580BF658E0DE1A610853FC19BD6AD8BFA8C3F5B027EDB0C9873BFFBE9F33B3A5E86BF2D3FADB5F306913F3C92EFD082D8A33FF5363201B15E8F3F78BFD9908AEE8ABF31BB37DDF6A9A03F88FDF8578EFFC13F4A664C027932C83F44DF81A61C6CB83F68CADCDA8D3BB0BF7FD921E02DB9C1BF6D51108BC2F3B6BFC8ED0BDABA9F8EBFB91645375D4673BFF2D27C3010F3A2BF1C3FB54289D3A5BF8B4FAE23B9F58CBF15C9A6CE42D0553F64E472EABAD38ABFE572405FBA4799BF5AFC2D64C81089BFC30CF670E88A663F4B88AF6B215E5EBFC8D473B5B6D48ABF916A8912C58783BFADDF4836C0AC653F60391612529E6F3F82C103B9A1E773BF6DBA6FA7145E7ABF42E3FF98E716603FE75734058656793F43BB3A295B97463FAAE95F1AF5DA6BBFC77DE36D4157533FBEA79177C0D4793F44B69FFD36966F3FF6156F4FD32E4BBF8990B71787DB413F18FD8F2A9401753FF466F85C7796743F09D9017E5765503F33FFE6395D20243F42E9378CCBE36B3FAD2D46967065733FC203B046835A603FEEA888FC05E9DDBEF77FDB85B0045C3F6FD0194F59956D3F2E239A5EC786623F5B7B2B6A1E49EABED36637C4E294383FAC648AA6CD23623F19FA128E948D603F4FDB6A6058C80A3F1845BE9B91913ABF900A6A1A107A553F62E8F334E0AA613F753EA6C0D44D2B3F4C159B24E0AD64BF5AB84CD8A4D169BF8CC0A110C1C45ABFC860EEACB89119BFFC4C439E813C2D3FA665F18EAB8419BF5D4A0C03D39829BF45F155FC62C8FABEE412B031C5B7153F}
lappend params_list CONFIG.Coefficient_Buffer_Type {Automatic}
lappend params_list CONFIG.Coefficient_Fanout {false}
lappend params_list CONFIG.Coefficient_File {no_coe_file_loaded}
lappend params_list CONFIG.Coefficient_Fractional_Bits {15}
lappend params_list CONFIG.Coefficient_Reload {false}
lappend params_list CONFIG.Coefficient_Sets {2}
lappend params_list CONFIG.Coefficient_Sign {Signed}
lappend params_list CONFIG.Coefficient_Structure {Inferred}
lappend params_list CONFIG.Coefficient_Width {16}
lappend params_list CONFIG.ColumnConfig {117}
lappend params_list CONFIG.Control_Broadcast_Fanout {false}
lappend params_list CONFIG.Control_Column_Fanout {false}
lappend params_list CONFIG.Control_LUT_Pipeline {false}
lappend params_list CONFIG.Control_Path_Fanout {false}
lappend params_list CONFIG.DATA_Has_TLAST {Not_Required}
lappend params_list CONFIG.DATA_TUSER_Width {1}
lappend params_list CONFIG.Data_Buffer_Type {Automatic}
lappend params_list CONFIG.Data_Fractional_Bits {14}
lappend params_list CONFIG.Data_Path_Broadcast {false}
lappend params_list CONFIG.Data_Path_Fanout {false}
lappend params_list CONFIG.Data_Sign {Signed}
lappend params_list CONFIG.Data_Width {16}
lappend params_list CONFIG.Decimation_Rate {1}
lappend params_list CONFIG.Disable_Half_Band_Centre_Tap {false}
lappend params_list CONFIG.DisplayReloadOrder {false}
lappend params_list CONFIG.Filter_Architecture {Systolic_Multiply_Accumulate}
lappend params_list CONFIG.Filter_Selection {1}
lappend params_list CONFIG.Filter_Type {Single_Rate}
lappend params_list CONFIG.GUI_Behaviour {Sysgen_uUPP}
lappend params_list CONFIG.Gen_MIF_Files {false}
lappend params_list CONFIG.Gen_MIF_from_COE {false}
lappend params_list CONFIG.Gen_MIF_from_Spec {false}
lappend params_list CONFIG.HardwareOversamplingRate {1}
lappend params_list CONFIG.Has_ACLKEN {true}
lappend params_list CONFIG.Has_ARESETn {false}
lappend params_list CONFIG.Input_Buffer_Type {Automatic}
lappend params_list CONFIG.Inter_Column_Pipe_Length {4}
lappend params_list CONFIG.Interpolation_Rate {1}
lappend params_list CONFIG.M_DATA_Has_TREADY {false}
lappend params_list CONFIG.M_DATA_Has_TUSER {Not_Required}
lappend params_list CONFIG.Multi_Column_Support {Automatic}
lappend params_list CONFIG.No_BRAM_Read_First_Mode {false}
lappend params_list CONFIG.No_SRL_Attributes {false}
lappend params_list CONFIG.Num_Reload_Slots {1}
lappend params_list CONFIG.Number_Channels {2}
lappend params_list CONFIG.Number_Paths {1}
lappend params_list CONFIG.Optimal_Column_Lengths {false}
lappend params_list CONFIG.Optimization_Goal {Area}
lappend params_list CONFIG.Optimization_List {None}
lappend params_list CONFIG.Optimization_Selection {None}
lappend params_list CONFIG.Other {false}
lappend params_list CONFIG.Output_Buffer_Type {Automatic}
lappend params_list CONFIG.Output_Rounding_Mode {Full_Precision}
lappend params_list CONFIG.Output_Width {32}
lappend params_list CONFIG.Passband_Max {0.50000000}
lappend params_list CONFIG.Passband_Min {0.00000000}
lappend params_list CONFIG.Pattern_List {P4-0,P4-1,P4-2,P4-3,P4-4}
lappend params_list CONFIG.Pre_Adder_Pipeline {false}
lappend params_list CONFIG.Preference_For_Other_Storage {Automatic}
lappend params_list CONFIG.Quantization {Quantize_Only}
lappend params_list CONFIG.RateSpecification {Maximum_Possible}
lappend params_list CONFIG.Rate_Change_Type {Integer}
lappend params_list CONFIG.Reload_File {no_coe_file_loaded}
lappend params_list CONFIG.Reset_Data_Vector {true}
lappend params_list CONFIG.S_CONFIG_Method {By_Channel}
lappend params_list CONFIG.S_CONFIG_Sync_Mode {On_Vector}
lappend params_list CONFIG.S_DATA_Has_FIFO {false}
lappend params_list CONFIG.S_DATA_Has_TUSER {Not_Required}
lappend params_list CONFIG.SamplePeriod {1}
lappend params_list CONFIG.Sample_Frequency {0.001}
lappend params_list CONFIG.Select_Pattern {All}
lappend params_list CONFIG.Stopband_Max {1.00000000}
lappend params_list CONFIG.Stopband_Min {0.50000000}
lappend params_list CONFIG.Zero_Pack_Factor {1}

set_property -dict $params_list [get_ips channelsplit_fir_compiler_v7_2_i3]
}


set existingipslist [get_ips]
if {[lsearch $existingipslist channelsplit_fir_compiler_v7_2_i4] < 0} {
create_ip -name fir_compiler -version 7.2 -vendor xilinx.com -library ip -module_name channelsplit_fir_compiler_v7_2_i4
set params_list [list]
lappend params_list CONFIG.Component_Name {channelsplit_fir_compiler_v7_2_i4}
lappend params_list CONFIG.BestPrecision {false}
lappend params_list CONFIG.Blank_Output {false}
lappend params_list CONFIG.Channel_Sequence {Basic}
lappend params_list CONFIG.Clock_Frequency {300.0}
lappend params_list CONFIG.CoefficientSource {Vector}
lappend params_list CONFIG.CoefficientVector {binary:145B62E192B721BFD288B8085A4C24BF4416274A547CD0BEF0335030CAB4113F431F9F0C01EC36BFDC75DBD640334BBF77D0256259881ABFD620525FE144613F0C354DD550356F3F998CB087A274673FE25CC1DD7DFC2D3FCD22F216FBA84BBF5880A6AEE251433F0FF3EA8CA18C5B3F0DE25D643C3C343F204B8E13147656BF53092499A73E41BF2EC68AB213C9543F088A979526023E3F3F2E893FBC9461BFF7480D7B2EFB62BFC7F5778ACE5E233F5DBDE9AAFAB5403FE12941FCDC1666BFB0E2075FDC4272BF6AD222F5259E5DBF7A35E3EE677A343F814516AF3E6B66BFEDAFFB68229B7ABFCD1BA35D2F9572BFC6830774664C34BF569619FCDD6760BFBB9F3E2501AA7FBF26082AFB70687FBF796F5ACAD57B58BFCDC309FF415336BF8F82FC666D137EBF9B6F1A10788F85BF0617F62D93F76ABF9448B1FC9DA7623FAAFA3914D02D72BFBF8A477EA6D888BF70C15A489E0B77BF08FD879ECFC2773FC46E03C191EB603F233E8C9775AA86BF660AC07502F580BF658E0DE1A610853FC19BD6AD8BFA8C3F5B027EDB0C9873BFFBE9F33B3A5E86BF2D3FADB5F306913F3C92EFD082D8A33FF5363201B15E8F3F78BFD9908AEE8ABF31BB37DDF6A9A03F88FDF8578EFFC13F4A664C027932C83F44DF81A61C6CB83F68CADCDA8D3BB0BF7FD921E02DB9C1BF6D51108BC2F3B6BFC8ED0BDABA9F8EBFB91645375D4673BFF2D27C3010F3A2BF1C3FB54289D3A5BF8B4FAE23B9F58CBF15C9A6CE42D0553F64E472EABAD38ABFE572405FBA4799BF5AFC2D64C81089BFC30CF670E88A663F4B88AF6B215E5EBFC8D473B5B6D48ABF916A8912C58783BFADDF4836C0AC653F60391612529E6F3F82C103B9A1E773BF6DBA6FA7145E7ABF42E3FF98E716603FE75734058656793F43BB3A295B97463FAAE95F1AF5DA6BBFC77DE36D4157533FBEA79177C0D4793F44B69FFD36966F3FF6156F4FD32E4BBF8990B71787DB413F18FD8F2A9401753FF466F85C7796743F09D9017E5765503F33FFE6395D20243F42E9378CCBE36B3FAD2D46967065733FC203B046835A603FEEA888FC05E9DDBEF77FDB85B0045C3F6FD0194F59956D3F2E239A5EC786623F5B7B2B6A1E49EABED36637C4E294383FAC648AA6CD23623F19FA128E948D603F4FDB6A6058C80A3F1845BE9B91913ABF900A6A1A107A553F62E8F334E0AA613F753EA6C0D44D2B3F4C159B24E0AD64BF5AB84CD8A4D169BF8CC0A110C1C45ABFC860EEACB89119BFFC4C439E813C2D3FA665F18EAB8419BF5D4A0C03D39829BF45F155FC62C8FABEE412B031C5B7153F0000000000000000A41A5AAD5CFB23BF914EDFA0B16530BF6807939A968F12BF41FC90471A0DE73E1BA602DFC32449BF32C3E753FB9461BFF9C93669CF4763BFF68DB980526A2FBF3D44BA858E5A643F0FB42D3231D0673FD77BA20EEC73503F9D02E39861380DBFD2E05690BE6D563F7276D7AC3FE9663FCA48B290F07D5C3FE5F4A6CA9A6D113FD23C15C8D5B94F3FF46E2157335B6A3F2C8EA53882CD673FA2D49334F30C383FAE0550393BAF1B3F42BF62C9EDEF673F8C12F0EEE7F56F3FD552911B38DE4B3F4106D2C03ACA53BF777A91BEA7B8583F40CB3399425C713F73889D2CE0C9573FDF3FA521B32D67BF7E924422242355BFE1C924BEF43F6B3F62644C528942603F93D6508C423E72BFD9DEED2BD65F76BF8A131EDFA9EE433F08251AE6C779613F61BAF7A9494477BF0DAF78F11AEA85BF491FE627BAF471BFF1C4FA3676A0573F9028AA4279D478BF468A4EFFD7D390BF406AF971B6BD88BF4CC581FCD75D48BFF04ED4D7F0E574BF3D1EDD04137096BF29FB8608F8D297BFFD3699846BF276BFFD6D7FB60B9860BF5C3A42032B009BBF140A0941DE04A5BF86B60A1E112D91BF5704D42EAE45783F150287AFDBD29DBFB1E40B7DB395B6BF29C90E764DF0B0BFA640891DB0FEB03FB9F0E1F912EDC83F9A599097E053C83F4713D2D59D0FB23FBC83B71209099DBF5110642A56EB9CBFA94F6A01D91C903F448EF006CAD5943F708D4F89649F88BF62D707F9D16299BF5C8A2B2C499174BF7A00A6E920BB7F3FF3B4D1A5571E79BF431356709E7394BF2B053BBE595088BFCB6026FF9C45533F41466A752E1B67BF7A94650F6CBB8DBF01F62311DD3D8BBF5774F303E57C65BF299E1A5205154DBF69DF425832C282BFD8A42CBD8F2A88BF759DAB35BC6872BFEE5EBBD6E82B1B3F594B3B94C58C72BF89FC4AADD0FF81BF95DE3648600974BF8DF8676188E83D3F0358D15904F750BF8EC4D41951C975BFF9DFAD55B86071BFED3276B08C873C3F87C165AE7432533F628021A219C461BFACCD267C939668BF0286AE273C14313F8945A1E0EAF8613F4AC4231222CA273F4D97A2939A4F5ABF3710FB393A4F163F575A09052B1E633F8AE7B6CC70255A3F6C6737C4E29438BF04A188688E3CF2BED841DA40800A603F3766C9E8E9C1613F52F39662EF4A3C3F02B517949F000BBF34D7A8158013603FAC4A11E82D026F3F32616E1FB974673F89034B65CE3F2D3F7ACE8812CEDC56BF8083CB17987352BF1F15F2639BAB31BFE9AD97C698EAE43EE0335C5BCD8124BFCB5E7E302A492CBF4148C9D79CFF1BBF}
lappend params_list CONFIG.Coefficient_Buffer_Type {Automatic}
lappend params_list CONFIG.Coefficient_Fanout {false}
lappend params_list CONFIG.Coefficient_File {no_coe_file_loaded}
lappend params_list CONFIG.Coefficient_Fractional_Bits {15}
lappend params_list CONFIG.Coefficient_Reload {false}
lappend params_list CONFIG.Coefficient_Sets {2}
lappend params_list CONFIG.Coefficient_Sign {Signed}
lappend params_list CONFIG.Coefficient_Structure {Inferred}
lappend params_list CONFIG.Coefficient_Width {16}
lappend params_list CONFIG.ColumnConfig {117}
lappend params_list CONFIG.Control_Broadcast_Fanout {false}
lappend params_list CONFIG.Control_Column_Fanout {false}
lappend params_list CONFIG.Control_LUT_Pipeline {false}
lappend params_list CONFIG.Control_Path_Fanout {false}
lappend params_list CONFIG.DATA_Has_TLAST {Not_Required}
lappend params_list CONFIG.DATA_TUSER_Width {1}
lappend params_list CONFIG.Data_Buffer_Type {Automatic}
lappend params_list CONFIG.Data_Fractional_Bits {14}
lappend params_list CONFIG.Data_Path_Broadcast {false}
lappend params_list CONFIG.Data_Path_Fanout {false}
lappend params_list CONFIG.Data_Sign {Signed}
lappend params_list CONFIG.Data_Width {16}
lappend params_list CONFIG.Decimation_Rate {1}
lappend params_list CONFIG.Disable_Half_Band_Centre_Tap {false}
lappend params_list CONFIG.DisplayReloadOrder {false}
lappend params_list CONFIG.Filter_Architecture {Systolic_Multiply_Accumulate}
lappend params_list CONFIG.Filter_Selection {1}
lappend params_list CONFIG.Filter_Type {Single_Rate}
lappend params_list CONFIG.GUI_Behaviour {Sysgen_uUPP}
lappend params_list CONFIG.Gen_MIF_Files {false}
lappend params_list CONFIG.Gen_MIF_from_COE {false}
lappend params_list CONFIG.Gen_MIF_from_Spec {false}
lappend params_list CONFIG.HardwareOversamplingRate {1}
lappend params_list CONFIG.Has_ACLKEN {true}
lappend params_list CONFIG.Has_ARESETn {false}
lappend params_list CONFIG.Input_Buffer_Type {Automatic}
lappend params_list CONFIG.Inter_Column_Pipe_Length {4}
lappend params_list CONFIG.Interpolation_Rate {1}
lappend params_list CONFIG.M_DATA_Has_TREADY {false}
lappend params_list CONFIG.M_DATA_Has_TUSER {Not_Required}
lappend params_list CONFIG.Multi_Column_Support {Automatic}
lappend params_list CONFIG.No_BRAM_Read_First_Mode {false}
lappend params_list CONFIG.No_SRL_Attributes {false}
lappend params_list CONFIG.Num_Reload_Slots {1}
lappend params_list CONFIG.Number_Channels {2}
lappend params_list CONFIG.Number_Paths {1}
lappend params_list CONFIG.Optimal_Column_Lengths {false}
lappend params_list CONFIG.Optimization_Goal {Area}
lappend params_list CONFIG.Optimization_List {None}
lappend params_list CONFIG.Optimization_Selection {None}
lappend params_list CONFIG.Other {false}
lappend params_list CONFIG.Output_Buffer_Type {Automatic}
lappend params_list CONFIG.Output_Rounding_Mode {Full_Precision}
lappend params_list CONFIG.Output_Width {32}
lappend params_list CONFIG.Passband_Max {0.50000000}
lappend params_list CONFIG.Passband_Min {0.00000000}
lappend params_list CONFIG.Pattern_List {P4-0,P4-1,P4-2,P4-3,P4-4}
lappend params_list CONFIG.Pre_Adder_Pipeline {false}
lappend params_list CONFIG.Preference_For_Other_Storage {Automatic}
lappend params_list CONFIG.Quantization {Quantize_Only}
lappend params_list CONFIG.RateSpecification {Maximum_Possible}
lappend params_list CONFIG.Rate_Change_Type {Integer}
lappend params_list CONFIG.Reload_File {no_coe_file_loaded}
lappend params_list CONFIG.Reset_Data_Vector {true}
lappend params_list CONFIG.S_CONFIG_Method {By_Channel}
lappend params_list CONFIG.S_CONFIG_Sync_Mode {On_Vector}
lappend params_list CONFIG.S_DATA_Has_FIFO {false}
lappend params_list CONFIG.S_DATA_Has_TUSER {Not_Required}
lappend params_list CONFIG.SamplePeriod {1}
lappend params_list CONFIG.Sample_Frequency {0.001}
lappend params_list CONFIG.Select_Pattern {All}
lappend params_list CONFIG.Stopband_Max {1.00000000}
lappend params_list CONFIG.Stopband_Min {0.50000000}
lappend params_list CONFIG.Zero_Pack_Factor {1}

set_property -dict $params_list [get_ips channelsplit_fir_compiler_v7_2_i4]
}


set existingipslist [get_ips]
if {[lsearch $existingipslist channelsplit_fir_compiler_v7_2_i5] < 0} {
create_ip -name fir_compiler -version 7.2 -vendor xilinx.com -library ip -module_name channelsplit_fir_compiler_v7_2_i5
set params_list [list]
lappend params_list CONFIG.Component_Name {channelsplit_fir_compiler_v7_2_i5}
lappend params_list CONFIG.BestPrecision {false}
lappend params_list CONFIG.Blank_Output {false}
lappend params_list CONFIG.Channel_Sequence {Basic}
lappend params_list CONFIG.Clock_Frequency {300.0}
lappend params_list CONFIG.CoefficientSource {Vector}
lappend params_list CONFIG.CoefficientVector {binary:0000000000000000A41A5AAD5CFB23BF914EDFA0B16530BF6807939A968F12BF41FC90471A0DE73E1BA602DFC32449BF32C3E753FB9461BFF9C93669CF4763BFF68DB980526A2FBF3D44BA858E5A643F0FB42D3231D0673FD77BA20EEC73503F9D02E39861380DBFD2E05690BE6D563F7276D7AC3FE9663FCA48B290F07D5C3FE5F4A6CA9A6D113FD23C15C8D5B94F3FF46E2157335B6A3F2C8EA53882CD673FA2D49334F30C383FAE0550393BAF1B3F42BF62C9EDEF673F8C12F0EEE7F56F3FD552911B38DE4B3F4106D2C03ACA53BF777A91BEA7B8583F40CB3399425C713F73889D2CE0C9573FDF3FA521B32D67BF7E924422242355BFE1C924BEF43F6B3F62644C528942603F93D6508C423E72BFD9DEED2BD65F76BF8A131EDFA9EE433F08251AE6C779613F61BAF7A9494477BF0DAF78F11AEA85BF491FE627BAF471BFF1C4FA3676A0573F9028AA4279D478BF468A4EFFD7D390BF406AF971B6BD88BF4CC581FCD75D48BFF04ED4D7F0E574BF3D1EDD04137096BF29FB8608F8D297BFFD3699846BF276BFFD6D7FB60B9860BF5C3A42032B009BBF140A0941DE04A5BF86B60A1E112D91BF5704D42EAE45783F150287AFDBD29DBFB1E40B7DB395B6BF29C90E764DF0B0BFA640891DB0FEB03FB9F0E1F912EDC83F9A599097E053C83F4713D2D59D0FB23FBC83B71209099DBF5110642A56EB9CBFA94F6A01D91C903F448EF006CAD5943F708D4F89649F88BF62D707F9D16299BF5C8A2B2C499174BF7A00A6E920BB7F3FF3B4D1A5571E79BF431356709E7394BF2B053BBE595088BFCB6026FF9C45533F41466A752E1B67BF7A94650F6CBB8DBF01F62311DD3D8BBF5774F303E57C65BF299E1A5205154DBF69DF425832C282BFD8A42CBD8F2A88BF759DAB35BC6872BFEE5EBBD6E82B1B3F594B3B94C58C72BF89FC4AADD0FF81BF95DE3648600974BF8DF8676188E83D3F0358D15904F750BF8EC4D41951C975BFF9DFAD55B86071BFED3276B08C873C3F87C165AE7432533F628021A219C461BFACCD267C939668BF0286AE273C14313F8945A1E0EAF8613F4AC4231222CA273F4D97A2939A4F5ABF3710FB393A4F163F575A09052B1E633F8AE7B6CC70255A3F6C6737C4E29438BF04A188688E3CF2BED841DA40800A603F3766C9E8E9C1613F52F39662EF4A3C3F02B517949F000BBF34D7A8158013603FAC4A11E82D026F3F32616E1FB974673F89034B65CE3F2D3F7ACE8812CEDC56BF8083CB17987352BF1F15F2639BAB31BFE9AD97C698EAE43EE0335C5BCD8124BFCB5E7E302A492CBF4148C9D79CFF1BBF145B62E192B721BFD288B8085A4C24BF4416274A547CD0BEF0335030CAB4113F431F9F0C01EC36BFDC75DBD640334BBF77D0256259881ABFD620525FE144613F0C354DD550356F3F998CB087A274673FE25CC1DD7DFC2D3FCD22F216FBA84BBF5880A6AEE251433F0FF3EA8CA18C5B3F0DE25D643C3C343F204B8E13147656BF53092499A73E41BF2EC68AB213C9543F088A979526023E3F3F2E893FBC9461BFF7480D7B2EFB62BFC7F5778ACE5E233F5DBDE9AAFAB5403FE12941FCDC1666BFB0E2075FDC4272BF6AD222F5259E5DBF7A35E3EE677A343F814516AF3E6B66BFEDAFFB68229B7ABFCD1BA35D2F9572BFC6830774664C34BF569619FCDD6760BFBB9F3E2501AA7FBF26082AFB70687FBF796F5ACAD57B58BFCDC309FF415336BF8F82FC666D137EBF9B6F1A10788F85BF0617F62D93F76ABF9448B1FC9DA7623FAAFA3914D02D72BFBF8A477EA6D888BF70C15A489E0B77BF08FD879ECFC2773FC46E03C191EB603F233E8C9775AA86BF660AC07502F580BF658E0DE1A610853FC19BD6AD8BFA8C3F5B027EDB0C9873BFFBE9F33B3A5E86BF2D3FADB5F306913F3C92EFD082D8A33FF5363201B15E8F3F78BFD9908AEE8ABF31BB37DDF6A9A03F88FDF8578EFFC13F4A664C027932C83F44DF81A61C6CB83F68CADCDA8D3BB0BF7FD921E02DB9C1BF6D51108BC2F3B6BFC8ED0BDABA9F8EBFB91645375D4673BFF2D27C3010F3A2BF1C3FB54289D3A5BF8B4FAE23B9F58CBF15C9A6CE42D0553F64E472EABAD38ABFE572405FBA4799BF5AFC2D64C81089BFC30CF670E88A663F4B88AF6B215E5EBFC8D473B5B6D48ABF916A8912C58783BFADDF4836C0AC653F60391612529E6F3F82C103B9A1E773BF6DBA6FA7145E7ABF42E3FF98E716603FE75734058656793F43BB3A295B97463FAAE95F1AF5DA6BBFC77DE36D4157533FBEA79177C0D4793F44B69FFD36966F3FF6156F4FD32E4BBF8990B71787DB413F18FD8F2A9401753FF466F85C7796743F09D9017E5765503F33FFE6395D20243F42E9378CCBE36B3FAD2D46967065733FC203B046835A603FEEA888FC05E9DDBEF77FDB85B0045C3F6FD0194F59956D3F2E239A5EC786623F5B7B2B6A1E49EABED36637C4E294383FAC648AA6CD23623F19FA128E948D603F4FDB6A6058C80A3F1845BE9B91913ABF900A6A1A107A553F62E8F334E0AA613F753EA6C0D44D2B3F4C159B24E0AD64BF5AB84CD8A4D169BF8CC0A110C1C45ABFC860EEACB89119BFFC4C439E813C2D3FA665F18EAB8419BF5D4A0C03D39829BF45F155FC62C8FABEE412B031C5B7153F}
lappend params_list CONFIG.Coefficient_Buffer_Type {Automatic}
lappend params_list CONFIG.Coefficient_Fanout {false}
lappend params_list CONFIG.Coefficient_File {no_coe_file_loaded}
lappend params_list CONFIG.Coefficient_Fractional_Bits {15}
lappend params_list CONFIG.Coefficient_Reload {false}
lappend params_list CONFIG.Coefficient_Sets {2}
lappend params_list CONFIG.Coefficient_Sign {Signed}
lappend params_list CONFIG.Coefficient_Structure {Inferred}
lappend params_list CONFIG.Coefficient_Width {16}
lappend params_list CONFIG.ColumnConfig {117}
lappend params_list CONFIG.Control_Broadcast_Fanout {false}
lappend params_list CONFIG.Control_Column_Fanout {false}
lappend params_list CONFIG.Control_LUT_Pipeline {false}
lappend params_list CONFIG.Control_Path_Fanout {false}
lappend params_list CONFIG.DATA_Has_TLAST {Not_Required}
lappend params_list CONFIG.DATA_TUSER_Width {1}
lappend params_list CONFIG.Data_Buffer_Type {Automatic}
lappend params_list CONFIG.Data_Fractional_Bits {14}
lappend params_list CONFIG.Data_Path_Broadcast {false}
lappend params_list CONFIG.Data_Path_Fanout {false}
lappend params_list CONFIG.Data_Sign {Signed}
lappend params_list CONFIG.Data_Width {16}
lappend params_list CONFIG.Decimation_Rate {1}
lappend params_list CONFIG.Disable_Half_Band_Centre_Tap {false}
lappend params_list CONFIG.DisplayReloadOrder {false}
lappend params_list CONFIG.Filter_Architecture {Systolic_Multiply_Accumulate}
lappend params_list CONFIG.Filter_Selection {1}
lappend params_list CONFIG.Filter_Type {Single_Rate}
lappend params_list CONFIG.GUI_Behaviour {Sysgen_uUPP}
lappend params_list CONFIG.Gen_MIF_Files {false}
lappend params_list CONFIG.Gen_MIF_from_COE {false}
lappend params_list CONFIG.Gen_MIF_from_Spec {false}
lappend params_list CONFIG.HardwareOversamplingRate {1}
lappend params_list CONFIG.Has_ACLKEN {true}
lappend params_list CONFIG.Has_ARESETn {false}
lappend params_list CONFIG.Input_Buffer_Type {Automatic}
lappend params_list CONFIG.Inter_Column_Pipe_Length {4}
lappend params_list CONFIG.Interpolation_Rate {1}
lappend params_list CONFIG.M_DATA_Has_TREADY {false}
lappend params_list CONFIG.M_DATA_Has_TUSER {Not_Required}
lappend params_list CONFIG.Multi_Column_Support {Automatic}
lappend params_list CONFIG.No_BRAM_Read_First_Mode {false}
lappend params_list CONFIG.No_SRL_Attributes {false}
lappend params_list CONFIG.Num_Reload_Slots {1}
lappend params_list CONFIG.Number_Channels {2}
lappend params_list CONFIG.Number_Paths {1}
lappend params_list CONFIG.Optimal_Column_Lengths {false}
lappend params_list CONFIG.Optimization_Goal {Area}
lappend params_list CONFIG.Optimization_List {None}
lappend params_list CONFIG.Optimization_Selection {None}
lappend params_list CONFIG.Other {false}
lappend params_list CONFIG.Output_Buffer_Type {Automatic}
lappend params_list CONFIG.Output_Rounding_Mode {Full_Precision}
lappend params_list CONFIG.Output_Width {32}
lappend params_list CONFIG.Passband_Max {0.50000000}
lappend params_list CONFIG.Passband_Min {0.00000000}
lappend params_list CONFIG.Pattern_List {P4-0,P4-1,P4-2,P4-3,P4-4}
lappend params_list CONFIG.Pre_Adder_Pipeline {false}
lappend params_list CONFIG.Preference_For_Other_Storage {Automatic}
lappend params_list CONFIG.Quantization {Quantize_Only}
lappend params_list CONFIG.RateSpecification {Maximum_Possible}
lappend params_list CONFIG.Rate_Change_Type {Integer}
lappend params_list CONFIG.Reload_File {no_coe_file_loaded}
lappend params_list CONFIG.Reset_Data_Vector {true}
lappend params_list CONFIG.S_CONFIG_Method {By_Channel}
lappend params_list CONFIG.S_CONFIG_Sync_Mode {On_Vector}
lappend params_list CONFIG.S_DATA_Has_FIFO {false}
lappend params_list CONFIG.S_DATA_Has_TUSER {Not_Required}
lappend params_list CONFIG.SamplePeriod {1}
lappend params_list CONFIG.Sample_Frequency {0.001}
lappend params_list CONFIG.Select_Pattern {All}
lappend params_list CONFIG.Stopband_Max {1.00000000}
lappend params_list CONFIG.Stopband_Min {0.50000000}
lappend params_list CONFIG.Zero_Pack_Factor {1}

set_property -dict $params_list [get_ips channelsplit_fir_compiler_v7_2_i5]
}


set existingipslist [get_ips]
if {[lsearch $existingipslist channelsplit_fir_compiler_v7_2_i6] < 0} {
create_ip -name fir_compiler -version 7.2 -vendor xilinx.com -library ip -module_name channelsplit_fir_compiler_v7_2_i6
set params_list [list]
lappend params_list CONFIG.Component_Name {channelsplit_fir_compiler_v7_2_i6}
lappend params_list CONFIG.BestPrecision {false}
lappend params_list CONFIG.Blank_Output {false}
lappend params_list CONFIG.Channel_Sequence {Basic}
lappend params_list CONFIG.Clock_Frequency {300.0}
lappend params_list CONFIG.CoefficientSource {Vector}
lappend params_list CONFIG.CoefficientVector {binary:145B62E192B721BFCAD5CF100424243F7102D1CE5722EB3B836E155A7A2312BFB1B32BAAE6EE36BFF0EAFDBB2D314A3FE835C5A5AFD7353C388604AC6C4D62BFD2AAFEAC1C456F3FA23FFF58A2F565BFBD284469721E62BCB8ED20306F654E3F957C77EFEE67433F113A1683AD1E59BF51DCFDD04675393C92021D3E88A7593F60249702BE6141BFA7C4568C1F7D52BF6411D84114B369BCFB8DF836A7EC643F32E1D97AC03763BFB3864B70B2D520BF1BBF419F54BC2ABC24F2A475D1786B3FAD728C9A289772BFB5FC6E4A1630593FDA332BDAB8975DBC82E50ECA77396D3F32F4B06F37437BBF7D191726CFF86E3F9968ABA48FF6373C89BFA22DBA7D663F02617803775880BFF01F1813F4AE793FF9DA155AF2FC7F3CDBADADC06827403F5CCA85B4C8517FBFE519D908BE52813FE8432A525F759C3C5DD2EDEE819D6CBF70F722F14E1D73BF227A6D1BE0A3833FAA2231CB72777DBCF8A536BB336883BFFC596C25BDFB613FE666EED5F6A5813F75994D7C4488903CA4C682D5456B92BF5E435B30D92A8F3F4BB2BA3389176E3F0FECE94C0632AA3C549AFB2F1C09A0BFAC0BD42DCE9FA53FD0C57C6AB2C887BF9CB835461CB1B73C2A289B609E05B1BF0567B7FC31E4C33F54F898706422C2BF9C153EFBB9C0EBBC54F898706422C23F0567B7FC31E4C3BFA2279B609E05B13FA868ABE062DFC43CCFC57C6AB2C8873FAC0BD42DCE9FA5BF149AFB2F1C09A03FA12C4066EF35AABC4BB2BA3389176EBF5E435B30D92A8FBF11C682D5456B923FC0A1C3C2AF8E90BC2D67EED5F6A581BFFC596C25BDFB61BFF8A536BB3368833F305B43A868647D3C717A6D1BE0A383BF70F722F14E1D733F5DD2EDEE819D6C3FAB88A626B962913C2A1AD908BE5281BF5CCA85B4C8517F3FDBADADC0682740BF44EA7FA508638E3C57201813F4AE79BF026178037758803F30BFA22DBA7D66BF67169E0D093C743C751A1726CFF86EBF32F4B06F37437B3F0EE50ECA77396DBF6D66972BC9767EBCB4FC6E4A163059BFAD728C9A2897723FB7F1A475D1786BBF1CB2D038220392BCB2864B70B2D5203F32E1D97AC037633F7D8DF836A7EC64BFB6E7371834BA693CCCC4568C1F7D523F60249702BE61413FF7011D3E88A759BF5B9A6B90ED4339BC5C3A1683AD1E593F957C77EFEE6743BFD6ED20306F654EBF64D0D0093FA16DBCF93FFF58A2F5653FD2AAFEAC1C456FBF388604AC6C4D623F0E00A92125C2963C72EBFDBB2D314ABFB1B32BAAE6EE363FDB6D155A7A23123F825B10C223444C3C9DD5CF10042424BF145B62E192B7213F0000000000000000CBD5CF10042424BF55D578373666303F806E155A7A2312BFB2D8EAD2FBF8023C03EBFDBB2D314ABFD0BD73E4FB99613F3B8604AC6C4D62BF2232F79E9CDE49BCB73FFF58A2F5653F72B778F50AE367BFB6ED20306F654E3FE8BB74D2F01428BC2F3A1683AD1E593F7210566AE20C67BF8A021D3E88A7593F109D9A3086C22C3CC0C4568C1F7D523FBEE65CF4309F6ABFC68DF836A7EC643FCD66F27C90276D3CAC864B70B2D5203F7D63D6A08E4C68BF12F2A475D1786B3FC3E54CC5DC11673CE2FC6E4A163059BFDF44B7D9EF3E59BF2EE50ECA77396D3F235AF5AB3F1C5EBCFA191726CFF86EBF16B26D57E6BC553F17BFA22DBA7D663F4B041CF3980B7B3CC21F1813F4AE79BF6B9435344E32773FE6ADADC06827403F6024C813023C8E3CEC19D908BE5281BF67E34BEE94ED863F32D2EDEE819D6CBF562C62AF72FF8C3C567A6D1BE0A383BFF9ABC9CD55C9913FB0A536BB336883BFB7F7884C62C933BC3B67EED5F6A581BFAFC95A967AFC973F37C682D5456B92BFD9089DB8A95693BC2DB2BA3389176EBFA612823FAD399D3F529AFB2F1C09A0BF931EF41FF558B9BCEEC57C6AB2C8873F079DD19E845CA03F79279B609E05B1BF08154E1D1DF8B53C93F898706422C23FBCE176ADA7C1CBBF92F898706422C23FA7423DA277EDB53C01289B609E05B1BF079DD19E845CA03FEDC57C6AB2C8873FE8804781C2E3B13C929AFB2F1C09A0BFA612823FAD399D3F2DB2BA3389176EBF1BB730846E7DA53CC9C682D5456B92BFAFC95A967AFC973FF566EED5F6A581BF903B92113E5C813CAFA536BB336883BFF9ABC9CD55C9913F077A6D1BE0A383BF6E4596299DB997BC31D2EDEE819D6CBF67E34BEE94ED863FA719D908BE5281BF829637FABBC1A7BCE6ADADC06827403F6B9435344E32773F5C1F1813F4AE79BFC7BAA89658147B3C70BFA22DBA7D663F16B26D57E6BC553F02191726CFF86EBF2E8A93BD10FF5DBCA2E50ECA77396D3FDF44B7D9EF3E59BFE2FC6E4A163059BF089BF13469A079BC7FF2A475D1786B3F7D63D6A08E4C68BFAC864B70B2D5203F760D6E6B26D977BC448EF836A7EC643FBEE65CF4309F6ABF9CC4568C1F7D523FE55C44D7D7285FBC24031D3E88A7593F7210566AE20C67BFE3391683AD1E593FBD4E103F4FBF663C97ED20306F654E3F72B778F50AE367BF5F3FFF58A2F5653F35C9EFD3D4A3963C3B8604AC6C4D62BFD0BD73E4FB99613F81EAFDBB2D314ABF56D878462954393C286F155A7A2312BF55D578373666303FF9D5CF10042424BFED1B6528FBB651BC}
lappend params_list CONFIG.Coefficient_Buffer_Type {Automatic}
lappend params_list CONFIG.Coefficient_Fanout {false}
lappend params_list CONFIG.Coefficient_File {no_coe_file_loaded}
lappend params_list CONFIG.Coefficient_Fractional_Bits {15}
lappend params_list CONFIG.Coefficient_Reload {false}
lappend params_list CONFIG.Coefficient_Sets {2}
lappend params_list CONFIG.Coefficient_Sign {Signed}
lappend params_list CONFIG.Coefficient_Structure {Inferred}
lappend params_list CONFIG.Coefficient_Width {16}
lappend params_list CONFIG.ColumnConfig {117}
lappend params_list CONFIG.Control_Broadcast_Fanout {false}
lappend params_list CONFIG.Control_Column_Fanout {false}
lappend params_list CONFIG.Control_LUT_Pipeline {false}
lappend params_list CONFIG.Control_Path_Fanout {false}
lappend params_list CONFIG.DATA_Has_TLAST {Not_Required}
lappend params_list CONFIG.DATA_TUSER_Width {1}
lappend params_list CONFIG.Data_Buffer_Type {Automatic}
lappend params_list CONFIG.Data_Fractional_Bits {14}
lappend params_list CONFIG.Data_Path_Broadcast {false}
lappend params_list CONFIG.Data_Path_Fanout {false}
lappend params_list CONFIG.Data_Sign {Signed}
lappend params_list CONFIG.Data_Width {16}
lappend params_list CONFIG.Decimation_Rate {1}
lappend params_list CONFIG.Disable_Half_Band_Centre_Tap {false}
lappend params_list CONFIG.DisplayReloadOrder {false}
lappend params_list CONFIG.Filter_Architecture {Systolic_Multiply_Accumulate}
lappend params_list CONFIG.Filter_Selection {1}
lappend params_list CONFIG.Filter_Type {Single_Rate}
lappend params_list CONFIG.GUI_Behaviour {Sysgen_uUPP}
lappend params_list CONFIG.Gen_MIF_Files {false}
lappend params_list CONFIG.Gen_MIF_from_COE {false}
lappend params_list CONFIG.Gen_MIF_from_Spec {false}
lappend params_list CONFIG.HardwareOversamplingRate {1}
lappend params_list CONFIG.Has_ACLKEN {true}
lappend params_list CONFIG.Has_ARESETn {false}
lappend params_list CONFIG.Input_Buffer_Type {Automatic}
lappend params_list CONFIG.Inter_Column_Pipe_Length {4}
lappend params_list CONFIG.Interpolation_Rate {1}
lappend params_list CONFIG.M_DATA_Has_TREADY {false}
lappend params_list CONFIG.M_DATA_Has_TUSER {Not_Required}
lappend params_list CONFIG.Multi_Column_Support {Automatic}
lappend params_list CONFIG.No_BRAM_Read_First_Mode {false}
lappend params_list CONFIG.No_SRL_Attributes {false}
lappend params_list CONFIG.Num_Reload_Slots {1}
lappend params_list CONFIG.Number_Channels {2}
lappend params_list CONFIG.Number_Paths {1}
lappend params_list CONFIG.Optimal_Column_Lengths {false}
lappend params_list CONFIG.Optimization_Goal {Area}
lappend params_list CONFIG.Optimization_List {None}
lappend params_list CONFIG.Optimization_Selection {None}
lappend params_list CONFIG.Other {false}
lappend params_list CONFIG.Output_Buffer_Type {Automatic}
lappend params_list CONFIG.Output_Rounding_Mode {Full_Precision}
lappend params_list CONFIG.Output_Width {32}
lappend params_list CONFIG.Passband_Max {0.50000000}
lappend params_list CONFIG.Passband_Min {0.00000000}
lappend params_list CONFIG.Pattern_List {P4-0,P4-1,P4-2,P4-3,P4-4}
lappend params_list CONFIG.Pre_Adder_Pipeline {false}
lappend params_list CONFIG.Preference_For_Other_Storage {Automatic}
lappend params_list CONFIG.Quantization {Quantize_Only}
lappend params_list CONFIG.RateSpecification {Maximum_Possible}
lappend params_list CONFIG.Rate_Change_Type {Integer}
lappend params_list CONFIG.Reload_File {no_coe_file_loaded}
lappend params_list CONFIG.Reset_Data_Vector {true}
lappend params_list CONFIG.S_CONFIG_Method {By_Channel}
lappend params_list CONFIG.S_CONFIG_Sync_Mode {On_Vector}
lappend params_list CONFIG.S_DATA_Has_FIFO {false}
lappend params_list CONFIG.S_DATA_Has_TUSER {Not_Required}
lappend params_list CONFIG.SamplePeriod {1}
lappend params_list CONFIG.Sample_Frequency {0.001}
lappend params_list CONFIG.Select_Pattern {All}
lappend params_list CONFIG.Stopband_Max {1.00000000}
lappend params_list CONFIG.Stopband_Min {0.50000000}
lappend params_list CONFIG.Zero_Pack_Factor {1}

set_property -dict $params_list [get_ips channelsplit_fir_compiler_v7_2_i6]
}


set existingipslist [get_ips]
if {[lsearch $existingipslist channelsplit_fir_compiler_v7_2_i7] < 0} {
create_ip -name fir_compiler -version 7.2 -vendor xilinx.com -library ip -module_name channelsplit_fir_compiler_v7_2_i7
set params_list [list]
lappend params_list CONFIG.Component_Name {channelsplit_fir_compiler_v7_2_i7}
lappend params_list CONFIG.BestPrecision {false}
lappend params_list CONFIG.Blank_Output {false}
lappend params_list CONFIG.Channel_Sequence {Basic}
lappend params_list CONFIG.Clock_Frequency {300.0}
lappend params_list CONFIG.CoefficientSource {Vector}
lappend params_list CONFIG.CoefficientVector {binary:0000000000000000CBD5CF10042424BF55D578373666303F806E155A7A2312BFB2D8EAD2FBF8023C03EBFDBB2D314ABFD0BD73E4FB99613F3B8604AC6C4D62BF2232F79E9CDE49BCB73FFF58A2F5653F72B778F50AE367BFB6ED20306F654E3FE8BB74D2F01428BC2F3A1683AD1E593F7210566AE20C67BF8A021D3E88A7593F109D9A3086C22C3CC0C4568C1F7D523FBEE65CF4309F6ABFC68DF836A7EC643FCD66F27C90276D3CAC864B70B2D5203F7D63D6A08E4C68BF12F2A475D1786B3FC3E54CC5DC11673CE2FC6E4A163059BFDF44B7D9EF3E59BF2EE50ECA77396D3F235AF5AB3F1C5EBCFA191726CFF86EBF16B26D57E6BC553F17BFA22DBA7D663F4B041CF3980B7B3CC21F1813F4AE79BF6B9435344E32773FE6ADADC06827403F6024C813023C8E3CEC19D908BE5281BF67E34BEE94ED863F32D2EDEE819D6CBF562C62AF72FF8C3C567A6D1BE0A383BFF9ABC9CD55C9913FB0A536BB336883BFB7F7884C62C933BC3B67EED5F6A581BFAFC95A967AFC973F37C682D5456B92BFD9089DB8A95693BC2DB2BA3389176EBFA612823FAD399D3F529AFB2F1C09A0BF931EF41FF558B9BCEEC57C6AB2C8873F079DD19E845CA03F79279B609E05B1BF08154E1D1DF8B53C93F898706422C23FBCE176ADA7C1CBBF92F898706422C23FA7423DA277EDB53C01289B609E05B1BF079DD19E845CA03FEDC57C6AB2C8873FE8804781C2E3B13C929AFB2F1C09A0BFA612823FAD399D3F2DB2BA3389176EBF1BB730846E7DA53CC9C682D5456B92BFAFC95A967AFC973FF566EED5F6A581BF903B92113E5C813CAFA536BB336883BFF9ABC9CD55C9913F077A6D1BE0A383BF6E4596299DB997BC31D2EDEE819D6CBF67E34BEE94ED863FA719D908BE5281BF829637FABBC1A7BCE6ADADC06827403F6B9435344E32773F5C1F1813F4AE79BFC7BAA89658147B3C70BFA22DBA7D663F16B26D57E6BC553F02191726CFF86EBF2E8A93BD10FF5DBCA2E50ECA77396D3FDF44B7D9EF3E59BFE2FC6E4A163059BF089BF13469A079BC7FF2A475D1786B3F7D63D6A08E4C68BFAC864B70B2D5203F760D6E6B26D977BC448EF836A7EC643FBEE65CF4309F6ABF9CC4568C1F7D523FE55C44D7D7285FBC24031D3E88A7593F7210566AE20C67BFE3391683AD1E593FBD4E103F4FBF663C97ED20306F654E3F72B778F50AE367BF5F3FFF58A2F5653F35C9EFD3D4A3963C3B8604AC6C4D62BFD0BD73E4FB99613F81EAFDBB2D314ABF56D878462954393C286F155A7A2312BF55D578373666303FF9D5CF10042424BFED1B6528FBB651BC145B62E192B721BFCAD5CF100424243F7102D1CE5722EB3B836E155A7A2312BFB1B32BAAE6EE36BFF0EAFDBB2D314A3FE835C5A5AFD7353C388604AC6C4D62BFD2AAFEAC1C456F3FA23FFF58A2F565BFBD284469721E62BCB8ED20306F654E3F957C77EFEE67433F113A1683AD1E59BF51DCFDD04675393C92021D3E88A7593F60249702BE6141BFA7C4568C1F7D52BF6411D84114B369BCFB8DF836A7EC643F32E1D97AC03763BFB3864B70B2D520BF1BBF419F54BC2ABC24F2A475D1786B3FAD728C9A289772BFB5FC6E4A1630593FDA332BDAB8975DBC82E50ECA77396D3F32F4B06F37437BBF7D191726CFF86E3F9968ABA48FF6373C89BFA22DBA7D663F02617803775880BFF01F1813F4AE793FF9DA155AF2FC7F3CDBADADC06827403F5CCA85B4C8517FBFE519D908BE52813FE8432A525F759C3C5DD2EDEE819D6CBF70F722F14E1D73BF227A6D1BE0A3833FAA2231CB72777DBCF8A536BB336883BFFC596C25BDFB613FE666EED5F6A5813F75994D7C4488903CA4C682D5456B92BF5E435B30D92A8F3F4BB2BA3389176E3F0FECE94C0632AA3C549AFB2F1C09A0BFAC0BD42DCE9FA53FD0C57C6AB2C887BF9CB835461CB1B73C2A289B609E05B1BF0567B7FC31E4C33F54F898706422C2BF9C153EFBB9C0EBBC54F898706422C23F0567B7FC31E4C3BFA2279B609E05B13FA868ABE062DFC43CCFC57C6AB2C8873FAC0BD42DCE9FA5BF149AFB2F1C09A03FA12C4066EF35AABC4BB2BA3389176EBF5E435B30D92A8FBF11C682D5456B923FC0A1C3C2AF8E90BC2D67EED5F6A581BFFC596C25BDFB61BFF8A536BB3368833F305B43A868647D3C717A6D1BE0A383BF70F722F14E1D733F5DD2EDEE819D6C3FAB88A626B962913C2A1AD908BE5281BF5CCA85B4C8517F3FDBADADC0682740BF44EA7FA508638E3C57201813F4AE79BF026178037758803F30BFA22DBA7D66BF67169E0D093C743C751A1726CFF86EBF32F4B06F37437B3F0EE50ECA77396DBF6D66972BC9767EBCB4FC6E4A163059BFAD728C9A2897723FB7F1A475D1786BBF1CB2D038220392BCB2864B70B2D5203F32E1D97AC037633F7D8DF836A7EC64BFB6E7371834BA693CCCC4568C1F7D523F60249702BE61413FF7011D3E88A759BF5B9A6B90ED4339BC5C3A1683AD1E593F957C77EFEE6743BFD6ED20306F654EBF64D0D0093FA16DBCF93FFF58A2F5653FD2AAFEAC1C456FBF388604AC6C4D623F0E00A92125C2963C72EBFDBB2D314ABFB1B32BAAE6EE363FDB6D155A7A23123F825B10C223444C3C9DD5CF10042424BF145B62E192B7213F}
lappend params_list CONFIG.Coefficient_Buffer_Type {Automatic}
lappend params_list CONFIG.Coefficient_Fanout {false}
lappend params_list CONFIG.Coefficient_File {no_coe_file_loaded}
lappend params_list CONFIG.Coefficient_Fractional_Bits {15}
lappend params_list CONFIG.Coefficient_Reload {false}
lappend params_list CONFIG.Coefficient_Sets {2}
lappend params_list CONFIG.Coefficient_Sign {Signed}
lappend params_list CONFIG.Coefficient_Structure {Inferred}
lappend params_list CONFIG.Coefficient_Width {16}
lappend params_list CONFIG.ColumnConfig {117}
lappend params_list CONFIG.Control_Broadcast_Fanout {false}
lappend params_list CONFIG.Control_Column_Fanout {false}
lappend params_list CONFIG.Control_LUT_Pipeline {false}
lappend params_list CONFIG.Control_Path_Fanout {false}
lappend params_list CONFIG.DATA_Has_TLAST {Not_Required}
lappend params_list CONFIG.DATA_TUSER_Width {1}
lappend params_list CONFIG.Data_Buffer_Type {Automatic}
lappend params_list CONFIG.Data_Fractional_Bits {14}
lappend params_list CONFIG.Data_Path_Broadcast {false}
lappend params_list CONFIG.Data_Path_Fanout {false}
lappend params_list CONFIG.Data_Sign {Signed}
lappend params_list CONFIG.Data_Width {16}
lappend params_list CONFIG.Decimation_Rate {1}
lappend params_list CONFIG.Disable_Half_Band_Centre_Tap {false}
lappend params_list CONFIG.DisplayReloadOrder {false}
lappend params_list CONFIG.Filter_Architecture {Systolic_Multiply_Accumulate}
lappend params_list CONFIG.Filter_Selection {1}
lappend params_list CONFIG.Filter_Type {Single_Rate}
lappend params_list CONFIG.GUI_Behaviour {Sysgen_uUPP}
lappend params_list CONFIG.Gen_MIF_Files {false}
lappend params_list CONFIG.Gen_MIF_from_COE {false}
lappend params_list CONFIG.Gen_MIF_from_Spec {false}
lappend params_list CONFIG.HardwareOversamplingRate {1}
lappend params_list CONFIG.Has_ACLKEN {true}
lappend params_list CONFIG.Has_ARESETn {false}
lappend params_list CONFIG.Input_Buffer_Type {Automatic}
lappend params_list CONFIG.Inter_Column_Pipe_Length {4}
lappend params_list CONFIG.Interpolation_Rate {1}
lappend params_list CONFIG.M_DATA_Has_TREADY {false}
lappend params_list CONFIG.M_DATA_Has_TUSER {Not_Required}
lappend params_list CONFIG.Multi_Column_Support {Automatic}
lappend params_list CONFIG.No_BRAM_Read_First_Mode {false}
lappend params_list CONFIG.No_SRL_Attributes {false}
lappend params_list CONFIG.Num_Reload_Slots {1}
lappend params_list CONFIG.Number_Channels {2}
lappend params_list CONFIG.Number_Paths {1}
lappend params_list CONFIG.Optimal_Column_Lengths {false}
lappend params_list CONFIG.Optimization_Goal {Area}
lappend params_list CONFIG.Optimization_List {None}
lappend params_list CONFIG.Optimization_Selection {None}
lappend params_list CONFIG.Other {false}
lappend params_list CONFIG.Output_Buffer_Type {Automatic}
lappend params_list CONFIG.Output_Rounding_Mode {Full_Precision}
lappend params_list CONFIG.Output_Width {32}
lappend params_list CONFIG.Passband_Max {0.50000000}
lappend params_list CONFIG.Passband_Min {0.00000000}
lappend params_list CONFIG.Pattern_List {P4-0,P4-1,P4-2,P4-3,P4-4}
lappend params_list CONFIG.Pre_Adder_Pipeline {false}
lappend params_list CONFIG.Preference_For_Other_Storage {Automatic}
lappend params_list CONFIG.Quantization {Quantize_Only}
lappend params_list CONFIG.RateSpecification {Maximum_Possible}
lappend params_list CONFIG.Rate_Change_Type {Integer}
lappend params_list CONFIG.Reload_File {no_coe_file_loaded}
lappend params_list CONFIG.Reset_Data_Vector {true}
lappend params_list CONFIG.S_CONFIG_Method {By_Channel}
lappend params_list CONFIG.S_CONFIG_Sync_Mode {On_Vector}
lappend params_list CONFIG.S_DATA_Has_FIFO {false}
lappend params_list CONFIG.S_DATA_Has_TUSER {Not_Required}
lappend params_list CONFIG.SamplePeriod {1}
lappend params_list CONFIG.Sample_Frequency {0.001}
lappend params_list CONFIG.Select_Pattern {All}
lappend params_list CONFIG.Stopband_Max {1.00000000}
lappend params_list CONFIG.Stopband_Min {0.50000000}
lappend params_list CONFIG.Zero_Pack_Factor {1}

set_property -dict $params_list [get_ips channelsplit_fir_compiler_v7_2_i7]
}


validate_ip [get_ips]

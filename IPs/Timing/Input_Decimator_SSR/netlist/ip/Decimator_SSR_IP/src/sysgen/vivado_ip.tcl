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
if {[lsearch $existingipslist decimator_ssr_ip_fir_compiler_v7_2_i0] < 0} {
create_ip -name fir_compiler -version 7.2 -vendor xilinx.com -library ip -module_name decimator_ssr_ip_fir_compiler_v7_2_i0
set params_list [list]
lappend params_list CONFIG.Component_Name {decimator_ssr_ip_fir_compiler_v7_2_i0}
lappend params_list CONFIG.BestPrecision {true}
lappend params_list CONFIG.Blank_Output {false}
lappend params_list CONFIG.Channel_Sequence {Basic}
lappend params_list CONFIG.Clock_Frequency {300.0}
lappend params_list CONFIG.CoefficientSource {Vector}
lappend params_list CONFIG.CoefficientVector {binary:FE7987FB0F6818BF6C530BFD05072CBF7BF22DF4850536BF7424A9533E8D42BFFCBBDDFBED344ABF3416650AC70052BF763FD75C44A856BF421529B3234B5BBF5870B08022CA5EBFBAD212797E7E60BF6CC879FE3F8960BF5A66A8B462F55EBFF6F07B4B12625ABFFE0780CCF3B553BF8248FA779CBD46BF69F26010C61422BF69766899E2AF3A3F589867BAAA984C3F6AA049F6C7A8533F3400511947F9553FF69D66C70CE3543F8EB67439397A503F412678AD18B2423F38C9B86768B9003F3B67D0C6B24841BF28E8F34BABAD50BFF4A0C128613656BF2A566801E73558BFC89FA8609D2856BF15576C1A1B3150BF287D899F0F6F3CBFF3A3AB2DD6B72D3F793CD3ACDC0A4D3FFA17F5C0E471573F5CBEBACD42D35C3FD11C080083815D3F92E716CCB111593F8838B639B5EA4F3F8FB55A6ACAB02B3F9DDC19743CEA44BF80314950D67357BF78E13FCA539760BF0EE31533F9DB62BF4AA17B4254F561BF50E98C98E3AA5BBF0B0AE9CDC8FB4BBF7C2DAA152586283F42DAE3F0C2B8543F6B2468C92EF3613F4AB68C6719E0663FD23416841916683F4BAD0DBB191E653FCA3E3A996E6C5C3FDE55E267F14D413F2470843B9DF54BBF3B20DF14AAD361BF5A15DE151B3B6ABF8D3A016FC08B6EBF0421C39696BA6DBF90A9BF70799367BF9A80111578A259BFD06ECE1B42621E3F02DE396636F75E3FBC93C46939406C3F69991416456E723F2229C2CC79BF733F16726527C5A2713FBEE8E84AD276683F1203FCE6AD13513FBB5D27BBD20D54BFB6FEF4241F1C6CBF3A15885FD23975BF18A8FB0A051D79BF9C858F8455C978BFE32BF883F9FE73BF158823198C8966BF9060501A8FAB003F288E646209BB683FD2A0DD137250773F5F55BF119FEB7E3F96901B5CE1C7803F7CBEFE7DA85E7E3F8CEB43418B71753FF69A76C841A15F3FD4D00DAFFE6760BF4888EEEB843978BF64EAA58CCDA382BFE8868471A26186BFE7C996FAD56886BFCE8EEF370D5E82BF691C94F6162A75BF609C4299C59502BF364A255C351F773FD621FF2BB85A863F6013BCEF5E478E3FBEC63EBE12CA903FCA032710E8188F3FFB7D48346889863FB97378E14636713FD99A532B8BF371BF82C9B69E36A18BBFCAE46E906A1B96BF510420D5E4B69BBF0CB005D46A239DBFB47D197E4E4299BFDE900F82DC0C8FBF80AB6C2B5EC413BF0751DF957037943FFF4A1E5F22E9A53FD228B255172CB13FB2CEC34B151FB73FAAD0C3F77337BC3FEA03F77388F0BF3F7116D8AFB9F3C03F7116D8AFB9F3C03FEA03F77388F0BF3FAAD0C3F77337BC3FB2CEC34B151FB73FD228B255172CB13FFF4A1E5F22E9A53F0751DF957037943F80AB6C2B5EC413BFDE900F82DC0C8FBFB47D197E4E4299BF0CB005D46A239DBF510420D5E4B69BBFCAE46E906A1B96BF82C9B69E36A18BBFD99A532B8BF371BFB97378E14636713FFB7D48346889863FCA032710E8188F3FBEC63EBE12CA903F6013BCEF5E478E3FD621FF2BB85A863F364A255C351F773F609C4299C59502BF691C94F6162A75BFCE8EEF370D5E82BFE7C996FAD56886BFE8868471A26186BF64EAA58CCDA382BF4888EEEB843978BFD4D00DAFFE6760BFF69A76C841A15F3F8CEB43418B71753F7CBEFE7DA85E7E3F96901B5CE1C7803F5F55BF119FEB7E3FD2A0DD137250773F288E646209BB683F9060501A8FAB003F158823198C8966BFE32BF883F9FE73BF9C858F8455C978BF18A8FB0A051D79BF3A15885FD23975BFB6FEF4241F1C6CBFBB5D27BBD20D54BF1203FCE6AD13513FBEE8E84AD276683F16726527C5A2713F2229C2CC79BF733F69991416456E723FBC93C46939406C3F02DE396636F75E3FD06ECE1B42621E3F9A80111578A259BF90A9BF70799367BF0421C39696BA6DBF8D3A016FC08B6EBF5A15DE151B3B6ABF3B20DF14AAD361BF2470843B9DF54BBFDE55E267F14D413FCA3E3A996E6C5C3F4BAD0DBB191E653FD23416841916683F4AB68C6719E0663F6B2468C92EF3613F42DAE3F0C2B8543F7C2DAA152586283F0B0AE9CDC8FB4BBF50E98C98E3AA5BBF4AA17B4254F561BF0EE31533F9DB62BF78E13FCA539760BF80314950D67357BF9DDC19743CEA44BF8FB55A6ACAB02B3F8838B639B5EA4F3F92E716CCB111593FD11C080083815D3F5CBEBACD42D35C3FFA17F5C0E471573F793CD3ACDC0A4D3FF3A3AB2DD6B72D3F287D899F0F6F3CBF15576C1A1B3150BFC89FA8609D2856BF2A566801E73558BFF4A0C128613656BF28E8F34BABAD50BF3B67D0C6B24841BF38C9B86768B9003F412678AD18B2423F8EB67439397A503FF69D66C70CE3543F3400511947F9553F6AA049F6C7A8533F589867BAAA984C3F69766899E2AF3A3F69F26010C61422BF8248FA779CBD46BFFE0780CCF3B553BFF6F07B4B12625ABF5A66A8B462F55EBF6CC879FE3F8960BFBAD212797E7E60BF5870B08022CA5EBF421529B3234B5BBF763FD75C44A856BF3416650AC70052BFFCBBDDFBED344ABF7424A9533E8D42BF7BF22DF4850536BF6C530BFD05072CBFFE7987FB0F6818BF}
lappend params_list CONFIG.Coefficient_Buffer_Type {Automatic}
lappend params_list CONFIG.Coefficient_Fanout {true}
lappend params_list CONFIG.Coefficient_File {no_coe_file_loaded}
lappend params_list CONFIG.Coefficient_Fractional_Bits {17}
lappend params_list CONFIG.Coefficient_Reload {false}
lappend params_list CONFIG.Coefficient_Sets {1}
lappend params_list CONFIG.Coefficient_Sign {Signed}
lappend params_list CONFIG.Coefficient_Structure {Inferred}
lappend params_list CONFIG.Coefficient_Width {16}
lappend params_list CONFIG.ColumnConfig {114}
lappend params_list CONFIG.Control_Broadcast_Fanout {true}
lappend params_list CONFIG.Control_Column_Fanout {true}
lappend params_list CONFIG.Control_LUT_Pipeline {true}
lappend params_list CONFIG.Control_Path_Fanout {true}
lappend params_list CONFIG.DATA_Has_TLAST {Not_Required}
lappend params_list CONFIG.DATA_TUSER_Width {1}
lappend params_list CONFIG.Data_Buffer_Type {Automatic}
lappend params_list CONFIG.Data_Fractional_Bits {15}
lappend params_list CONFIG.Data_Path_Broadcast {false}
lappend params_list CONFIG.Data_Path_Fanout {true}
lappend params_list CONFIG.Data_Sign {Signed}
lappend params_list CONFIG.Data_Width {16}
lappend params_list CONFIG.Decimation_Rate {8}
lappend params_list CONFIG.Disable_Half_Band_Centre_Tap {false}
lappend params_list CONFIG.DisplayReloadOrder {false}
lappend params_list CONFIG.Filter_Architecture {Systolic_Multiply_Accumulate}
lappend params_list CONFIG.Filter_Selection {1}
lappend params_list CONFIG.Filter_Type {Decimation}
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
lappend params_list CONFIG.No_BRAM_Read_First_Mode {true}
lappend params_list CONFIG.No_SRL_Attributes {false}
lappend params_list CONFIG.Num_Reload_Slots {1}
lappend params_list CONFIG.Number_Channels {1}
lappend params_list CONFIG.Number_Paths {1}
lappend params_list CONFIG.Optimal_Column_Lengths {true}
lappend params_list CONFIG.Optimization_Goal {Speed}
lappend params_list CONFIG.Optimization_List {Data_Path_Fanout,Pre-Adder_Pipeline,Coefficient_Fanout,Control_Path_Fanout,Control_Column_Fanout,Control_Broadcast_Fanout,Control_LUT_Pipeline,No_BRAM_Read_First_Mode,Optimal_Column_Lengths,Other}
lappend params_list CONFIG.Optimization_Selection {All}
lappend params_list CONFIG.Other {true}
lappend params_list CONFIG.Output_Buffer_Type {Automatic}
lappend params_list CONFIG.Output_Rounding_Mode {Full_Precision}
lappend params_list CONFIG.Output_Width {35}
lappend params_list CONFIG.Passband_Max {0.50000000}
lappend params_list CONFIG.Passband_Min {0.00000000}
lappend params_list CONFIG.Pattern_List {P4-0,P4-1,P4-2,P4-3,P4-4}
lappend params_list CONFIG.Pre_Adder_Pipeline {true}
lappend params_list CONFIG.Preference_For_Other_Storage {Automatic}
lappend params_list CONFIG.Quantization {Quantize_Only}
lappend params_list CONFIG.RateSpecification {Input_Sample_Period}
lappend params_list CONFIG.Rate_Change_Type {Integer}
lappend params_list CONFIG.Reload_File {no_coe_file_loaded}
lappend params_list CONFIG.Reset_Data_Vector {true}
lappend params_list CONFIG.S_CONFIG_Method {Single}
lappend params_list CONFIG.S_CONFIG_Sync_Mode {On_Vector}
lappend params_list CONFIG.S_DATA_Has_FIFO {false}
lappend params_list CONFIG.S_DATA_Has_TUSER {Not_Required}
lappend params_list CONFIG.SamplePeriod {0.12500000}
lappend params_list CONFIG.Sample_Frequency {0.001}
lappend params_list CONFIG.Select_Pattern {All}
lappend params_list CONFIG.Stopband_Max {1.00000000}
lappend params_list CONFIG.Stopband_Min {0.50000000}
lappend params_list CONFIG.Zero_Pack_Factor {1}

set_property -dict $params_list [get_ips decimator_ssr_ip_fir_compiler_v7_2_i0]
}


validate_ip [get_ips]

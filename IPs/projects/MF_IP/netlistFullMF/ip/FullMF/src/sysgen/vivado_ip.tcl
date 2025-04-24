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
if {[lsearch $existingipslist fullmf_c_addsub_v12_0_i0] < 0} {
create_ip -name c_addsub -version 12.0 -vendor xilinx.com -library ip -module_name fullmf_c_addsub_v12_0_i0
set params_list [list]
lappend params_list CONFIG.Component_Name {fullmf_c_addsub_v12_0_i0}
lappend params_list CONFIG.AINIT_Value {0}
lappend params_list CONFIG.A_Type {Signed}
lappend params_list CONFIG.A_Width {35}
lappend params_list CONFIG.Add_Mode {Subtract}
lappend params_list CONFIG.B_Constant {false}
lappend params_list CONFIG.B_Type {Signed}
lappend params_list CONFIG.B_Value {0}
lappend params_list CONFIG.B_Width {35}
lappend params_list CONFIG.Borrow_Sense {Active_Low}
lappend params_list CONFIG.Bypass {false}
lappend params_list CONFIG.Bypass_CE_Priority {Bypass_Overrides_CE}
lappend params_list CONFIG.Bypass_Sense {Active_Low}
lappend params_list CONFIG.CE {true}
lappend params_list CONFIG.C_In {false}
lappend params_list CONFIG.C_Out {false}
lappend params_list CONFIG.Implementation {Fabric}
lappend params_list CONFIG.Latency {1}
lappend params_list CONFIG.Out_Width {35}
lappend params_list CONFIG.SCLR {false}
lappend params_list CONFIG.SINIT {false}
lappend params_list CONFIG.SINIT_Value {0}
lappend params_list CONFIG.SSET {false}
lappend params_list CONFIG.Sync_CE_Priority {Sync_Overrides_CE}
lappend params_list CONFIG.Sync_Ctrl_Priority {Reset_Overrides_Set}

set_property -dict $params_list [get_ips fullmf_c_addsub_v12_0_i0]
}


set existingipslist [get_ips]
if {[lsearch $existingipslist fullmf_c_addsub_v12_0_i1] < 0} {
create_ip -name c_addsub -version 12.0 -vendor xilinx.com -library ip -module_name fullmf_c_addsub_v12_0_i1
set params_list [list]
lappend params_list CONFIG.Component_Name {fullmf_c_addsub_v12_0_i1}
lappend params_list CONFIG.AINIT_Value {0}
lappend params_list CONFIG.A_Type {Signed}
lappend params_list CONFIG.A_Width {35}
lappend params_list CONFIG.Add_Mode {Add}
lappend params_list CONFIG.B_Constant {false}
lappend params_list CONFIG.B_Type {Signed}
lappend params_list CONFIG.B_Value {0}
lappend params_list CONFIG.B_Width {35}
lappend params_list CONFIG.Borrow_Sense {Active_Low}
lappend params_list CONFIG.Bypass {false}
lappend params_list CONFIG.Bypass_CE_Priority {Bypass_Overrides_CE}
lappend params_list CONFIG.Bypass_Sense {Active_Low}
lappend params_list CONFIG.CE {true}
lappend params_list CONFIG.C_In {false}
lappend params_list CONFIG.C_Out {false}
lappend params_list CONFIG.Implementation {Fabric}
lappend params_list CONFIG.Latency {1}
lappend params_list CONFIG.Out_Width {35}
lappend params_list CONFIG.SCLR {false}
lappend params_list CONFIG.SINIT {false}
lappend params_list CONFIG.SINIT_Value {0}
lappend params_list CONFIG.SSET {false}
lappend params_list CONFIG.Sync_CE_Priority {Sync_Overrides_CE}
lappend params_list CONFIG.Sync_Ctrl_Priority {Reset_Overrides_Set}

set_property -dict $params_list [get_ips fullmf_c_addsub_v12_0_i1]
}


set existingipslist [get_ips]
if {[lsearch $existingipslist fullmf_c_addsub_v12_0_i2] < 0} {
create_ip -name c_addsub -version 12.0 -vendor xilinx.com -library ip -module_name fullmf_c_addsub_v12_0_i2
set params_list [list]
lappend params_list CONFIG.Component_Name {fullmf_c_addsub_v12_0_i2}
lappend params_list CONFIG.AINIT_Value {0}
lappend params_list CONFIG.A_Type {Signed}
lappend params_list CONFIG.A_Width {36}
lappend params_list CONFIG.Add_Mode {Subtract}
lappend params_list CONFIG.B_Constant {false}
lappend params_list CONFIG.B_Type {Signed}
lappend params_list CONFIG.B_Value {0}
lappend params_list CONFIG.B_Width {36}
lappend params_list CONFIG.Borrow_Sense {Active_Low}
lappend params_list CONFIG.Bypass {false}
lappend params_list CONFIG.Bypass_CE_Priority {Bypass_Overrides_CE}
lappend params_list CONFIG.Bypass_Sense {Active_Low}
lappend params_list CONFIG.CE {true}
lappend params_list CONFIG.C_In {false}
lappend params_list CONFIG.C_Out {false}
lappend params_list CONFIG.Implementation {Fabric}
lappend params_list CONFIG.Latency {1}
lappend params_list CONFIG.Out_Width {36}
lappend params_list CONFIG.SCLR {false}
lappend params_list CONFIG.SINIT {false}
lappend params_list CONFIG.SINIT_Value {0}
lappend params_list CONFIG.SSET {false}
lappend params_list CONFIG.Sync_CE_Priority {Sync_Overrides_CE}
lappend params_list CONFIG.Sync_Ctrl_Priority {Reset_Overrides_Set}

set_property -dict $params_list [get_ips fullmf_c_addsub_v12_0_i2]
}


set existingipslist [get_ips]
if {[lsearch $existingipslist fullmf_c_addsub_v12_0_i3] < 0} {
create_ip -name c_addsub -version 12.0 -vendor xilinx.com -library ip -module_name fullmf_c_addsub_v12_0_i3
set params_list [list]
lappend params_list CONFIG.Component_Name {fullmf_c_addsub_v12_0_i3}
lappend params_list CONFIG.AINIT_Value {0}
lappend params_list CONFIG.A_Type {Signed}
lappend params_list CONFIG.A_Width {36}
lappend params_list CONFIG.Add_Mode {Add}
lappend params_list CONFIG.B_Constant {false}
lappend params_list CONFIG.B_Type {Signed}
lappend params_list CONFIG.B_Value {0}
lappend params_list CONFIG.B_Width {36}
lappend params_list CONFIG.Borrow_Sense {Active_Low}
lappend params_list CONFIG.Bypass {false}
lappend params_list CONFIG.Bypass_CE_Priority {Bypass_Overrides_CE}
lappend params_list CONFIG.Bypass_Sense {Active_Low}
lappend params_list CONFIG.CE {true}
lappend params_list CONFIG.C_In {false}
lappend params_list CONFIG.C_Out {false}
lappend params_list CONFIG.Implementation {Fabric}
lappend params_list CONFIG.Latency {1}
lappend params_list CONFIG.Out_Width {36}
lappend params_list CONFIG.SCLR {false}
lappend params_list CONFIG.SINIT {false}
lappend params_list CONFIG.SINIT_Value {0}
lappend params_list CONFIG.SSET {false}
lappend params_list CONFIG.Sync_CE_Priority {Sync_Overrides_CE}
lappend params_list CONFIG.Sync_Ctrl_Priority {Reset_Overrides_Set}

set_property -dict $params_list [get_ips fullmf_c_addsub_v12_0_i3]
}


set existingipslist [get_ips]
if {[lsearch $existingipslist fullmf_cordic_v6_0_i0] < 0} {
create_ip -name cordic -version 6.0 -vendor xilinx.com -library ip -module_name fullmf_cordic_v6_0_i0
set params_list [list]
lappend params_list CONFIG.Component_Name {fullmf_cordic_v6_0_i0}
lappend params_list CONFIG.ACLKEN {true}
lappend params_list CONFIG.ARESETN {false}
lappend params_list CONFIG.Architectural_Configuration {Parallel}
lappend params_list CONFIG.Coarse_Rotation {false}
lappend params_list CONFIG.Compensation_Scaling {No_Scale_Compensation}
lappend params_list CONFIG.Data_Format {UnsignedInteger}
lappend params_list CONFIG.Functional_Selection {Square_Root}
lappend params_list CONFIG.Input_Width {48}
lappend params_list CONFIG.Iterations {0}
lappend params_list CONFIG.Output_Width {25}
lappend params_list CONFIG.Phase_Format {Radians}
lappend params_list CONFIG.Pipelining_Mode {Maximum}
lappend params_list CONFIG.Precision {0}
lappend params_list CONFIG.Round_Mode {Truncate}
lappend params_list CONFIG.cartesian_has_tlast {false}
lappend params_list CONFIG.cartesian_has_tuser {false}
lappend params_list CONFIG.cartesian_tuser_width {1}
lappend params_list CONFIG.flow_control {NonBlocking}
lappend params_list CONFIG.optimize_goal {Performance}
lappend params_list CONFIG.out_tlast_behv {Null}
lappend params_list CONFIG.out_tready {false}
lappend params_list CONFIG.phase_has_tlast {false}
lappend params_list CONFIG.phase_has_tuser {false}
lappend params_list CONFIG.phase_tuser_width {1}

set_property -dict $params_list [get_ips fullmf_cordic_v6_0_i0]
}


set existingipslist [get_ips]
if {[lsearch $existingipslist fullmf_c_counter_binary_v12_0_i0] < 0} {
create_ip -name c_counter_binary -version 12.0 -vendor xilinx.com -library ip -module_name fullmf_c_counter_binary_v12_0_i0
set params_list [list]
lappend params_list CONFIG.Component_Name {fullmf_c_counter_binary_v12_0_i0}
lappend params_list CONFIG.ainit_value {0}
lappend params_list CONFIG.ce {true}
lappend params_list CONFIG.count_mode {UP}
lappend params_list CONFIG.fb_latency {0}
lappend params_list CONFIG.final_count_value {1}
lappend params_list CONFIG.implementation {Fabric}
lappend params_list CONFIG.increment_value {1}
lappend params_list CONFIG.latency {1}
lappend params_list CONFIG.load {false}
lappend params_list CONFIG.output_width {16}
lappend params_list CONFIG.restrict_count {false}
lappend params_list CONFIG.sclr {false}
lappend params_list CONFIG.sinit {true}
lappend params_list CONFIG.sinit_value {0}
lappend params_list CONFIG.sset {false}
lappend params_list CONFIG.sync_ce_priority {Sync_Overrides_CE}
lappend params_list CONFIG.sync_threshold_output {false}
lappend params_list CONFIG.syncctrlpriority {Reset_Overrides_Set}

set_property -dict $params_list [get_ips fullmf_c_counter_binary_v12_0_i0]
}


set existingipslist [get_ips]
if {[lsearch $existingipslist fullmf_fir_compiler_v7_2_i0] < 0} {
create_ip -name fir_compiler -version 7.2 -vendor xilinx.com -library ip -module_name fullmf_fir_compiler_v7_2_i0
set params_list [list]
lappend params_list CONFIG.Component_Name {fullmf_fir_compiler_v7_2_i0}
lappend params_list CONFIG.BestPrecision {false}
lappend params_list CONFIG.Blank_Output {false}
lappend params_list CONFIG.Channel_Sequence {Basic}
lappend params_list CONFIG.Clock_Frequency {300.0}
lappend params_list CONFIG.CoefficientSource {Vector}
lappend params_list CONFIG.CoefficientVector {binary:2E28C25C264D17BF48DF807326B1293F18019D41749115BFF9A03883FC6A30BF71104D1FDEA2133FC66FCF146DEA4B3F7DC5DEEB5D1E4EBF76C3CE7B381A5EBF5121BD18B4C3773F98A5440A7FCE77BFC063E9F9321824BF110ACF8FE1C0783F41B45713CE0070BF9D2D6EC1F7C273BF512385D39780833FF16A20BC53CE70BF659CEF69871F73BF766B8AD34E157E3FC8371521A8FC73BF1EE93CD5147B723FDEC971803F2279BFC48E26841F9C693FFABF29889D0D6F3F3BCE7FEEF25771BFD588D91BDFB376BF2E3E29DDE1A48E3FC8478E443BD18CBFB659B4EC8DB97E3F03610D9D69C070BF259BB87E651C613FC3EDF48FC0A16F3FCA3E7516BA257FBFA8708FD0864534BFC2D1996DC12A8A3FEBCCE78DAA698ABFF81FF818FC234F3F0E51A8E081A0753FF83BDC0478D737BFA07118C1386A233FECB789594D1D86BF0D4057B631FE8B3F1808961C3F24603FCB207B6763428CBF00E1AB33C160413FD5B50CA54992933FD3C3E107472790BFBB589727ACC6603FB63BE975620F87BF7C695D3DADBAA03FD189AC3BA27198BFB692A2FB1F997BBFFC0480DCBAF057BFA69DB5B0ABA3AB3F303BA4CE94FBB1BFF288A16E5A59953F4A2253EF749D8EBF482FAAD7A097C13F18CFF39B9485CFBF0FBBE768C1C5BA3FA0C55DBA8DBBCF3F82EAF399189EDBBF15E51C07E27CC63FD7B642DD8987D13F7FC4A2EC7C06D9BFE00DCEFA52296C3F02421034D374DF3F02DFD4D1FA6AE3BF2A57934FC455D33F9D5D277CCB8FB33FE5E3BFD4B4F8D0BFEC05436863C9D23F767577416970D0BFA5F128095DF8BB3F7AADFB869D97C83F9E988AA5A19BDDBFC736EFFDC17ED93FC023EB2B72A2B03F8E80DFE8A183E3BF8ACD09A38F15EA3F7925AB5F535BE1BFA8948C17FD8C943F7021E4B723C1D93F9685353A51BEE0BF7067D7E81083D63FCA37388986C094BF7DCB45771BFCD2BF77FE4DF75E6EDB3F17B97030D54AD2BF138952167EFAAEBF718450DC3F0CDA3FC4AB6C05D411E2BFC26EC9CDA569DE3F5E2318C78948C9BF687700F5DE63C3BFE4AF10B85813DA3FFCE3D3DE0F47D9BF045623638BF8B33F5E86BB783BDFD43FF166FD0F6679DFBF083C8EFE82A7D23F2E28C25C264D073F95F7EB6B26E5183F587CC4564D3B37BFCCAF87C8B97C303FEDFFA2E3F7B3253F66AA8B893555243F7D7EF09CF94461BFD022278F763D6E3F15F2940B63A357BF27148E1FD4D871BF8E5E9E1E38E07E3F2EB347F25D7E68BFBAD98F5B5B4A73BF40DE2F732C02773F849DDDA865C0653FEE33C1441FDA85BF7A08441E2E16843F0D4F2DFD87A16DBF41CB7C705947483F63B0CDCD459256BFB85887AE135949BF0AEA84E03621743F40AF772027BD66BF5E0B573D417A7ABF76DAB3D03D45873F4BC049E66AE672BF6649CFE4F40378BF1356EC8F98B3833FDCDB56C1EAF581BF36C60B2A3E4D843FFCE24200CB5383BF795A4F936F7C533FAFFBD3EE36B67D3F087EF74D678762BFF483F7BA805E88BF30A909F19858913F6021AEF8927683BF3DB8D085883B793FC62B6F1061438ABF1F0B0D4863A48A3FD08787720B194A3F685A1FAEF6BC7EBF6A084D0ADC6D81BF344DFAF857789A3FCA208D180AD992BF2051DB0F07A5583F5076210309887ABFDC7694B447B6963FF8DA7323506288BFCB957A6C0F898CBFF0469F991F64733F14B7DBAC008EA23F72B0920E6691A3BFFAB10D9F3E698FBFF09AE5C4259CA03FA9A07279B03DA23FD93354FFC8E5ADBFA0E6D57BFBD0BCBF3A298FF0E1ECD63FA09707ED3B7FD6BFF3E7A2058A8978BF680BF75511CBD63FAAFEDA0D9730D1BF623D89EB49CEC9BF10D0E30D6622E13FAD2125854EF8D6BF7987330211CEC1BF658AF37F7B0ADF3FEAF77F331C07DEBFC663D8B066AED03F03BD8C797A79B0BF2822EF4581A1BBBF7E905DA9E1C1D13FC41642F0696DD3BFC8B4367530DD9B3F826EF2B8A3E8DB3F9E6A16733B95E6BF7A723D109E0CE03FBA639671F2B3AE3F9CCB9BDF5266E2BFB59DB9EADD08E73F6EE61668A2A0DEBF46A6873AD90FB13F6E3091A35C9FD13F2E2EF9CB4A91D9BFA264257209EBD03F7C8FA623AD98AE3F6639B4130721D9BF0B6643B814F7E03F3178CF831BD0D8BF10529252B503AD3F1C6A47E9BE4CD23F3810203C1684DFBF1AFC3272586FDE3FACE3E6197CD4CBBFF02BD91A6119C5BFF043BDA39751DA3F1DABC4277F9AD3BFAA335EC81355B6BF9E859E9C6586DD3F}
lappend params_list CONFIG.Coefficient_Buffer_Type {Automatic}
lappend params_list CONFIG.Coefficient_Fanout {false}
lappend params_list CONFIG.Coefficient_File {no_coe_file_loaded}
lappend params_list CONFIG.Coefficient_Fractional_Bits {14}
lappend params_list CONFIG.Coefficient_Reload {false}
lappend params_list CONFIG.Coefficient_Sets {2}
lappend params_list CONFIG.Coefficient_Sign {Signed}
lappend params_list CONFIG.Coefficient_Structure {Inferred}
lappend params_list CONFIG.Coefficient_Width {16}
lappend params_list CONFIG.ColumnConfig {100}
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
lappend params_list CONFIG.Output_Width {34}
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

set_property -dict $params_list [get_ips fullmf_fir_compiler_v7_2_i0]
}


set existingipslist [get_ips]
if {[lsearch $existingipslist fullmf_fir_compiler_v7_2_i1] < 0} {
create_ip -name fir_compiler -version 7.2 -vendor xilinx.com -library ip -module_name fullmf_fir_compiler_v7_2_i1
set params_list [list]
lappend params_list CONFIG.Component_Name {fullmf_fir_compiler_v7_2_i1}
lappend params_list CONFIG.BestPrecision {false}
lappend params_list CONFIG.Blank_Output {false}
lappend params_list CONFIG.Channel_Sequence {Basic}
lappend params_list CONFIG.Clock_Frequency {300.0}
lappend params_list CONFIG.CoefficientSource {Vector}
lappend params_list CONFIG.CoefficientVector {binary:2E28C25C264D073F95F7EB6B26E5183F587CC4564D3B37BFCCAF87C8B97C303FEDFFA2E3F7B3253F66AA8B893555243F7D7EF09CF94461BFD022278F763D6E3F15F2940B63A357BF27148E1FD4D871BF8E5E9E1E38E07E3F2EB347F25D7E68BFBAD98F5B5B4A73BF40DE2F732C02773F849DDDA865C0653FEE33C1441FDA85BF7A08441E2E16843F0D4F2DFD87A16DBF41CB7C705947483F63B0CDCD459256BFB85887AE135949BF0AEA84E03621743F40AF772027BD66BF5E0B573D417A7ABF76DAB3D03D45873F4BC049E66AE672BF6649CFE4F40378BF1356EC8F98B3833FDCDB56C1EAF581BF36C60B2A3E4D843FFCE24200CB5383BF795A4F936F7C533FAFFBD3EE36B67D3F087EF74D678762BFF483F7BA805E88BF30A909F19858913F6021AEF8927683BF3DB8D085883B793FC62B6F1061438ABF1F0B0D4863A48A3FD08787720B194A3F685A1FAEF6BC7EBF6A084D0ADC6D81BF344DFAF857789A3FCA208D180AD992BF2051DB0F07A5583F5076210309887ABFDC7694B447B6963FF8DA7323506288BFCB957A6C0F898CBFF0469F991F64733F14B7DBAC008EA23F72B0920E6691A3BFFAB10D9F3E698FBFF09AE5C4259CA03FA9A07279B03DA23FD93354FFC8E5ADBFA0E6D57BFBD0BCBF3A298FF0E1ECD63FA09707ED3B7FD6BFF3E7A2058A8978BF680BF75511CBD63FAAFEDA0D9730D1BF623D89EB49CEC9BF10D0E30D6622E13FAD2125854EF8D6BF7987330211CEC1BF658AF37F7B0ADF3FEAF77F331C07DEBFC663D8B066AED03F03BD8C797A79B0BF2822EF4581A1BBBF7E905DA9E1C1D13FC41642F0696DD3BFC8B4367530DD9B3F826EF2B8A3E8DB3F9E6A16733B95E6BF7A723D109E0CE03FBA639671F2B3AE3F9CCB9BDF5266E2BFB59DB9EADD08E73F6EE61668A2A0DEBF46A6873AD90FB13F6E3091A35C9FD13F2E2EF9CB4A91D9BFA264257209EBD03F7C8FA623AD98AE3F6639B4130721D9BF0B6643B814F7E03F3178CF831BD0D8BF10529252B503AD3F1C6A47E9BE4CD23F3810203C1684DFBF1AFC3272586FDE3FACE3E6197CD4CBBFF02BD91A6119C5BFF043BDA39751DA3F1DABC4277F9AD3BFAA335EC81355B6BF9E859E9C6586DD3F2E28C25C264D17BF48DF807326B1293F18019D41749115BFF9A03883FC6A30BF71104D1FDEA2133FC66FCF146DEA4B3F7DC5DEEB5D1E4EBF76C3CE7B381A5EBF5121BD18B4C3773F98A5440A7FCE77BFC063E9F9321824BF110ACF8FE1C0783F41B45713CE0070BF9D2D6EC1F7C273BF512385D39780833FF16A20BC53CE70BF659CEF69871F73BF766B8AD34E157E3FC8371521A8FC73BF1EE93CD5147B723FDEC971803F2279BFC48E26841F9C693FFABF29889D0D6F3F3BCE7FEEF25771BFD588D91BDFB376BF2E3E29DDE1A48E3FC8478E443BD18CBFB659B4EC8DB97E3F03610D9D69C070BF259BB87E651C613FC3EDF48FC0A16F3FCA3E7516BA257FBFA8708FD0864534BFC2D1996DC12A8A3FEBCCE78DAA698ABFF81FF818FC234F3F0E51A8E081A0753FF83BDC0478D737BFA07118C1386A233FECB789594D1D86BF0D4057B631FE8B3F1808961C3F24603FCB207B6763428CBF00E1AB33C160413FD5B50CA54992933FD3C3E107472790BFBB589727ACC6603FB63BE975620F87BF7C695D3DADBAA03FD189AC3BA27198BFB692A2FB1F997BBFFC0480DCBAF057BFA69DB5B0ABA3AB3F303BA4CE94FBB1BFF288A16E5A59953F4A2253EF749D8EBF482FAAD7A097C13F18CFF39B9485CFBF0FBBE768C1C5BA3FA0C55DBA8DBBCF3F82EAF399189EDBBF15E51C07E27CC63FD7B642DD8987D13F7FC4A2EC7C06D9BFE00DCEFA52296C3F02421034D374DF3F02DFD4D1FA6AE3BF2A57934FC455D33F9D5D277CCB8FB33FE5E3BFD4B4F8D0BFEC05436863C9D23F767577416970D0BFA5F128095DF8BB3F7AADFB869D97C83F9E988AA5A19BDDBFC736EFFDC17ED93FC023EB2B72A2B03F8E80DFE8A183E3BF8ACD09A38F15EA3F7925AB5F535BE1BFA8948C17FD8C943F7021E4B723C1D93F9685353A51BEE0BF7067D7E81083D63FCA37388986C094BF7DCB45771BFCD2BF77FE4DF75E6EDB3F17B97030D54AD2BF138952167EFAAEBF718450DC3F0CDA3FC4AB6C05D411E2BFC26EC9CDA569DE3F5E2318C78948C9BF687700F5DE63C3BFE4AF10B85813DA3FFCE3D3DE0F47D9BF045623638BF8B33F5E86BB783BDFD43FF166FD0F6679DFBF083C8EFE82A7D23F}
lappend params_list CONFIG.Coefficient_Buffer_Type {Automatic}
lappend params_list CONFIG.Coefficient_Fanout {false}
lappend params_list CONFIG.Coefficient_File {no_coe_file_loaded}
lappend params_list CONFIG.Coefficient_Fractional_Bits {14}
lappend params_list CONFIG.Coefficient_Reload {false}
lappend params_list CONFIG.Coefficient_Sets {2}
lappend params_list CONFIG.Coefficient_Sign {Signed}
lappend params_list CONFIG.Coefficient_Structure {Inferred}
lappend params_list CONFIG.Coefficient_Width {16}
lappend params_list CONFIG.ColumnConfig {100}
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
lappend params_list CONFIG.Output_Width {34}
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

set_property -dict $params_list [get_ips fullmf_fir_compiler_v7_2_i1]
}


set existingipslist [get_ips]
if {[lsearch $existingipslist fullmf_fir_compiler_v7_2_i2] < 0} {
create_ip -name fir_compiler -version 7.2 -vendor xilinx.com -library ip -module_name fullmf_fir_compiler_v7_2_i2
set params_list [list]
lappend params_list CONFIG.Component_Name {fullmf_fir_compiler_v7_2_i2}
lappend params_list CONFIG.BestPrecision {false}
lappend params_list CONFIG.Blank_Output {false}
lappend params_list CONFIG.Channel_Sequence {Basic}
lappend params_list CONFIG.Clock_Frequency {300.0}
lappend params_list CONFIG.CoefficientSource {Vector}
lappend params_list CONFIG.CoefficientVector {binary:135AD759FECB1BBFB88824AF20CA0CBF3812D62EBD6F343F404DCDEFE28B443FA8E7E6C530DE303FF01F9390DF4702BFBC0D7F118D08623FBFDCF008F64D7D3FBE579EF54958843FEAA001DEC677753F194411ABCC2672BFF6756DAFFFD382BFCAC5765727D772BF906E84CF5574333F4B834A49AF4974BF423AFE65750890BFF65BCFDE4FAD91BFE8B35E8F6AA87BBF3C340E1CF084633FA8D8298D44934D3F3C23CFA3FDD869BFDEA0088F801155BFAC1031AF54C253BF25F73FB778C788BF9A0B04D1B37697BFE1281326AAD390BF005256D7D1B8063F829687297C0D653FB34CFD3D5B2F84BF70C2AA7E908E89BFBCCF9CCC834D493F009095060E0C6F3F267108A200BE8EBF12A1B830EE4099BF2870F1FAB5EC53BF2991FAB806169A3F6833DCD0F2AF903FC0BEFE984B7182BF10304F55B58064BFCA0ADBB99C8D9B3FF6F8C5FC0B999A3F05D808874C1A73BF1446E105017065BF41292E47AEDFA63F42C245989FA1B03F8CB9E7D712EE993F541DCFB51486703FA7DDF86B117BAF3F43DCE96B6E76BE3F85FEB96C3EA6B43F900D12529CA48A3F4676CF5ACD45A93FCD7D6B91CFCCC23F25D470428A5EC13F1E396D3916D5A13FB8192ADE7000B53FE2644B05F7B0D43F1C105955B9AFD93F5819699D5827833F3D3E4E92478AE2BFE3C8BB5F7B84E8BF725FC5BADB48DABF49F48041AAB59DBF9E265ABB41BEB5BF309CDA0D9021D8BF96EDFA148E87D7BF42BEA1090C89B33FB84F4D881212E23F70EBBFFAE9E8E63FC2E04F294537E03F7D4CF2E03A74BA3F779EA058EE1AD6BF3340DB57C4E3E4BF4287A63AA34BE3BF45361FBC6653CABF62F1EC056266CB3F5877EA38A3ACD63F878332C025FFCF3F34E1CBF21297B93FA0E689B00EC9B0BF10939C4F47D5D3BF64FC2D8273F9DEBF0C1C87A303F5D3BF864EA8DABD9BC63FDAE7D63EE713E23FDA6CF60E60AFE03FA1A8392CAC1AC43FE9F934405F94C9BF2690BD2F5091D8BF2838CCB2D1E0D8BF78DFD738D415C8BF583709A0F07BC63FBA03D0072548DC3FF4B2E7EF2002D83F4249D24FF1EFC23FED0FA6D331B7C63F846AFE07086FE03F4BCC3E699BC4E53FC00F4C1FFF84D23F5D4F60BFE3D6DABF135AD759FECB1B3F08A1889F15393A3FA35E86F511F0413FC6B9D4C3A656323FC91ED1F7F9BE243F9B680A419E08573FA49493607C1A6B3F441E679D8102613FB9FB5D71314573BFD2C1A4F6F78689BF7AEF74F4826B8ABFAC16E8F1372276BF202E814E2F6B0E3F7724D34997DA70BFCBEA5826383586BF90A1B144D9807DBF32770A683E24773FF5FF20BFE32B8A3FC1B8BEC45F957D3FEC3A3E3EBEE830BFE0032E7C50031FBF6B1AB4657435483FAFDB79CF38D176BF408673AFAC2283BF7ECA1A8295A4603F1F4A081C41B4923F0A784BB19165923F95CB596D4DA6713F7CEBDAA3249D5E3F7301B49DF85B8E3FCE6DA7BC37BD923FFC6A3EE70C54703F40C52CA3A2073D3F3B6334DD510F993FE4EDF2793CC5A63F4A05C6830E159D3FA097653D96F45C3FA30863EE6E99823FE4DD526DB6ACA23FE77479518122A13FE362B8D3B9B4733FE6AF12D48D11803F418B4EC12B40A83FECD3B69B1299AC3FD4AEF154FFB5863F475E31E43C1687BF7F6C8441EFA4A13FBD492528DC84B13F70E10F59E51C8B3F22EA7562CA1BADBF3E388BE482C69BBF76273755EEE3A73F80F095AB36378B3F33E47080C5D9B8BF25F4A77995DAB6BFE5C1D505393FA23F44826BC45D6796BF68B5ACF4DA3ADABF48FB18D6697CE8BF785843930971E3BF00554BCBF71F99BFC4A2D79C32EFD73F78ACEB476103D03FF4D213D5A20AA0BFD6521E1D9218AB3FC8A44C7C9DC3DD3FAED763FCAA7BE63FBB9389C3BD43DE3FA89D962D992E9DBF16DA2295BE9CDDBF6A22CD14244CE5BFC49D227467C9E2BFC512079ABAAACBBF4594EE6C64F9D13FA2FA7651EBF7E13F8C1AFE223959DC3FFDD3C7A760E1BD3FAC692198DDDFBEBFE22330A712D5CBBFB8E478CE9321D1BF16F38D25098BCABF02BE596A98B3B93FC35EF4ED1348E03F884DAF547AE3E33F81CB799A22DBD13FD209A673241CCBBF060DC71AD7ECDCBF640ECF27C14FD7BF5B2F2C33D649BCBF96D008BEE681C83FF44A4D4F1132DD3FE03A2AE7B328E03F6253436CEFEBCF3F2AF1D401AB6CAFBFD651DF66449AB4BF3B3AA1579A4DBF3F778AEE405192B53F9CF77AB45179D9BFD4D90DD55020EDBF667B12C07B0DEDBF}
lappend params_list CONFIG.Coefficient_Buffer_Type {Automatic}
lappend params_list CONFIG.Coefficient_Fanout {false}
lappend params_list CONFIG.Coefficient_File {no_coe_file_loaded}
lappend params_list CONFIG.Coefficient_Fractional_Bits {14}
lappend params_list CONFIG.Coefficient_Reload {false}
lappend params_list CONFIG.Coefficient_Sets {2}
lappend params_list CONFIG.Coefficient_Sign {Signed}
lappend params_list CONFIG.Coefficient_Structure {Inferred}
lappend params_list CONFIG.Coefficient_Width {16}
lappend params_list CONFIG.ColumnConfig {100}
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
lappend params_list CONFIG.Output_Width {35}
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

set_property -dict $params_list [get_ips fullmf_fir_compiler_v7_2_i2]
}


set existingipslist [get_ips]
if {[lsearch $existingipslist fullmf_fir_compiler_v7_2_i3] < 0} {
create_ip -name fir_compiler -version 7.2 -vendor xilinx.com -library ip -module_name fullmf_fir_compiler_v7_2_i3
set params_list [list]
lappend params_list CONFIG.Component_Name {fullmf_fir_compiler_v7_2_i3}
lappend params_list CONFIG.BestPrecision {false}
lappend params_list CONFIG.Blank_Output {false}
lappend params_list CONFIG.Channel_Sequence {Basic}
lappend params_list CONFIG.Clock_Frequency {300.0}
lappend params_list CONFIG.CoefficientSource {Vector}
lappend params_list CONFIG.CoefficientVector {binary:135AD759FECB1B3F08A1889F15393A3FA35E86F511F0413FC6B9D4C3A656323FC91ED1F7F9BE243F9B680A419E08573FA49493607C1A6B3F441E679D8102613FB9FB5D71314573BFD2C1A4F6F78689BF7AEF74F4826B8ABFAC16E8F1372276BF202E814E2F6B0E3F7724D34997DA70BFCBEA5826383586BF90A1B144D9807DBF32770A683E24773FF5FF20BFE32B8A3FC1B8BEC45F957D3FEC3A3E3EBEE830BFE0032E7C50031FBF6B1AB4657435483FAFDB79CF38D176BF408673AFAC2283BF7ECA1A8295A4603F1F4A081C41B4923F0A784BB19165923F95CB596D4DA6713F7CEBDAA3249D5E3F7301B49DF85B8E3FCE6DA7BC37BD923FFC6A3EE70C54703F40C52CA3A2073D3F3B6334DD510F993FE4EDF2793CC5A63F4A05C6830E159D3FA097653D96F45C3FA30863EE6E99823FE4DD526DB6ACA23FE77479518122A13FE362B8D3B9B4733FE6AF12D48D11803F418B4EC12B40A83FECD3B69B1299AC3FD4AEF154FFB5863F475E31E43C1687BF7F6C8441EFA4A13FBD492528DC84B13F70E10F59E51C8B3F22EA7562CA1BADBF3E388BE482C69BBF76273755EEE3A73F80F095AB36378B3F33E47080C5D9B8BF25F4A77995DAB6BFE5C1D505393FA23F44826BC45D6796BF68B5ACF4DA3ADABF48FB18D6697CE8BF785843930971E3BF00554BCBF71F99BFC4A2D79C32EFD73F78ACEB476103D03FF4D213D5A20AA0BFD6521E1D9218AB3FC8A44C7C9DC3DD3FAED763FCAA7BE63FBB9389C3BD43DE3FA89D962D992E9DBF16DA2295BE9CDDBF6A22CD14244CE5BFC49D227467C9E2BFC512079ABAAACBBF4594EE6C64F9D13FA2FA7651EBF7E13F8C1AFE223959DC3FFDD3C7A760E1BD3FAC692198DDDFBEBFE22330A712D5CBBFB8E478CE9321D1BF16F38D25098BCABF02BE596A98B3B93FC35EF4ED1348E03F884DAF547AE3E33F81CB799A22DBD13FD209A673241CCBBF060DC71AD7ECDCBF640ECF27C14FD7BF5B2F2C33D649BCBF96D008BEE681C83FF44A4D4F1132DD3FE03A2AE7B328E03F6253436CEFEBCF3F2AF1D401AB6CAFBFD651DF66449AB4BF3B3AA1579A4DBF3F778AEE405192B53F9CF77AB45179D9BFD4D90DD55020EDBF667B12C07B0DEDBF135AD759FECB1BBFB88824AF20CA0CBF3812D62EBD6F343F404DCDEFE28B443FA8E7E6C530DE303FF01F9390DF4702BFBC0D7F118D08623FBFDCF008F64D7D3FBE579EF54958843FEAA001DEC677753F194411ABCC2672BFF6756DAFFFD382BFCAC5765727D772BF906E84CF5574333F4B834A49AF4974BF423AFE65750890BFF65BCFDE4FAD91BFE8B35E8F6AA87BBF3C340E1CF084633FA8D8298D44934D3F3C23CFA3FDD869BFDEA0088F801155BFAC1031AF54C253BF25F73FB778C788BF9A0B04D1B37697BFE1281326AAD390BF005256D7D1B8063F829687297C0D653FB34CFD3D5B2F84BF70C2AA7E908E89BFBCCF9CCC834D493F009095060E0C6F3F267108A200BE8EBF12A1B830EE4099BF2870F1FAB5EC53BF2991FAB806169A3F6833DCD0F2AF903FC0BEFE984B7182BF10304F55B58064BFCA0ADBB99C8D9B3FF6F8C5FC0B999A3F05D808874C1A73BF1446E105017065BF41292E47AEDFA63F42C245989FA1B03F8CB9E7D712EE993F541DCFB51486703FA7DDF86B117BAF3F43DCE96B6E76BE3F85FEB96C3EA6B43F900D12529CA48A3F4676CF5ACD45A93FCD7D6B91CFCCC23F25D470428A5EC13F1E396D3916D5A13FB8192ADE7000B53FE2644B05F7B0D43F1C105955B9AFD93F5819699D5827833F3D3E4E92478AE2BFE3C8BB5F7B84E8BF725FC5BADB48DABF49F48041AAB59DBF9E265ABB41BEB5BF309CDA0D9021D8BF96EDFA148E87D7BF42BEA1090C89B33FB84F4D881212E23F70EBBFFAE9E8E63FC2E04F294537E03F7D4CF2E03A74BA3F779EA058EE1AD6BF3340DB57C4E3E4BF4287A63AA34BE3BF45361FBC6653CABF62F1EC056266CB3F5877EA38A3ACD63F878332C025FFCF3F34E1CBF21297B93FA0E689B00EC9B0BF10939C4F47D5D3BF64FC2D8273F9DEBF0C1C87A303F5D3BF864EA8DABD9BC63FDAE7D63EE713E23FDA6CF60E60AFE03FA1A8392CAC1AC43FE9F934405F94C9BF2690BD2F5091D8BF2838CCB2D1E0D8BF78DFD738D415C8BF583709A0F07BC63FBA03D0072548DC3FF4B2E7EF2002D83F4249D24FF1EFC23FED0FA6D331B7C63F846AFE07086FE03F4BCC3E699BC4E53FC00F4C1FFF84D23F5D4F60BFE3D6DABF}
lappend params_list CONFIG.Coefficient_Buffer_Type {Automatic}
lappend params_list CONFIG.Coefficient_Fanout {false}
lappend params_list CONFIG.Coefficient_File {no_coe_file_loaded}
lappend params_list CONFIG.Coefficient_Fractional_Bits {14}
lappend params_list CONFIG.Coefficient_Reload {false}
lappend params_list CONFIG.Coefficient_Sets {2}
lappend params_list CONFIG.Coefficient_Sign {Signed}
lappend params_list CONFIG.Coefficient_Structure {Inferred}
lappend params_list CONFIG.Coefficient_Width {16}
lappend params_list CONFIG.ColumnConfig {100}
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
lappend params_list CONFIG.Output_Width {35}
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

set_property -dict $params_list [get_ips fullmf_fir_compiler_v7_2_i3]
}


set existingipslist [get_ips]
if {[lsearch $existingipslist fullmf_fir_compiler_v7_2_i4] < 0} {
create_ip -name fir_compiler -version 7.2 -vendor xilinx.com -library ip -module_name fullmf_fir_compiler_v7_2_i4
set params_list [list]
lappend params_list CONFIG.Component_Name {fullmf_fir_compiler_v7_2_i4}
lappend params_list CONFIG.BestPrecision {false}
lappend params_list CONFIG.Blank_Output {false}
lappend params_list CONFIG.Channel_Sequence {Basic}
lappend params_list CONFIG.Clock_Frequency {300.0}
lappend params_list CONFIG.CoefficientSource {Vector}
lappend params_list CONFIG.CoefficientVector {binary:45E01A14E1511ABFC8DBCD808FBE0C3F9CE159F48835363F8C296CF4544D0A3FB9777C90351545BF00B0E38F4C30F83EF9568628E934683F960815D3489E753F8AEABC45F7B3683FECA384603DE55CBF6E414922E5FF55BF5E70D54BAA3A7B3F8E272F3740F3893FCCEA2141653C7A3FFF144FD1ADAC7EBF19587E8BC99A8CBF9CCA7CDA110680BFF1C08C94028A3C3FBA5109D01CF35F3F50B73131DE415A3F16A7493343F9723F00B4B7ACDF426E3FBA2B08499AE280BFCC4CC628F9B394BFF129BA97730E92BF784B9044276981BFCC0C10DC1AC98BBF26F71D09973E9FBF7DCB7A120AFCA0BF94FF9D2116938BBF63905EA5C432633F9A78037FF3D473BFAF3E3E8766A890BF85C02706E19484BF382C4B24E0AC5ABF33A6E1F2290F90BFEEE2666BE803A2BFCEECD61D417698BFFD637200B59A803F6351AF1357D98B3F93E35068312C89BF560E1520DE9493BF476482EA18CB8A3F6210B067810FA23F035A67BFA8F08D3F0807CEEC6CE45BBF457C400E3D88A03FCE22E658EEABB13F156658F335A2A53F5C8DE27ED9666BBF257A8E5216DD9E3FBA38685E39D0BD3FB23E9BA9E1BBBF3F7E0F489C3D4AA73F3EA1B58CEE44AB3F06A7B34EF717CC3F1C3716A655F3D43FAC5C20E844BEC33F89D8AECBBF37C1BFED832CA7A112C1BFC475006959E8CB3F78640EB17AC5DC3FB948054AD016C13FC0C9B40B9693E0BFFEFE31AE2A7FEBBF74740BD7D6D5E1BF0990488F2276B53F4A451A86E44DE13F1DF428D5BD80E23F8082C9D544B9D13F72B2A2A81C25C9BF5EAF814E91B1E4BFEF18B37C848BEABF05740D51DC93E4BFCE025F289FC3D4BF9E114577CBC8CCBF8B84097DC78FD5BFC4719212317ED0BF488766F1929ED03FDFAC13F30AA5EC3F9BD776ECE460F13F495DFC090373E53F7827CB8E6618883F2AFAC1066B67DDBFE17C01710871E3BF102FBBEC89C0DEBFE637DF76C9E0BDBFE86CDA12D33DD73F67776BE23BE1E43F7D9FC7351465E03FD280744D39C3BC3FCB300C603778B8BF7802211EB795B93FF76B6EFE3747DB3FEE2EE4EFA369DE3F0A91F59F4B74C43F0A5EFA8FAE84D1BF306328657DF3E1BFD4E3E03E3BF9E2BF72DEDADA4AE9D6BF342814CF68BD23BFFD777819154F39BF0566B4F314B730BF6DE33DFC1692123F040EA631612E43BF931BC0CDA24963BF2826708C318D66BF182F7B625CA63D3F3C18082C67C5713F208B9712708F693F1C30998FE00F67BF14A2304934DD71BFEC3D4791BA23733F10D8AE224E7A903F2C6AC845CC9E903F5A9D5848FA76733F4622778914DE72BF7B6DB9ED83166BBF1A6032C31418583FAA59AADAA134653F7B5572175B8D753F24A4779B106F8D3FBC18625B0897943F9CC6FE591B30883FE014F83F3E5641BF78E41BE7B9AC513F6B370A21E7F2863F2E21D785401E793FF92FA1B0A78790BFE43D96B923EE9CBF703C7878005490BFD93E2A31FB8660BFD4714A62E34680BF894C43EC3E3792BFB0E4A88A8B9582BF02395C0C6C23583FD540368E6EF98FBF503AA6EDAA38A7BF1C00A4D2B11BA7BF30AD2F10B35092BF0E0BA610BF558BBF1E4A06373E9DA6BFB62C771F3BD2AEBFB12C44D7D9D4A1BFBA25D8AA745390BF1F3C9119D7C2A5BFCA0B4E7BD13BB1BF80A59E860737A2BF08087D312213763F4DC790BD2AF999BF606BB900AF01B7BF218F843FD3AAB2BF1CE52C60ACBF8D3F06FECA261671973FFECEAF033D5EB4BF650E4CA19730B8BF4ED34F0B6F4FBD3F7D4D9192B88DD53F50152F032841D03F3DC3C624191CAEBF641ACBA01B92C1BFE1E4679B7F3FD03FD6B6E32E4F19E73FF178F6F5BCB8E53F44BD4241BD0CB23FA24D97162FBEE1BFEA1109AECBB9E5BF79813905CD4ED3BF79DF9CE7FC65CD3FC4416F711FDDE33F6692E4CA9888E73F522345C2F083E03F49B832ACBDC4A93FDD711C196200D7BF8FA04C351FA8DCBF4AD0895F8E61D5BF52405A4947B0D9BFC426B05AE70CE8BFCCEA0D9FEE72EFBFDC831153D263E5BF39FAE0BB5150B33FD82C87556747E63F2A9A108B5CE5E93FAC8FF492C1D8DF3F0826FF7C244CA63F5A508429E720D8BFFEB80E43C5A3E4BFB22F22385FF9E2BF7DB32A51DD51C8BFD1BBB58021B2D03F89C38DAF7422D73F226584A04A40B63FF99850570BBAC4BF36B933A5F467A3BF04F468D3BE18D73FC41F63DE6A16E53FF25A51E1BD1CE43FFBA00A2909EAD43F50E68990465DB3BF92CDD084B085DABF}
lappend params_list CONFIG.Coefficient_Buffer_Type {Automatic}
lappend params_list CONFIG.Coefficient_Fanout {false}
lappend params_list CONFIG.Coefficient_File {no_coe_file_loaded}
lappend params_list CONFIG.Coefficient_Fractional_Bits {14}
lappend params_list CONFIG.Coefficient_Reload {false}
lappend params_list CONFIG.Coefficient_Sets {2}
lappend params_list CONFIG.Coefficient_Sign {Signed}
lappend params_list CONFIG.Coefficient_Structure {Inferred}
lappend params_list CONFIG.Coefficient_Width {16}
lappend params_list CONFIG.ColumnConfig {100}
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
lappend params_list CONFIG.Output_Width {35}
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

set_property -dict $params_list [get_ips fullmf_fir_compiler_v7_2_i4]
}


set existingipslist [get_ips]
if {[lsearch $existingipslist fullmf_fir_compiler_v7_2_i5] < 0} {
create_ip -name fir_compiler -version 7.2 -vendor xilinx.com -library ip -module_name fullmf_fir_compiler_v7_2_i5
set params_list [list]
lappend params_list CONFIG.Component_Name {fullmf_fir_compiler_v7_2_i5}
lappend params_list CONFIG.BestPrecision {false}
lappend params_list CONFIG.Blank_Output {false}
lappend params_list CONFIG.Channel_Sequence {Basic}
lappend params_list CONFIG.Clock_Frequency {300.0}
lappend params_list CONFIG.CoefficientSource {Vector}
lappend params_list CONFIG.CoefficientVector {binary:342814CF68BD23BFFD777819154F39BF0566B4F314B730BF6DE33DFC1692123F040EA631612E43BF931BC0CDA24963BF2826708C318D66BF182F7B625CA63D3F3C18082C67C5713F208B9712708F693F1C30998FE00F67BF14A2304934DD71BFEC3D4791BA23733F10D8AE224E7A903F2C6AC845CC9E903F5A9D5848FA76733F4622778914DE72BF7B6DB9ED83166BBF1A6032C31418583FAA59AADAA134653F7B5572175B8D753F24A4779B106F8D3FBC18625B0897943F9CC6FE591B30883FE014F83F3E5641BF78E41BE7B9AC513F6B370A21E7F2863F2E21D785401E793FF92FA1B0A78790BFE43D96B923EE9CBF703C7878005490BFD93E2A31FB8660BFD4714A62E34680BF894C43EC3E3792BFB0E4A88A8B9582BF02395C0C6C23583FD540368E6EF98FBF503AA6EDAA38A7BF1C00A4D2B11BA7BF30AD2F10B35092BF0E0BA610BF558BBF1E4A06373E9DA6BFB62C771F3BD2AEBFB12C44D7D9D4A1BFBA25D8AA745390BF1F3C9119D7C2A5BFCA0B4E7BD13BB1BF80A59E860737A2BF08087D312213763F4DC790BD2AF999BF606BB900AF01B7BF218F843FD3AAB2BF1CE52C60ACBF8D3F06FECA261671973FFECEAF033D5EB4BF650E4CA19730B8BF4ED34F0B6F4FBD3F7D4D9192B88DD53F50152F032841D03F3DC3C624191CAEBF641ACBA01B92C1BFE1E4679B7F3FD03FD6B6E32E4F19E73FF178F6F5BCB8E53F44BD4241BD0CB23FA24D97162FBEE1BFEA1109AECBB9E5BF79813905CD4ED3BF79DF9CE7FC65CD3FC4416F711FDDE33F6692E4CA9888E73F522345C2F083E03F49B832ACBDC4A93FDD711C196200D7BF8FA04C351FA8DCBF4AD0895F8E61D5BF52405A4947B0D9BFC426B05AE70CE8BFCCEA0D9FEE72EFBFDC831153D263E5BF39FAE0BB5150B33FD82C87556747E63F2A9A108B5CE5E93FAC8FF492C1D8DF3F0826FF7C244CA63F5A508429E720D8BFFEB80E43C5A3E4BFB22F22385FF9E2BF7DB32A51DD51C8BFD1BBB58021B2D03F89C38DAF7422D73F226584A04A40B63FF99850570BBAC4BF36B933A5F467A3BF04F468D3BE18D73FC41F63DE6A16E53FF25A51E1BD1CE43FFBA00A2909EAD43F50E68990465DB3BF92CDD084B085DABF45E01A14E1511ABFC8DBCD808FBE0C3F9CE159F48835363F8C296CF4544D0A3FB9777C90351545BF00B0E38F4C30F83EF9568628E934683F960815D3489E753F8AEABC45F7B3683FECA384603DE55CBF6E414922E5FF55BF5E70D54BAA3A7B3F8E272F3740F3893FCCEA2141653C7A3FFF144FD1ADAC7EBF19587E8BC99A8CBF9CCA7CDA110680BFF1C08C94028A3C3FBA5109D01CF35F3F50B73131DE415A3F16A7493343F9723F00B4B7ACDF426E3FBA2B08499AE280BFCC4CC628F9B394BFF129BA97730E92BF784B9044276981BFCC0C10DC1AC98BBF26F71D09973E9FBF7DCB7A120AFCA0BF94FF9D2116938BBF63905EA5C432633F9A78037FF3D473BFAF3E3E8766A890BF85C02706E19484BF382C4B24E0AC5ABF33A6E1F2290F90BFEEE2666BE803A2BFCEECD61D417698BFFD637200B59A803F6351AF1357D98B3F93E35068312C89BF560E1520DE9493BF476482EA18CB8A3F6210B067810FA23F035A67BFA8F08D3F0807CEEC6CE45BBF457C400E3D88A03FCE22E658EEABB13F156658F335A2A53F5C8DE27ED9666BBF257A8E5216DD9E3FBA38685E39D0BD3FB23E9BA9E1BBBF3F7E0F489C3D4AA73F3EA1B58CEE44AB3F06A7B34EF717CC3F1C3716A655F3D43FAC5C20E844BEC33F89D8AECBBF37C1BFED832CA7A112C1BFC475006959E8CB3F78640EB17AC5DC3FB948054AD016C13FC0C9B40B9693E0BFFEFE31AE2A7FEBBF74740BD7D6D5E1BF0990488F2276B53F4A451A86E44DE13F1DF428D5BD80E23F8082C9D544B9D13F72B2A2A81C25C9BF5EAF814E91B1E4BFEF18B37C848BEABF05740D51DC93E4BFCE025F289FC3D4BF9E114577CBC8CCBF8B84097DC78FD5BFC4719212317ED0BF488766F1929ED03FDFAC13F30AA5EC3F9BD776ECE460F13F495DFC090373E53F7827CB8E6618883F2AFAC1066B67DDBFE17C01710871E3BF102FBBEC89C0DEBFE637DF76C9E0BDBFE86CDA12D33DD73F67776BE23BE1E43F7D9FC7351465E03FD280744D39C3BC3FCB300C603778B8BF7802211EB795B93FF76B6EFE3747DB3FEE2EE4EFA369DE3F0A91F59F4B74C43F0A5EFA8FAE84D1BF306328657DF3E1BFD4E3E03E3BF9E2BF72DEDADA4AE9D6BF}
lappend params_list CONFIG.Coefficient_Buffer_Type {Automatic}
lappend params_list CONFIG.Coefficient_Fanout {false}
lappend params_list CONFIG.Coefficient_File {no_coe_file_loaded}
lappend params_list CONFIG.Coefficient_Fractional_Bits {14}
lappend params_list CONFIG.Coefficient_Reload {false}
lappend params_list CONFIG.Coefficient_Sets {2}
lappend params_list CONFIG.Coefficient_Sign {Signed}
lappend params_list CONFIG.Coefficient_Structure {Inferred}
lappend params_list CONFIG.Coefficient_Width {16}
lappend params_list CONFIG.ColumnConfig {100}
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
lappend params_list CONFIG.Output_Width {35}
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

set_property -dict $params_list [get_ips fullmf_fir_compiler_v7_2_i5]
}


set existingipslist [get_ips]
if {[lsearch $existingipslist fullmf_fir_compiler_v7_2_i6] < 0} {
create_ip -name fir_compiler -version 7.2 -vendor xilinx.com -library ip -module_name fullmf_fir_compiler_v7_2_i6
set params_list [list]
lappend params_list CONFIG.Component_Name {fullmf_fir_compiler_v7_2_i6}
lappend params_list CONFIG.BestPrecision {false}
lappend params_list CONFIG.Blank_Output {false}
lappend params_list CONFIG.Channel_Sequence {Basic}
lappend params_list CONFIG.Clock_Frequency {300.0}
lappend params_list CONFIG.CoefficientSource {Vector}
lappend params_list CONFIG.CoefficientVector {binary:27B2FE18450E09BF28767C324784303F36D40052779C33BFA8D9A85B806BDB3E687B0C44AC59303FBC6B19BCA8533E3F9A313F26770459BF64F8EE9BB9DC2F3F5A3D35D9079E723F93084C10C0A881BF78A4827EAE05783FEF639F1B07446F3F53F8F503350B89BF1C45048B3848883F54A0B7E5AFDD73BF70EDDB38EA5848BFA091CD245BE9573F12C5D187F4623ABF0B4D2EF546283F3F9838E4C72A0858BF48BFAC024712703F9D9AB5E7EDA681BF26983DC50CB8863FD502C25BB02674BF946DEA51DC4B7CBFFE498117ADAF863F16609CB5C51D59BF02C290B2997F86BF45A0C5CC04308C3F921033ADBB5783BFD802C2E5FEFC7F3F8AA52C44F87880BF90BE5792D8B7693F25574386858F673F517AE451594432BFC2ECAE82DAFF76BF00546F2B17C6073FB9BEBD2B27B38B3FE2B2A19C39188CBF3FE116BF807768BF7BF6EAE882A6883FC0E33EDE7AC7223F55C9DD0B37C488BF76549BDFEA5A753F8800166F968F583FAF489EC4B81B8D3FE06ABEB167989FBF9C3A3A468EBF8E3FF3B053FFCF608B3F60D11C4842806BBF14AF99269863A3BF9E4E2B8B7E24A63F80D2ED464452693FD227CB8F049A98BFCAF63F1BA59A9BBF3272F2631FA4AE3F148423D5BF2BA43F44D5FDD615B3C9BF9190E34BF692C73FC69FF050C7F3C13FA7DA800D516AE2BFA4869E71F77BE73F13A31F25AA20DABF3C9A45962580CABFF42BBDEE866EE53FB61763C822AAE5BF5F5CFC94342ED53F8C2AC9E872C29CBF869E2EED3999AE3F5EAFFBBA2F25D4BFE28F40112AFED93FE0C92FF55D44BABF2AA8B3BCA5ECD9BF6422C8159EECE53FB852938A1D75DEBF20698BD48C5AB8BF47180D44423AE43F552D6B9A1666E8BFCE60E4BB63E5D83F24D929C7A8FBCC3F4E6311EE4167E4BF20BA9953DFD7E23F338681E1409FD0BFB04E00F91851B03F2482331A938CC6BF40602673E285D63F1CA7C0C9EC85D0BFB8890C590789BDBFD1DB61DE2370DE3FCA110B00D349E2BF3311B9F0CECAD83FFB3ADC747D6BA5BFC7C3048F979ED4BFD9E247AF8987E03FE08F9A4F3749D7BFDB2683C01B09B6BF1C89FDE8F5FEDE3F3A246476FCC0DEBFFC7E18BE4A0AB83F3126F88C307ED33F27B2FE18450E09BF000000000000C0BBF2FDE0AEAE7A303FDCA00C5EFB4A3BBF34FF2D7D39FF033FC07E300D8091353FBBC4DFE681C94E3F6CA75FBEAF3C6EBF6051D7E67E95703F3820F09CF739553F92070920498B83BF2E76BBC63F63893FF67C2DD3A0EF77BFF31E75C2285971BFCE0ECDBC0E6A823F029DF0EE45597CBFF77CC285041C6E3F5B03DC8B887769BFE374309CBF5C703F6DCCA3A2CC2D74BF7AA87E0A583B783FBFB6DAF0987171BF5BCC07C33E8667BF02F64F9DAD1C863FACF79903655582BF2C9486C52FF26DBFDC19386AAABC8B3F16AE4CB8C9B584BF78740E37D62C11BFA79005A59E57743FF7570F4C92FC74BFA88C16B09C11813F0BDF893E91DD88BFED07062D11C7813F040A933B91A868BF77F9218A8B357D3FB432F1676EA390BF0E638B52BB14893F6E08194F33C7703F60AD9179395882BFE0ED502E050B7ABFD6188B5F90CC923FBA0296E420C484BFA8170436698E533F83340D7605AD87BF12F946AD41AE953F4A2ED17107616BBFB8EE909D259594BF0E0AACBC7A3D7D3FAC169D07D9929B3F002C30392F3197BF6921493005FD97BF6D2ACEDE92D5A33FB6CCED247B3D7B3F82F090ACA1A69EBFD452F82374C9A4BF66B1E76EB6D6BC3F00825C01B37785BF71F681BADD1DD1BFFC9EF8C47E45DD3F88D74E6342A9D1BF78FDEA56902CD0BF2958785B1C6BE83FF9C028E9F988EBBFC52F4AE391A2DE3FA7071F0A4F75AD3FA0071C9C77FAD4BF87C6B2EB843BCA3F26FDEBC030D0A23F7E07EFFB50AE97BF155F49FBD6A0D3BFCC3E2A5B2FEAE33F3042B495A19AE1BF9AB08A93C54CB03FF86D05CB6F2ADF3F0904B14E2102E6BFBCC854B62D78D83FE60A82B3D6BDCD3FB25C2BEC8DC1E7BF78CFF7319591E93FD4621C575A81D9BFAC1AC9387F57B7BF83E1BA509769D13F96E0456D9444BFBFF2B22166541A8ABFC6FDD0C1D811C2BFDD3E962BB92EDD3FC639938355ACE2BFB681A806C7A9D73F4D11C34443939C3FBAC3D439D77AD7BF8C715E784534E03F5C03D60FE7CAD8BF6A20EDC66362983F95BB24006159D93FB027B7AC1B7EE1BF1CF3B1D678F6D03FB2F63D851FFACB3F889616CFD95ADEBF646094EB0E78D33F}
lappend params_list CONFIG.Coefficient_Buffer_Type {Automatic}
lappend params_list CONFIG.Coefficient_Fanout {false}
lappend params_list CONFIG.Coefficient_File {no_coe_file_loaded}
lappend params_list CONFIG.Coefficient_Fractional_Bits {14}
lappend params_list CONFIG.Coefficient_Reload {false}
lappend params_list CONFIG.Coefficient_Sets {2}
lappend params_list CONFIG.Coefficient_Sign {Signed}
lappend params_list CONFIG.Coefficient_Structure {Inferred}
lappend params_list CONFIG.Coefficient_Width {16}
lappend params_list CONFIG.ColumnConfig {100}
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
lappend params_list CONFIG.Output_Width {34}
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

set_property -dict $params_list [get_ips fullmf_fir_compiler_v7_2_i6]
}


set existingipslist [get_ips]
if {[lsearch $existingipslist fullmf_fir_compiler_v7_2_i7] < 0} {
create_ip -name fir_compiler -version 7.2 -vendor xilinx.com -library ip -module_name fullmf_fir_compiler_v7_2_i7
set params_list [list]
lappend params_list CONFIG.Component_Name {fullmf_fir_compiler_v7_2_i7}
lappend params_list CONFIG.BestPrecision {false}
lappend params_list CONFIG.Blank_Output {false}
lappend params_list CONFIG.Channel_Sequence {Basic}
lappend params_list CONFIG.Clock_Frequency {300.0}
lappend params_list CONFIG.CoefficientSource {Vector}
lappend params_list CONFIG.CoefficientVector {binary:27B2FE18450E09BF000000000000C0BBF2FDE0AEAE7A303FDCA00C5EFB4A3BBF34FF2D7D39FF033FC07E300D8091353FBBC4DFE681C94E3F6CA75FBEAF3C6EBF6051D7E67E95703F3820F09CF739553F92070920498B83BF2E76BBC63F63893FF67C2DD3A0EF77BFF31E75C2285971BFCE0ECDBC0E6A823F029DF0EE45597CBFF77CC285041C6E3F5B03DC8B887769BFE374309CBF5C703F6DCCA3A2CC2D74BF7AA87E0A583B783FBFB6DAF0987171BF5BCC07C33E8667BF02F64F9DAD1C863FACF79903655582BF2C9486C52FF26DBFDC19386AAABC8B3F16AE4CB8C9B584BF78740E37D62C11BFA79005A59E57743FF7570F4C92FC74BFA88C16B09C11813F0BDF893E91DD88BFED07062D11C7813F040A933B91A868BF77F9218A8B357D3FB432F1676EA390BF0E638B52BB14893F6E08194F33C7703F60AD9179395882BFE0ED502E050B7ABFD6188B5F90CC923FBA0296E420C484BFA8170436698E533F83340D7605AD87BF12F946AD41AE953F4A2ED17107616BBFB8EE909D259594BF0E0AACBC7A3D7D3FAC169D07D9929B3F002C30392F3197BF6921493005FD97BF6D2ACEDE92D5A33FB6CCED247B3D7B3F82F090ACA1A69EBFD452F82374C9A4BF66B1E76EB6D6BC3F00825C01B37785BF71F681BADD1DD1BFFC9EF8C47E45DD3F88D74E6342A9D1BF78FDEA56902CD0BF2958785B1C6BE83FF9C028E9F988EBBFC52F4AE391A2DE3FA7071F0A4F75AD3FA0071C9C77FAD4BF87C6B2EB843BCA3F26FDEBC030D0A23F7E07EFFB50AE97BF155F49FBD6A0D3BFCC3E2A5B2FEAE33F3042B495A19AE1BF9AB08A93C54CB03FF86D05CB6F2ADF3F0904B14E2102E6BFBCC854B62D78D83FE60A82B3D6BDCD3FB25C2BEC8DC1E7BF78CFF7319591E93FD4621C575A81D9BFAC1AC9387F57B7BF83E1BA509769D13F96E0456D9444BFBFF2B22166541A8ABFC6FDD0C1D811C2BFDD3E962BB92EDD3FC639938355ACE2BFB681A806C7A9D73F4D11C34443939C3FBAC3D439D77AD7BF8C715E784534E03F5C03D60FE7CAD8BF6A20EDC66362983F95BB24006159D93FB027B7AC1B7EE1BF1CF3B1D678F6D03FB2F63D851FFACB3F889616CFD95ADEBF646094EB0E78D33F27B2FE18450E09BF28767C324784303F36D40052779C33BFA8D9A85B806BDB3E687B0C44AC59303FBC6B19BCA8533E3F9A313F26770459BF64F8EE9BB9DC2F3F5A3D35D9079E723F93084C10C0A881BF78A4827EAE05783FEF639F1B07446F3F53F8F503350B89BF1C45048B3848883F54A0B7E5AFDD73BF70EDDB38EA5848BFA091CD245BE9573F12C5D187F4623ABF0B4D2EF546283F3F9838E4C72A0858BF48BFAC024712703F9D9AB5E7EDA681BF26983DC50CB8863FD502C25BB02674BF946DEA51DC4B7CBFFE498117ADAF863F16609CB5C51D59BF02C290B2997F86BF45A0C5CC04308C3F921033ADBB5783BFD802C2E5FEFC7F3F8AA52C44F87880BF90BE5792D8B7693F25574386858F673F517AE451594432BFC2ECAE82DAFF76BF00546F2B17C6073FB9BEBD2B27B38B3FE2B2A19C39188CBF3FE116BF807768BF7BF6EAE882A6883FC0E33EDE7AC7223F55C9DD0B37C488BF76549BDFEA5A753F8800166F968F583FAF489EC4B81B8D3FE06ABEB167989FBF9C3A3A468EBF8E3FF3B053FFCF608B3F60D11C4842806BBF14AF99269863A3BF9E4E2B8B7E24A63F80D2ED464452693FD227CB8F049A98BFCAF63F1BA59A9BBF3272F2631FA4AE3F148423D5BF2BA43F44D5FDD615B3C9BF9190E34BF692C73FC69FF050C7F3C13FA7DA800D516AE2BFA4869E71F77BE73F13A31F25AA20DABF3C9A45962580CABFF42BBDEE866EE53FB61763C822AAE5BF5F5CFC94342ED53F8C2AC9E872C29CBF869E2EED3999AE3F5EAFFBBA2F25D4BFE28F40112AFED93FE0C92FF55D44BABF2AA8B3BCA5ECD9BF6422C8159EECE53FB852938A1D75DEBF20698BD48C5AB8BF47180D44423AE43F552D6B9A1666E8BFCE60E4BB63E5D83F24D929C7A8FBCC3F4E6311EE4167E4BF20BA9953DFD7E23F338681E1409FD0BFB04E00F91851B03F2482331A938CC6BF40602673E285D63F1CA7C0C9EC85D0BFB8890C590789BDBFD1DB61DE2370DE3FCA110B00D349E2BF3311B9F0CECAD83FFB3ADC747D6BA5BFC7C3048F979ED4BFD9E247AF8987E03FE08F9A4F3749D7BFDB2683C01B09B6BF1C89FDE8F5FEDE3F3A246476FCC0DEBFFC7E18BE4A0AB83F3126F88C307ED33F}
lappend params_list CONFIG.Coefficient_Buffer_Type {Automatic}
lappend params_list CONFIG.Coefficient_Fanout {false}
lappend params_list CONFIG.Coefficient_File {no_coe_file_loaded}
lappend params_list CONFIG.Coefficient_Fractional_Bits {14}
lappend params_list CONFIG.Coefficient_Reload {false}
lappend params_list CONFIG.Coefficient_Sets {2}
lappend params_list CONFIG.Coefficient_Sign {Signed}
lappend params_list CONFIG.Coefficient_Structure {Inferred}
lappend params_list CONFIG.Coefficient_Width {16}
lappend params_list CONFIG.ColumnConfig {100}
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
lappend params_list CONFIG.Output_Width {34}
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

set_property -dict $params_list [get_ips fullmf_fir_compiler_v7_2_i7]
}


set existingipslist [get_ips]
if {[lsearch $existingipslist fullmf_mult_gen_v12_0_i0] < 0} {
create_ip -name mult_gen -version 12.0 -vendor xilinx.com -library ip -module_name fullmf_mult_gen_v12_0_i0
set params_list [list]
lappend params_list CONFIG.Component_Name {fullmf_mult_gen_v12_0_i0}
lappend params_list CONFIG.clockenable {true}
lappend params_list CONFIG.multiplier_construction {Use_Mults}
lappend params_list CONFIG.optgoal {Speed}
lappend params_list CONFIG.outputwidthhigh {69}
lappend params_list CONFIG.pipestages {3}
lappend params_list CONFIG.portatype {Signed}
lappend params_list CONFIG.portawidth {35}
lappend params_list CONFIG.portbtype {Signed}
lappend params_list CONFIG.portbwidth {35}
lappend params_list CONFIG.sclrcepriority {CE_Overrides_SCLR}
lappend params_list CONFIG.syncclear {true}
lappend params_list CONFIG.use_custom_output_width {true}

set_property -dict $params_list [get_ips fullmf_mult_gen_v12_0_i0]
}


set existingipslist [get_ips]
if {[lsearch $existingipslist fullmf_mult_gen_v12_0_i1] < 0} {
create_ip -name mult_gen -version 12.0 -vendor xilinx.com -library ip -module_name fullmf_mult_gen_v12_0_i1
set params_list [list]
lappend params_list CONFIG.Component_Name {fullmf_mult_gen_v12_0_i1}
lappend params_list CONFIG.clockenable {true}
lappend params_list CONFIG.multiplier_construction {Use_Mults}
lappend params_list CONFIG.optgoal {Speed}
lappend params_list CONFIG.outputwidthhigh {71}
lappend params_list CONFIG.pipestages {3}
lappend params_list CONFIG.portatype {Signed}
lappend params_list CONFIG.portawidth {36}
lappend params_list CONFIG.portbtype {Signed}
lappend params_list CONFIG.portbwidth {36}
lappend params_list CONFIG.sclrcepriority {CE_Overrides_SCLR}
lappend params_list CONFIG.syncclear {true}
lappend params_list CONFIG.use_custom_output_width {true}

set_property -dict $params_list [get_ips fullmf_mult_gen_v12_0_i1]
}


set existingipslist [get_ips]
if {[lsearch $existingipslist fullmf_xbip_multadd_v3_0_i0] < 0} {
create_ip -name xbip_multadd -version 3.0 -vendor xilinx.com -library ip -module_name fullmf_xbip_multadd_v3_0_i0
set params_list [list]
lappend params_list CONFIG.Component_Name {fullmf_xbip_multadd_v3_0_i0}
lappend params_list CONFIG.c_a_type {0}
lappend params_list CONFIG.c_a_width {35}
lappend params_list CONFIG.c_ab_latency {0}
lappend params_list CONFIG.c_b_type {0}
lappend params_list CONFIG.c_b_width {35}
lappend params_list CONFIG.c_c_latency {0}
lappend params_list CONFIG.c_c_type {0}
lappend params_list CONFIG.c_c_width {70}
lappend params_list CONFIG.c_ce_overrides_sclr {1}
lappend params_list CONFIG.c_out_high {70}
lappend params_list CONFIG.c_out_low {0}

set_property -dict $params_list [get_ips fullmf_xbip_multadd_v3_0_i0]
}


set existingipslist [get_ips]
if {[lsearch $existingipslist fullmf_xbip_multadd_v3_0_i1] < 0} {
create_ip -name xbip_multadd -version 3.0 -vendor xilinx.com -library ip -module_name fullmf_xbip_multadd_v3_0_i1
set params_list [list]
lappend params_list CONFIG.Component_Name {fullmf_xbip_multadd_v3_0_i1}
lappend params_list CONFIG.c_a_type {0}
lappend params_list CONFIG.c_a_width {36}
lappend params_list CONFIG.c_ab_latency {0}
lappend params_list CONFIG.c_b_type {0}
lappend params_list CONFIG.c_b_width {36}
lappend params_list CONFIG.c_c_latency {0}
lappend params_list CONFIG.c_c_type {0}
lappend params_list CONFIG.c_c_width {72}
lappend params_list CONFIG.c_ce_overrides_sclr {1}
lappend params_list CONFIG.c_out_high {72}
lappend params_list CONFIG.c_out_low {0}

set_property -dict $params_list [get_ips fullmf_xbip_multadd_v3_0_i1]
}


set existingipslist [get_ips]
if {[lsearch $existingipslist fullmf_dist_mem_gen_i0] < 0} {
create_ip -name dist_mem_gen -vendor xilinx.com -library ip -module_name fullmf_dist_mem_gen_i0
set params_list [list]
lappend params_list CONFIG.Component_Name {fullmf_dist_mem_gen_i0}
lappend params_list CONFIG.ce_overrides {sync_controls_overrides_ce}
lappend params_list CONFIG.common_output_ce {false}
lappend params_list CONFIG.common_output_clk {false}
lappend params_list CONFIG.data_width {15}
lappend params_list CONFIG.default_data {0}
lappend params_list CONFIG.default_data_radix {16}
lappend params_list CONFIG.depth {16}
lappend params_list CONFIG.dual_port_address {non_registered}
lappend params_list CONFIG.dual_port_output_clock_enable {false}
lappend params_list CONFIG.input_clock_enable {false}
lappend params_list CONFIG.input_options {non_registered}
lappend params_list CONFIG.memory_type {single_port_ram}
lappend params_list CONFIG.output_options {non_registered}
lappend params_list CONFIG.qualify_we_with_i_ce {false}
lappend params_list CONFIG.reset_qdpo {false}
lappend params_list CONFIG.reset_qspo {false}
lappend params_list CONFIG.single_port_output_clock_enable {false}
lappend params_list CONFIG.sync_reset_qdpo {false}
lappend params_list CONFIG.sync_reset_qspo {false}
lappend params_list CONFIG.coefficient_file {../fullmf_dist_mem_gen_i0_vivado.coe}

set_property -dict $params_list [get_ips fullmf_dist_mem_gen_i0]
}


validate_ip [get_ips]

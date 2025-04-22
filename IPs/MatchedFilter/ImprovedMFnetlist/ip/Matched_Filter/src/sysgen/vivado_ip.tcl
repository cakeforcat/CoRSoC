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
if {[lsearch $existingipslist matched_filter_c_addsub_v12_0_i0] < 0} {
create_ip -name c_addsub -version 12.0 -vendor xilinx.com -library ip -module_name matched_filter_c_addsub_v12_0_i0
set params_list [list]
lappend params_list CONFIG.Component_Name {matched_filter_c_addsub_v12_0_i0}
lappend params_list CONFIG.AINIT_Value {0}
lappend params_list CONFIG.A_Type {Signed}
lappend params_list CONFIG.A_Width {37}
lappend params_list CONFIG.Add_Mode {Subtract}
lappend params_list CONFIG.B_Constant {false}
lappend params_list CONFIG.B_Type {Signed}
lappend params_list CONFIG.B_Value {0}
lappend params_list CONFIG.B_Width {37}
lappend params_list CONFIG.Borrow_Sense {Active_Low}
lappend params_list CONFIG.Bypass {false}
lappend params_list CONFIG.Bypass_CE_Priority {Bypass_Overrides_CE}
lappend params_list CONFIG.Bypass_Sense {Active_Low}
lappend params_list CONFIG.CE {true}
lappend params_list CONFIG.C_In {false}
lappend params_list CONFIG.C_Out {false}
lappend params_list CONFIG.Implementation {Fabric}
lappend params_list CONFIG.Latency {1}
lappend params_list CONFIG.Out_Width {37}
lappend params_list CONFIG.SCLR {false}
lappend params_list CONFIG.SINIT {false}
lappend params_list CONFIG.SINIT_Value {0}
lappend params_list CONFIG.SSET {false}
lappend params_list CONFIG.Sync_CE_Priority {Sync_Overrides_CE}
lappend params_list CONFIG.Sync_Ctrl_Priority {Reset_Overrides_Set}

set_property -dict $params_list [get_ips matched_filter_c_addsub_v12_0_i0]
}


set existingipslist [get_ips]
if {[lsearch $existingipslist matched_filter_c_addsub_v12_0_i1] < 0} {
create_ip -name c_addsub -version 12.0 -vendor xilinx.com -library ip -module_name matched_filter_c_addsub_v12_0_i1
set params_list [list]
lappend params_list CONFIG.Component_Name {matched_filter_c_addsub_v12_0_i1}
lappend params_list CONFIG.AINIT_Value {0}
lappend params_list CONFIG.A_Type {Signed}
lappend params_list CONFIG.A_Width {37}
lappend params_list CONFIG.Add_Mode {Add}
lappend params_list CONFIG.B_Constant {false}
lappend params_list CONFIG.B_Type {Signed}
lappend params_list CONFIG.B_Value {0}
lappend params_list CONFIG.B_Width {37}
lappend params_list CONFIG.Borrow_Sense {Active_Low}
lappend params_list CONFIG.Bypass {false}
lappend params_list CONFIG.Bypass_CE_Priority {Bypass_Overrides_CE}
lappend params_list CONFIG.Bypass_Sense {Active_Low}
lappend params_list CONFIG.CE {true}
lappend params_list CONFIG.C_In {false}
lappend params_list CONFIG.C_Out {false}
lappend params_list CONFIG.Implementation {Fabric}
lappend params_list CONFIG.Latency {1}
lappend params_list CONFIG.Out_Width {37}
lappend params_list CONFIG.SCLR {false}
lappend params_list CONFIG.SINIT {false}
lappend params_list CONFIG.SINIT_Value {0}
lappend params_list CONFIG.SSET {false}
lappend params_list CONFIG.Sync_CE_Priority {Sync_Overrides_CE}
lappend params_list CONFIG.Sync_Ctrl_Priority {Reset_Overrides_Set}

set_property -dict $params_list [get_ips matched_filter_c_addsub_v12_0_i1]
}


set existingipslist [get_ips]
if {[lsearch $existingipslist matched_filter_cordic_v6_0_i0] < 0} {
create_ip -name cordic -version 6.0 -vendor xilinx.com -library ip -module_name matched_filter_cordic_v6_0_i0
set params_list [list]
lappend params_list CONFIG.Component_Name {matched_filter_cordic_v6_0_i0}
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

set_property -dict $params_list [get_ips matched_filter_cordic_v6_0_i0]
}


set existingipslist [get_ips]
if {[lsearch $existingipslist matched_filter_c_counter_binary_v12_0_i0] < 0} {
create_ip -name c_counter_binary -version 12.0 -vendor xilinx.com -library ip -module_name matched_filter_c_counter_binary_v12_0_i0
set params_list [list]
lappend params_list CONFIG.Component_Name {matched_filter_c_counter_binary_v12_0_i0}
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

set_property -dict $params_list [get_ips matched_filter_c_counter_binary_v12_0_i0]
}


set existingipslist [get_ips]
if {[lsearch $existingipslist matched_filter_fir_compiler_v7_2_i0] < 0} {
create_ip -name fir_compiler -version 7.2 -vendor xilinx.com -library ip -module_name matched_filter_fir_compiler_v7_2_i0
set params_list [list]
lappend params_list CONFIG.Component_Name {matched_filter_fir_compiler_v7_2_i0}
lappend params_list CONFIG.BestPrecision {false}
lappend params_list CONFIG.Blank_Output {false}
lappend params_list CONFIG.Channel_Sequence {Basic}
lappend params_list CONFIG.Clock_Frequency {300.0}
lappend params_list CONFIG.CoefficientSource {Vector}
lappend params_list CONFIG.CoefficientVector {binary:000000000000F8BF000000000000000000000000000000000000000000000000000000000000F83F00000000000000000000000000000000000000000000F8BF000000000000000000000000000000000000000000000000000000000000F83F00000000000000000000000000000000000000000000F8BF000000000000000000000000000000000000000000000000000000000000F83F00000000000000000000000000000000000000000000F8BF000000000000000000000000000000000000000000000000000000000000F83F00000000000000000000000000000000000000000000F8BF000000000000000000000000000000000000000000000000000000000000F83F00000000000000000000000000000000000000000000F8BF000000000000000000000000000000000000000000000000000000000000F83F00000000000000000000000000000000000000000000F8BF000000000000000000000000000000000000000000000000000000000000F83F00000000000000000000000000000000000000000000F8BF000000000000000000000000000000000000000000000000000000000000F83F00000000000000000000000000000000000000000000F8BF000000000000000000000000000000000000000000000000000000000000F83F00000000000000000000000000000000000000000000F8BF000000000000000000000000000000000000000000000000000000000000F83F00000000000000000000000000000000000000000000F8BF000000000000000000000000000000000000000000000000000000000000F83F00000000000000000000000000000000000000000000F8BF000000000000000000000000000000000000000000000000000000000000F83F0000000000000000000000000000000000000000000000000000000000000000000000000000F83F000000000000000000000000000000000000000000000000000000000000F8BF00000000000000000000000000000000000000000000F83F000000000000000000000000000000000000000000000000000000000000F8BF00000000000000000000000000000000000000000000F83F000000000000000000000000000000000000000000000000000000000000F8BF00000000000000000000000000000000000000000000F83F000000000000000000000000000000000000000000000000000000000000F8BF00000000000000000000000000000000000000000000F83F000000000000000000000000000000000000000000000000000000000000F8BF00000000000000000000000000000000000000000000F83F000000000000000000000000000000000000000000000000000000000000F8BF00000000000000000000000000000000000000000000F83F000000000000000000000000000000000000000000000000000000000000F8BF00000000000000000000000000000000000000000000F83F000000000000000000000000000000000000000000000000000000000000F8BF00000000000000000000000000000000000000000000F83F000000000000000000000000000000000000000000000000000000000000F8BF00000000000000000000000000000000000000000000F83F000000000000000000000000000000000000000000000000000000000000F8BF00000000000000000000000000000000000000000000F83F000000000000000000000000000000000000000000000000000000000000F8BF00000000000000000000000000000000000000000000F83F000000000000000000000000000000000000000000000000000000000000F8BF}
lappend params_list CONFIG.Coefficient_Buffer_Type {Automatic}
lappend params_list CONFIG.Coefficient_Fanout {false}
lappend params_list CONFIG.Coefficient_File {no_coe_file_loaded}
lappend params_list CONFIG.Coefficient_Fractional_Bits {14}
lappend params_list CONFIG.Coefficient_Reload {false}
lappend params_list CONFIG.Coefficient_Sets {2}
lappend params_list CONFIG.Coefficient_Sign {Signed}
lappend params_list CONFIG.Coefficient_Structure {Inferred}
lappend params_list CONFIG.Coefficient_Width {16}
lappend params_list CONFIG.ColumnConfig {84}
lappend params_list CONFIG.Control_Broadcast_Fanout {false}
lappend params_list CONFIG.Control_Column_Fanout {false}
lappend params_list CONFIG.Control_LUT_Pipeline {false}
lappend params_list CONFIG.Control_Path_Fanout {false}
lappend params_list CONFIG.DATA_Has_TLAST {Not_Required}
lappend params_list CONFIG.DATA_TUSER_Width {1}
lappend params_list CONFIG.Data_Buffer_Type {Automatic}
lappend params_list CONFIG.Data_Fractional_Bits {15}
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
lappend params_list CONFIG.Output_Width {36}
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

set_property -dict $params_list [get_ips matched_filter_fir_compiler_v7_2_i0]
}


set existingipslist [get_ips]
if {[lsearch $existingipslist matched_filter_fir_compiler_v7_2_i1] < 0} {
create_ip -name fir_compiler -version 7.2 -vendor xilinx.com -library ip -module_name matched_filter_fir_compiler_v7_2_i1
set params_list [list]
lappend params_list CONFIG.Component_Name {matched_filter_fir_compiler_v7_2_i1}
lappend params_list CONFIG.BestPrecision {false}
lappend params_list CONFIG.Blank_Output {false}
lappend params_list CONFIG.Channel_Sequence {Basic}
lappend params_list CONFIG.Clock_Frequency {300.0}
lappend params_list CONFIG.CoefficientSource {Vector}
lappend params_list CONFIG.CoefficientVector {binary:00000000000000000000000000000000000000000000F83F000000000000000000000000000000000000000000000000000000000000F8BF00000000000000000000000000000000000000000000F83F000000000000000000000000000000000000000000000000000000000000F8BF00000000000000000000000000000000000000000000F83F000000000000000000000000000000000000000000000000000000000000F8BF00000000000000000000000000000000000000000000F83F000000000000000000000000000000000000000000000000000000000000F8BF00000000000000000000000000000000000000000000F83F000000000000000000000000000000000000000000000000000000000000F8BF00000000000000000000000000000000000000000000F83F000000000000000000000000000000000000000000000000000000000000F8BF00000000000000000000000000000000000000000000F83F000000000000000000000000000000000000000000000000000000000000F8BF00000000000000000000000000000000000000000000F83F000000000000000000000000000000000000000000000000000000000000F8BF00000000000000000000000000000000000000000000F83F000000000000000000000000000000000000000000000000000000000000F8BF00000000000000000000000000000000000000000000F83F000000000000000000000000000000000000000000000000000000000000F8BF00000000000000000000000000000000000000000000F83F000000000000000000000000000000000000000000000000000000000000F8BF00000000000000000000000000000000000000000000F83F000000000000000000000000000000000000000000000000000000000000F8BF000000000000F8BF000000000000000000000000000000000000000000000000000000000000F83F00000000000000000000000000000000000000000000F8BF000000000000000000000000000000000000000000000000000000000000F83F00000000000000000000000000000000000000000000F8BF000000000000000000000000000000000000000000000000000000000000F83F00000000000000000000000000000000000000000000F8BF000000000000000000000000000000000000000000000000000000000000F83F00000000000000000000000000000000000000000000F8BF000000000000000000000000000000000000000000000000000000000000F83F00000000000000000000000000000000000000000000F8BF000000000000000000000000000000000000000000000000000000000000F83F00000000000000000000000000000000000000000000F8BF000000000000000000000000000000000000000000000000000000000000F83F00000000000000000000000000000000000000000000F8BF000000000000000000000000000000000000000000000000000000000000F83F00000000000000000000000000000000000000000000F8BF000000000000000000000000000000000000000000000000000000000000F83F00000000000000000000000000000000000000000000F8BF000000000000000000000000000000000000000000000000000000000000F83F00000000000000000000000000000000000000000000F8BF000000000000000000000000000000000000000000000000000000000000F83F00000000000000000000000000000000000000000000F8BF000000000000000000000000000000000000000000000000000000000000F83F00000000000000000000000000000000}
lappend params_list CONFIG.Coefficient_Buffer_Type {Automatic}
lappend params_list CONFIG.Coefficient_Fanout {false}
lappend params_list CONFIG.Coefficient_File {no_coe_file_loaded}
lappend params_list CONFIG.Coefficient_Fractional_Bits {14}
lappend params_list CONFIG.Coefficient_Reload {false}
lappend params_list CONFIG.Coefficient_Sets {2}
lappend params_list CONFIG.Coefficient_Sign {Signed}
lappend params_list CONFIG.Coefficient_Structure {Inferred}
lappend params_list CONFIG.Coefficient_Width {16}
lappend params_list CONFIG.ColumnConfig {84}
lappend params_list CONFIG.Control_Broadcast_Fanout {false}
lappend params_list CONFIG.Control_Column_Fanout {false}
lappend params_list CONFIG.Control_LUT_Pipeline {false}
lappend params_list CONFIG.Control_Path_Fanout {false}
lappend params_list CONFIG.DATA_Has_TLAST {Not_Required}
lappend params_list CONFIG.DATA_TUSER_Width {1}
lappend params_list CONFIG.Data_Buffer_Type {Automatic}
lappend params_list CONFIG.Data_Fractional_Bits {15}
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
lappend params_list CONFIG.Output_Width {36}
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

set_property -dict $params_list [get_ips matched_filter_fir_compiler_v7_2_i1]
}


set existingipslist [get_ips]
if {[lsearch $existingipslist matched_filter_mult_gen_v12_0_i0] < 0} {
create_ip -name mult_gen -version 12.0 -vendor xilinx.com -library ip -module_name matched_filter_mult_gen_v12_0_i0
set params_list [list]
lappend params_list CONFIG.Component_Name {matched_filter_mult_gen_v12_0_i0}
lappend params_list CONFIG.clockenable {true}
lappend params_list CONFIG.multiplier_construction {Use_Mults}
lappend params_list CONFIG.optgoal {Speed}
lappend params_list CONFIG.outputwidthhigh {73}
lappend params_list CONFIG.pipestages {3}
lappend params_list CONFIG.portatype {Signed}
lappend params_list CONFIG.portawidth {37}
lappend params_list CONFIG.portbtype {Signed}
lappend params_list CONFIG.portbwidth {37}
lappend params_list CONFIG.sclrcepriority {CE_Overrides_SCLR}
lappend params_list CONFIG.syncclear {true}
lappend params_list CONFIG.use_custom_output_width {true}

set_property -dict $params_list [get_ips matched_filter_mult_gen_v12_0_i0]
}


set existingipslist [get_ips]
if {[lsearch $existingipslist matched_filter_xbip_multadd_v3_0_i0] < 0} {
create_ip -name xbip_multadd -version 3.0 -vendor xilinx.com -library ip -module_name matched_filter_xbip_multadd_v3_0_i0
set params_list [list]
lappend params_list CONFIG.Component_Name {matched_filter_xbip_multadd_v3_0_i0}
lappend params_list CONFIG.c_a_type {0}
lappend params_list CONFIG.c_a_width {37}
lappend params_list CONFIG.c_ab_latency {0}
lappend params_list CONFIG.c_b_type {0}
lappend params_list CONFIG.c_b_width {37}
lappend params_list CONFIG.c_c_latency {0}
lappend params_list CONFIG.c_c_type {0}
lappend params_list CONFIG.c_c_width {74}
lappend params_list CONFIG.c_ce_overrides_sclr {1}
lappend params_list CONFIG.c_out_high {74}
lappend params_list CONFIG.c_out_low {0}

set_property -dict $params_list [get_ips matched_filter_xbip_multadd_v3_0_i0]
}


set existingipslist [get_ips]
if {[lsearch $existingipslist matched_filter_dist_mem_gen_i0] < 0} {
create_ip -name dist_mem_gen -vendor xilinx.com -library ip -module_name matched_filter_dist_mem_gen_i0
set params_list [list]
lappend params_list CONFIG.Component_Name {matched_filter_dist_mem_gen_i0}
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
lappend params_list CONFIG.coefficient_file {../matched_filter_dist_mem_gen_i0_vivado.coe}

set_property -dict $params_list [get_ips matched_filter_dist_mem_gen_i0]
}


validate_ip [get_ips]

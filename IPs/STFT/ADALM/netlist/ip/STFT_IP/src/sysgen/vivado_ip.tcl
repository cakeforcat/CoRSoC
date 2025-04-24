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
if {[lsearch $existingipslist stft_ip_mult_gen_v12_0_i0] < 0} {
create_ip -name mult_gen -version 12.0 -vendor xilinx.com -library ip -module_name stft_ip_mult_gen_v12_0_i0
set params_list [list]
lappend params_list CONFIG.Component_Name {stft_ip_mult_gen_v12_0_i0}
lappend params_list CONFIG.ccmimp {Distributed_Memory}
lappend params_list CONFIG.clockenable {true}
lappend params_list CONFIG.constvalue {569238}
lappend params_list CONFIG.internaluser {0}
lappend params_list CONFIG.multtype {Constant_Coefficient_Multiplier}
lappend params_list CONFIG.outputwidthhigh {51}
lappend params_list CONFIG.outputwidthlow {0}
lappend params_list CONFIG.pipestages {2}
lappend params_list CONFIG.portatype {Signed}
lappend params_list CONFIG.portawidth {32}
lappend params_list CONFIG.portbtype {Unsigned}
lappend params_list CONFIG.portbwidth {20}
lappend params_list CONFIG.syncclear {true}
lappend params_list CONFIG.use_custom_output_width {true}

set_property -dict $params_list [get_ips stft_ip_mult_gen_v12_0_i0]
}


set existingipslist [get_ips]
if {[lsearch $existingipslist stft_ip_c_addsub_v12_0_i0] < 0} {
create_ip -name c_addsub -version 12.0 -vendor xilinx.com -library ip -module_name stft_ip_c_addsub_v12_0_i0
set params_list [list]
lappend params_list CONFIG.Component_Name {stft_ip_c_addsub_v12_0_i0}
lappend params_list CONFIG.AINIT_Value {0}
lappend params_list CONFIG.A_Type {Unsigned}
lappend params_list CONFIG.A_Width {33}
lappend params_list CONFIG.Add_Mode {Add}
lappend params_list CONFIG.B_Constant {false}
lappend params_list CONFIG.B_Type {Unsigned}
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

set_property -dict $params_list [get_ips stft_ip_c_addsub_v12_0_i0]
}


set existingipslist [get_ips]
if {[lsearch $existingipslist stft_ip_floating_point_v7_1_i0] < 0} {
create_ip -name floating_point -version 7.1 -vendor xilinx.com -library ip -module_name stft_ip_floating_point_v7_1_i0
set params_list [list]
lappend params_list CONFIG.Component_Name {stft_ip_floating_point_v7_1_i0}
lappend params_list CONFIG.A_Precision_Type {Custom}
lappend params_list CONFIG.A_TUSER_Width {1}
lappend params_list CONFIG.Add_Sub_Value {Both}
lappend params_list CONFIG.Axi_Optimize_Goal {Resources}
lappend params_list CONFIG.B_TUSER_Width {1}
lappend params_list CONFIG.C_A_Exponent_Width {3}
lappend params_list CONFIG.C_A_Fraction_Width {29}
lappend params_list CONFIG.C_BRAM_Usage {Full_Usage}
lappend params_list CONFIG.C_Compare_Operation {Programmable}
lappend params_list CONFIG.C_Has_DIVIDE_BY_ZERO {false}
lappend params_list CONFIG.C_Has_INVALID_OP {false}
lappend params_list CONFIG.C_Has_OVERFLOW {false}
lappend params_list CONFIG.C_Has_UNDERFLOW {false}
lappend params_list CONFIG.C_Latency {1}
lappend params_list CONFIG.C_Mult_Usage {No_Usage}
lappend params_list CONFIG.C_Optimization {Speed_Optimized}
lappend params_list CONFIG.C_Rate {1}
lappend params_list CONFIG.C_Result_Exponent_Width {8}
lappend params_list CONFIG.C_Result_Fraction_Width {24}
lappend params_list CONFIG.C_TUSER_Width {1}
lappend params_list CONFIG.Flow_Control {NonBlocking}
lappend params_list CONFIG.Has_ACLKEN {true}
lappend params_list CONFIG.Has_ARESETn {false}
lappend params_list CONFIG.Has_A_TLAST {false}
lappend params_list CONFIG.Has_A_TUSER {false}
lappend params_list CONFIG.Has_B_TLAST {false}
lappend params_list CONFIG.Has_B_TUSER {false}
lappend params_list CONFIG.Has_C_TLAST {false}
lappend params_list CONFIG.Has_C_TUSER {false}
lappend params_list CONFIG.Has_OPERATION_TLAST {false}
lappend params_list CONFIG.Has_OPERATION_TUSER {false}
lappend params_list CONFIG.Has_RESULT_TREADY {false}
lappend params_list CONFIG.Maximum_Latency {false}
lappend params_list CONFIG.OPERATION_TUSER_Width {1}
lappend params_list CONFIG.Operation_Type {Fixed_to_float}
lappend params_list CONFIG.RESULT_TLAST_Behv {Null}
lappend params_list CONFIG.Result_Precision_Type {Single}

set_property -dict $params_list [get_ips stft_ip_floating_point_v7_1_i0]
}


set existingipslist [get_ips]
if {[lsearch $existingipslist stft_ip_floating_point_v7_1_i1] < 0} {
create_ip -name floating_point -version 7.1 -vendor xilinx.com -library ip -module_name stft_ip_floating_point_v7_1_i1
set params_list [list]
lappend params_list CONFIG.Component_Name {stft_ip_floating_point_v7_1_i1}
lappend params_list CONFIG.A_Precision_Type {Single}
lappend params_list CONFIG.A_TUSER_Width {1}
lappend params_list CONFIG.Add_Sub_Value {Both}
lappend params_list CONFIG.Axi_Optimize_Goal {Resources}
lappend params_list CONFIG.B_TUSER_Width {1}
lappend params_list CONFIG.C_A_Exponent_Width {8}
lappend params_list CONFIG.C_A_Fraction_Width {24}
lappend params_list CONFIG.C_BRAM_Usage {Full_Usage}
lappend params_list CONFIG.C_Compare_Operation {Programmable}
lappend params_list CONFIG.C_Has_DIVIDE_BY_ZERO {false}
lappend params_list CONFIG.C_Has_INVALID_OP {false}
lappend params_list CONFIG.C_Has_OVERFLOW {false}
lappend params_list CONFIG.C_Has_UNDERFLOW {false}
lappend params_list CONFIG.C_Latency {1}
lappend params_list CONFIG.C_Mult_Usage {No_Usage}
lappend params_list CONFIG.C_Optimization {Speed_Optimized}
lappend params_list CONFIG.C_Rate {1}
lappend params_list CONFIG.C_Result_Exponent_Width {10}
lappend params_list CONFIG.C_Result_Fraction_Width {22}
lappend params_list CONFIG.C_TUSER_Width {1}
lappend params_list CONFIG.Flow_Control {NonBlocking}
lappend params_list CONFIG.Has_ACLKEN {true}
lappend params_list CONFIG.Has_ARESETn {false}
lappend params_list CONFIG.Has_A_TLAST {false}
lappend params_list CONFIG.Has_A_TUSER {false}
lappend params_list CONFIG.Has_B_TLAST {false}
lappend params_list CONFIG.Has_B_TUSER {false}
lappend params_list CONFIG.Has_C_TLAST {false}
lappend params_list CONFIG.Has_C_TUSER {false}
lappend params_list CONFIG.Has_OPERATION_TLAST {false}
lappend params_list CONFIG.Has_OPERATION_TUSER {false}
lappend params_list CONFIG.Has_RESULT_TREADY {false}
lappend params_list CONFIG.Maximum_Latency {false}
lappend params_list CONFIG.OPERATION_TUSER_Width {1}
lappend params_list CONFIG.Operation_Type {Float_to_fixed}
lappend params_list CONFIG.RESULT_TLAST_Behv {Null}
lappend params_list CONFIG.Result_Precision_Type {Custom}

set_property -dict $params_list [get_ips stft_ip_floating_point_v7_1_i1]
}


set existingipslist [get_ips]
if {[lsearch $existingipslist stft_ip_c_counter_binary_v12_0_i0] < 0} {
create_ip -name c_counter_binary -version 12.0 -vendor xilinx.com -library ip -module_name stft_ip_c_counter_binary_v12_0_i0
set params_list [list]
lappend params_list CONFIG.Component_Name {stft_ip_c_counter_binary_v12_0_i0}
lappend params_list CONFIG.ainit_value {0}
lappend params_list CONFIG.ce {true}
lappend params_list CONFIG.count_mode {UP}
lappend params_list CONFIG.fb_latency {0}
lappend params_list CONFIG.final_count_value {1}
lappend params_list CONFIG.implementation {Fabric}
lappend params_list CONFIG.increment_value {1}
lappend params_list CONFIG.latency {1}
lappend params_list CONFIG.load {false}
lappend params_list CONFIG.output_width {11}
lappend params_list CONFIG.restrict_count {false}
lappend params_list CONFIG.sclr {false}
lappend params_list CONFIG.sinit {true}
lappend params_list CONFIG.sinit_value {0}
lappend params_list CONFIG.sset {false}
lappend params_list CONFIG.sync_ce_priority {Sync_Overrides_CE}
lappend params_list CONFIG.sync_threshold_output {false}
lappend params_list CONFIG.syncctrlpriority {Reset_Overrides_Set}

set_property -dict $params_list [get_ips stft_ip_c_counter_binary_v12_0_i0]
}


set existingipslist [get_ips]
if {[lsearch $existingipslist stft_ip_xfft_v9_1_i0] < 0} {
create_ip -name xfft -version 9.1 -vendor xilinx.com -library ip -module_name stft_ip_xfft_v9_1_i0
set params_list [list]
lappend params_list CONFIG.Component_Name {stft_ip_xfft_v9_1_i0}
lappend params_list CONFIG.aclken {true}
lappend params_list CONFIG.aresetn {true}
lappend params_list CONFIG.butterfly_type {use_luts}
lappend params_list CONFIG.channels {1}
lappend params_list CONFIG.complex_mult_type {use_mults_resources}
lappend params_list CONFIG.cyclic_prefix_insertion {false}
lappend params_list CONFIG.data_format {fixed_point}
lappend params_list CONFIG.implementation_options {pipelined_streaming_io}
lappend params_list CONFIG.input_width {16}
lappend params_list CONFIG.memory_options_data {block_ram}
lappend params_list CONFIG.memory_options_hybrid {false}
lappend params_list CONFIG.memory_options_phase_factors {block_ram}
lappend params_list CONFIG.memory_options_reorder {block_ram}
lappend params_list CONFIG.number_of_stages_using_block_ram_for_data_and_phase_factors {6}
lappend params_list CONFIG.output_ordering {natural_order}
lappend params_list CONFIG.ovflo {false}
lappend params_list CONFIG.phase_factor_width {16}
lappend params_list CONFIG.rounding_modes {truncation}
lappend params_list CONFIG.run_time_configurable_transform_length {false}
lappend params_list CONFIG.scaling_options {scaled}
lappend params_list CONFIG.super_sample_rates {1}
lappend params_list CONFIG.systolicfft_inv {false}
lappend params_list CONFIG.target_clock_frequency {64}
lappend params_list CONFIG.target_data_throughput {50}
lappend params_list CONFIG.throttle_scheme {nonrealtime}
lappend params_list CONFIG.transform_length {2048}
lappend params_list CONFIG.xk_index {false}

set_property -dict $params_list [get_ips stft_ip_xfft_v9_1_i0]
}


set existingipslist [get_ips]
if {[lsearch $existingipslist stft_ip_mult_gen_v12_0_i1] < 0} {
create_ip -name mult_gen -version 12.0 -vendor xilinx.com -library ip -module_name stft_ip_mult_gen_v12_0_i1
set params_list [list]
lappend params_list CONFIG.Component_Name {stft_ip_mult_gen_v12_0_i1}
lappend params_list CONFIG.clockenable {true}
lappend params_list CONFIG.multiplier_construction {Use_Mults}
lappend params_list CONFIG.optgoal {Speed}
lappend params_list CONFIG.outputwidthhigh {31}
lappend params_list CONFIG.pipestages {2}
lappend params_list CONFIG.portatype {Unsigned}
lappend params_list CONFIG.portawidth {16}
lappend params_list CONFIG.portbtype {Signed}
lappend params_list CONFIG.portbwidth {16}
lappend params_list CONFIG.sclrcepriority {CE_Overrides_SCLR}
lappend params_list CONFIG.syncclear {true}
lappend params_list CONFIG.use_custom_output_width {true}

set_property -dict $params_list [get_ips stft_ip_mult_gen_v12_0_i1]
}


set existingipslist [get_ips]
if {[lsearch $existingipslist stft_ip_mult_gen_v12_0_i2] < 0} {
create_ip -name mult_gen -version 12.0 -vendor xilinx.com -library ip -module_name stft_ip_mult_gen_v12_0_i2
set params_list [list]
lappend params_list CONFIG.Component_Name {stft_ip_mult_gen_v12_0_i2}
lappend params_list CONFIG.clockenable {true}
lappend params_list CONFIG.multiplier_construction {Use_Mults}
lappend params_list CONFIG.optgoal {Speed}
lappend params_list CONFIG.outputwidthhigh {31}
lappend params_list CONFIG.pipestages {2}
lappend params_list CONFIG.portatype {Signed}
lappend params_list CONFIG.portawidth {16}
lappend params_list CONFIG.portbtype {Unsigned}
lappend params_list CONFIG.portbwidth {16}
lappend params_list CONFIG.sclrcepriority {CE_Overrides_SCLR}
lappend params_list CONFIG.syncclear {true}
lappend params_list CONFIG.use_custom_output_width {true}

set_property -dict $params_list [get_ips stft_ip_mult_gen_v12_0_i2]
}


set existingipslist [get_ips]
if {[lsearch $existingipslist stft_ip_mult_gen_v12_0_i3] < 0} {
create_ip -name mult_gen -version 12.0 -vendor xilinx.com -library ip -module_name stft_ip_mult_gen_v12_0_i3
set params_list [list]
lappend params_list CONFIG.Component_Name {stft_ip_mult_gen_v12_0_i3}
lappend params_list CONFIG.clockenable {true}
lappend params_list CONFIG.multiplier_construction {Use_Mults}
lappend params_list CONFIG.optgoal {Speed}
lappend params_list CONFIG.outputwidthhigh {31}
lappend params_list CONFIG.pipestages {2}
lappend params_list CONFIG.portatype {Signed}
lappend params_list CONFIG.portawidth {16}
lappend params_list CONFIG.portbtype {Signed}
lappend params_list CONFIG.portbwidth {16}
lappend params_list CONFIG.sclrcepriority {CE_Overrides_SCLR}
lappend params_list CONFIG.syncclear {true}
lappend params_list CONFIG.use_custom_output_width {true}

set_property -dict $params_list [get_ips stft_ip_mult_gen_v12_0_i3]
}


set existingipslist [get_ips]
if {[lsearch $existingipslist stft_ip_floating_point_v7_1_i2] < 0} {
create_ip -name floating_point -version 7.1 -vendor xilinx.com -library ip -module_name stft_ip_floating_point_v7_1_i2
set params_list [list]
lappend params_list CONFIG.Component_Name {stft_ip_floating_point_v7_1_i2}
lappend params_list CONFIG.A_Precision_Type {Single}
lappend params_list CONFIG.A_TUSER_Width {1}
lappend params_list CONFIG.Add_Sub_Value {Both}
lappend params_list CONFIG.Axi_Optimize_Goal {Resources}
lappend params_list CONFIG.B_TUSER_Width {1}
lappend params_list CONFIG.C_A_Exponent_Width {8}
lappend params_list CONFIG.C_A_Fraction_Width {24}
lappend params_list CONFIG.C_BRAM_Usage {Full_Usage}
lappend params_list CONFIG.C_Compare_Operation {Programmable}
lappend params_list CONFIG.C_Has_DIVIDE_BY_ZERO {false}
lappend params_list CONFIG.C_Has_INVALID_OP {false}
lappend params_list CONFIG.C_Has_OVERFLOW {false}
lappend params_list CONFIG.C_Has_UNDERFLOW {false}
lappend params_list CONFIG.C_Latency {1}
lappend params_list CONFIG.C_Mult_Usage {No_Usage}
lappend params_list CONFIG.C_Optimization {Speed_Optimized}
lappend params_list CONFIG.C_Rate {1}
lappend params_list CONFIG.C_Result_Exponent_Width {8}
lappend params_list CONFIG.C_Result_Fraction_Width {24}
lappend params_list CONFIG.C_TUSER_Width {1}
lappend params_list CONFIG.Flow_Control {NonBlocking}
lappend params_list CONFIG.Has_ACLKEN {true}
lappend params_list CONFIG.Has_ARESETn {false}
lappend params_list CONFIG.Has_A_TLAST {false}
lappend params_list CONFIG.Has_A_TUSER {false}
lappend params_list CONFIG.Has_B_TLAST {false}
lappend params_list CONFIG.Has_B_TUSER {false}
lappend params_list CONFIG.Has_C_TLAST {false}
lappend params_list CONFIG.Has_C_TUSER {false}
lappend params_list CONFIG.Has_OPERATION_TLAST {false}
lappend params_list CONFIG.Has_OPERATION_TUSER {false}
lappend params_list CONFIG.Has_RESULT_TREADY {false}
lappend params_list CONFIG.Maximum_Latency {false}
lappend params_list CONFIG.OPERATION_TUSER_Width {1}
lappend params_list CONFIG.Operation_Type {Logarithm}
lappend params_list CONFIG.RESULT_TLAST_Behv {Null}
lappend params_list CONFIG.Result_Precision_Type {Single}

set_property -dict $params_list [get_ips stft_ip_floating_point_v7_1_i2]
}


validate_ip [get_ips]

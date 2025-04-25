
create_debug_core u_ila_0 ila
set_property ALL_PROBE_SAME_MU true [get_debug_cores u_ila_0]
set_property ALL_PROBE_SAME_MU_CNT 1 [get_debug_cores u_ila_0]
set_property C_ADV_TRIGGER false [get_debug_cores u_ila_0]
set_property C_DATA_DEPTH 1024 [get_debug_cores u_ila_0]
set_property C_EN_STRG_QUAL false [get_debug_cores u_ila_0]
set_property C_INPUT_PIPE_STAGES 0 [get_debug_cores u_ila_0]
set_property C_TRIGIN_EN false [get_debug_cores u_ila_0]
set_property C_TRIGOUT_EN false [get_debug_cores u_ila_0]
set_property port_width 1 [get_debug_ports u_ila_0/clk]
connect_debug_port u_ila_0/clk [get_nets [list design_1_i/zynq_ultra_ps_e_0/inst/pl_clk0]]
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe0]
set_property port_width 1 [get_debug_ports u_ila_0/probe0]
connect_debug_port u_ila_0/probe0 [get_nets [list {design_1_i/Constant_Stream_0_constant_out[14]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe1]
set_property port_width 16 [get_debug_ports u_ila_0/probe1]
connect_debug_port u_ila_0/probe1 [get_nets [list {design_1_i/ram_re_0_m_axis_TDATA[0]} {design_1_i/ram_re_0_m_axis_TDATA[1]} {design_1_i/ram_re_0_m_axis_TDATA[2]} {design_1_i/ram_re_0_m_axis_TDATA[3]} {design_1_i/ram_re_0_m_axis_TDATA[4]} {design_1_i/ram_re_0_m_axis_TDATA[5]} {design_1_i/ram_re_0_m_axis_TDATA[6]} {design_1_i/ram_re_0_m_axis_TDATA[7]} {design_1_i/ram_re_0_m_axis_TDATA[8]} {design_1_i/ram_re_0_m_axis_TDATA[9]} {design_1_i/ram_re_0_m_axis_TDATA[10]} {design_1_i/ram_re_0_m_axis_TDATA[11]} {design_1_i/ram_re_0_m_axis_TDATA[12]} {design_1_i/ram_re_0_m_axis_TDATA[13]} {design_1_i/ram_re_0_m_axis_TDATA[14]} {design_1_i/ram_re_0_m_axis_TDATA[15]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe2]
set_property port_width 1 [get_debug_ports u_ila_0/probe2]
connect_debug_port u_ila_0/probe2 [get_nets [list {design_1_i/axi_dma_M_AXI_S2MM_AWBURST[0]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe3]
set_property port_width 16 [get_debug_ports u_ila_0/probe3]
connect_debug_port u_ila_0/probe3 [get_nets [list {design_1_i/axis_data_fifo_0_M_AXIS_TDATA[0]} {design_1_i/axis_data_fifo_0_M_AXIS_TDATA[1]} {design_1_i/axis_data_fifo_0_M_AXIS_TDATA[2]} {design_1_i/axis_data_fifo_0_M_AXIS_TDATA[3]} {design_1_i/axis_data_fifo_0_M_AXIS_TDATA[4]} {design_1_i/axis_data_fifo_0_M_AXIS_TDATA[5]} {design_1_i/axis_data_fifo_0_M_AXIS_TDATA[6]} {design_1_i/axis_data_fifo_0_M_AXIS_TDATA[7]} {design_1_i/axis_data_fifo_0_M_AXIS_TDATA[8]} {design_1_i/axis_data_fifo_0_M_AXIS_TDATA[9]} {design_1_i/axis_data_fifo_0_M_AXIS_TDATA[10]} {design_1_i/axis_data_fifo_0_M_AXIS_TDATA[11]} {design_1_i/axis_data_fifo_0_M_AXIS_TDATA[12]} {design_1_i/axis_data_fifo_0_M_AXIS_TDATA[13]} {design_1_i/axis_data_fifo_0_M_AXIS_TDATA[14]} {design_1_i/axis_data_fifo_0_M_AXIS_TDATA[15]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe4]
set_property port_width 32 [get_debug_ports u_ila_0/probe4]
connect_debug_port u_ila_0/probe4 [get_nets [list {design_1_i/axi_dma_M_AXI_S2MM_WDATA[0]} {design_1_i/axi_dma_M_AXI_S2MM_WDATA[1]} {design_1_i/axi_dma_M_AXI_S2MM_WDATA[2]} {design_1_i/axi_dma_M_AXI_S2MM_WDATA[3]} {design_1_i/axi_dma_M_AXI_S2MM_WDATA[4]} {design_1_i/axi_dma_M_AXI_S2MM_WDATA[5]} {design_1_i/axi_dma_M_AXI_S2MM_WDATA[6]} {design_1_i/axi_dma_M_AXI_S2MM_WDATA[7]} {design_1_i/axi_dma_M_AXI_S2MM_WDATA[8]} {design_1_i/axi_dma_M_AXI_S2MM_WDATA[9]} {design_1_i/axi_dma_M_AXI_S2MM_WDATA[10]} {design_1_i/axi_dma_M_AXI_S2MM_WDATA[11]} {design_1_i/axi_dma_M_AXI_S2MM_WDATA[12]} {design_1_i/axi_dma_M_AXI_S2MM_WDATA[13]} {design_1_i/axi_dma_M_AXI_S2MM_WDATA[14]} {design_1_i/axi_dma_M_AXI_S2MM_WDATA[15]} {design_1_i/axi_dma_M_AXI_S2MM_WDATA[16]} {design_1_i/axi_dma_M_AXI_S2MM_WDATA[17]} {design_1_i/axi_dma_M_AXI_S2MM_WDATA[18]} {design_1_i/axi_dma_M_AXI_S2MM_WDATA[19]} {design_1_i/axi_dma_M_AXI_S2MM_WDATA[20]} {design_1_i/axi_dma_M_AXI_S2MM_WDATA[21]} {design_1_i/axi_dma_M_AXI_S2MM_WDATA[22]} {design_1_i/axi_dma_M_AXI_S2MM_WDATA[23]} {design_1_i/axi_dma_M_AXI_S2MM_WDATA[24]} {design_1_i/axi_dma_M_AXI_S2MM_WDATA[25]} {design_1_i/axi_dma_M_AXI_S2MM_WDATA[26]} {design_1_i/axi_dma_M_AXI_S2MM_WDATA[27]} {design_1_i/axi_dma_M_AXI_S2MM_WDATA[28]} {design_1_i/axi_dma_M_AXI_S2MM_WDATA[29]} {design_1_i/axi_dma_M_AXI_S2MM_WDATA[30]} {design_1_i/axi_dma_M_AXI_S2MM_WDATA[31]}]]
set_property C_CLK_INPUT_FREQ_HZ 300000000 [get_debug_cores dbg_hub]
set_property C_ENABLE_CLK_DIVIDER false [get_debug_cores dbg_hub]
set_property C_USER_SCAN_CHAIN 1 [get_debug_cores dbg_hub]
connect_debug_port dbg_hub/clk [get_nets clk] #pl_clk0

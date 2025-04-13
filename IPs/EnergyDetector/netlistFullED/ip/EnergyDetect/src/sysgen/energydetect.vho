  sysgen_dut : entity xil_defaultlib.energydetect 
  port map (
    s_axis_tdata => s_axis_tdata,
    s_axis_tdata2 => s_axis_tdata2,
    s_axis_tdata3 => s_axis_tdata3,
    s_axis_tdata4 => s_axis_tdata4,
    s_axis_tdata5 => s_axis_tdata5,
    s_axis_tdata6 => s_axis_tdata6,
    s_axis_tdata7 => s_axis_tdata7,
    s_axis_tdata8 => s_axis_tdata8,
    s_axis_tlast => s_axis_tlast,
    s_axis_tuser => s_axis_tuser,
    s_axis_tvalid => s_axis_tvalid,
    clk => clk,
    m_axis_tlast => m_axis_tlast,
    m_axis_tvalid => m_axis_tvalid,
    m_axis_tdata => m_axis_tdata
  );

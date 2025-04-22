  sysgen_dut : entity xil_defaultlib.channelsplit 
  port map (
    s_axis_tuser => s_axis_tuser,
    s_axis_tdata => s_axis_tdata,
    s_axis_tlast => s_axis_tlast,
    s_axis_tvalid => s_axis_tvalid,
    s_axis_tdata_real => s_axis_tdata_real,
    clk => clk,
    m_axis_tuser => m_axis_tuser,
    m_axis_tdata => m_axis_tdata,
    m_axis_tdata2 => m_axis_tdata2,
    m_axis_tdata3 => m_axis_tdata3,
    m_axis_tdata4 => m_axis_tdata4,
    m_axis_tdata5 => m_axis_tdata5,
    m_axis_tdata6 => m_axis_tdata6,
    m_axis_tdata7 => m_axis_tdata7,
    m_axis_tdata8 => m_axis_tdata8,
    m_axis_tlast => m_axis_tlast,
    m_axis_tvalid => m_axis_tvalid
  );

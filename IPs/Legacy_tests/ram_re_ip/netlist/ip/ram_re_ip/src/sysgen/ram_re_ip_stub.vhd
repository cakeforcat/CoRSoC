-- Generated from Simulink block 
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
entity ram_re_ip_stub is
  port (
    clk : in std_logic;
    ram_re_ip_aresetn : in std_logic;
    ram_re_ip_s_axi_awaddr : in std_logic;
    ram_re_ip_s_axi_awvalid : in std_logic;
    ram_re_ip_s_axi_wdata : in std_logic_vector( 32-1 downto 0 );
    ram_re_ip_s_axi_wstrb : in std_logic_vector( 4-1 downto 0 );
    ram_re_ip_s_axi_wvalid : in std_logic;
    ram_re_ip_s_axi_bready : in std_logic;
    ram_re_ip_s_axi_araddr : in std_logic;
    ram_re_ip_s_axi_arvalid : in std_logic;
    ram_re_ip_s_axi_rready : in std_logic;
    m_axis_tdata : out std_logic_vector( 16-1 downto 0 );
    m_axis_tlast : out std_logic_vector( 1-1 downto 0 );
    m_axis_tvalid : out std_logic_vector( 1-1 downto 0 );
    ram_re_ip_s_axi_awready : out std_logic;
    ram_re_ip_s_axi_wready : out std_logic;
    ram_re_ip_s_axi_bresp : out std_logic_vector( 2-1 downto 0 );
    ram_re_ip_s_axi_bvalid : out std_logic;
    ram_re_ip_s_axi_arready : out std_logic;
    ram_re_ip_s_axi_rdata : out std_logic_vector( 32-1 downto 0 );
    ram_re_ip_s_axi_rresp : out std_logic_vector( 2-1 downto 0 );
    ram_re_ip_s_axi_rvalid : out std_logic
  );
end ram_re_ip_stub;
architecture structural of ram_re_ip_stub is 
begin
  sysgen_dut : entity xil_defaultlib.ram_re_ip 
  port map (
    clk => clk,
    ram_re_ip_aresetn => ram_re_ip_aresetn,
    ram_re_ip_s_axi_awaddr => ram_re_ip_s_axi_awaddr,
    ram_re_ip_s_axi_awvalid => ram_re_ip_s_axi_awvalid,
    ram_re_ip_s_axi_wdata => ram_re_ip_s_axi_wdata,
    ram_re_ip_s_axi_wstrb => ram_re_ip_s_axi_wstrb,
    ram_re_ip_s_axi_wvalid => ram_re_ip_s_axi_wvalid,
    ram_re_ip_s_axi_bready => ram_re_ip_s_axi_bready,
    ram_re_ip_s_axi_araddr => ram_re_ip_s_axi_araddr,
    ram_re_ip_s_axi_arvalid => ram_re_ip_s_axi_arvalid,
    ram_re_ip_s_axi_rready => ram_re_ip_s_axi_rready,
    m_axis_tdata => m_axis_tdata,
    m_axis_tlast => m_axis_tlast,
    m_axis_tvalid => m_axis_tvalid,
    ram_re_ip_s_axi_awready => ram_re_ip_s_axi_awready,
    ram_re_ip_s_axi_wready => ram_re_ip_s_axi_wready,
    ram_re_ip_s_axi_bresp => ram_re_ip_s_axi_bresp,
    ram_re_ip_s_axi_bvalid => ram_re_ip_s_axi_bvalid,
    ram_re_ip_s_axi_arready => ram_re_ip_s_axi_arready,
    ram_re_ip_s_axi_rdata => ram_re_ip_s_axi_rdata,
    ram_re_ip_s_axi_rresp => ram_re_ip_s_axi_rresp,
    ram_re_ip_s_axi_rvalid => ram_re_ip_s_axi_rvalid
  );
end structural;

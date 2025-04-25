proc generate {drv_handle} {
    xdefine_include_file $drv_handle "xparameters.h" "ram_re_ip" "NUM_INSTANCES" "DEVICE_ID" "C_RAM_RE_IP_S_AXI_BASEADDR" "C_RAM_RE_IP_S_AXI_HIGHADDR" 
    xdefine_config_file $drv_handle "ram_re_ip_g.c" "ram_re_ip" "DEVICE_ID" "C_RAM_RE_IP_S_AXI_BASEADDR" 
    xdefine_canonical_xpars $drv_handle "xparameters.h" "ram_re_ip" "DEVICE_ID" "C_RAM_RE_IP_S_AXI_BASEADDR" "C_RAM_RE_IP_S_AXI_HIGHADDR" 

}
proc generate {drv_handle} {
    xdefine_include_file $drv_handle "xparameters.h" "constant_ip" "NUM_INSTANCES" "DEVICE_ID" "C_CONSTANT_IP_S_AXI_BASEADDR" "C_CONSTANT_IP_S_AXI_HIGHADDR" 
    xdefine_config_file $drv_handle "constant_ip_g.c" "constant_ip" "DEVICE_ID" "C_CONSTANT_IP_S_AXI_BASEADDR" 
    xdefine_canonical_xpars $drv_handle "xparameters.h" "constant_ip" "DEVICE_ID" "C_CONSTANT_IP_S_AXI_BASEADDR" "C_CONSTANT_IP_S_AXI_HIGHADDR" 

}
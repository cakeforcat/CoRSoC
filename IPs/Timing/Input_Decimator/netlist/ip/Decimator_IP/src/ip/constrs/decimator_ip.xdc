set rateCedecimator_ip8 decimator_ip_default_clock_driver/clockdriver/pipelined_ce.ce_pipeline[1].ce_reg/latency_gt_0.fd_array[1].reg_comp/fd_prim_array[0].bit_is_0.fdre_comp
set rateCellsdecimator_ip8 [get_cells -of [filter [all_fanout -flat -endpoints [get_pins $rateCedecimator_ip8/Q]] IS_ENABLE]]
set_multicycle_path -from $rateCellsdecimator_ip8 -to $rateCellsdecimator_ip8 -setup 8
set_multicycle_path -from $rateCellsdecimator_ip8 -to $rateCellsdecimator_ip8 -hold 7

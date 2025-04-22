set rateCematched_filter2 matched_filter_default_clock_driver/clockdriver/pipelined_ce.ce_pipeline[1].ce_reg/latency_gt_0.fd_array[1].reg_comp/fd_prim_array[0].bit_is_0.fdre_comp
set rateCellsmatched_filter2 [get_cells -of [filter [all_fanout -flat -endpoints [get_pins $rateCematched_filter2/Q]] IS_ENABLE]]
set_multicycle_path -from $rateCellsmatched_filter2 -to $rateCellsmatched_filter2 -setup 2
set_multicycle_path -from $rateCellsmatched_filter2 -to $rateCellsmatched_filter2 -hold 1

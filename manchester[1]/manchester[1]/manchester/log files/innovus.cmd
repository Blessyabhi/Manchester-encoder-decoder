#######################################################
#                                                     
#  Innovus Command Logging File                     
#  Created on Sat Nov  1 14:16:18 2025                
#                                                     
#######################################################

#@(#)CDS: Innovus v20.14-s095_1 (64bit) 04/19/2021 14:41 (Linux 2.6.32-431.11.2.el6.x86_64)
#@(#)CDS: NanoRoute 20.14-s095_1 NR210411-1939/20_14-UB (database version 18.20.547) {superthreading v2.13}
#@(#)CDS: AAE 20.14-s018 (64bit) 04/19/2021 (Linux 2.6.32-431.11.2.el6.x86_64)
#@(#)CDS: CTE 20.14-s027_1 () Apr 13 2021 21:29:07 ( )
#@(#)CDS: SYNTECH 20.14-s017_1 () Mar 25 2021 13:07:27 ( )
#@(#)CDS: CPE v20.14-s080
#@(#)CDS: IQuantus/TQuantus 20.1.1-s460 (64bit) Fri Mar 5 18:46:16 PST 2021 (Linux 2.6.32-431.11.2.el6.x86_64)

set_global _enable_mmmc_by_default_flow      $CTE::mmmc_default
suppressMessage ENCEXT-2799
getVersion
getVersion
getVersion
win
set init_gnd_net VSS
set init_lef_file ../../install/FOUNDRY/digital/90nm/dig/lef/gsclib090_translated.lef
set init_design_settop 0
set init_verilog top_manchester_90nm_netlist.v
set init_mmmc_file Default.view
set init_pwr_net VDD
init_design
fit
getIoFlowFlag
setIoFlowFlag 0
floorPlan -coreMarginsBy die -site gsclib090site -r 1 0.8 6 6 6 6
uiSetTool select
getIoFlowFlag
fit
setIoFlowFlag 0
floorPlan -site gsclib090site -r 0.964285714286 0.785714 6.09 6.09 6.09 6.09
uiSetTool select
getIoFlowFlag
fit
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
set sprCreateIeRingLayers {}
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
set sprCreateIeRingLayers {}
set sprCreateIeStripeWidth 10.0
set sprCreateIeStripeThreshold 1.0
set sprCreateIeStripeWidth 10.0
set sprCreateIeStripeThreshold 1.0
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
set sprCreateIeRingLayers {}
set sprCreateIeStripeWidth 10.0
set sprCreateIeStripeThreshold 1.0
setAddRingMode -ring_target default -extend_over_row 0 -ignore_rows 0 -avoid_short 0 -skip_crossing_trunks none -stacked_via_top_layer Metal9 -stacked_via_bottom_layer Metal1 -via_using_exact_crossover_size 1 -orthogonal_only true -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape }
addRing -nets {} -type core_rings -follow core -layer {top Metal9 bottom Metal9 left Metal8 right Metal8} -width {top 1.8 bottom 1.8 left 1.8 right 1.8} -spacing {top 1.8 bottom 1.8 left 1.8 right 1.8} -offset {top 1.8 bottom 1.8 left 1.8 right 1.8} -center 0 -threshold 0 -jog_distance 0 -snap_wire_center_to_grid None
setAddRingMode -ring_target default -extend_over_row 0 -ignore_rows 0 -avoid_short 0 -skip_crossing_trunks none -stacked_via_top_layer Metal9 -stacked_via_bottom_layer Metal1 -via_using_exact_crossover_size 1 -orthogonal_only true -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape }
addRing -nets {} -type core_rings -follow core -layer {top Metal9 bottom Metal9 left Metal8 right Metal8} -width {top 1.8 bottom 1.8 left 1.8 right 1.8} -spacing {top 1.8 bottom 1.8 left 1.8 right 1.8} -offset {top 1.8 bottom 1.8 left 1.8 right 1.8} -center 0 -threshold 0 -jog_distance 0 -snap_wire_center_to_grid None
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
set sprCreateIeRingLayers {}
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
set sprCreateIeRingLayers {}
set sprCreateIeStripeWidth 10.0
set sprCreateIeStripeThreshold 1.0
set sprCreateIeStripeWidth 10.0
set sprCreateIeStripeThreshold 1.0
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
set sprCreateIeRingLayers {}
set sprCreateIeStripeWidth 10.0
set sprCreateIeStripeThreshold 1.0
setAddStripeMode -ignore_block_check false -break_at none -route_over_rows_only false -rows_without_stripes_only false -extend_to_closest_target none -stop_at_last_wire_for_area false -partial_set_thru_domain false -ignore_nondefault_domains false -trim_antenna_back_to_shape none -spacing_type edge_to_edge -spacing_from_block 0 -stripe_min_length stripe_width -stacked_via_top_layer Metal9 -stacked_via_bottom_layer Metal1 -via_using_exact_crossover_size false -split_vias false -orthogonal_only true -allow_jog { padcore_ring  block_ring } -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape   }
addStripe -nets {} -layer Metal9 -direction horizontal -width 1.8 -spacing 1.8 -number_of_sets 2 -start_from bottom -switch_layer_over_obs false -max_same_layer_jog_length 2 -padcore_ring_top_layer_limit Metal9 -padcore_ring_bottom_layer_limit Metal1 -block_ring_top_layer_limit Metal9 -block_ring_bottom_layer_limit Metal1 -use_wire_group 0 -snap_wire_center_to_grid None
setAddStripeMode -ignore_block_check false -break_at none -route_over_rows_only false -rows_without_stripes_only false -extend_to_closest_target none -stop_at_last_wire_for_area false -partial_set_thru_domain false -ignore_nondefault_domains false -trim_antenna_back_to_shape none -spacing_type edge_to_edge -spacing_from_block 0 -stripe_min_length stripe_width -stacked_via_top_layer Metal9 -stacked_via_bottom_layer Metal1 -via_using_exact_crossover_size false -split_vias false -orthogonal_only true -allow_jog { padcore_ring  block_ring } -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape   }
addStripe -nets {} -layer Metal9 -direction horizontal -width 1.8 -spacing 1.8 -number_of_sets 2 -start_from bottom -switch_layer_over_obs false -max_same_layer_jog_length 2 -padcore_ring_top_layer_limit Metal9 -padcore_ring_bottom_layer_limit Metal1 -block_ring_top_layer_limit Metal9 -block_ring_bottom_layer_limit Metal1 -use_wire_group 0 -snap_wire_center_to_grid None
setAddStripeMode -ignore_block_check false -break_at none -route_over_rows_only false -rows_without_stripes_only false -extend_to_closest_target none -stop_at_last_wire_for_area false -partial_set_thru_domain false -ignore_nondefault_domains false -trim_antenna_back_to_shape none -spacing_type edge_to_edge -spacing_from_block 0 -stripe_min_length stripe_width -stacked_via_top_layer Metal9 -stacked_via_bottom_layer Metal1 -via_using_exact_crossover_size false -split_vias false -orthogonal_only true -allow_jog { padcore_ring  block_ring } -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape   }
addStripe -nets {VSS VDD} -layer Metal9 -direction horizontal -width 1.8 -spacing 1.8 -number_of_sets 2 -start_from bottom -switch_layer_over_obs false -max_same_layer_jog_length 2 -padcore_ring_top_layer_limit Metal9 -padcore_ring_bottom_layer_limit Metal1 -block_ring_top_layer_limit Metal9 -block_ring_bottom_layer_limit Metal1 -use_wire_group 0 -snap_wire_center_to_grid None
setAddStripeMode -ignore_block_check false -break_at none -route_over_rows_only false -rows_without_stripes_only false -extend_to_closest_target none -stop_at_last_wire_for_area false -partial_set_thru_domain false -ignore_nondefault_domains false -trim_antenna_back_to_shape none -spacing_type edge_to_edge -spacing_from_block 0 -stripe_min_length stripe_width -stacked_via_top_layer Metal9 -stacked_via_bottom_layer Metal1 -via_using_exact_crossover_size false -split_vias false -orthogonal_only true -allow_jog { padcore_ring  block_ring } -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape   }
addStripe -nets {VSS VDD} -layer Metal9 -direction horizontal -width 1.8 -spacing 1.8 -number_of_sets 2 -start_from bottom -switch_layer_over_obs false -max_same_layer_jog_length 2 -padcore_ring_top_layer_limit Metal9 -padcore_ring_bottom_layer_limit Metal1 -block_ring_top_layer_limit Metal9 -block_ring_bottom_layer_limit Metal1 -use_wire_group 0 -snap_wire_center_to_grid None
setAddStripeMode -ignore_block_check false -break_at none -route_over_rows_only false -rows_without_stripes_only false -extend_to_closest_target none -stop_at_last_wire_for_area false -partial_set_thru_domain false -ignore_nondefault_domains false -trim_antenna_back_to_shape none -spacing_type edge_to_edge -spacing_from_block 0 -stripe_min_length stripe_width -stacked_via_top_layer Metal9 -stacked_via_bottom_layer Metal1 -via_using_exact_crossover_size false -split_vias false -orthogonal_only true -allow_jog { padcore_ring  block_ring } -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape   }
addStripe -nets {VSS VDD} -layer Metal9 -direction horizontal -width 1.8 -spacing 1.8 -number_of_sets 5 -start_from bottom -switch_layer_over_obs false -max_same_layer_jog_length 2 -padcore_ring_top_layer_limit Metal9 -padcore_ring_bottom_layer_limit Metal1 -block_ring_top_layer_limit Metal9 -block_ring_bottom_layer_limit Metal1 -use_wire_group 0 -snap_wire_center_to_grid None
setAddStripeMode -ignore_block_check false -break_at none -route_over_rows_only false -rows_without_stripes_only false -extend_to_closest_target none -stop_at_last_wire_for_area false -partial_set_thru_domain false -ignore_nondefault_domains false -trim_antenna_back_to_shape none -spacing_type edge_to_edge -spacing_from_block 0 -stripe_min_length stripe_width -stacked_via_top_layer Metal9 -stacked_via_bottom_layer Metal1 -via_using_exact_crossover_size false -split_vias false -orthogonal_only true -allow_jog { padcore_ring  block_ring } -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape   }
addStripe -nets {VSS VDD} -layer Metal9 -direction horizontal -width 1.8 -spacing 1.8 -number_of_sets 5 -start_from bottom -switch_layer_over_obs false -max_same_layer_jog_length 2 -padcore_ring_top_layer_limit Metal9 -padcore_ring_bottom_layer_limit Metal1 -block_ring_top_layer_limit Metal9 -block_ring_bottom_layer_limit Metal1 -use_wire_group 0 -snap_wire_center_to_grid None
getIoFlowFlag
setAddStripeMode -ignore_block_check false -break_at none -route_over_rows_only false -rows_without_stripes_only false -extend_to_closest_target none -stop_at_last_wire_for_area false -partial_set_thru_domain false -ignore_nondefault_domains false -trim_antenna_back_to_shape none -spacing_type edge_to_edge -spacing_from_block 0 -stripe_min_length stripe_width -stacked_via_top_layer Metal9 -stacked_via_bottom_layer Metal1 -via_using_exact_crossover_size false -split_vias false -orthogonal_only true -allow_jog { padcore_ring  block_ring } -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape   }
addStripe -nets {VSS VDD} -layer Metal8 -direction vertical -width 1.8 -spacing 1.8 -number_of_sets 5 -start_from left -switch_layer_over_obs false -max_same_layer_jog_length 2 -padcore_ring_top_layer_limit Metal9 -padcore_ring_bottom_layer_limit Metal1 -block_ring_top_layer_limit Metal9 -block_ring_bottom_layer_limit Metal1 -use_wire_group 0 -snap_wire_center_to_grid None
setAddStripeMode -ignore_block_check false -break_at none -route_over_rows_only false -rows_without_stripes_only false -extend_to_closest_target none -stop_at_last_wire_for_area false -partial_set_thru_domain false -ignore_nondefault_domains false -trim_antenna_back_to_shape none -spacing_type edge_to_edge -spacing_from_block 0 -stripe_min_length stripe_width -stacked_via_top_layer Metal9 -stacked_via_bottom_layer Metal1 -via_using_exact_crossover_size false -split_vias false -orthogonal_only true -allow_jog { padcore_ring  block_ring } -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape   }
addStripe -nets {VSS VDD} -layer Metal8 -direction vertical -width 1.8 -spacing 1.8 -number_of_sets 5 -start_from left -switch_layer_over_obs false -max_same_layer_jog_length 2 -padcore_ring_top_layer_limit Metal9 -padcore_ring_bottom_layer_limit Metal1 -block_ring_top_layer_limit Metal9 -block_ring_bottom_layer_limit Metal1 -use_wire_group 0 -snap_wire_center_to_grid None
zoomBox -3.90900 2.30550 24.05050 15.82300
setRouteMode -earlyGlobalHonorMsvRouteConstraint false -earlyGlobalRoutePartitionPinGuide true
setEndCapMode -reset
setEndCapMode -boundary_tap false
setNanoRouteMode -quiet -droutePostRouteSpreadWire 1
setNanoRouteMode -quiet -droutePostRouteWidenWireRule LEFDefaultRouteSpec_gpdk090
setNanoRouteMode -quiet -timingEngine {}
setUsefulSkewMode -maxSkew false -noBoundary false -useCells {DLY4X4 DLY4X1 DLY3X4 DLY3X1 DLY2X4 DLY2X1 DLY1X4 DLY1X1 CLKBUFX8 CLKBUFX6 CLKBUFX4 CLKBUFX3 CLKBUFX20 CLKBUFX2 CLKBUFX16 CLKBUFX12 BUFX8 BUFX6 BUFX4 BUFX3 BUFX20 BUFX2 BUFX16 BUFX12 INVXL INVX8 INVX6 INVX4 INVX3 INVX20 INVX2 INVX16 INVX12 INVX1 CLKINVX8 CLKINVX6 CLKINVX4 CLKINVX3 CLKINVX20 CLKINVX2 CLKINVX16 CLKINVX12 CLKINVX1} -maxAllowedDelay 1
setPlaceMode -reset
setPlaceMode -congEffort auto -timingDriven 1 -clkGateAware 1 -powerDriven 0 -ignoreScan 1 -reorderScan 1 -ignoreSpare 0 -placeIOPins 1 -moduleAwareSpare 0 -preserveRouting 1 -rmAffectedRouting 0 -checkRoute 0 -swapEEQ 0
setRouteMode -earlyGlobalHonorMsvRouteConstraint false -earlyGlobalRoutePartitionPinGuide true
setEndCapMode -reset
setEndCapMode -boundary_tap false
setUsefulSkewMode -maxSkew false -noBoundary false -useCells {DLY4X4 DLY4X1 DLY3X4 DLY3X1 DLY2X4 DLY2X1 DLY1X4 DLY1X1 CLKBUFX8 CLKBUFX6 CLKBUFX4 CLKBUFX3 CLKBUFX20 CLKBUFX2 CLKBUFX16 CLKBUFX12 BUFX8 BUFX6 BUFX4 BUFX3 BUFX20 BUFX2 BUFX16 BUFX12 INVXL INVX8 INVX6 INVX4 INVX3 INVX20 INVX2 INVX16 INVX12 INVX1 CLKINVX8 CLKINVX6 CLKINVX4 CLKINVX3 CLKINVX20 CLKINVX2 CLKINVX16 CLKINVX12 CLKINVX1} -maxAllowedDelay 1
setPlaceMode -fp false
place_design
setPlaceMode -fp false
place_design
getCTSMode -engine -quiet
create_ccopt_clock_tree_spec
ctd_win -side none -id ctd_window
getCTSMode -engine -quiet
create_ccopt_clock_tree_spec
ctd_win -side none -id ctd_window
setAnalysisMode -cppr both -clockGatingCheck true -timeBorrowing true -useOutputPinCap true -sequentialConstProp false -timingSelfLoopsNoSkew false -enableMultipleDriveNet true -clkSrcPath true -warn true -usefulSkew false -analysisType onChipVariation -log true
setAnalysisMode -checkType hold
getCTSMode -engine -quiet
setNanoRouteMode -quiet -routeWithTimingDriven 1
setNanoRouteMode -quiet -routeWithSiDriven 1
setNanoRouteMode -quiet -routeTopRoutingLayer 9
setNanoRouteMode -quiet -routeBottomRoutingLayer 1
setNanoRouteMode -quiet -drouteEndIteration 1
setNanoRouteMode -quiet -routeWithTimingDriven true
setNanoRouteMode -quiet -routeWithSiDriven true
routeDesign -globalDetail
setNanoRouteMode -quiet -routeWithTimingDriven 1
setNanoRouteMode -quiet -routeWithSiDriven 1
setNanoRouteMode -quiet -routeWithTimingDriven true
setNanoRouteMode -quiet -routeWithSiDriven true
routeDesign -globalDetail
getMultiCpuUsage -localCpu
get_verify_drc_mode -disable_rules -quiet
get_verify_drc_mode -quiet -area
get_verify_drc_mode -quiet -layer_range
get_verify_drc_mode -check_ndr_spacing -quiet
get_verify_drc_mode -check_only -quiet
get_verify_drc_mode -check_same_via_cell -quiet
get_verify_drc_mode -exclude_pg_net -quiet
get_verify_drc_mode -ignore_trial_route -quiet
get_verify_drc_mode -max_wrong_way_halo -quiet
get_verify_drc_mode -use_min_spacing_on_block_obs -quiet
get_verify_drc_mode -limit -quiet
set_verify_drc_mode -disable_rules {} -check_ndr_spacing auto -check_only default -check_same_via_cell false -exclude_pg_net false -ignore_trial_route false -ignore_cell_blockage false -use_min_spacing_on_block_obs auto -report top_manchester.drc.rpt -limit 1000
verify_drc
set_verify_drc_mode -area {0 0 0 0}
verifyConnectivity -type all -error 1000 -warning 50
saveDesign -cellview {mk.gds top_manchester layout}
saveDesign -cellview {mk.gds top_manchester layout}
streamOut mk.gds -libName DesignLib -units 2000 -mode ALL
streamOut mk.gds -libName DesignLib -units 2000 -mode ALL
zoomBox 4.00000 2.77000 21.17100 11.07150
zoomBox 0.65700 1.10050 24.42300 12.59050
zoomBox -8.85800 -5.01100 36.67200 17.00100
zoomBox -4.45200 0.41350 28.44400 16.31750
zoomBox -2.72850 2.53500 25.23350 16.05350
zoomBox -1.26300 4.33850 22.50450 15.82900
zoomBox 1.93550 7.29950 16.53250 14.35650
zoomBox 2.69900 8.00650 15.10650 14.00500
zoomBox 5.10600 10.23450 10.61200 12.89650
zoomBox 2.69800 8.00500 15.10850 14.00500
zoomBox -0.02200 5.48650 20.18650 15.25650
zoomBox -4.56600 1.71400 28.34150 17.62350
gui_select -rect {20.60450 10.02500 18.32900 7.90750}
zoomBox 2.32450 6.00650 16.92600 13.06600
zoomBox -1.13000 3.85450 22.64750 15.35000
zoomBox 2.08400 6.73850 16.68700 13.79850
zoomBox 4.93200 9.28850 11.41150 12.42100
zoomBox 6.19550 10.42000 9.07100 11.81000
zoomBox 6.58400 10.76750 8.35100 11.62200
zoomBox 6.82150 10.98100 7.90850 11.50650
zoomBox 6.87800 11.03200 7.80250 11.47900
zoomBox 6.47050 10.66700 8.55600 11.67550
zoomBox 5.55200 9.84550 10.25450 12.11900
zoomBox 3.48350 7.99400 14.08350 13.11850
zoomBox -1.17650 3.82150 22.71500 15.37200
zoomBox -2.65450 2.49800 25.45300 16.08700
zoomBox -6.43900 -0.89100 32.46450 17.91750
setLayerPreference node_module -isSelectable 0
setLayerPreference node_module -isVisible 0
setLayerPreference node_module -isVisible 1
setLayerPreference node_module -isSelectable 1
setLayerPreference node_module -isVisible 0
setLayerPreference node_module -isVisible 1
setLayerPreference node_module -isSelectable 0
setLayerPreference node_module -isVisible 0
setLayerPreference node_module -isVisible 1
setLayerPreference node_module -isSelectable 1
setLayerPreference node_cell -isVisible 1
setLayerPreference node_cell -isVisible 0
setLayerPreference node_cell -isVisible 1
setLayerPreference node_cell -isVisible 0
setLayerPreference node_cell -isVisible 1
setLayerPreference node_cell -isVisible 0
setLayerPreference node_cell -isVisible 1
setLayerPreference node_cell -isVisible 0
setLayerPreference node_row -isSelectable 1
setLayerPreference node_row -isSelectable 0
setLayerPreference node_row -isVisible 1
setLayerPreference node_row -isVisible 0
setLayerPreference node_row -isVisible 1
setLayerPreference node_row -isVisible 0
setLayerPreference node_row -isVisible 1
setLayerPreference node_row -isVisible 0
setLayerPreference node_row -isVisible 1
setLayerPreference node_row -isVisible 0
setLayerPreference node_row -isVisible 1
setLayerPreference node_row -isVisible 0
setLayerPreference node_row -isVisible 1
setLayerPreference node_overlay -isVisible 1
setLayerPreference congestH -color {#000066 #0000c9 #0053ff #00fcfa #00a953 #53a900 #f9fc00 #ff5300 #ff5858 #ffffff}
setLayerPreference congestV -color {#000066 #0000c9 #0053ff #00fcfa #00a953 #53a900 #f9fc00 #ff5300 #ff5858 #ffffff}
fit
setLayerPreference node_overlay -isVisible 0
setLayerPreference node_cell -isVisible 1
setLayerPreference node_cell -isVisible 0
setLayerPreference node_cell -isVisible 1
setLayerPreference node_cell -isVisible 0
setLayerPreference node_cell -isVisible 1
setLayerPreference instanceStatus -isVisible 0
setLayerPreference instanceStatus -isVisible 1
setLayerPreference instanceStatus -isVisible 0
setLayerPreference node_module -isVisible 0
setLayerPreference node_module -isVisible 1
setLayerPreference node_module -isVisible 0
setLayerPreference node_module -isVisible 1
setLayerPreference node_floorplan -isSelectable 0
setLayerPreference node_floorplan -isSelectable 1
setLayerPreference node_track -isVisible 1
setLayerPreference node_track -isVisible 0
setLayerPreference node_route -isSelectable 0
setLayerPreference node_route -isSelectable 1
setLayerPreference node_layer -isVisible 0
setLayerPreference node_layer -isVisible 1
setLayerPreference node_layer -isVisible 0
setLayerPreference node_layer -isVisible 1
setLayerPreference Poly -isSelectable 0
setLayerPreference Poly -isSelectable 1
setLayerPreference instanceCell -isVisible 0
setLayerPreference instanceCell -isVisible 1
setLayerPreference node_layer -isSelectable 0
setLayerPreference node_layer -isSelectable 1
setLayerPreference node_route -isSelectable 0
setLayerPreference node_route -isSelectable 1
setLayerPreference node_net -isSelectable 0
setLayerPreference node_net -isSelectable 1
setLayerPreference node_partition -isSelectable 0
setLayerPreference node_partition -isSelectable 1
setLayerPreference node_floorplan -isSelectable 0
setLayerPreference node_floorplan -isSelectable 1
setLayerPreference node_blockage -isSelectable 0
setLayerPreference node_blockage -isSelectable 1
setLayerPreference node_module -isSelectable 0
setLayerPreference node_module -isSelectable 1
setLayerPreference violation -isSelectable 0
setLayerPreference violation -isSelectable 1
setLayerPreference node_inst -isSelectable 0
setLayerPreference node_inst -isSelectable 1
zoomBox -6.93200 1.52150 25.96200 17.42450
zoomBox -4.71250 2.50650 23.24700 16.02400
zoomBox 3.11850 5.98250 13.66550 11.08150
zoomBox 6.07250 7.29300 10.05100 9.21650
zoomBox 7.18550 7.78700 8.68700 8.51300
zoomBox 7.56050 7.95300 8.22750 8.27550
zoomBox 7.72700 8.02650 8.02350 8.17000
zoomBox 7.80900 8.06350 7.92150 8.11800
zoomBox 7.83700 8.07600 7.88700 8.10000
zoomBox 7.85050 8.08150 7.87000 8.09100
zoomBox 7.85500 8.08350 7.86400 8.08800
zoomBox 7.84600 8.07950 7.87300 8.09250
zoomBox 7.82500 8.07000 7.89700 8.10500
zoomBox 7.79000 8.04850 7.95350 8.12750
zoomBox 7.62800 7.99100 8.06450 8.20200
zoomBox 7.06700 7.79550 8.42900 8.45400
zoomBox 5.31800 7.18700 9.56900 9.24200
zoomBox 1.06550 5.70900 12.33850 11.15900
zoomBox -5.18550 3.53600 16.41050 13.97700
zoomBox -21.58150 -2.16300 27.09150 21.36850
zoomBox -3.65600 5.48850 17.94150 15.93000
zoomBox -9.14850 3.14350 20.74500 17.59600
zoomBox -3.37100 6.02200 14.98750 14.89750
zoomBox -0.19200 8.10150 7.95450 12.04000
zoomBox 1.43150 9.23200 4.04400 10.49500
zoomBox 1.90850 9.56450 2.89400 10.04100
zoomBox 2.08800 9.68950 2.46050 9.86950
zoomBox 2.15550 9.73650 2.29700 9.80500
zoomBox 2.17800 9.75200 2.24200 9.78300
zoomBox 2.12700 9.71600 2.36350 9.83050
zoomBox 2.11400 9.70700 2.39300 9.84200
zoomBox 1.97800 9.61200 2.72050 9.97100
zoomBox 1.61800 9.36050 3.58800 10.31300
zoomBox 0.39300 8.50550 6.54250 11.47850
zoomBox -2.58250 6.42750 13.72600 14.31200
zoomBox -10.55250 0.83950 32.69150 21.74650
setLayerPreference blackBox -isVisible 0
setLayerPreference blackBox -isVisible 1
setLayerPreference io -isSelectable 0
setLayerPreference io -isVisible 0
setLayerPreference io -isVisible 1

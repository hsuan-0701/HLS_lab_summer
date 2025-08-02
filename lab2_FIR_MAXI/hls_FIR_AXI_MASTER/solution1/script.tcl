############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
############################################################
open_project hls_FIR_AXI_MASTER
set_top fir_n11_maxi
add_files hls_FIR_AXI_MASTER/FIR.cpp
add_files hls_FIR_AXI_MASTER/FIR.h
add_files -tb hls_FIR_AXI_MASTER/FIR_tb.cpp
add_files -tb hls_FIR_AXI_MASTER/out_gold.dat
open_solution "solution1" -flow_target vivado
set_part {xc7z020clg400-1}
create_clock -period 10 -name default
config_export -format ip_catalog -rtl verilog
source "./hls_FIR_AXI_MASTER/solution1/directives.tcl"
csim_design
csynth_design
cosim_design -trace_level all
export_design -rtl verilog -format ip_catalog

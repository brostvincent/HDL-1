############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 2015 Xilinx Inc. All rights reserved.
############################################################
open_project hls_ip
set_top image_filter
add_files src/top.h
add_files src/top.cpp
open_solution "solution"
set_part {xc7z020clg484-1}
create_clock -period 10 -name default
#source "./hls_ip/solution/directives.tcl"
#csim_design
csynth_design
#cosim_design
export_design -format ip_catalog -description "OpenCV image processing core" -vendor "rp" -library "OpenCV" -version "1.3.2" -display_name "opencvFilter"

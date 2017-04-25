open_project ocvSwFastCorner
set_top ocvSwFastCorner
add_files /home/vgr16/nfshome/face_with_corner/src/cv/my_ocv_sw.cpp -cflags "-I/home/vgr16/nfshome/face_with_corner/src -Wall -O3 -fmessage-length=0 -MMD -MP -D __SDSCC__ -I /home/vgr16/homedir/ZYBO_SDSoC_platforms-master/2015.4/zybo_hdmi_in/arm-xilinx-linux-gnueabi/include -I /usr/local/Xilinx/SDSoC/2015.4/arm-xilinx-linux-gnueabi/include -I/home/vgr16/nfshome/face_with_corner/src/cv -D __SDSVHLS__ -I /home/vgr16/nfshome/face_with_corner/SDRelease -w"
open_solution "solution" -reset
set_part { xc7z010clg400-1 }
# synthesis directives
create_clock -period 7.28571465
config_rtl -reset_level low
source /home/vgr16/nfshome/face_with_corner/SDRelease/_sds/vhls/ocvSwFastCorner.tcl
# end synthesis directives
csynth_design
export_design -acc

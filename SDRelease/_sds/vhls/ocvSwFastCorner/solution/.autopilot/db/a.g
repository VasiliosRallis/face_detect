#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/vgr16/nfshome/face_with_corner/SDRelease/_sds/vhls/ocvSwFastCorner/solution/.autopilot/db/a.g.bc ${1+"$@"}

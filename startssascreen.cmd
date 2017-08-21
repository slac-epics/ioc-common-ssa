#!/bin/bash

/usr/bin/xset fp+ /usr/share/X11/fonts/100dpi 
export PATH=/afs/slac/g/lcls/tools/script/:/afs/slac/g/lcls/epics/setup:$PATH
source go_epics_3-14-12-4_1-1.bash

edm -eolc -x -m NAM=SSA1:B15 MAIN_TRUNK/ssaApp/srcDisplay/ssaControl.edl&


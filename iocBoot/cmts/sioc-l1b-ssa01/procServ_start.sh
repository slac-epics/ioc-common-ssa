#!/usr/bin/env bash

# Using telnet port 20000 - change if needed
/usr/bin/procServ --foreground --quiet --ignore=^C^D^] --restrict --logfile="-" 20000 /usr/local/lcls/epics/R3-15-5_1-0/modules/ssa/current/iocBoot/cmts/sioc-l1b-ssa01/st.cmd

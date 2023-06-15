#!/usr/bin/env bash

# Using telnet port 50065 (LLRF IOC uses 50064) - change if needed
/usr/bin/procServ --foreground --quiet --ignore=^C^D^] --restrict --logfile="-" 50065 /usr/local/lcls/epics/R3-15-5_1-0/modules/ssa/current/iocBoot/cmts/sioc-l1b-ssa01/st.cmd

#!/usr/bin/env python

# Generate substitutions file for N SSA modules.

from __future__ import print_function

outfile = 'ssatest.subs'
NMODS = 31  # Total number of SSA modules
NREGS = 50  # Register repeat period

# bi
str_cb =   '{{  M{0:02d}:SubCBStat,  RF{1:02d}_In_Word,   {2:4d}, 0x0001,   "Disabled",  "Enabled",    MINOR, NO_ALARM, "I/O Intr"}}'
str_pwr =  '{{    M{0:02d}:PwrStat,  RF{1:02d}_In_Word,   {2:4d}, 0x0001,        "OFF",       "ON",    MINOR, NO_ALARM, "I/O Intr"}}'

# longin
str_hiad = '{{   M{0:02d}:HiADWarn,  RF{1:02d}_In_Word,   {2:4d},    "", "I/O Intr"}}'
str_load = '{{   M{0:02d}:LoADWarn,  RF{1:02d}_In_Word,   {2:4d},    "", "I/O Intr"}}'
str_io1i = '{{  M{0:02d}:IO1IntMon,  RF{1:02d}_In_Word,   {2:4d},    "", "I/O Intr"}}'
str_io1w = '{{  M{0:02d}:IO1WrnMon,  RF{1:02d}_In_Word,   {2:4d},    "", "I/O Intr"}}'
str_io2w = '{{  M{0:02d}:IO2WrnMon,  RF{1:02d}_In_Word,   {2:4d},    "", "I/O Intr"}}'
str_fpga = '{{    M{0:02d}:FPGAVer,  RF{1:02d}_In_Word,   {2:4d},    "", "I/O Intr"}}'

# ai
str_pout = '{{  M{0:02d}:PwrOutFwd,  RF{1:02d}_In_Word,   {2:4d},     0.0,    1.0,    1,    "kW", "I/O Intr"}}'
str_pref = '{{     M{0:02d}:PwrRef,  RF{1:02d}_In_Word,   {2:4d},     0.0,    1.0,    1,    "kW", "I/O Intr"}}'
str_d1dc = '{{  M{0:02d}:Dv1DrnCur,  RF{1:02d}_In_Word,   {2:4d},     0.0, 0.0162,    1,     "A", "I/O Intr"}}'
str_d2dc = '{{  M{0:02d}:Dv2DrnCur,  RF{1:02d}_In_Word,   {2:4d},     0.0, 0.0162,    1,     "A", "I/O Intr"}}'
str_ps1c = '{{   M{0:02d}:PS1DCCur,  RF{1:02d}_In_Word,   {2:4d},     0.0, 0.0162,    1,     "A", "I/O Intr"}}'
str_ps2c = '{{   M{0:02d}:PS2DCCur,  RF{1:02d}_In_Word,   {2:4d},     0.0, 0.0162,    1,     "A", "I/O Intr"}}'
str_ps3c = '{{   M{0:02d}:PS3DCCur,  RF{1:02d}_In_Word,   {2:4d},     0.0, 0.0162,    1,     "A", "I/O Intr"}}'
str_drnv = '{{    M{0:02d}:DrnVolt,  RF{1:02d}_In_Word,   {2:4d},     0.0, 0.0172,    1,   "VDC", "I/O Intr"}}'
str_ps1v = '{{  M{0:02d}:PS1DCVolt,  RF{1:02d}_In_Word,   {2:4d},     0.0, 0.0172,    1,   "VDC", "I/O Intr"}}'
str_ps2v = '{{  M{0:02d}:PS2DCVolt,  RF{1:02d}_In_Word,   {2:4d},     0.0, 0.0172,    1,   "VDC", "I/O Intr"}}'
str_ps3v = '{{  M{0:02d}:PS3DCVolt,  RF{1:02d}_In_Word,   {2:4d},     0.0, 0.0172,    1,   "VDC", "I/O Intr"}}'
str_lcwt = '{{  M{0:02d}:LCWHSTemp,  RF{1:02d}_In_Word,   {2:4d}, -39.235, 0.0392,    1,  "degC", "I/O Intr"}}'
str_airt = '{{    M{0:02d}:AirTemp,  RF{1:02d}_In_Word,   {2:4d}, -39.235, 0.0392,    1,  "degC", "I/O Intr"}}'
str_tfs1 = '{{  M{0:02d}:T1FanSpd1,  RF{1:02d}_In_Word,   {2:4d},     0.0,    4.0,    1,   "rpm", "I/O Intr"}}'
str_tfs2 = '{{  M{0:02d}:T1FanSpd2,  RF{1:02d}_In_Word,   {2:4d},     0.0,    4.0,    1,   "rpm", "I/O Intr"}}'
str_fans = '{{     M{0:02d}:FanSpd,  RF{1:02d}_In_Word,   {2:4d},     0.0,    4.0,    1,   "rpm", "I/O Intr"}}'

def wrloop(f, str, nmods, nregs, start):
    for i in range(nmods):
        regnum = i*nregs + start
        j = (regnum - 1)/100
        f.write(str.format(i, j, regnum))
        f.write('\n')

def write_bi(f):
    f.write('file "bi_word.template" {')
    f.write('\n')
    f.write('pattern')
    f.write('\n')
    f.write('{              R,          PORT, OFFSET,   MASK,         ZNAM,       ONAM,      ZSV,      OSV,       SCAN}')
    f.write('\n')
    wrloop(f, str_cb, NMODS, NREGS, 319)
    wrloop(f, str_pwr, NMODS, NREGS, 328)
    f.write('}\n\n')

def write_li(f):
    f.write('file "longin_custom.template" {')
    f.write('\n')
    f.write('pattern')
    f.write('\n')
    f.write('{              R,          PORT, OFFSET,   EGU,       SCAN}')
    f.write('\n')
    wrloop(f, str_hiad, NMODS, NREGS, 308)
    wrloop(f, str_load, NMODS, NREGS, 318)
    wrloop(f, str_io1i, NMODS, NREGS, 322)
    wrloop(f, str_io1w, NMODS, NREGS, 325)
    wrloop(f, str_io2w, NMODS, NREGS, 326)
    wrloop(f, str_fpga, NMODS, NREGS, 348)
    f.write('}\n\n')

def write_ai(f):
    f.write('file "ai_slope.template" {')
    f.write('\n')
    f.write('pattern')
    f.write('\n')
    f.write('{              R,          PORT, OFFSET,    EOFF,   ESLO, PREC,     EGU,       SCAN}')
    f.write('\n')
    wrloop(f, str_pout, NMODS, NREGS, 299)
    wrloop(f, str_pref, NMODS, NREGS, 300)
    wrloop(f, str_d1dc, NMODS, NREGS, 301)
    wrloop(f, str_d2dc, NMODS, NREGS, 302)
    wrloop(f, str_ps1c, NMODS, NREGS, 303)
    wrloop(f, str_ps2c, NMODS, NREGS, 304)
    wrloop(f, str_ps3c, NMODS, NREGS, 305)
    wrloop(f, str_drnv, NMODS, NREGS, 309)
    wrloop(f, str_ps1v, NMODS, NREGS, 311)
    wrloop(f, str_ps2v, NMODS, NREGS, 312)
    wrloop(f, str_ps3v, NMODS, NREGS, 313)
    wrloop(f, str_lcwt, NMODS, NREGS, 314)
    wrloop(f, str_airt, NMODS, NREGS, 315)
    wrloop(f, str_tfs1, NMODS, NREGS, 337)
    wrloop(f, str_tfs2, NMODS, NREGS, 338)
    wrloop(f, str_fans, NMODS, NREGS, 339)
    f.write('}\n\n')
    
def write_subs_file(filename):
    with open(filename, 'w') as f:
        f.write('#--- SSA modules 00-{0} -----------------------------------'.format(NMODS-1))
        f.write('\n')
        f.write('\n')
        # bi
        write_bi(f)
        # longin
        write_li(f)
        #ai
        write_ai(f)
        f.write('#----------------------------------------------------------')
        f.write('\n')

if __name__ == '__main__':
    write_subs_file(outfile)




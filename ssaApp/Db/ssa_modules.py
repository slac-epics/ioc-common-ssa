#!/usr/bin/env python

# Generate substitutions file for N SSA modules.

from __future__ import print_function
import argparse
import sys

outfile = 'test.out'
NMODS = 31  # Total number of SSA modules
NREGS = 50  # Register repeat period

# bi
str_cb =   '{{  M{0:02d}_SubCBStat,    "Sub Ckt Brkr Status", $(P)_inw{1:02d},     {2:2d}, 0x0001,   "Disabled",  "Enabled",    MINOR, NO_ALARM, "I/O Intr"}}'
str_pwr =  '{{    M{0:02d}_PwrStat,    "Module Power Status", $(P)_inw{1:02d},     {2:2d}, 0x0001,        "OFF",       "ON",    MINOR, NO_ALARM, "I/O Intr"}}'

# longin
str_hiad = '{{   M{0:02d}_HiADWarn,         "Hi A/D Warning", $(P)_inw{1:02d},     {2:2d},     "",      0,     "",     "", NO_ALARM,    MINOR, NO_ALARM, NO_ALARM,    "", "I/O Intr"}}'
str_load = '{{   M{0:02d}_LoADWarn,         "Lo A/D Warning", $(P)_inw{1:02d},     {2:2d},     "",      0,     "",     "", NO_ALARM,    MINOR, NO_ALARM, NO_ALARM,    "", "I/O Intr"}}'
str_io1i = '{{   M{0:02d}_IO1Intlk,        "I/O 1 Interlock", $(P)_inw{1:02d},     {2:2d},      0,     "",     "",     "",    MAJOR, NO_ALARM, NO_ALARM, NO_ALARM,    "", "I/O Intr"}}'
str_io1w = '{{    M{0:02d}_IO1Warn,          "I/O 1 Warning", $(P)_inw{1:02d},     {2:2d},     "",      0,     "",     "", NO_ALARM,    MINOR, NO_ALARM, NO_ALARM,    "", "I/O Intr"}}'
str_io2w = '{{    M{0:02d}_IO2Warn,          "I/O 2 Warning", $(P)_inw{1:02d},     {2:2d},     "",      0,     "",     "", NO_ALARM,    MINOR, NO_ALARM, NO_ALARM,    "", "I/O Intr"}}'

# ai
str_pout = '{{     M{0:02d}_FwdPwr,          "Forward Power", $(P)_inw{1:02d},     {2:2d},     0.0,    1.0,    1,     "",     "",     "",     "", NO_ALARM, NO_ALARM, NO_ALARM, NO_ALARM,      "", "I/O Intr"}}'
str_pref = '{{     M{0:02d}_RefPwr,        "Reflected Power", $(P)_inw{1:02d},     {2:2d},     0.0,    1.0,    1,     "",     "",     "",     "", NO_ALARM, NO_ALARM, NO_ALARM, NO_ALARM,      "", "I/O Intr"}}'
str_d1dc = '{{  M{0:02d}_Dev1Drn_I, "Device 1 Drain Current", $(P)_inw{1:02d},     {2:2d},     0.0, 0.0162,    1,     "",     "",   48.0,   50.0, NO_ALARM, NO_ALARM,    MINOR,    MAJOR,     "A", "I/O Intr"}}'
str_d2dc = '{{  M{0:02d}_Dev2Drn_I, "Device 1 Drain Current", $(P)_inw{1:02d},     {2:2d},     0.0, 0.0162,    1,     "",     "",   48.0,   50.0, NO_ALARM, NO_ALARM,    MINOR,    MAJOR,     "A", "I/O Intr"}}'
str_ps1c = '{{      M{0:02d}_PS1_I,  "PS1 DC Output Current", $(P)_inw{1:02d},     {2:2d},     0.0, 0.0162,    1,     "",     "",   42.0,   44.0, NO_ALARM, NO_ALARM,    MINOR,    MAJOR,     "A", "I/O Intr"}}'
str_ps2c = '{{      M{0:02d}_PS2_I,  "PS2 DC Output Current", $(P)_inw{1:02d},     {2:2d},     0.0, 0.0162,    1,     "",     "",   42.0,   44.0, NO_ALARM, NO_ALARM,    MINOR,    MAJOR,     "A", "I/O Intr"}}'
str_ps3c = '{{      M{0:02d}_PS3_I,  "PS3 DC Output Current", $(P)_inw{1:02d},     {2:2d},     0.0, 0.0162,    1,     "",     "",   42.0,   44.0, NO_ALARM, NO_ALARM,    MINOR,    MAJOR,     "A", "I/O Intr"}}'
str_drnv = '{{      M{0:02d}_Drn_V,          "Drain Voltage", $(P)_inw{1:02d},     {2:2d},     0.0, 0.0172,    1,     "",   15.0,   48.0,   50.0, NO_ALARM,    MINOR,    MINOR,    MAJOR,   "VDC", "I/O Intr"}}'
str_ps1v = '{{      M{0:02d}_PS1_V,  "PS1 DC Output Voltage", $(P)_inw{1:02d},     {2:2d},     0.0, 0.0172,    1,     "",   15.0,   48.0,   50.0, NO_ALARM,    MINOR,    MINOR,    MAJOR,   "VDC", "I/O Intr"}}'
str_ps2v = '{{      M{0:02d}_PS2_V,  "PS2 DC Output Voltage", $(P)_inw{1:02d},     {2:2d},     0.0, 0.0172,    1,     "",   15.0,   48.0,   50.0, NO_ALARM,    MINOR,    MINOR,    MAJOR,   "VDC", "I/O Intr"}}'
str_ps3v = '{{      M{0:02d}_PS3_V,  "PS3 DC Output Voltage", $(P)_inw{1:02d},     {2:2d},     0.0, 0.0172,    1,     "",   15.0,   48.0,   50.0, NO_ALARM,    MINOR,    MINOR,    MAJOR,   "VDC", "I/O Intr"}}'
str_lcwt = '{{  M{0:02d}_LCWHSTemp,     "LCW Heat Sink Temp", $(P)_inw{1:02d},     {2:2d}, -39.235, 0.0392,    1,     "",     "",   50.0,   52.0, NO_ALARM, NO_ALARM,    MINOR,    MAJOR,  "degC", "I/O Intr"}}'
str_airt = '{{    M{0:02d}_AirTemp,        "Module Air Temp", $(P)_inw{1:02d},     {2:2d}, -39.235, 0.0392,    1,     "",     "",   48.0,   50.0, NO_ALARM, NO_ALARM,    MINOR,    MAJOR,  "degC", "I/O Intr"}}'
str_tfs1 = '{{  M{0:02d}_TxFanSpd1,  "Transformer Fan Spd 1", $(P)_inw{1:02d},     {2:2d},     0.0,    4.0,    1,     "",   6080,     "",     "", NO_ALARM,    MINOR, NO_ALARM, NO_ALARM,   "rpm", "I/O Intr"}}'
str_tfs2 = '{{  M{0:02d}_TxFanSpd2,  "Transformer Fan Spd 2", $(P)_inw{1:02d},     {2:2d},     0.0,    4.0,    1,     "",   6080,     "",     "", NO_ALARM,    MINOR, NO_ALARM, NO_ALARM,   "rpm", "I/O Intr"}}'
str_fans = '{{     M{0:02d}_FanSpd,       "Module Fan Speed", $(P)_inw{1:02d},     {2:2d},     0.0,    4.0,    1,     "",   5304,     "",     "", NO_ALARM,    MINOR, NO_ALARM, NO_ALARM,   "rpm", "I/O Intr"}}'
str_fpga = '{{    M{0:02d}_FPGAVer,           "FPGA Version", $(P)_inw{1:02d},     {2:2d},   -11.8,    0.1,    1,     "",     "",     "",     "", NO_ALARM, NO_ALARM, NO_ALARM, NO_ALARM,      "", "I/O Intr"}}'

def wrloop(f, str, nmods, nregs, start):
    for i in range(nmods):
        regnum = i*nregs + start
        if regnum % 100 == 0:
            j = regnum/100
        else:
            j = (regnum - 1)/100
        regnum %= 100
        f.write(str.format(i, j, regnum))
        f.write('\n')

def write_bi(f):
    f.write('file "bi_word_custom.template" {')
    f.write('\n')
    f.write('pattern')
    f.write('\n')
    f.write('{              R,                     DESC,       PORT, OFFSET,   MASK,         ZNAM,       ONAM,      ZSV,      OSV,       SCAN}')
    f.write('\n')
    wrloop(f, str_cb, NMODS, NREGS, 319)
    wrloop(f, str_pwr, NMODS, NREGS, 328)
    f.write('}\n\n')

def write_li(f):
    f.write('file "longin_custom.template" {')
    f.write('\n')
    f.write('pattern')
    f.write('\n')
    f.write('{              R,                     DESC,       PORT, OFFSET,   LOLO,    LOW,   HIGH,   HIHI,     LLSV,      LSV,      HSV,     HHSV,   EGU,       SCAN}')
    f.write('\n')
    wrloop(f, str_hiad, NMODS, NREGS, 308)
    wrloop(f, str_load, NMODS, NREGS, 318)
    wrloop(f, str_io1i, NMODS, NREGS, 322)
    wrloop(f, str_io1w, NMODS, NREGS, 325)
    wrloop(f, str_io2w, NMODS, NREGS, 326)
    f.write('}\n\n')

def write_ai(f):
    f.write('file "ai_slope.template" {')
    f.write('\n')
    f.write('pattern')
    f.write('\n')
    f.write('{              R,                     DESC,       PORT, OFFSET,    AOFF,   ASLO, PREC,   LOLO,    LOW,   HIGH,   HIHI,     LLSV,      LSV,      HSV,     HHSV,     EGU,       SCAN}')
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
    wrloop(f, str_fpga, NMODS, NREGS, 348)
    f.write('}\n\n')

def write_alarm_sums(f):
    f.write('file "ssa_RK_CA186_moduleAlarms.template" {')
    f.write('\n')
    f.write('pattern')
    f.write('\n')
    f.write('{MOD}')
    f.write('\n')
    for i in range(NMODS):
        f.write('{{M{0:02d}}}'.format(i))
        f.write('\n')
    f.write('}\n\n')
    
def write_subs_file(filename):
    with open(filename, 'w') as f:
        f.write('#--- ssa_RK_CA186_modules.substitutions: Subs file for R&K CA186 SSA modules 00-{0} -----------------------------------'.format(NMODS-1))
        f.write('\n')
        f.write('#--- This file was generated by ssa_modules.py -----------------------------------'.format(NMODS-1))
        f.write('\n')
        f.write('\n')
        # bi
        write_bi(f)
        # longin
        write_li(f)
        #ai
        write_ai(f)
        write_alarm_sums(f)
        f.write('#----------------------------------------------------------')
        f.write('\n')

if __name__ == '__main__':
    parser = argparse.ArgumentParser()
    parser.add_argument("-o", default='ssa_RK_CA186_modules.substitutions', dest='output_file',
            metavar='OUTPUT_FILE', action='store', help="Output filename")
    args = parser.parse_args()
    write_subs_file(args.output_file)




#!/bin/sh
mpirun --use-hwthread-cpus ekcal
perl band.pl nfenergy.data bandkpt_fcc_xglux.in -erange=-13,5 -with_fermi -color
evince band_structure.eps



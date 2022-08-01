#!/bin/sh
mpirun --use-hwthread-cpus ekcal
perl dos.pl dos.data -erange=-13,5 -with_fermi -color
evince density_of_states.eps



#!/bin/sh
nvol=20
ivol=990
dvol=15
rm -f nfefn.data
for v in `seq 1 $nvol`;do
vol=$( echo \($v-1\)*$dvol+$ivol | bc -l )
cd vol$vol
mpirun --use-hwthread-cpus phase < /dev/null
echo -n $vol >> ../nfefn.data; tail -1 nfefn.data >> ../nfefn.data
cd ../
awk '{print $1,$4}' nfefn.data > volume_energy.data 
done


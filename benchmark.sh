#!/bin/bash

command="sysbench cpu --cpu-max-prime=100000 --max-time=10 run | grep total | awk '{print \$NF}' | sed -e 's/s//g' | tr '\n' ','; echo"
count="10"

echo "Benchmark command: $command"
echo "Running $count iterations."

echo "time(s),events"
oc rsh -t dc/cpustress /bin/sh -c "for i in \$(seq $count); do $command; done"
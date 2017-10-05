#!/bin/bash

command="openssl speed rsa4096"
count="10"

echo "Benchmark command: $command"
echo "Running $count iterations."

echo "sign/s,verify/s"
oc rsh -t dc/cpustress /bin/sh -c "for i in \$(seq $count); do $command 2>&1 | tail -n1 | awk '{printf \"%s,%s\\n\", \$6, \$7}'; done"
#!/bin/bash

PARAMETERS=""
if ! [[ -z $1 ]]; then
    PARAMETERS="$PARAMETERS -p cpulimit=$1"
fi

if ! [[ -z $2 ]]; then
    PARAMETERS="$PARAMETERS -p cpurequest=$2"
fi

oc process -f cpustress.yml $PARAMETERS | oc create -f -
oc logs -f dc/cpustress
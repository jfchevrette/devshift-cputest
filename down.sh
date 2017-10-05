#!/bin/bash

oc process -f cpustress.yml | oc delete -f -
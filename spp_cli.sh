#!/bin/bash

. env.sh

set -x

python3 $SPP_DIR/src/spp.py -b $SPP_HOST_IP

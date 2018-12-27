#!/bin/bash

. env.sh

set -x

python3 $SPP_DIR/src/spp-ctl/spp-ctl -b $SPP_HOST_IP

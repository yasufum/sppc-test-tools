#!/bin/bash

. env.sh

set -x

$SPP_DIR/tools/sppc/app/l2fwd.py -l $L2_CORE_LIST -d $L2_DEVS -p 0x03 -fg --dist-ver 16.04

#!/bin/bash

. env.sh

set -x

$SPP_DIR/tools/sppc/app/testpmd.py -l $TP_CORE_LIST -d $TP_DEVS -fg -i --dist-ver 16.04

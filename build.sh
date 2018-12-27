#!/bin/bash

. env.sh

set -x

$SPP_DIR/tools/sppc/build/main.py --dist-ver 16.04 -t dpdk --dpdk-branch 18.08 -ci hogehoge

#!/bin/bash

. env.sh

set -x

LOGLEVEL=8

sudo $SPP_DIR/src/l3fwd/x86_64-native-linuxapp-gcc/l3fwd \
	-n 7 \
	-l $L3_CORE_LIST \
	--socket-mem $SEC1_MEM \
	--proc-type secondary \
    --log-level $LOGLEVEL \
    -- \
    --config "(0,0,12),(1,0,13)" \
    --parse-ptype ipv4

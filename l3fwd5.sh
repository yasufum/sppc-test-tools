#!/bin/bash

. env.sh

set -x

LOGLEVEL=8

sudo $SPP_DIR/src/l3fwd/x86_64-native-linuxapp-gcc/spp_l3fwd \
	     -n 4 \
	     -l $L3_CORE_LIST \
	     --socket-mem $SEC1_MEM \
	     --proc-type secondary \
	     --log-level $LOGLEVEL \
	     -- \
	     -n 5 \
	     -s $SPP_HOST_IP:6666 \
	     --config "(0,0,12),(1,0,13)" \
	     --parse-ptype ipv4

#!/bin/bash

. env.sh
set -x

sudo rm -f $SEC1_SOCKS

LOGLEVEL=8

sudo $SPP_DIR/src/nfv/x86_64-native-linuxapp-gcc/spp_nfv \
	-n 4 \
	-l $SEC1_CORE_LIST  \
	--socket-mem $SEC1_MEM \
	--proc-type secondary \
    --log-level $LOGLEVEL \
	-- \
	-n 1 \
	-s $SPP_HOST_IP:6666

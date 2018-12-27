#!/bin/bash

. env.sh
set -x

sudo rm -f $SEC2_SOCKS

sudo $SPP_DIR/src/nfv/x86_64-native-linuxapp-gcc/spp_nfv \
	-n 4 \
	-l $SEC2_CORE_LIST \
	--socket-mem $SEC2_MEM \
	--proc-type secondary \
	-- \
	-n 2 \
	-s $SPP_HOST_IP:6666

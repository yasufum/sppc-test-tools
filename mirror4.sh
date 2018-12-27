#!/bin/bash

. env.sh
set -x

sudo $SPP_DIR/src/mirror/x86_64-native-linuxapp-gcc/spp_mirror \
	-n 4 \
	-l $MIRROR4_CORE_LIST \
	-m $MIRROR4_MEM \
	--proc-type secondary \
	-- \
	--client-id 4 \
    --vhost-client \
	-s $SPP_HOST_IP:6666

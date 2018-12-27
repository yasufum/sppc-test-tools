#!/bin/bash

. env.sh
set -x

LOGLEVEL=8

sudo $SPP_DIR/src/vf/x86_64-native-linuxapp-gcc/spp_vf \
	-n 4 \
	-l $VF3_CORE_LIST \
	-m 1024 $VF3_MEM \
	--proc-type secondary \
    --log-level $LOGLEVEL \
	-- \
	--client-id 3 \
    --vhost-client \
	-s $SPP_HOST_IP:6666

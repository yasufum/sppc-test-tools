#!/bin/bash

set -x

sudo $RTE_SDK/examples/l3fwd/x86_64-native-linuxapp-gcc/l3fwd \
 -l 8-9 \
 -n 4 \
 -m 1024 \
 --proc-type auto \
 --vdev virtio_user2,queues=2,path=/tmp/sock2 \
 --vdev virtio_user3,queues=2,path=/tmp/sock3 \
 --file-prefix spp-l3fwd-container5 \
 -- \
 -p 0x03 \
 --config "(0,0,8),(1,0,9)" \
 --parse-ptype ipv4

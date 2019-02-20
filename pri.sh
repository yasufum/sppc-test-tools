#!/bin/bash

set -x
. env.sh

sudo rm -f $PRI_SOCK11
sudo rm -f $PRI_SOCK12

# clean /tmp/sock*
sudo rm -f /tmp/sock*

LOGLEVEL=8
PRI_LOG=spp_primary.log

sudo $SPP_DIR/src/primary/x86_64-native-linuxapp-gcc/spp_primary \
    -l $PRI_CORE_LIST \
    -n 4 \
    --socket-mem $PRI_MEM \
    --huge-dir /dev/hugepages \
    --proc-type primary \
    --vdev eth_vhost11,iface=$PRI_SOCK11 \
    --vdev eth_vhost12,iface=$PRI_SOCK12 \
    --base-virtaddr 0x100000000 \
    --log-level $LOGLEVEL \
    -- \
    -p 0x03 \
    -n 10 \
    -s $SPP_HOST_IP:5555
    > ${SPP_DIR}/log/${PRI_LOG} 2>&1 &

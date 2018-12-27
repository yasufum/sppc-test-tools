SPP_DIR=$HOME/tmp/spp-l3fwd
#SPP_DIR=$HOME/tmp/spp-multi-node
#SPP_DIR=$HOME/tmp/spp-vf-nowait
SPP_HOST_IP=192.168.11.59

# pri.sh
PRI_CORE_LIST=0
PRI_MEM=1024,0
PRI_SOCK11=/tmp/sock11
PRI_SOCK12=/tmp/sock12

# sec1.sh
SEC1_CORE_LIST=1,2
SEC1_MEM=1024,0
SEC1_SOCKS="/tmp/sock1 /tmp/sock2"

# sec2.sh
SEC2_CORE_LIST=1,3
SEC2_MEM=1024,0
SEC2_SOCKS="/tmp/sock3 /tmp/sock4"

# vf3.sh
VF3_CORE_LIST=1,4-6
VF3_MEM=1024,0

# mirror4.sh
MIRROR4_CORE_LIST=7,8
MIRROR4_MEM=1024,0

# testpmd.sh
TP_CORE_LIST=9-11
TP_DEVS=2,3

# l3fwd.sh
L3_CORE_LIST=12,13

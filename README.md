# SPP Container Test Tool

## How to use

This is a set of scripts for configuring usecase of SPP container with
DPDK v18.08 and SPP v18.08.

http://doc.dpdk.org/spp/tools/sppc/usecases.html#pktgen-and-l2fwd-using-less-lcores

Though pktgen is not working in currently version, it uses testpmd instead of pktgen.
The number of ID of vhost is also changed because it is failed to add
vhost:1 if vhost:0 is already used in primary.
Each of IDs of vhost is incremented, so vhost:1 in the diagram is vhost:2 actually and so on.


### 1. Configuration

Edit `env.sh` for your environment. This config is referred from other
scripts while launching.

Make sure core list `-l` and memory `--socket-mem` are appropriate.
Each of cores is not overlapped from others.


### 2. Launch SPP

Launch SPP processes in each of terminals.
There are no need to give options because all of params are defined in `env.sh`.

* spp-ctl.sh in term1
* spp_cli.sh in term2
* pri.sh in term3
* sec1.sh in term4
* sec2.sh in term5


### 3. Load network configuration

Load config file `testpmd-l2fwd.rcp` with playback command to add ports
and patch them.
Forwarding is started at the end of config file.

```
# term2
spp > playback testpmd-l2fwd.rcp
```


### 4. Launch app containers

* testpmd.sh in term6
* l2fwd.sh in term7


### 5. Start services

Start forwarding in testpmd in term6.

```
# term6
testpmd> start tx_first
```

You will find the port statistics in l2fwd in term7 is increased.

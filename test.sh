#!/bin/bash

#cat /etc/JARVICE/nodes >/data/data/test/$(hostname)
for i in `cat /etc/JARVICE/nodes`; do
    ssh -n -f $i "touch /data/data/test/$(hostname)"
done


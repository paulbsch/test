#!/bin/bash

#sudo service sshd start 2>/dev/null
#cat /etc/JARVICE/nodes >/data/data/test/$(hostname)
for i in `cat /etc/JARVICE/nodes`; do
    echo $i
    ssh -n -f $i "/usr/bin/hostname >/data/data/test/$i"
done


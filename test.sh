#!/bin/bash

#sudo service sshd start 2>/dev/null
#cat /etc/JARVICE/nodes >/data/data/test/$(hostname)
#for i in `cat /etc/JARVICE/nodes`; do
for i in `tail -n +2 /etc/JARVICE/nodes`; do
    echo $i
    #ssh -n -f $i "/bin/hostname >/data/data/test/$i"
    ssh $i "/bin/hostname >/data/data/test/$i"
done

#sleep 5


#!/bin/bash
limit=90 #90 for %90
disk=$(df -h / | tail -1 | awk '{ print $5//%/}')
echo "/ Partition disk doluluğu $disk"
if  [ "$disk" -gt "$limit" ]
then
    echo "## / alanı % $disk doluluk oranına ulaşmıştır" > /tmp/Diskfull.log
    mail -s "Disk alanı % $disk oranına ulaştı" adalkilic@ku.edu.tr < /tmp/Diskfull.log
fi
exit

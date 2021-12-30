#!/bin/bash
limit=10 #90 for %90
disk=$(df -h / | tail -1 | awk '{ print $5//%/}')
echo "/ Partition disk dolulugu $disk"
if  [ "$disk" -gt "$limit" ]
then
    /usr/bin/echo "## / alanı % $disk doluluk oranına ulasmistir" > /tmp/Diskfull.log
    /usr/bin/mail -s "Disk alanı % $disk oranına ulasmistir" adalkilic@ku.edu.tr < /tmp/Diskfull.log
fi
exit

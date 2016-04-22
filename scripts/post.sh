#!/bin/sh

PATH=/usr/local/sbin:/bin:/usr/bin:/sbin:/usr/sbin:/usr/local/bin

killall -q rsync

# start supervising!
ln -s /etc/service/rsync /service/rsync

#########################################################################
###
### NOTE: This package (and supervisentpd/supervisessh) have been added
### to the base package - if you try and let this package install during
### jumpstart it will hang for reasons unbeknownst to *EVEN* dmuino!!!  So
### if you clone this package for other software, add it to the base image.
###
#########################################################################

# Run only if not jumpstarting
if [ "`uptime | grep min`" = "" ]; then 
	echo 'Starting up rsync ...'
	/usr/local/bin/svc -u /service/rsync
fi

#!/bin/sh

if [ $1 = 0 ] ; then
    /usr/local/bin/svc -dx /service/rsync
    rm -f /service/rsync
fi


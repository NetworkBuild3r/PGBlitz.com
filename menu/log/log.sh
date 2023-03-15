#!/bin/bash
#
dt=$(date '+%d/%m/%Y %H:%M:%S')
log=$(cat /var/plexguide/logs/pg.log)
echo "$dt $log" >>"/var/plexguide/logs/pg.log"

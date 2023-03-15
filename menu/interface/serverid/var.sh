#!/bin/bash
#
echo 2 >/var/plexguide/menu.number

file="/var/plexguide/server.id"
if [ ! -e "$file" ]; then
  echo NOT-SET >/var/plexguide/server.id
fi

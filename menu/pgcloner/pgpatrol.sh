#!/bin/bash
#

### FILL OUT THIS AREA ###
echo 'pgpatrol' >/var/plexguide/pgcloner.rolename
echo 'PGPatrol' >/var/plexguide/pgcloner.roleproper
echo 'PGPatrol' >/var/plexguide/pgcloner.projectname
echo 'v8.6' >/var/plexguide/pgcloner.projectversion

#━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
echo "💬 PG Patrol can boot idle plex users, users utilizing multiple
ips (sharing the server), and much more!" >/var/plexguide/pgcloner.info
#━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

### START PROCESS
bash /opt/plexguide/menu/pgcloner/corev2/main.sh

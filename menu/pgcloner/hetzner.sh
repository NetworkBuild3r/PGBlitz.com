#!/bin/bash
#

### FILL OUT THIS AREA ###
echo 'hetzner' >/var/plexguide/pgcloner.rolename
echo 'HCloud (Hetzner)' >/var/plexguide/pgcloner.roleproper
echo 'Hetzner' >/var/plexguide/pgcloner.projectname
echo 'v8.6' >/var/plexguide/pgcloner.projectversion
echo 'hcloud.sh' >/var/plexguide/pgcloner.startlink

#━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
echo "💬 HCloud in conjuction with PGBlitz enables users to
deploy Hetzner Cloud Instance (VMs) within seconds" >/var/plexguide/pgcloner.info
#━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

### START PROCESS
bash /opt/plexguide/menu/pgcloner/corev2/main.sh

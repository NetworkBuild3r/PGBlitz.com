#!/bin/bash
#

### FILL OUT THIS AREA ###
echo 'pgpress' >/var/plexguide/pgcloner.rolename
echo 'PGPress' >/var/plexguide/pgcloner.roleproper
echo 'PGPress' >/var/plexguide/pgcloner.projectname
echo 'v8.6' >/var/plexguide/pgcloner.projectversion
echo 'pressmain.sh' >/var/plexguide/pgcloner.startlink

#━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
echo "💬 PGPress is a combined group of services that enables the user to
deploy their own wordpress websites; including the use of other multiple
instances!" >/var/plexguide/pgcloner.info
#━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

### START PROCESS
bash /opt/plexguide/menu/pgcloner/corev2/main.sh

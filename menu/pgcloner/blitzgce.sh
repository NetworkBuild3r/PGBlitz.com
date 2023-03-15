#!/bin/bash
#

### FILL OUT THIS AREA ###
echo 'blitzgce' >/var/plexguide/pgcloner.rolename
echo 'BlitzGCE' >/var/plexguide/pgcloner.roleproper
echo 'BlitzGCE' >/var/plexguide/pgcloner.projectname
echo 'v8.6' >/var/plexguide/pgcloner.projectversion
echo 'blitzgce.sh' >/var/plexguide/pgcloner.startlink

#━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
echo "💬 Blitz GCE scripts are setup so that users can deploy any
Google Cloud Edition container to act as as feeder between two to
three months!" >/var/plexguide/pgcloner.info
#━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

### START PROCESS
bash /opt/plexguide/menu/pgcloner/corev2/main.sh

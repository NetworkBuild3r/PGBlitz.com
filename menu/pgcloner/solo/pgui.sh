#!/bin/bash
#

### FILL OUT THIS AREA ###
echo 'pgui' >/var/plexguide/pgcloner.rolename
echo 'UI' >/var/plexguide/pgcloner.roleproper
echo 'BlitzUI' >/var/plexguide/pgcloner.projectname
echo 'v8.6' >/var/plexguide/pgcloner.projectversion

### START PROCESS
ansible-playbook /opt/plexguide/menu/pgcloner/core/primary.yml

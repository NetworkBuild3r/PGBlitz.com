#!/bin/bash
#

# KEY VARIABLE RECALL & EXECUTION
program=$(cat /tmp/program_var)
mkdir -p /var/plexguide/cron/
mkdir -p /opt/appdata/plexguide/cron
# FUNCTIONS START ##############################################################

# BAD INPUT
badinput() {
  echo
  read -p '⛔️ ERROR - BAD INPUT! | PRESS [ENTER] ' typed </dev/tty

}

# FIRST QUESTION
question1() {
  ports=$(cat /var/plexguide/server.ports)
  if [ "$ports" == "127.0.0.1:" ]; then
    guard="CLOSED" && opp="Open"
  else guard="OPEN" && opp="Close"; fi
  tee <<-EOF

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
🤖 Welcome to PortGuard!             📓 Reference: portguard.pgblitz.com
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

Ports Are Currently: [$guard]

1. $opp Ports
Z. Exit

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
EOF

  read -p 'Type a Number | Press [ENTER]: ' typed </dev/tty
  if [ "$typed" == "1" ]; then
    if [ "$guard" == "CLOSED" ]; then
      echo "" >/var/plexguide/server.ports
    else echo "127.0.0.1:" >/var/plexguide/server.ports; fi
    bash /opt/plexguide/menu/portguard/rebuild.sh
  elif [[ "$typed" == "z" || "$typed" == "Z" ]]; then
    exit
  else badinput; fi
}

# FUNCTIONS END ##############################################################

break=off && while [ "$break" == "off" ]; do question1; done

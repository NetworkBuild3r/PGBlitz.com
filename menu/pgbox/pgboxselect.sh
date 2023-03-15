#!/bin/bash
#

mainstart() {
  tee <<-EOF

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
🚀 PG Box Apps Interface Selection       📓 Reference: pgbox.pgblitz.com
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

💬  PG Box installs a series of Core and Community applications!

[1] PG Box: Core
[2] PG Box: Community
[3] PG Box: Removal
[Z] Exit

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
EOF

  # Standby
  read -p 'Type a Number | Press [ENTER]: ' typed </dev/tty

  if [ "$typed" == "1" ]; then
    bash /opt/plexguide/menu/pgbox/pgboxcore.sh
  elif [ "$typed" == "2" ]; then
    bash /opt/plexguide/menu/pgbox/pgboxcommunity.sh
  elif [ "$typed" == "3" ]; then
    bash /opt/plexguide/menu/removal/removal.sh
  elif [ "$typed" == "Z" ] || [ "$typed" == "z" ]; then
    exit
  else
    mainstart
  fi
}

mainstart

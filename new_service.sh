#!/usr/bin/bash

if [[ "${UID}" -eq 0 ]]
then
  echo 'You are root.'
else
  echo 'This script requires root user.'
  exit 1
fi

cd /etc/systemd/system/
subl chfs.service


systemctl daemon-reload
systemctl start chfs
systemctl status chfs.service

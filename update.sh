#!/bin/bash

if [ -d /usr/local/bin/warden ]; then
  clear

  tput setaf 4;
  echo "__        __            _"
  echo "\ \      / /_ _ _ __ __| | ___ _ __"
  echo " \ \ /\ / / _  | __/  _  |/ _ \  _  \\"
  echo "  \ V  V / (_| | | | (_| |  __/ | | |"
  echo "   \_/\_/ \__,_|_|  \__,_|\___|_| |_| updater"
  tput sgr0

  cp assets/*.sh /usr/local/bin/warden/
  chmod 755 /usr/local/bin/warden/*.sh

  echo ""
  echo 'Warden has been updated to the latest version'
  echo 'Existing Warden profiles have been migrated'
  echo ""
fi

if [ ! -d /usr/local/bin/warden ]; then
  echo ""
  echo 'Warden is not installed; there is nothing to update!'
  echo 'To install Warden, run ". install.sh"'
  echo ""
fi

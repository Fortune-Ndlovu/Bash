#!/bin/bash
clear
echo "This is information provided by mysystem.sh. Program starts now."

echo "Hello, $USER"
echo

echo "Today's date is `date`, this is week `date +%V`."
echo

echo "These users are currently connected:"
w | cut -d " " -f 1 - | grep -v USER | sort -u
echo

echo "This is `uname -s` running on a `uname -m` processor."
echo

echo "This is the uptime information:"
uptime
echo

echo "That is all folks!"



# This script is for /etc/rc.d/init.d
# Link in rc3.d/S99audio-greeting and rc0.d/K01audio-greeting

# case "$1" in
# 'start')
#   cat /usr/share/audio/at_your_service.au > /dev/audio
#   ;;
# 'stop')
#   cat /usr/share/audio/oh_no_not_again.au > /dev/audio
#   ;;
# esac
# exit 0
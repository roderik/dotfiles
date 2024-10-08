#!/usr/bin/env zsh

# Close any open System Preferences panes, to prevent them from overriding
# settings we're about to change
osascript -e 'tell application "System Preferences" to quit'

# Ask for the administrator password upfront
sudo -v

# Keep-alive: update existing `sudo` time stamp until `.macos` has finished
while true; do
  sudo -n true
  sleep 60
  kill -0 "$$" || exit
done 2>/dev/null &

# Prompt for inputs, with suggestion
COMPUTER_NAME_DEFAULT="$1"
vared -p "Computer Name [$COMPUTER_NAME_DEFAULT]: " -c COMPUTER_NAME
COMPUTER_NAME="${COMPUTER_NAME:-$COMPUTER_NAME_DEFAULT}"

HOSTNAME_DEFAULT="$1.local"
vared -p "Hostname [$HOSTNAME_DEFAULT]: " -c HOSTNAME
HOSTNAME="${HOSTNAME:-$HOSTNAME_DEFAULT}"

# Set computer name (as done via System Preferences → Sharing)
sudo scutil --set ComputerName $COMPUTER_NAME
sudo scutil --set HostName $HOSTNAME
sudo defaults write /Library/Preferences/SystemConfiguration/com.apple.smb.server NetBIOSName -string $HOSTNAME
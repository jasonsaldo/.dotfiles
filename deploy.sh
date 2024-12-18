#!/bin/bash

#copy wezterm file from wsl to winhome
USERNAME=$(id -un)
if [ "$USERNAME" = "js" ]; then
  USERNAME="jason"
fi
cp .wezterm.lua /mnt/c/Users/$USERNAME/.wezterm.lua

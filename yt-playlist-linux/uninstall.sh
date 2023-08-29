#!/bin/sh

     clear
     echo "yt-playlist uninstaller"
     sleep 0.8
     sudo rm -v /usr/bin/yt-playlist
     rm -v ${HOME}/.config/yt-playlist/input.conf
     echo "${HOME}/.config/yt-playlist/ not removed"
     echo "Your favorites were not deleted."
     echo "Your history playlists were not deleted"
     echo "yt-playlist uninstalled"

exit


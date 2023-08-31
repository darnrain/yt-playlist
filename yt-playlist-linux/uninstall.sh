#!/bin/sh

     echo "yt-playlist-linux uninstaller"
     sleep 0.8
     sudo rm -v /usr/bin/yt-playlist
     yes|rm -R ${HOME}/yt-playlist/
     rm -v ${HOME}/.config/yt-playlist/input.conf
     echo "${HOME}/.config/yt-playlist/ not removed"
     echo "Your favorites were not deleted."
     echo "Your history and playlists were not deleted"
     echo "yt-playlist uninstalled"

exit


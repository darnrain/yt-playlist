#!/bin/sh

     echo "yt-playlist-linux uninstaller"
     sleep 0.8
     sudo rm -v /usr/bin/yt-playlist
     yes|rm -R /tmp/yt-playlist/
     echo "removed '/tmp/yt-playlist/'"
     rm -v ${HOME}/.config/yt-playlist/input.conf
     echo "${HOME}/.config/yt-playlist/ directory was not deleted"
     echo "Your history and favorites were not deleted"
     echo "yt-playlist uninstalled"

exit


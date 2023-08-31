#!/data/data/com.termux/files/usr/bin/bash 

     echo "yt-playlist-termux uninstaller"
     sleep 0.8
     rm -v /data/data/com.termux/files/usr/bin/yt-playlist
     rm -v ${HOME}/.config/yt-playlist/input.conf
     yes|rm -R ${HOME}/yt-playlist/
     echo "~/.config/yt-playlist/ directory was not deleted"
     echo "Your history and favorites were not deleted"
     echo "yt-playlist uninstalled"

exit

#!/data/data/com.termux/files/usr/bin/bash 

     clear
     echo "yt-playlist v1.0 uninstaller"
     sleep 0.8
     rm -v /data/data/com.termux/files/usr/bin/yt-playlist
     rm -v ${HOME}/.config/yt-playlist/input.conf
     echo "~/.config/yt-playlist/ was not removed"
     echo "Your history playlists were not deleted"
     echo "Your favorites were not deleted."
     echo "yt-playlist uninstalled"

exit

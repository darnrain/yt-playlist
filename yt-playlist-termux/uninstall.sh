#!/data/data/com.termux/files/usr/bin/bash 

     if command -v yt-playlist == *yt-playlist >/dev/null
     then
     echo "yt-playlist Termux uninstaller"
     sleep 0.8
     rm -v /data/data/com.termux/files/usr/bin/yt-playlist
     rm -v ${HOME}/.config/yt-playlist/input.conf
     yes|rm -R /data/data/com.termux/files/usr/tmp/yt-playlist/
     echo "removed '/data/data/com.termux/files/usr/tmp/yt-playlist/'"
     echo "Not removed '${HOME}/.config/yt-playlist/'"
     echo "Bookmarks, Music, Favorites and History were not deleted."
     echo "yt-playlist uninstalled"
     exit
     else
     yes|rm -R /data/data/com.termux/files/usr/tmp/yt-playlist/
     echo "removed '/data/data/com.termux/files/usr/tmp/yt-playlist/'"
     echo "Cannot unisntall yt-playlist"
     echo "yt-playlist is not installed"
     exit
     fi

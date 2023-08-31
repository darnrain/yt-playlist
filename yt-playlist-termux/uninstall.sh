#!/data/data/com.termux/files/usr/bin/bash 

     echo "yt-playlist-termux uninstaller"
     sleep 0.8
     rm -v /data/data/com.termux/files/usr/bin/yt-playlist
     rm -v ${HOME}/.config/yt-playlist/input.conf
     yes|rm -R /data/data/com.termux/files/usr/tmp/yt-playlist/
     echo "removed '/data/data/com.termux/files/usr/tmp/yt-playlist/'"
     echo "Not removed '${HOME}/.config/yt-playlist/'"
     echo "Bookmarks, Music, Favorites and History were not deleted."
     echo "yt-playlist uninstalled"

exit

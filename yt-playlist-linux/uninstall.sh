#!/bin/sh

     if command -v yt-playlist == *yt-playlist >/dev/null
     then
     echo "yt-playlist Linux uninstaller"
     sleep 0.8
     sudo rm -v /usr/bin/yt-playlist
     rm -R -v /tmp/yt-playlist.zip     
     rm -v ${HOME}/.config/yt-playlist/input.conf
     echo "Not removed '${HOME}/.config/yt-playlist/'"
     echo "Bookmarks, Music, Favorites and History were not deleted."
     echo "yt-playlist uninstalled."
     exit
     else
     rm -R -v /tmp/yt-playlist.zip     
     echo "Error uninstalling yt-playlist."
     echo "yt-playlist is not installed."
     exit
     fi


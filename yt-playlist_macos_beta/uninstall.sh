#!/bin/sh

     	if command -v yt-playlist == *yt-playlist >/dev/null
     	then
        echo "============================"
     	echo "Linux uninstaller yt-playlist"
        echo "============================"
     	sudo rm -v /usr/local/bin/yt-playlist
     	rm -v ${HOME}/.config/yt-playlist/input.conf
     	echo "Not removed '${HOME}/.config/yt-playlist/'"
     	echo "Bookmarks, Music, Favorites and History were not deleted."
        echo "============================"
     	echo "yt-playlist uninstalled."
        echo "============================"
     	exit
     	else
        echo "============================"
     	echo "Error uninstalling yt-playlist."
     	echo "yt-playlist is not installed."
        echo "============================"
     	exit
     	fi

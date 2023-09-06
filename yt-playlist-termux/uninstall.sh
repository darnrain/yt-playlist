#!/data/data/com.termux/files/usr/bin/bash 

     	if command -v yt-playlist == *yt-playlist >/dev/null
     	then
        echo "==========================="
     	echo "Termux uninstaller yt-playlist"
        echo "==========================="
     	rm -v /data/data/com.termux/files/usr/bin/yt-playlist
     	rm -v ${HOME}/.config/yt-playlist/input.conf
        sed -i '/yt-playlist/d' ${HOME}/.bashrc
     	echo "Not removed '${HOME}/.config/yt-playlist/'"
     	echo "Bookmarks, Music, Favorites and History were not deleted."
        echo "==========================="
     	echo "yt-playlist uninstalled."
        echo "==========================="
     	exit
     	else
        echo "==========================="
     	echo "Error uninstalling yt-playlist."
     	echo "yt-playlist is not installed."
        echo "==========================="
     	exit
	fi

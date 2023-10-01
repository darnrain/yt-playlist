#!/bin/bash

	if [ "$EUID" == "0" ]
	then echo "Please do not run as root."
	exit
	fi
	
	if command -v yt-playlist >/dev/null
	then
	echo "============================"
	echo "Linux uninstaller yt-playlist"
	echo "============================"
	sudo rm -v /usr/bin/yt-playlist
	rm -v ${HOME}/.config/yt-playlist/input.conf
	rm -R -v ${HOME}/.config/yt-playlist/scripts/
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

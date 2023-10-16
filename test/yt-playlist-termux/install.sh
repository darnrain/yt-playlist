#!/data/data/com.termux/files/usr/bin/bash

	if [ "$EUID" == "0" ]
	then echo "Please do not run as root."
	exit
	fi
	externel_argument="$1"
function termux_install_function ()
{
	if [[ "$externel_argument" = "--main" ]]
	then
	cp ${TMPDIR}/yt-playlist/yt-playlist-termux/yt-playlist /data/data/com.termux/files/usr/bin/
	else
	if [[ "$externel_argument" = "--test" ]]
	then
	cp ${TMPDIR}/yt-playlist/test/yt-playlist-termux/yt-playlist /data/data/com.termux/files/usr/bin/
	else
	cp ./yt-playlist /data/data/com.termux/files/usr/bin/
  fi
fi
	client_conf_test=$(cat "/data/data/com.termux/files/usr/etc/pulse/client.conf" | grep "autospawn = yes")
	if [ -n "$client_conf_test" ]
	then
	sed -i'' 's/autospawn = no/; autospawn = no/g' "/data/data/com.termux/files/usr/etc/pulse/client.conf"
	sed -i'' 's/; autospawn = yes/autospawn = no/g' "/data/data/com.termux/files/usr/etc/pulse/client.conf"
	fi
	if [ -d "${HOME}/.config/pulse/" ]
	then
	rm -rf "${HOME}/.config/pulse/"
	fi
	echo "default-sample-format = float32le" > "/data/data/com.termux/files/usr/etc/pulse/daemon.conf"
	echo "default-sample-rate = 44100" >> "/data/data/com.termux/files/usr/etc/pulse/daemon.conf"
	echo "alternate-sample-rate = 48000" >> "/data/data/com.termux/files/usr/etc/pulse/daemon.conf"
	echo "default-sample-channels = 2" >> "/data/data/com.termux/files/usr/etc/pulse/daemon.conf"
	echo "default-channel-map = front-left,front-right" >> "/data/data/com.termux/files/usr/etc/pulse/daemon.conf"
	echo "default-fragments = 2" >> "/data/data/com.termux/files/usr/etc/pulse/daemon.conf"
	echo "default-fragment-size-msec = 125" >> "/data/data/com.termux/files/usr/etc/pulse/daemon.conf"
	echo "resample-method = soxr-vhq" >> "/data/data/com.termux/files/usr/etc/pulse/daemon.conf"
	echo "high-priority = yes" >> "/data/data/com.termux/files/usr/etc/pulse/daemon.conf"
	echo "nice-level = -11" >> "/data/data/com.termux/files/usr/etc/pulse/daemon.conf"
	echo "realtime-scheduling = yes" >> "/data/data/com.termux/files/usr/etc/pulse/daemon.conf"
	echo "realtime-priority = 9" >> "/data/data/com.termux/files/usr/etc/pulse/daemon.conf"
	echo "rlimit-rtprio = 9" >> "/data/data/com.termux/files/usr/etc/pulse/daemon.conf"
	echo "daemonize = yes" >> "/data/data/com.termux/files/usr/etc/pulse/daemon.conf"
	chmod +x /data/data/com.termux/files/usr/bin/yt-playlist
	mkdir -p ${HOME}/.config/yt-playlist/
	mkdir -p ${HOME}/.config/yt-playlist/scripts/
	mkdir -p ${HOME}/.config/yt-playlist/scripts/sponsorblock_shared/
	if ! test -f ${HOME}/.config/yt-playlist/scripts/sponsorblock.lua
	then
	curl --retry 5 --retry-max-time 60 -s https://raw.githubusercontent.com/po5/mpv_sponsorblock/master/sponsorblock.lua -L -o ${HOME}/.config/yt-playlist/scripts/sponsorblock.lua
	curl --retry 5 --retry-max-time 60 -s https://raw.githubusercontent.com/po5/mpv_sponsorblock/master/sponsorblock_shared/main.lua -L -o ${HOME}/.config/yt-playlist/scripts/sponsorblock_shared/main.lua
	curl --retry 5 --retry-max-time 60 -s https://raw.githubusercontent.com/po5/mpv_sponsorblock/master/sponsorblock_shared/sponsorblock.py -L -o ${HOME}/.config/yt-playlist/scripts/sponsorblock_shared/sponsorblock.py
	fi
	touch ${HOME}/.config/yt-playlist/yt-playlist_favorites.txt
	touch ${HOME}/.config/yt-playlist/yt-playlist_history.txt
	touch ${HOME}/.config/yt-playlist/yt-playlist_bookmark.txt
	touch ${HOME}/.config/yt-playlist/yt-playlist_music.txt
	touch ${HOME}/.config/yt-playlist/input.conf
	echo "d run /data/data/com.termux/files/usr/bin/yt-playlist --download_audio yt_playlist_audio" > ${HOME}/.config/yt-playlist/input.conf
	echo "D run /data/data/com.termux/files/usr/bin/yt-playlist --download_video yt_playlist_video" >> ${HOME}/.config/yt-playlist/input.conf
	echo "s run /data/data/com.termux/files/usr/bin/yt-playlist --sleep_time" >> ${HOME}/.config/yt-playlist/input.conf
	echo "b run /data/data/com.termux/files/usr/bin/yt-playlist --bookmark" >> ${HOME}/.config/yt-playlist/input.conf
	echo "f run /data/data/com.termux/files/usr/bin/yt-playlist --favorites" >> ${HOME}/.config/yt-playlist/input.conf
	echo "t run /data/data/com.termux/files/usr/bin/yt-playlist --date_time" >> ${HOME}/.config/yt-playlist/input.conf
	echo "T run /data/data/com.termux/files/usr/bin/yt-playlist --title" >> ${HOME}/.config/yt-playlist/input.conf
	sed -i'' '/yt-playlist/d' ${HOME}/.bashrc
	echo "alias y='yt-playlist'" >> ${HOME}/.bashrc
	sed -i'' '/# volume-keys/s/^#//' /data/data/com.termux/files/home/.termux/termux.properties
	echo 'Please type "exit" to close Termux.'
	echo 'Then type "y" to run yt-playlist'
	echo "============================"
}
	if command -v yt-dlp >/dev/null && command -v mpv >/dev/null && command -v ffmpeg >/dev/null && command -v fzf >/dev/null && command -v mutagen-inspect >/dev/null && command -v socat >/dev/null && command -v fx >/dev/null && command -v wget >/dev/null && command -v curl >/dev/null
	then
	echo "============================"
	echo "Termux installer yt-playlist."
	echo "============================"
	echo "All dependencies were found."
	echo "============================"
	termux_install_function 
	exit
	else
	clear
	echo "============================"
	echo "Termux installer yt-playlist."
	echo "============================"
	echo "Not all dependencies were found."
	echo "============================"
	echo "Installing missing dependencies."
	echo "In ten seconds."
	echo "ctrl-c to cancel"
	echo "============================"
	sleep 10
	yes|pkg update
	yes|pkg upgrade
	yes|pkg install curl
	yes|pkg install fzf
	yes|pkg install mpv
	yes|pkg install ffmpeg
	yes|pkg install socat
	yes|pkg install fx
	yes|pkg install wget
	yes|pkg install python-pip
	yes|pip install yt-dlp
	yes|pip install mutagen
	sed -i'' '/yt-playlist/d' ${HOME}/.bashrc
	echo "alias y='yt-playlist'" >> ${HOME}/.bashrc
	sed -i'' '/# volume-keys/s/^#//' /data/data/com.termux/files/home/.termux/termux.properties
	clear
	echo "============================"
	echo "All dependencies are installed."
	echo "============================"
	termux_install_function 
	exit
	fi

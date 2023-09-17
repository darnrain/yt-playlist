#!/data/data/com.termux/files/usr/bin/bash

        if ! pgrep yt-playlist >/dev/null
        then
        if ! pgrep mpv >/dev/null
        then
        if command -v yt-dlp >/dev/null && command -v mpv >/dev/null && command -v ffmpeg >/dev/null && command -v fzf >/dev/null && command -v mutagen-inspect >/dev/null && command -v socat >/dev/null && command -v fx >/dev/null && command -v wget >/dev/null
        then
        echo "============================"
        echo "Termux installer yt-playlist."
        echo "============================"
        echo "All dependencies were found."
        echo "============================"
        cp /data/data/com.termux/files/usr/tmp/yt-playlist/yt-playlist-termux/yt-playlist /data/data/com.termux/files/usr/bin/
        chmod +x /data/data/com.termux/files/usr/bin/yt-playlist
        mkdir -p ${HOME}/.config/yt-playlist/
        touch ${HOME}/.config/yt-playlist/yt-playlist_favorites.txt
        touch ${HOME}/.config/yt-playlist/yt-playlist_search_history.txt
        touch ${HOME}/.config/yt-playlist/yt-playlist_bookmark.txt
        touch ${HOME}/.config/yt-playlist/yt-playlist_music.txt
        touch ${HOME}/.config/yt-playlist/input.conf
        echo "d run /data/data/com.termux/files/usr/bin/yt-playlist --download_audio" > ${HOME}/.config/yt-playlist/input.conf
        echo "D run /data/data/com.termux/files/usr/bin/yt-playlist --download_video" >> ${HOME}/.config/yt-playlist/input.conf
        echo "s run /data/data/com.termux/files/usr/bin/yt-playlist --sleep_time" >> ${HOME}/.config/yt-playlist/input.conf
        echo "b run /data/data/com.termux/files/usr/bin/yt-playlist --bookmark" >> ${HOME}/.config/yt-playlist/input.conf
        echo "f run /data/data/com.termux/files/usr/bin/yt-playlist --favorites" >> ${HOME}/.config/yt-playlist/input.conf
        echo "t run /data/data/com.termux/files/usr/bin/yt-playlist --date_time" >> ${HOME}/.config/yt-playlist/input.conf
        echo "T run /data/data/com.termux/files/usr/bin/yt-playlist --title" >> ${HOME}/.config/yt-playlist/input.conf
        sed -i '/yt-playlist/d' ${HOME}/.bashrc
        echo "alias y='yt-playlist'" >> ${HOME}/.bashrc
        sed -i '/# volume-keys/s/^#//' /data/data/com.termux/files/home/.termux/termux.properties
        echo 'Please type "exit" to close Termux.'
        echo 'Then type "y" to run yt-playlist'
        echo "============================"
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
        yes|pkg install fzf
        yes|pkg install mpv
        yes|pkg install ffmpeg
        yes|pkg install socat
        yes|pkg install fx
        yes|pkg install wget
        yes|pkg install python-pip
        yes|pip install yt-dlp
        yes|pip install mutagen
        sed -i '/yt-playlist/d' ${HOME}/.bashrc
        echo "alias y='yt-playlist'" >> ${HOME}/.bashrc
        sed -i '/# volume-keys/s/^#//' /data/data/com.termux/files/home/.termux/termux.properties
        clear
        echo "============================"
        echo "All dependencies are installed."
        echo "============================"
        cp /data/data/com.termux/files/usr/tmp/yt-playlist/yt-playlist-termux/yt-playlist /data/data/com.termux/files/usr/bin/
        chmod +x /data/data/com.termux/files/usr/bin/yt-playlist
        mkdir -p ${HOME}/.config/yt-playlist/
        touch ${HOME}/.config/yt-playlist/yt-playlist_favorites.txt
        touch ${HOME}/.config/yt-playlist/yt-playlist_search_history.txt
        touch ${HOME}/.config/yt-playlist/yt-playlist_bookmark.txt
        touch ${HOME}/.config/yt-playlist/yt-playlist_music.txt
        touch ${HOME}/.config/yt-playlist/input.conf
        echo "d run /data/data/com.termux/files/usr/bin/yt-playlist --download_audio" > ${HOME}/.config/yt-playlist/input.conf
        echo "D run /data/data/com.termux/files/usr/bin/yt-playlist --download_video" >> ${HOME}/.config/yt-playlist/input.conf
        echo "s run /data/data/com.termux/files/usr/bin/yt-playlist --sleep_time" >> ${HOME}/.config/yt-playlist/input.conf
        echo "b run /data/data/com.termux/files/usr/bin/yt-playlist --bookmark" >> ${HOME}/.config/yt-playlist/input.conf
        echo "f run /data/data/com.termux/files/usr/bin/yt-playlist --favorites" >> ${HOME}/.config/yt-playlist/input.conf
        echo "t run /data/data/com.termux/files/usr/bin/yt-playlist --date_time" >> ${HOME}/.config/yt-playlist/input.conf
        echo 'Please type "exit" to close Termux.'
        echo 'Then type "y" to run yt-playlist'
        echo "============================"
        exit
        fi
        else
        echo "Please close mpv before installing."
        fi
        else
        echo "Please close yt-playlist before installing."
        fi


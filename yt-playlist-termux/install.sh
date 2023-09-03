#!/data/data/com.termux/files/usr/bin/bash

        
        if command -v fzf == *fzf >/dev/null && command -v mpv == *mpv >/dev/null && command -v yt-dlp == *yt-dlp >/dev/null && command -v socat == *socat >/dev/null
        then
        pkill yt-playlist
        pkill mpv
        echo "yt-playlist Termux installer."
        echo "All dependencies were found."
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
        echo 'Type "yt-playlist" to run program.'
        exit
        else
        clear
        echo "Not all dependencies were found."
        echo "Installing missing dependencies."
        echo "In ten seconds."
        echo "ctrl-c to cancel"
        sleep 10
        yes|pkg update
        yes|pkg upgrade
        yes|pkg install fzf
        yes|pkg install mpv
        yes|pkg install socat
        yes|pkg install fx
        yes|pkg install wget
        yes|pkg install python-pip
        yes|pip install yt-dlp
        yes|pip install mutagen
        echo "alias y='yt-playlist'" >> ${HOME}/.bashrc; source ${HOME}/.bashrc
        clear
        pkill yt-playlist
        pkill mpv
        echo "yt-playlist Termux installer."
        echo "All dependencies were found."
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
        echo 'Type "y" or "yt-playlist" to run program.'
        exit
        fi

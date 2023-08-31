#!/bin/sh

        if command -v fzf == *fzf >/dev/null && command -v mpv == *mpv >/dev/null && command -v yt-dlp == *yt-dlp >/dev/null && command -v socat == *socat >/dev/null && command -v awk == *awk >/dev/null && command -v sed == *sed >/dev/null && command -v tr == *tr >/dev/null && command -v bash == *bash >/dev/null
        then
        pkill yt-playlist
        pkill mpv
        echo "yt-playlist Linux installer."
        echo "All dependencies were found." 
        sleep 0.8
        sudo cp /tmp/yt-playlist/yt-playlist-linux/yt-playlist /usr/bin/
        sudo chmod +x /usr/bin/yt-playlist
        mkdir -p ${HOME}/.config/yt-playlist/
        touch ${HOME}/.config/yt-playlist/yt-playlist_favorites.txt
        touch ${HOME}/.config/yt-playlist/yt-playlist_search_history.txt
        touch ${HOME}/.config/yt-playlist/yt-playlist_bookmark.txt
        touch ${HOME}/.config/yt-playlist/yt-playlist_music.txt
        touch ${HOME}/.config/yt-playlist/input.conf
        echo "d run /usr/bin/yt-playlist --download_audio" > ${HOME}/.config/yt-playlist/input.conf
        echo "D run /usr/bin/yt-playlist --download_video" >> ${HOME}/.config/yt-playlist/input.conf
        echo "s run /usr/bin/yt-playlist --sleep_time" >> ${HOME}/.config/yt-playlist/input.conf
        echo "b run /usr/bin/yt-playlist --bookmark" >> ${HOME}/.config/yt-playlist/input.conf
        echo "f run /usr/bin/yt-playlist --favorites" >> ${HOME}/.config/yt-playlist/input.conf
        yes|rm -R /tmp/yt-playlist/
        echo "removed '/tmp/yt-playlist/'"
        echo 'Type "yt-playlist" to run program.'
        exit
        else
        clear
        echo "Not all dependencies were found."
        echo "yt-playlist Linux dependencies are"
        echo "fzf,mpv,yt-dlp,socat,awk,sed,tr,bash"
        echo "yt-dlp version 2023.07.06 or higher."
        echo ""
        command -V fzf
        command -V mpv
        command -V yt-dlp
        command -V socat
        command -V awk
        command -V sed
        command -V tr
        command -V bash
        echo "Please install the missing dependencies and install again."
        yes|rm -R /tmp/yt-playlist/
        echo "removed '/tmp/yt-playlist/'"
        exit
        fi


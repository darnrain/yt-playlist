#!/data/data/com.termux/files/usr/bin/bash

        
        if command -v fzf == *fzf && command -v mpv == *mpv && command -v yt-dlp == *yt-dlp && command -v socat == *socat && command -v awk == *awk && command -v sed == *sed && command -v tr == *tr && command -v bash == *bash
        then
        clear
        pkill yt-playlist
        pkill mpv
        echo "yt-playlist installer"
        echo "all dependencies were met"
        cp ${HOME}/yt-playlist-termux/yt-playlist /data/data/com.termux/files/usr/bin/
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
        echo 'Type "yt-playlist" to run program.'
        exit
        else
        clear
        echo "Not all dependencies were met."
        echo "yt-playlist dependencies are"
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
        exit
        fi


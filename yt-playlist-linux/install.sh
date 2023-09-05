#!/bin/sh

        if command -v yt-dlp >/dev/null && command -v mpv >/dev/null && command -v ffmpeg >/dev/null && command -v fzf >/dev/null && command -v mutagen-inspect >/dev/null && command -v socat >/dev/null && command -v awk >/dev/null && command -v sed >/dev/null && command -v tr >/dev/null && command -v bash >/dev/null
        then
        pkill yt-playlist
        pkill mpv
        echo "yt-playlist Linux installer."
        echo "All dependencies were found."
        echo ""
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
        echo "t run /usr/bin/yt-playlist --date_time" >> ${HOME}/.config/yt-playlist/input.conf
        echo 'Type "yt-playlist" to run program.'
        exit
        else
        clear
        echo "Not all dependencies were found."
        echo "yt-playlist Linux dependencies are"
        echo "yt-dlp,mpv,ffmpeg,fzf,mutagen-inspect,socat,awk,sed,tr,bash"
        echo "Note: mutagen-inspect = mutagen."
        echo ""
        command -V yt-dlp
        command -V mpv
        command -V ffmpeg
        command -V fzf
        command -V mutagen-inspect
        command -V socat
        command -V awk
        command -V sed
        command -V tr
        command -V bash
        echo ""
        echo "Please install the missing dependencies and run install again."
        exit
        fi

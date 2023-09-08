#!/bin/sh

        if command -v yt-dlp >/dev/null && command -v mpv >/dev/null && command -v ffmpeg >/dev/null && command -v fzf >/dev/null && command -v mutagen-inspect >/dev/null && command -v socat >/dev/null && command -v awk >/dev/null && command -v sed >/dev/null && command -v tr >/dev/null && command -v bash >/dev/null
        then
        pkill yt-playlist
        pkill mpv
        echo "============================"
        echo "Linux installer yt-playlist."
        echo "============================"
        echo "All dependencies were found."
        echo "============================"
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
        echo "============================"
        exit
        else
        echo "============================"
        echo "Not all dependencies were found."
        echo "============================"
        echo "Version requirements."
        echo "yt-dlp 2023.07.06 or higher."
        echo "mpv 0.34.1 or higher."
        echo "============================"

        if command -v yt-dlp >/dev/null
        then
        yt_dlp_version=$(yt-dlp --version)
        echo "yt-dlp version: ${yt_dlp_version}"
        else
        echo "yt-dlp is not installed."
        fi

        if command -v mpv >/dev/null
        then
        mpv_version=$(mpv --version | grep "mpv")
        echo "mpv version: ${mpv_version}"
        else
        echo "mpv is not installed."
        fi

        if command -v ffmpeg >/dev/null
        then
        :
        else
        echo "ffmpeg is not installed."
        fi

        if command -v fzf >/dev/null
        then
        :
        else
        echo "fzf is not installed."
        fi

        if command -v mutagen-inspect >/dev/null
        then
        :
        else
        echo "mutagen is not installed."
        fi

        if command -v socat >/dev/null
        then
        :
        else
        echo "socat is not installed."
        fi

        if command -v awk >/dev/null
        then
        :
        else
        echo "awk is not installed."
        fi

        if command -v sed >/dev/null
        then
        :
        else
        echo "sed is not installed."
        fi

        if command -v tr >/dev/null
        then
        :
        else
        echo "tr is not installed."
        fi

        if command -v bash >/dev/null
        then
        :
        else
        echo "bash is not installed."
        fi

        echo "============================"
        echo "Please install the missing dependencies."
        echo "Then run installer again."
        echo "============================"
        exit
        fi

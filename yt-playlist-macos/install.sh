#!/usr/local/bin/bash

        externel_argument="$1"
        if command -v yt-dlp >/dev/null && command -v mpv >/dev/null && command -v ffmpeg >/dev/null && command -v fzf >/dev/null && command -v mutagen-inspect >/dev/null && command -v socat >/dev/null && command -v gawk >/dev/null && command -v gsed >/dev/null && command -v tr >/dev/null && command -v bash >/dev/null && command -v curl >/dev/null && command -v gnl >/dev/null && command -v git >/dev/null && command -v gsleep >/dev/null
        then
        echo "============================"
        echo "Macos installer yt-playlist."
        echo "============================"
        echo "All dependencies were found."
        echo "============================"
        echo "Version requirements."
        echo "yt-dlp version 2023.07.06 or higher."
        echo "mpv version 0.34.1 or higher."
        echo "============================"
        if command -v yt-dlp >/dev/null
        then
        yt_dlp_version=$(yt-dlp --version)
        echo "yt-dlp is installed, version: ${yt_dlp_version}"
        fi
        if command -v mpv >/dev/null
        then
        mpv_version=$(mpv --version | grep "mpv" | cut -b -10 | gsed 's/mpv//g' | gsed 's/^[ \t]*//')
        echo "mpv is installed, version: ${mpv_version}"
        fi
        echo "============================"
        if [[ "$externel_argument" = "--online_install" ]]
	then
        sudo cp /tmp/yt-playlist/yt-playlist-macos/yt-playlist /usr/local/bin/
        else
        sudo cp ./yt-playlist /usr/local/bin/
        fi
        sudo chmod +x /usr/local/bin/yt-playlist
        sudo chown ${USER} /usr/local/bin/yt-playlist
        mkdir -p ${HOME}/.config/
        mkdir -p ${HOME}/.config/yt-playlist/
        mkdir -p ${HOME}/.config/yt-playlist/scripts/
        mkdir -p ${HOME}/.config/yt-playlist/scripts/sponsorblock_shared/
        if ! test -f ${HOME}/.config/yt-playlist/scripts/sponsorblock.lua
        then
        curl -s https://raw.githubusercontent.com/po5/mpv_sponsorblock/master/sponsorblock.lua -L -o ${HOME}/.config/yt-playlist/scripts/sponsorblock.lua
        curl -s https://raw.githubusercontent.com/po5/mpv_sponsorblock/master/sponsorblock_shared/main.lua -L -o ${HOME}/.config/yt-playlist/scripts/sponsorblock_shared/main.lua
        curl -s https://raw.githubusercontent.com/po5/mpv_sponsorblock/master/sponsorblock_shared/sponsorblock.py -L -o ${HOME}/.config/yt-playlist/scripts/sponsorblock_shared/sponsorblock.py
        fi
        touch ${HOME}/.config/yt-playlist/yt-playlist_favorites.txt
        touch ${HOME}/.config/yt-playlist/yt-playlist_history.txt
        touch ${HOME}/.config/yt-playlist/yt-playlist_bookmark.txt
        touch ${HOME}/.config/yt-playlist/yt-playlist_music.txt
        touch ${HOME}/.config/yt-playlist/input.conf
        echo "d run /usr/local/bin/yt-playlist --download_audio yt_playlist_audio" > ${HOME}/.config/yt-playlist/input.conf
        echo "D run /usr/local/bin/yt-playlist --download_video yt_playlist_video" >> ${HOME}/.config/yt-playlist/input.conf
        echo "s run /usr/local/bin/yt-playlist --sleep_time" >> ${HOME}/.config/yt-playlist/input.conf
        echo "b run /usr/local/bin/yt-playlist --bookmark" >> ${HOME}/.config/yt-playlist/input.conf
        echo "f run /usr/local/bin/yt-playlist --favorites" >> ${HOME}/.config/yt-playlist/input.conf
        echo "t run /usr/local/bin/yt-playlist --date_time" >> ${HOME}/.config/yt-playlist/input.conf
        echo "T run /usr/local/bin/yt-playlist --title" >> ${HOME}/.config/yt-playlist/input.conf
        echo 'Type "yt-playlist" to run program.'
        echo "============================"
        exit
        else
        echo "============================"
        echo "Linux installer yt-playlist."
        echo "============================"
        echo "Not all dependencies were found."
        echo "============================"

        if ! command -v yt-dlp >/dev/null
        then
        echo "yt-dlp is not installed."
        fi

        if ! command -v mpv >/dev/null
        then
        echo "mpv is not installed."
        fi

        if ! command -v ffmpeg >/dev/null
        then
        echo "ffmpeg is not installed."
        fi

        if ! command -v fzf >/dev/null
        then
        echo "fzf is not installed."
        fi

        if ! command -v mutagen-inspect >/dev/null
        then
        echo "mutagen is not installed."
        fi

        if ! command -v socat >/dev/null
        then
        echo "socat is not installed."
        fi

        if ! command -v curl >/dev/null
        then
        echo "curl is not installed."
        fi

        if ! command -v gawk >/dev/null
        then
        echo "gawk is not installed."
        fi

        if ! command -v gsed >/dev/null
        then
        echo "gsed is not installed."
        fi

        if ! command -v tr >/dev/null
        then
        echo "tr is not installed."
        fi

        if ! command -v gnl >/dev/null
        then
        echo "gnl is not installed."
        fi

        if ! command -v git >/dev/null
        then
        echo "git is not installed."
        fi

        if ! command -v gsleep >/dev/null
        then
        echo "gsleep is not installed."
        fi

        if ! command -v bash >/dev/null
        then
        echo "bash is not installed."
        fi

        echo "============================"
        echo "Please install the missing dependencies."
        echo "Then install again."
        echo "============================"
        exit
        fi

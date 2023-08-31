Upgrading: Install on top of older versions.

Installing: yt-playlist-termux

Required dependencies: "fzf", "mpv", "yt-dlp" version 2023.07.06 or higher, "socat", "awk", "sed", "tr".
Optional dependencies: "fx" "wget" For Billboard hot 100. "mutagen" For embedded thumbnails in opus audio files.

To install the latest termux version of yt-playlist, you will need to install "git" also you will need to delete any yt-playlist directroy from your home directory first.

"git clone https://github.com/darnrain/yt-playlist.git ${HOME}/yt-playlist/; chmod +x ${HOME}/yt-playlist/yt-playlist-termux/install.sh; ${HOME}/yt-playlist/yt-playlist-termux/install.sh"

To uninstall copy and paste this command into Termux.

"git clone https://github.com/darnrain/yt-playlist.git ${HOME}/yt-playlist/; chmod +x ${HOME}/yt-playlist/yt-playlist-termux/unisntall.sh; ${HOME}/yt-playlist/yt-playlist-termux/uninstall.sh"

If you want to only press "y" to load yt-playlist run this command.
"echo "alias y='yt-playlist'" >> ${HOME}/.bashrc; source ${HOME}/.bashrc"

Help

Help menu:              -h or --help
Version:                -v or --version
Import Google takeout:  --import
Suppprted file types:
subscriptions.csv
music-library-songs.csv
Example: "yt-playlist --import /home/user/subscriptions.csv"


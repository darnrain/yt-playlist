Upgrading: Install on top of older versions.

Installing: yt-playlist-linux

Required dependencies: "fzf", "mpv", "yt-dlp" version 2023.07.06 or higher, "socat", "awk", "sed", "tr, "bash".
Optional dependencies: "fx" "wget" For Billboard hot 100. "jemalloc" Arch linux 100% cpu fix. "mutagen" For embedded thumbnails in opus audio files.

To install the latest yt-playlist-linux, you will need to install "git"

To install copy and paste this command into the terminal:

git clone https://github.com/darnrain/yt-playlist.git ${HOME}/yt-playlist/; sudo chmod +x ${HOME}/yt-playlist/yt-playlist-linux/install.sh; ${HOME}/yt-playlist/yt-playlist-linux/install.sh

To uninstall copy and paste this command into the terminal:

git clone https://github.com/darnrain/yt-playlist.git ${HOME}/yt-playlist/; chmod +x ${HOME}/yt-playlist/yt-playlist-linux/uninstall.sh; ${HOME}/yt-playlist/yt-playlist-linux/uninstall.sh

If you want to only press "y" to load yt-playlist run this command:

echo "alias y='yt-playlist'" >> ${HOME}/.bashrc; source ${HOME}/.bashrc

Help

Help menu:              -h or --help
Version:                -v or --version
Import Google takeout:  --import
Suppprted file types:
subscriptions.csv
music-library-songs.csv
Example: "yt-playlist --import /home/user/subscriptions.csv"


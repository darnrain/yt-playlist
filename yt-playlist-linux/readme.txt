Upgrading: Install on top of older versions.

Installing: yt-playlist-linux

Required dependencies: "fzf", "mpv", "yt-dlp" version 2023.07.06 or higher, "socat", "awk", "sed", "tr, "bash".
Optional dependencies: "fx" "wget" For Billboard hot 100. "jemalloc" Arch linux 100% cpu fix. "mutagen" For embedded thumbnails in opus audio files.

To install the linux version, run the following command.

Copy yt-playlist-linux to your home directory.
"chmod +x ${HOME}yt-playlist-linux/install.sh; ${HOME}yt-playlist-linux/install.sh"

To uninstall run this command:
"chmod +x ${HOME}yt-playlist-linux/uninstall.sh; ${HOME}yt-playlist-linux/uninstall.sh"

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


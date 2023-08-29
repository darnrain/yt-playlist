# yt-playlist
A Youtube and YTMusic TUI frontend using mpv, yt-dlp and fzf writen in bash.

Welcome to yt-playlist.

Required dependencies: "fzf", "mpv", "yt-dlp" version 2023.07.06 or higher, "socat", "awk", "sed", "tr".

Optional dependencies: "fx" "wget" For Billboard hot 100. "jemalloc" Arch linux cpu fix. "mutagen" For embedded thumbnails in opus audio files.

To install run the following command: 
note: you will need to run the command with sudo for the linux version. Termux version does not use sudo.

git clone https://github.com/darnrain/yt-playlist/tree/main/yt-playlist-linux

git clone https://github.com/darnrain/yt-playlist/tree/main/yt-playlist-termux

"cd yt-playlist-linux"
or
"cd yt-playlist-termux"

"chmod +x ./install.sh; ./install.sh"

To uninstall run this command:

"chmod +x ./uninstall.sh; ./uninstall.sh"

"yt-playlist" to run
"yt-playlist -h" for help



yt-playlist

A Youtube and YTMusic TUI fronted using mpv, yt-dlp and fzf written in bash.

Welcome to yt-playlist.

When writing this program I was keeping one thing in mind, make it simple and easy to use.

Feel free to open a new issue or a suggestion.

yt-playlist-linux

Required dependencies: "fzf", "mpv", "yt-dlp" version 2023.07.06 or higher, "socat", "awk", "sed", "tr, "bash".
Optional dependencies: "fx" "wget" For Billboard hot 100. "jemalloc" Arch linux cpu fix. "mutagen" For embedded thumbnails in opus audio files.

To install the linux version, run the following command:
note: you will need to run the command with sudo.

Copy yt-playlist-linux to your home directory.
"cd ${HOME}/yt-playlist-linux/"
"chmod +x ./install.sh; ./install.sh"

To uninstall run this command:
"chmod +x ./uninstall.sh; ./uninstall.sh"
"yt-playlist" to run

Help

Help menu:              -h or --help
Version:                -v or --version
Import Google takeout:  --import
Suppprted file types:
subscriptions.csv
music-library-songs.csv
Example: "yt-playlist --import /home/user/subscriptions.csv"

When playing Audio/Video.
Right arrow for FF
Left arrow for RR
Spacebar to pause
">" next track
"<" prev track
Save to favorites    f
Save to Bookmarks    b
Show sleep timer     s
Download audio       d
Download video       D
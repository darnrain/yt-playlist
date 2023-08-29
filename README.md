# yt-playlist
A Youtube and YTMusic TUI frontend using mpv, yt-dlp and fzf writen in bash.

Welcome to yt-playlist.

Required dependencies: "fzf", "mpv", "yt-dlp" version 2023.07.06 or higher, "socat", "awk", "sed", "tr".

Optional dependencies: "fx" "wget" For Billboard hot 100. "jemalloc" Arch linux cpu fix. "mutagen" For embedded thumbnails in opus audio files.

To install run the following command: 
note: you will need to run the command with sudo for the linux version. Termux version does not use sudo.

"cd yt-playlist-linux"
or
"cd yt-playlist-termux"

"chmod +x ./install.sh; ./install.sh"

"yt-playlist" to run.

To uninstall run this command:

"chmod +x ./uninstall.sh; ./uninstall.sh"

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



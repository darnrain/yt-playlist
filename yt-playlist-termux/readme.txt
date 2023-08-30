A Youtube and YTMusic TUI using mpv, yt-dlp and fzf written in bash.

Welcome to yt-playlist.

Feel free to open a new issue or a suggestion.

yt-playlist-termux

Required dependencies: "fzf", "mpv", "yt-dlp" version 2023.07.06 or higher, "socat", "awk", "sed", "tr".
Optional dependencies: "fx" "wget" For Billboard hot 100. "mutagen" For embedded thumbnails in opus audio files.

To install the termux version, copy the yt-playlist-termux directory to "/sdcard/"
Open termux.
Copy and paste this command.
"cp -R /sdcard/yt-playlist-termux ${HOME}/; chmod +x ${HOME}/yt-playlist-termux/install.sh; ${HOME}/yt-playlist-termux/install.sh"

To uninstall copy and paste this command:
"cp -R /sdcard/yt-playlist-termux ${HOME}/; chmod +x ${HOME}/yt-playlist-termux/uninstall.sh; ${HOME}/yt-playlist-termux/uninstall.sh"
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

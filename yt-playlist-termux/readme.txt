A Youtube and YTMusic TUI using mpv, yt-dlp and fzf written in bash.

Welcome to yt-playlist.

Feel free to open a new issue or a suggestion.

Upgrading: Install on top of older versions.

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

Select Video/Music.
Select all ctrl-a
Deselect all ctrl-d
Cancel ctrl-c
Tab key to select lines.
Enter select one line.

yt-playlist will download the audio that you are listing to. If you have opus enabled yt-playlist will download opus, when listing to music or video. Video downloads at 720p

Resume playback does not need to be enabled to save the playback position, by default yt-playlist will always save the playback position when you quit a video or music. Works with the Play SD menu and Bookmark SD menu only.

A Youtube and YTMusic TUI using mpv, yt-dlp and fzf written in bash.

Welcome to yt-playlist.

Feel free to open a new issue or a suggestion.

Upgrading: Install on top of older versions.

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

Select Video/Music.
Select all ctrl-a
Deselect all ctrl-d
Cancel ctrl-c
Tab key to select lines.
Enter select one line.

Play SD menu.
Sleep timer yes.
Bookmarks yes.
Download Audio yes.
Download Video yes.
Resume playback yes.
FF yes.
RR yes.
Pause yes.
Next video yes.
Prev video yes.

Play HD menu.
Sleep timer no.
Bookmarks no.
Download Audio no.
Download Video no.
Resume playback no.
FF yes. Cache bottleneck.
RR yes. Cache bottleneck.
Pause yes.
Next video no.
Prev video no.

Play SD bookmark menu.
Sleep timer yes.
Bookmarks no.
Download Audio yes.
Download Video yes.
Resume playback yes.
FF yes.
RR yes.
Pause yes.
Next video yes.
Prev video yes.

Play YTMusic menu.
Sleep timer yes.
Bookmarks no.
Download Audio yes.
Download Video no.
Resume playback no.
FF yes.
RR yes.
Pause yes.
Next song yes.
Prev song yes.

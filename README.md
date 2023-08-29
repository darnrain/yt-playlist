# yt-playlist
A Youtube and YTMusic TUI frontend using mpv, yt-dlp and fzf writen in bash.

Welcome to yt-playlist.

Required dependencies: "fzf", "mpv", "yt-dlp" version 2023.07.06 or higher, "socat", "awk", "sed", "tr".

Optional dependencies: "fx" "wget" For Billboard hot 100. "jemalloc" Arch linux cpu fix. "mutagen" For embedded thumbnails in opus audio files.

To install the linux version, run the following command:<br>
note: you will need to run the command with sudo.<br>

"cd yt-playlist-linux"<br>
"chmod +x ./install.sh; ./install.sh"<br>
To uninstall run this command:<br>
"chmod +x ./uninstall.sh; ./uninstall.sh"<br>
"yt-playlist" to run<br>

To install the termux version, copy the yt-playlist-termux directory to "/sdcard/"<br>
Open termux.<br>
Copy and paste this command.<br>
"cp -R /sdcard/yt-playlist-termux ${HOME}; chmod +x ${HOME}/yt-playlist-termux/install.sh; ${HOME}/yt-playlist-termux/install.sh"<br>
To uninstall copy and paste this command:<br>
"cp -R /sdcard/yt-playlist-termux ${HOME}; chmod +x ${HOME}/yt-playlist-termux/uninstall.sh; ${HOME}/yt-playlist-termux/uninstall.sh"<br>
"yt-playlist" to run<br>

Help menu:              -h or --help<br>
Version:                -v or --version<br>
Import Google takeout:  --import<br>
Suppprted file types:<br>
subscriptions.csv<br>
music-library-songs.csv<br>
Example: "yt-playlist --import /home/user/subscriptions.csv"<br>

When playing Audio/Video.<br>
Right arrow for FF<br>
Left arrow for RR<br>
Spacebar to pause<br>
">" next track<br>
"<" prev track<br>
Save to favorites    f<br>
Save to Bookmarks    b<br>
Show sleep timer     s<br>
Download audio       d<br>
Download video       D<br>


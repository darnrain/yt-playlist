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
"yt-playlist" to run "yt-playlist -h" for help<br>
"yt-playlist" to run<br>
"yt-playlist -h" for help<br>

To install the termux version, copy the yt-playlist-termux directory to "/sdcard/"<br>
Open termux.<br>
"chmod +x /sdcard/yt-playlist-termux/install.sh; ./sdcard/yt-playlist-termux/install.sh"<br>
To uninstall run this command:<br>
"chmod +x /sdcard/yt-playlist-termux/uninstall.sh; ./sdcard/yt-playlsit-termux/uninstall.sh"<br>
"yt-playlist" to run<br>
"yt-playlist -h" for help<br>

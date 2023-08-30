# yt-playlist
A Youtube and YTMusic TUI using mpv, yt-dlp and fzf written in bash.<br>

Feel free to open a new issue or a suggestion.<br>

## note

I just got far enough with yt-playlist that I thought I could upload to github. As far as I can tell, everthing is working as it should. But if you do find a bug, or a typo please let me know.<br>

## upgrading

Install on top of older versions.<br>

## yt-playlist-linux

Required dependencies: "fzf", "mpv", "yt-dlp" version 2023.07.06 or higher, "socat", "awk", "sed", "tr, "bash".<br>
Optional dependencies: "fx" "wget" For Billboard hot 100. "jemalloc" Arch linux cpu fix. "mutagen" For embedded thumbnails in opus audio files.<br>

To install the linux version, run the following command:<br>
note: you will need to run the command with sudo.<br>

Copy yt-playlist-linux to your home directory.<br>
"cd ${HOME}/yt-playlist-linux/"<br>
"chmod +x ./install.sh; ./install.sh"<br>

To uninstall run this command:<br>
"chmod +x ./uninstall.sh; ./uninstall.sh"<br>
"yt-playlist" to run<br>

## yt-playlist-termux

Required dependencies: "fzf", "mpv", "yt-dlp" version 2023.07.06 or higher, "socat", "awk", "sed", "tr".<br>
Optional dependencies: "fx" "wget" For Billboard hot 100. "mutagen" For embedded thumbnails in opus audio files.<br>

To install the termux version, copy the yt-playlist-termux directory to "/sdcard/"<br>
Open termux.<br>
Copy and paste this command.<br>
"cp -R /sdcard/yt-playlist-termux ${HOME}/; chmod +x ${HOME}/yt-playlist-termux/install.sh; ${HOME}/yt-playlist-termux/install.sh"<br>

To uninstall copy and paste this command:<br>
"cp -R /sdcard/yt-playlist-termux ${HOME}/; chmod +x ${HOME}/yt-playlist-termux/uninstall.sh; ${HOME}/yt-playlist-termux/uninstall.sh"<br>
"yt-playlist" to run<br>

## Help

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
Save to favorites    "f"<br>
Save to Bookmarks    "b"<br>
Show sleep timer     "s"<br>
Download audio       "d"<br>
Download video       "D"<br>

yt-playlist will download the audio<br>
that you are listing to. If you have opus enabled<br>
yt-playlist will download opus, when listing to<br>
music or video. With video it only download 720p.<br>

Some menus<br>
You can select all by pressing ctrl-a<br>
Deselect all by pressing ctrl-d<br>
Use the tab key to select one at a time.<br>
Pressing enter select one line.<br>

Resume playback does not need to be enabled to save the playback position, by default yt-playlist will always save the playback position when you quit a video or music. Works with the Play SD menu and Bookmark SD menu only.<br>

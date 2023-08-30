# yt-playlist
A Youtube and YTMusic TUI using mpv, yt-dlp and fzf written in bash.<br>

Feel free to open a new issue or a suggestion.<br>

## notes

As far as I can tell, everything is working as it should. I am in the process of writing the help guide for yt-playlist, so expect updates. But if you do find a bug, or a typo please let me know.<br>

## upgrading

Install on top of older versions.<br>

## Installing yt-playlist-linux

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

## Installing yt-playlist-termux

Required dependencies: "fzf", "mpv", "yt-dlp" version 2023.07.06 or higher, "socat", "awk", "sed", "tr".<br>
Optional dependencies: "fx" "wget" For Billboard hot 100. "mutagen" For embedded thumbnails in opus audio files.<br>

To install the termux version, copy the yt-playlist-termux directory to "/sdcard/"<br>
Open termux.<br>
Copy and paste this command.<br>
"cp -R /sdcard/yt-playlist-termux ${HOME}/; chmod +x ${HOME}/yt-playlist-termux/install.sh; ${HOME}/yt-playlist-termux/install.sh"<br>

To uninstall copy and paste this command:<br>
"cp -R /sdcard/yt-playlist-termux ${HOME}/; chmod +x ${HOME}/yt-playlist-termux/uninstall.sh; ${HOME}/yt-playlist-termux/uninstall.sh"<br>
"yt-playlist" to run<br>

## Help guide

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

Select Video/Music.<br>
Select all ctrl-a<br>
Deselect all ctrl-d<br>
Cancel ctrl-c<br>
Tab key to select lines.<br>
Enter select one line.<br>

Play SD menu.<br>
Sleep timer yes.<br>
Bookmarks yes.<br>
Download Audio yes.<br>
Download Video yes.<br>
Resume playback yes.<br>
FF yes.<br>
RR yes.<br>
Pause yes.<br>
Next video yes.<br>
Prev video yes.<br>


Play HD menu.<br>
Sleep timer no.<br>
Bookmarks no.<br>
Download Audio no.<br>
Download Video no.<br>
Resume playback no.<br>
FF yes. Cache bottleneck.<br>
RR yes. Cache bottleneck.<br>
Pause yes.<br>
Next video no.<br>
Prev video no.<br>

Play SD bookmark menu.<br>
Sleep timer yes.<br>
Bookmarks no.<br>
Download Audio yes.<br>
Download Video yes.<br>
Resume playback yes.<br>
FF yes.<br>
RR yes.<br>
Pause yes.<br>
Next video yes.<br>
Prev video yes.<br>

Play YTMusic menu.<br>
Sleep timer yes.<br>
Bookmarks no.<br>
Download Audio yes.<br>
Download Video no.<br>
Resume playback no.<br>
FF yes.<br>
RR yes.<br>
Pause yes.<br>
Next song yes.<br>
Prev song yes.<br>

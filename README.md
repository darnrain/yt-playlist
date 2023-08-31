# yt-playlist
A Youtube and YTMusic TUI using mpv, yt-dlp and fzf written in bash.<br>

yt-playlist does not login to YouTube, does not log your activity, is 100% anonymous. Everything such as History/favorites are stored on your local hard drive. yt-playlist only uses yt-dlp to play YouTube and YTMusic. The only thing that may be logged is your ip address, when playling YouTube, by YouTube.<br>

## notes

* I am at the point of adding the final touches to yt-playlist.
* Subtitles are disabled by default. I had trouble getting them working on every video.
* You do not need to enable resume playback for the playback position to be saved. By default yt-playlist saves the resume position when you quit a video or music. Only works in the Play SD menu and the Play SD bookmark menu.
* When playing video/music if you have opus enabled and then press "d" to download audio, yt-playlist will download the opus file.
* When opus is enabled and playing video, the audio will be throttled, only affects the cache fill rate and if you want to FF. When playing music with opus, the audio is not throttled. When using aac audio, the video/music is not throttled.
* When watching video in the Play SD menu or the Play SD bookmark menu, the 720p video is not throttled.
* The Play HD menu relies on the cache to FF and RR. The max ram cache size in the Play HD menu is 500MB.
* If you want to get stats when mpv player is playing. Press shift "i"
  
## upgrading

Install on top of older versions.<br>

## Installing: yt-playlist-linux

Required dependencies: "fzf", "mpv", "yt-dlp" version 2023.07.06 or higher, "socat", "awk", "sed", "tr", "bash".<br>
Optional dependencies: "fx" "wget" For Billboard hot 100. "jemalloc" Arch linux 100% cpu fix. "mutagen" For embedded thumbnails in opus audio files.<br>

To install the linux version, run the following command:<br>
note: you will need to run the command with sudo.<br>

Copy yt-playlist-linux to your home directory.<br>
"cd ${HOME}/yt-playlist-linux/"<br>
"chmod +x ./install.sh; ./install.sh"<br>

To uninstall run this command:<br>
"chmod +x ./uninstall.sh; ./uninstall.sh"<br>

If you want to only press "y" to load yt-playlist run this command.<br>
"echo "alias y='yt-playlist'" >> ${HOME}/.bashrc; source ${HOME}/.bashrc"<br>

## Installing: yt-playlist-termux

Required dependencies: "fzf", "mpv", "yt-dlp" version 2023.07.06 or higher, "socat", "awk", "sed", "tr".<br>
Optional dependencies: "fx" "wget" For Billboard hot 100. "mutagen" For embedded thumbnails in opus audio files.<br>

To install the termux version, copy the yt-playlist-termux directory to "/sdcard/"<br>
Open termux.<br>
Copy and paste this command.<br>
"cp -R /sdcard/yt-playlist-termux ${HOME}/; chmod +x ${HOME}/yt-playlist-termux/install.sh; ${HOME}/yt-playlist-termux/install.sh"<br>

To uninstall copy and paste this command:<br>
"cp -R /sdcard/yt-playlist-termux ${HOME}/; chmod +x ${HOME}/yt-playlist-termux/uninstall.sh; ${HOME}/yt-playlist-termux/uninstall.sh"<br>

If you want to only press "y" to load yt-playlist run this command.<br>
"echo "alias y='yt-playlist'" >> ${HOME}/.bashrc; source ${HOME}/.bashrc"<br>

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
"q" quit mpv player.<br>
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

##  Credits, A Special Thank You

yt-dlp<br>
https://github.com/yt-dlp/yt-dlp

mpv<br>
https://github.com/mpv-player/mpv

fzf<br>
https://github.com/junegunn/fzf

billboard-hot-100<br>
https://github.com/mhollingshead/billboard-hot-100

NewPipe<br>
yt-playlist-termux version.<br>
https://github.com/TeamNewPipe/NewPipe

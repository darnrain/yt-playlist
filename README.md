### Welcome to yt-playlist v1.1

A YouTube and YTMusic TUI player, using mpv, yt-dlp and fzf written in bash.<br>

yt-playlist does not login to YouTube or YTMusic or Google, does not use Google's api, does not log your activity. The only thing that may be logged is your ip address, by YouTube. Your History, favorites and bookmarks files are stored on the hard drive at "~/.config/yt-playlist/".<br>
  
### upgrading

Install on top of older versions.<br>

### Automated install yt-playlist Linux version:

Required dependencies: "fzf", "mpv", "yt-dlp" version 2023.07.06 or higher, "socat", "awk", "sed", "tr, "bash".<br>
Optional dependencies: "fx" "wget" For Billboard hot 100. "jemalloc" Arch linux 100% cpu fix. "mutagen" For embedded thumbnails in opus audio files.<br>

To install copy and paste this command into the terminal:<br>

Note you need git installed. Only install or uninstall under a user account. Must have sudo installed.<br>

`git clone https://github.com/darnrain/yt-playlist.git /tmp/yt-playlist/; sudo chmod +x /tmp/yt-playlist/yt-playlist-linux/install.sh; /tmp/yt-playlist/yt-playlist-linux/install.sh`<br>

To uninstall copy and paste this command into the terminal:<br>

`git clone https://github.com/darnrain/yt-playlist.git /tmp/yt-playlist/; chmod +x /tmp/yt-playlist/yt-playlist-linux/uninstall.sh; /tmp/yt-playlist/yt-playlist-linux/uninstall.sh`<br>

If you want to only press "y" to load yt-playlist copy and paste this command in the terminal:<br>

`echo "alias y='yt-playlist'" >> ${HOME}/.bashrc; source ${HOME}/.bashrc`<br>

### Automated install yt-playlist Termux version:

Required dependencies: "fzf", "mpv", "yt-dlp" version 2023.07.06 or higher, "socat", "awk", "sed", "tr".<br>
Optional dependencies: "fx" "wget" For Billboard hot 100. "mutagen" For embedded thumbnails in opus audio files.<br>

To install copy and paste this command into Termux:<br>

Note you need git installed.<br>

`git clone https://github.com/darnrain/yt-playlist.git /data/data/com.termux/files/usr/tmp/yt-playlist/; chmod +x /data/data/com.termux/files/usr/tmp/yt-playlist/yt-playlist-termux/install.sh; /data/data/com.termux/files/usr/tmp/yt-playlist/yt-playlist-termux/install.sh`<br>

To uninstall copy and paste this command into Termux:<br>

`git clone https://github.com/darnrain/yt-playlist.git /data/data/com.termux/files/usr/tmp/yt-playlist/; chmod +x /data/data/com.termux/files/usr/tmp/yt-playlist/yt-playlist-termux/uninstall.sh; /data/data/com.termux/files/usr/tmp/yt-playlist/yt-playlist-termux/uninstall.sh`<br>

If you want to only press "y" to load yt-playlist copy and paste this command in Termux:<br>

`echo "alias y='yt-playlist'" >> ${HOME}/.bashrc; source ${HOME}/.bashrc`<br>

### Command arguments:

`yt-playlist --help`<br>
`yt-playlist --version`<br>
`yt-playlist --import`<br>

### Notes:

* You can now copy and paste the command to install the latest version of yt-playlist online.
* I have made a offline installer of yt-playlist v1.1.
* Subtitles are disabled by default. I had trouble getting them working on every video.
* You do not need to enable resume playback for the playback position to be saved. By default yt-playlist saves the resume position when you quit a video or music. Only works in the Play SD menu and the Play SD bookmark menu.
* When playing video/music if you have opus enabled and then press "d" to download audio, yt-playlist will download the opus file.
* When opus is enabled and playing video, the audio will be throttled, only affects the cache fill rate and if you want to FF. When playing music with opus, the audio is not throttled. When using aac audio, the video/music is not throttled.
* When watching video in the Play SD menu or the Play SD bookmark menu, the 720p video is not throttled.
* The Play HD menu relies on the cache to FF and RR. The max ram cache size in the Play HD menu is 500MB. The Play HD menu is not throttled.
* If you want to get stats when mpv player is playing. Press shift "i"
* Sleep timer, when the count down timer get's to 0 your volume will be slowly lowered to 0% then pause mpv, then it will restore your volume level back to the same level it was at before yt-playlist lowered it to 0%. You can cancel sleep timer at anytime, even if the volume is being lowered.

### Credits, A Special Thank You

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

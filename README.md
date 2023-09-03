### Welcome to yt-playlist

A YouTube and YTMusic TUI player, using mpv, yt-dlp and fzf written in bash.<br>

yt-playlist does not login to YouTube or YTMusic or Google, does not use Google's api, no logging or spyware. Your History, favorites and bookmarks files are stored on the hard drive at "~/.config/yt-playlist/".<br>

### Requirements:

* Recommended 3G ram for HD video. Cache is set to 1GB.
* Recommended 512G ram for SD video and music. Cache is set to 150MB.
* Linux or Termux with bash installed.
* Architecture does not matter.

### Features

* Stream YouTube video up to 8k HD 60 FPS.
* 1080p 60 FPS video defaults to h264.
* Enable HW GPU in mpv player.
* Import Google takeout, your YouTube subscriptions and YTMusic.
* Search YouTube Playlists and Channels.
* Search YTMusic Playlists and Albums.
* Paste YouTube or YTMusic url.
* Play YouTube and YTMusic Audio or Audio/Video.
* Background audio playback on Termux.
* All search results are saved to your history.
* Download YouTube Playlists from a Channel.
* Download Audio or Audio/Video in real-time when mpv is playing.
* Download m4a and opus audio files with thumbnails and metadata included.
* Download up to 1080p 60 FPS videos.
* No mp3 conversion just the native audio format.
* Open a channel, playlist and album in NewPipe. Termux version only.
* A built in Sleep Timer, that lowers volume level, pauses mpv, restores volume level.
* No logging or spyware.
* 100% open source and free.

### Status

yt-playlist v1.4 is a stable version.<br>

### Upgrading

Install on top of older versions.<br>

### Online install yt-playlist v1.4 Linux version:

Required dependencies: "fzf", "mpv", "yt-dlp" version 2023.07.06 or higher, "socat", "awk", "sed", "tr, "bash".<br>
Optional dependencies: "fx" "wget" For Billboard hot 100. "jemalloc" Arch linux 100% cpu fix. "mutagen" For embedded thumbnails in opus audio files.<br>

To install copy and paste this command into the terminal:<br>

Only install or uninstall under a user account. Must have sudo installed. If missing dependencies, then you will need install the dependencies and paste install command again.<br>

`curl https://github.com/darnrain/yt-playlist/releases/download/v1.4/yt-playlist.zip -L -o /tmp/yt-playlist.zip; unzip -o /tmp/yt-playlist.zip -d /tmp/; sudo chmod +x /tmp/yt-playlist/yt-playlist-linux/install.sh; /tmp/yt-playlist/yt-playlist-linux/install.sh`<br>

To uninstall copy and paste this command into the terminal:<br>

`curl https://github.com/darnrain/yt-playlist/releases/download/v1.4/yt-playlist.zip -L -o /tmp/yt-playlist.zip; unzip -o /tmp/yt-playlist.zip -d /tmp/; sudo chmod +x /tmp/yt-playlist/yt-playlist-linux/uninstall.sh; /tmp/yt-playlist/yt-playlist-linux/uninstall.sh`<br>

If you want to only press "y" to load yt-playlist copy and paste this command in the terminal:<br>

`echo "alias y='yt-playlist'" >> ${HOME}/.bashrc; source ${HOME}/.bashrc`<br>

### Online install yt-playlist v1.4 Termux version:

Required dependencies: "fzf", "mpv", "yt-dlp" version 2023.07.06 or higher, "socat", "awk", "sed", "tr".<br>
Optional dependencies: "fx" "wget" For Billboard hot 100. "mutagen" For embedded thumbnails in opus audio files.<br>

To install copy and paste this command into Termux:<br>

If missing dependencies, then you will need install the dependencies and paste install command again.<br>

`curl https://github.com/darnrain/yt-playlist/releases/download/v1.4/yt-playlist.zip -L -o /data/data/com.termux/files/usr/tmp/yt-playlist.zip; unzip -o /data/data/com.termux/files/usr/tmp/yt-playlist.zip -d /data/data/com.termux/files/usr/tmp/; chmod +x /data/data/com.termux/files/usr/tmp/yt-playlist/yt-playlist-termux/install.sh; /data/data/com.termux/files/usr/tmp/yt-playlist/yt-playlist-termux/install.sh`<br>

To uninstall copy and paste this command into Termux:<br>

`curl https://github.com/darnrain/yt-playlist/releases/download/v1.4/yt-playlist.zip -L -o /data/data/com.termux/files/usr/tmp/yt-playlist.zip; unzip -o /data/data/com.termux/files/usr/tmp/yt-playlist.zip -d /data/data/com.termux/files/usr/tmp/; chmod +x /data/data/com.termux/files/usr/tmp/yt-playlist/yt-playlist-termux/uninstall.sh; /data/data/com.termux/files/usr/tmp/yt-playlist/yt-playlist-termux/uninstall.sh`<br>

If you want to only press "y" to load yt-playlist copy and paste this command in Termux:<br>

`echo "alias y='yt-playlist'" >> ${HOME}/.bashrc; source ${HOME}/.bashrc`<br>

### Command arguments:

`yt-playlist --help`<br>
`yt-playlist --version`<br>
`yt-playlist --import`<br>

### Known issues:
* Playlist menu searching with #5 #6 #7 is kinda slow. It's best to search for 20 results or less. There are no restrictions, you can type in any number.
* YTMusic menu search #5 is also kinda slow, might want to seach for 20 results or less also.

### Notes:
* v1.3 Added the option to press "t" to show the date and time AM PM format when watching video or listening to music, all play menus.
* You can now copy and paste the command to install the latest version of yt-playlist online.
* I have made a offline installer of yt-playlist v1.1.
* Subtitles are disabled by default. I had trouble getting them working on every video.
* You do not need to enable resume playback for the playback position to be saved. By default yt-playlist saves the resume position when you quit a video or music. Only works 
* in the Play SD menu and the Play SD bookmark menu.
* When playing video/music if you have opus enabled and then press "d" to download audio, yt-playlist will download the opus file.
* When opus is enabled and playing video, the audio will be throttled, only affects the cache fill rate and if you want to FF. When playing music with opus, the audio is not throttled. When using aac audio, the video/music is not throttled.
* When watching video in the Play SD menu or the Play SD bookmark menu, the 720p video is not throttled.
* The Play HD menu relies on the cache to FF and RR. The max ram cache size in the Play HD menu is 500MB. The Play HD menu is not throttled. I may have to increase the cache size, I have not been able to fully test out 8k playback as my thinkpad is too old.
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
Termux version.<br>
https://github.com/TeamNewPipe/NewPipe

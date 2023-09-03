### Welcome to yt-playlist

A YouTube and YTMusic TUI player, using mpv, yt-dlp and fzf written in bash.<br>

yt-playlist does not login to YouTube or YTMusic or Google, does not use Google's api, no logging or spyware. Your History, favorites and bookmarks files are stored on the hard drive at "~/.config/yt-playlist/".<br>

### Features

* Stream YouTube video up to 8k HD 60 FPS.
* 1080p 60 FPS video defaults to h264.
* Enable HW GPU in mpv player.
* A text mode, listen to video or music.
* Background audio playback on Termux.
* The Termux version is audio only.
* Open a channel, playlist and album in NewPipe. Termux version only.
* Import Google takeout, your YouTube subscriptions and YTMusic.
* Search YouTube Playlists and Channels.
* Search YTMusic Playlists and Albums.
* Paste YouTube or YTMusic url.
* Play YouTube and YTMusic Audio or Audio/Video.
* All search results are saved to your history.
* Download YouTube Playlists from a Channel.
* Download up to 1080p 60 FPS videos.
* Download Audio or Audio/Video in real-time when mpv is playing.
* Download m4a and opus audio files with thumbnails and metadata included.
* No mp3 conversion, native audio format.
* A built in Sleep Timer, that slowly lowers volume level, pauses mpv, restores volume level.
* No logging or spyware.
* 100% open source and free.

### Requirements:

* Recommended 3GB ram for HD video 4k and 8k. Cache is set to 1GB.
* Recommended 2GB ram for HD video 1080p and 2k. Cache is set to 512MB.
* Recommended 512MB ram for SD video and music. Cache is set to 150MB.
* yt-dlp version 2023.07.06 or higher.
* mpv version 0.34.1 or higher.
* bash
* fzf
* socat
* awk
* sed
* tr
* Termux uses bash by default.
* Architecture does not matter.
* If having trouble installing latest version of yt-dlp see help guide down below.

### Optional dependencies:

* fx and wget For Billboard hot 100.
* jemalloc for Arch linux 100% cpu fix.
* mutagen for embedded thumbnails in opus audio files.

### Upgrading

Install on top of older versions.<br>

### Online install yt-playlist v1.5 Linux version:

To install copy and paste this command into the terminal:<br>

Only install or uninstall under a user account. Must have sudo installed. If missing dependencies, then you will need install the dependencies and paste install command again.<br>

`curl https://github.com/darnrain/yt-playlist/releases/download/v1.5/yt-playlist.zip -L -o /tmp/yt-playlist.zip; unzip -o /tmp/yt-playlist.zip -d /tmp/; sudo chmod +x /tmp/yt-playlist/yt-playlist-linux/install.sh; /tmp/yt-playlist/yt-playlist-linux/install.sh`<br>

To uninstall copy and paste this command into the terminal:<br>

`curl https://github.com/darnrain/yt-playlist/releases/download/v1.5/yt-playlist.zip -L -o /tmp/yt-playlist.zip; unzip -o /tmp/yt-playlist.zip -d /tmp/; sudo chmod +x /tmp/yt-playlist/yt-playlist-linux/uninstall.sh; /tmp/yt-playlist/yt-playlist-linux/uninstall.sh`<br>

If you want to only press "y" to load yt-playlist copy and paste this command in the terminal:<br>

`echo "alias y='yt-playlist'" >> ${HOME}/.bashrc; source ${HOME}/.bashrc`<br>

### Online install yt-playlist v1.5 Termux version:

To install copy and paste this command into Termux:<br>

If missing dependencies, then you will need install the dependencies and paste install command again.<br>

`curl https://github.com/darnrain/yt-playlist/releases/download/v1.5/yt-playlist.zip -L -o ${TMPDIR}/yt-playlist.zip; unzip -o ${TMPDIR}/yt-playlist.zip -d ${TMPDIR}/; chmod +x ${TMPDIR}/yt-playlist/yt-playlist-termux/install.sh; ${TMPDIR}/yt-playlist/yt-playlist-termux/install.sh`<br>

To uninstall copy and paste this command into Termux:<br>

`curl https://github.com/darnrain/yt-playlist/releases/download/v1.5/yt-playlist.zip -L -o ${TMPDIR}/yt-playlist.zip; unzip -o ${TMPDIR}/yt-playlist.zip -d ${TMPDIR}/; chmod +x ${TMPDIR}/yt-playlist/yt-playlist-termux/uninstall.sh; ${TMPDIR}/yt-playlist/yt-playlist-termux/uninstall.sh`<br>

If you want to only press "y" to load yt-playlist copy and paste this command in Termux:<br>

`echo "alias y='yt-playlist'" >> ${HOME}/.bashrc; source ${HOME}/.bashrc`<br>

### Command arguments:

`yt-playlist --help`<br>
`yt-playlist --version`<br>
`yt-playlist --import`<br>

### Help guide.

* I run Arch Linux and I could not get the latest version of yt-dlp to install. What I had to do was download yt-dlp from GitHub https://github.com/yt-dlp/yt-dlp/releases/latest/download/yt-dlp and "sudo cp yt-dlp /usr/bin/" and "sudo chmod +x /usr/bin/yt-dlp" to get the latest version instlaled. Must have python 3 installed.
* I have a raspberry pi 3b+ I could not get yt-playlist to play on raspberry Pi OS, and it's because mpv is out of date v0.32.0. You need at least version 0.34.1

### Known issues:
* Playlist menu searching with #5 #6 #7 is kinda slow. It's you might want to search for 20 results or less. There are no restrictions, you can type in any number.
* YTMusic menu search #5 is also kinda slow, you might want to seach for 20 results or less also.

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

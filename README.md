### Welcome to yt-playlist

A YouTube and YTMusic TUI player, for Linux and Termux, written in bash.<br>

yt-playlist does not login to YouTube or YTMusic or Google, does not use Google's api, no logging or spyware. Only uses yt-dlp, mpv, fzf to operate. Your History, favorites and bookmarks files are stored on the hard drive at "~/.config/yt-playlist/".<br>

### Features

* Stream YouTube video up to 8k 60 FPS.
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
* Download Audio or Video in real-time when mpv is playing.
* Download m4a and opus audio files with thumbnails and metadata included.
* No mp3 conversion, native audio format.
* A built in Sleep Timer, that slowly lowers volume level, pauses mpv, restores volume level.
* No logging or spyware.
* 100% open source and free.
 
### Known issues:
* yt-playlist will not work on Ubuntu, because of the snap permissions.
* Tested and working on the latest Arch Linux, Linux Mint, Termux.
* Should work on other flavors of linux.

### Computer requirements:

* Recommended 3GB ram for HD video 4k and 8k. Cache is set to 1GB.
* Recommended 2GB ram for HD video 1080p and 2k. Cache is set to 512MB.
* Recommended 512MB ram for SD video and music. Cache is set to 150MB.

### Required dependencies:

* yt-dlp version 2023.07.06 or higher.
* mpv version 0.34.1 or higher.
* bash
* fzf
* socat
* awk
* sed
* tr

### Optional dependencies:

* fx and wget For Billboard hot 100.
* jemalloc for Arch linux 100% cpu fix.
* mutagen for embedded thumbnails in opus audio files.

### Notes:

* Architecture does not matter.
* yt-playlist installer will check and let you know if you need to install any dependencies.
* If having trouble installing latest version of yt-dlp see help guide down below.
* The Termux installer will install all the dependencies including the optional dependencies, enable volume keys, and you can press "y" to load yt-playlist.

### Upgrading

Install on top of older versions.<br>

### Online install yt-playlist v1.10 Linux version:

To install copy and paste this command into the terminal:<br>

Only install or uninstall under a user account. Must have sudo, curl and unzip installed.<br>

`curl https://github.com/darnrain/yt-playlist/releases/download/v1.10/yt-playlist.zip -L -o /tmp/yt-playlist.zip; unzip -o /tmp/yt-playlist.zip -d /tmp/; sudo chmod +x /tmp/yt-playlist/yt-playlist-linux/install.sh; /tmp/yt-playlist/yt-playlist-linux/install.sh`<br>

To uninstall copy and paste this command into the terminal:<br>

`curl https://github.com/darnrain/yt-playlist/releases/download/v1.10/yt-playlist.zip -L -o /tmp/yt-playlist.zip; unzip -o /tmp/yt-playlist.zip -d /tmp/; sudo chmod +x /tmp/yt-playlist/yt-playlist-linux/uninstall.sh; /tmp/yt-playlist/yt-playlist-linux/uninstall.sh`<br>

If you want to only press "y" to load yt-playlist copy and paste this command in the terminal:<br>

`echo "alias y='yt-playlist'" >> ${HOME}/.bashrc; source ${HOME}/.bashrc`<br>

### Online install yt-playlist v1.10 Termux version:

To install copy and paste this command into Termux:<br>

`curl https://github.com/darnrain/yt-playlist/releases/download/v1.10/yt-playlist.zip -L -o ${TMPDIR}/yt-playlist.zip; unzip -o ${TMPDIR}/yt-playlist.zip -d ${TMPDIR}/; chmod +x ${TMPDIR}/yt-playlist/yt-playlist-termux/install.sh; ${TMPDIR}/yt-playlist/yt-playlist-termux/install.sh`<br>

To uninstall copy and paste this command into Termux:<br>

`curl https://github.com/darnrain/yt-playlist/releases/download/v1.10/yt-playlist.zip -L -o ${TMPDIR}/yt-playlist.zip; unzip -o ${TMPDIR}/yt-playlist.zip -d ${TMPDIR}/; chmod +x ${TMPDIR}/yt-playlist/yt-playlist-termux/uninstall.sh; ${TMPDIR}/yt-playlist/yt-playlist-termux/uninstall.sh`<br>

### Command arguments:

`yt-playlist --help`<br>
`yt-playlist --version`<br>
`yt-playlist --import`<br>

### Help guide.

* Install the latest yt-dlp, download yt-dlp from GitHub https://github.com/yt-dlp/yt-dlp/releases/latest/download/yt-dlp and "sudo cp yt-dlp /usr/bin/" and "sudo chmod +x /usr/bin/yt-dlp". Must have python 3 installed.
* I have a raspberry pi 3b+ I could not get yt-playlist to play on raspberry Pi OS, and it's because mpv is out of date v0.32.0. You need at least version 0.34.1

### yt-playlist notes:
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

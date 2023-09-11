## Welcome to yt-playlist

No spyware or adware. Respects your privacy. Does not login to YouTube, YouTube Music or Google. Does not use Google's api. Simplistic UI with a numeric layout, for faster access.<br>

![Screenshot from 2023-09-06 06-33-42](https://github.com/darnrain/yt-playlist/assets/60840489/4415d37e-84ae-4432-93c2-1b9b55ffe14d)

More photos.<br>

<details>

![Screenshot from 2023-09-06 06-32-20](https://github.com/darnrain/yt-playlist/assets/60840489/7fbb216d-d01d-478b-b520-6d383dc43b0d)

![Screenshot from 2023-09-06 07-24-10](https://github.com/darnrain/yt-playlist/assets/60840489/4fa3ddf5-4e63-4390-a904-9935939c53a0)

![Screenshot from 2023-09-06 06-46-50](https://github.com/darnrain/yt-playlist/assets/60840489/cc3b25ba-4b0d-4d76-a541-ab22b0dd81a3)

![Screenshot from 2023-09-06 06-44-50](https://github.com/darnrain/yt-playlist/assets/60840489/f9983dd8-7aba-415d-8e34-f356eadfc4b6)

![Screenshot from 2023-09-06 07-21-15](https://github.com/darnrain/yt-playlist/assets/60840489/49dd4a14-1218-4568-b387-479f8f11757f)

![Screenshot from 2023-09-06 07-30-18](https://github.com/darnrain/yt-playlist/assets/60840489/27aa54eb-c841-4229-9dde-7c5d5be440d7)

8K video, my 2013 laptop says nooo.<br>

</details>

### Features:
* Stream YouTube video up to 8k 60 FPS.
* 1080p 60 FPS video defaults to h264.
* Enable HW GPU on mpv player.
* A text mode, listen to video or music.
* The Termux version is audio only.
* Background audio playback on Termux.
* Open a channel, playlist and album in NewPipe. Termux version only.
* Import Google takeout, your YouTube subscriptions and YTMusic.
* Search YouTube for Playlists and Channels.
* Search YouTube Music for Playlists and Albums.
* Search Youtube Music for songs.
* Paste YouTube or YTMusic url.
* Channel/Playlist/Album search results are saved to your history.
* Download YouTube Playlists from a Channel.
* Download up to 1080p 60 FPS videos.
* Download Audio or Video in real-time when mpv is playing.
* Download m4a and opus audio files with thumbnails and metadata included.
* No mp3 transcoding, native audio format only.
* A built in Sleep Timer, that slowly lowers volume level, pauses mpv, restores volume level.
* Automated installation Termux version.
* 100% open source and free.
* And more...
 
### Known issues:
* yt-playlist will not work on Ubuntu, because of the snap permissions.
* Fast internet connection to stream 1080p, 2k, 4k, 8k.
* Playing 2k, 4k, 8k requires a fast comptuer - gpu.

### Tested OS and working as of 9-8-2023:
* Arch/Manjaro/EndeavourOS Linux
* Linux Mint
* MX Linux
* POP!_OS Linux
* Termux
* Should work on other flavors of linux.
* Works on any architecture.
* I will test more as time permits.

### Linux ram requirements:
* Recommended 6GB ram for HD 8k. Cache is set to 1.5GB.
* Recommended 4GB ram for HD 4k. Cache is set to 1.15GB.
* Recommended 3GB ram for HD 2k. Cache is set to 768MB.
* Recommended 2GB ram for HD 1080p. Cache is set to 384MB.
* Recommended 512MB ram for SD 720p. Cache is set to 70MB.
* Recommended 256MB ram for Audio/music. Cache is set to 15MB.

### Termux dependencies.
The Termux installer will automatically install all the required and optional dependencies first, before installing yt-playlist.<br>

### Linux required dependencies:
The Linux installer will check to make sure all the required dependencies are installed and let you know the ones you are missing, before installing yt-playlist. The installer will also show you the versions you have installed of yt-dlp and mpv after all dependencies are installed.<br>

* yt-dlp version 2023.07.06 or higher.
* mpv version 0.34.1 or higher.
* ffmpeg
* mutagen
* fzf
* socat
* awk
* sed
* tr
* bash

### Linux optional dependencies:
* fx and wget For Billboard hot 100.
* jemalloc for Arch/Manjaro linux 100% cpu fix.
* yt-playlist will automatically use jemalloc if installed, linux only.
* jemalloc will only help if cpu is high playing video, not counting software decoding.

### Upgrading:
Install on top of older versions.<br>

### Debian based Linux, auto dependencies install.
You can use this command to install all the required dependencies and optional dependencies all at once. To install fx on arm64 change fx_linux_amd64 to fx_linux_arm64<br>

`sudo apt -y update; sudo apt -y install curl unzip wget mpv ffmpeg fzf socat python3 python3-mutagen; sudo curl https://github.com/antonmedv/fx/releases/download/24.1.0/fx_linux_amd64 -L -o /usr/bin/fx; sudo chmod +x /usr/bin/fx; sudo apt -y remove yt-dlp youtube-dl; sudo curl https://github.com/yt-dlp/yt-dlp/releases/latest/download/yt-dlp -L -o /usr/bin/yt-dlp; sudo chmod +x /usr/bin/yt-dlp`

### Arch/Manjaro/EndeavourOS Linux, auto dependencies install.
You can use this command to install all the required dependencies and optional dependencies all at once.<br>

`sudo pacman -Syu --noconfirm curl unzip wget fx mpv ffmpeg fzf socat jemalloc python python-mutagen; sudo pacman -R --noconfirm yt-dlp youtube-dl; sudo curl https://github.com/yt-dlp/yt-dlp/releases/latest/download/yt-dlp -L -o /usr/bin/yt-dlp; sudo chmod +x /usr/bin/yt-dlp`<br>

### Linux online install yt-playlist v1.49:
Only install or uninstall under a user account.<br>

To install copy and paste this command into the terminal:<br>

`curl https://github.com/darnrain/yt-playlist/releases/download/v1.49/yt-playlist.zip -L -o /tmp/yt-playlist.zip; unzip -o /tmp/yt-playlist.zip -d /tmp/; sudo chmod +x /tmp/yt-playlist/yt-playlist-linux/install.sh; /tmp/yt-playlist/yt-playlist-linux/install.sh`<br>

If you want to only press "y" to load yt-playlist copy and paste this command in the terminal:<br>

`echo "alias y='yt-playlist'" >> ${HOME}/.bashrc; source ${HOME}/.bashrc`<br>

To uninstall copy and paste this command into the terminal:<br>

`curl https://github.com/darnrain/yt-playlist/releases/download/v1.49/yt-playlist.zip -L -o /tmp/yt-playlist.zip; unzip -o /tmp/yt-playlist.zip -d /tmp/; sudo chmod +x /tmp/yt-playlist/yt-playlist-linux/uninstall.sh; /tmp/yt-playlist/yt-playlist-linux/uninstall.sh`<br>

When uninstalling yt-playlist the ~/.config/yt-playlist/ directory does not get deleted, so your favorites, bookmarks, music and history are not deleted by accident. Run this command to delete the ~/.config/yt-playlist/ directory.<br>
`rm -R ${HOME}/.config/yt-playlist/`<br>

### Termux online install yt-playlist v1.49:
The Termux installer will automatically install all the required and optional dependencies first, before installing yt-playlist.<br>

To install copy and paste this command into Termux:<br>

`curl https://github.com/darnrain/yt-playlist/releases/download/v1.49/yt-playlist.zip -L -o ${TMPDIR}/yt-playlist.zip; unzip -o ${TMPDIR}/yt-playlist.zip -d ${TMPDIR}/; chmod +x ${TMPDIR}/yt-playlist/yt-playlist-termux/install.sh; ${TMPDIR}/yt-playlist/yt-playlist-termux/install.sh`<br>

To uninstall copy and paste this command into Termux:<br>

`curl https://github.com/darnrain/yt-playlist/releases/download/v1.49/yt-playlist.zip -L -o ${TMPDIR}/yt-playlist.zip; unzip -o ${TMPDIR}/yt-playlist.zip -d ${TMPDIR}/; chmod +x ${TMPDIR}/yt-playlist/yt-playlist-termux/uninstall.sh; ${TMPDIR}/yt-playlist/yt-playlist-termux/uninstall.sh`<br>

When uninstalling yt-playlist the ~/.config/yt-playlist/ directory does not get deleted, so your favorites, bookmarks, music and history are not deleted by accident. Run this command to delete the ~/.config/yt-playlist/ directory.<br>
`rm -R ${HOME}/.config/yt-playlist/`<br>

### Command arguments:
<pre>
Help menu:              -h or --help
Version:                -v or --version
Play/Pause              --play_pause
Next track              --next
Prev track              --prev
Import Google takeout:  --import
Suppprted file types:
subscriptions.csv
music-library-songs.csv
Example: "yt-playlist --import subscriptions.csv"
</pre>


### yt-playlist notes:
* Changed how resume playback works.
* Play music/video then if you want to save the playback position and quit press "shift-q".
* When you want to resume from that saved playback position enable resume playback, then play the music/video.
* If you just want to quit music/video with out saving the playback position, press "q".
* You can save to the bookmarks and then press "shift-q" to save the playback position, then resume playback from the bookmarks.
* Resume playback and save playback position only will work in the Play SD menu and Bookmark SD menu.
* In the Playlist menu, options 5,6 are a little slower finding YTMusic Albums and YTMusic Playlists than other search functions.
* The YT playlist search and YT channel search are very fast also get channel playlists.
* Added the option of fast search and slow search to the YTMusic menu.
* v1.3 Added the option to press "t" to show the date and time AM PM format when watching video or listening to music, all play menus.
* You can now copy and paste the command to install the latest version of yt-playlist online.
* I have made a offline installer of yt-playlist v1.1.
* Subtitles are disabled by default. I had trouble getting them working on every video.
* When playing video/music if you have opus enabled and then press "d" to download audio, yt-playlist will download the opus file.
* When opus is enabled and playing video, the audio will be throttled, only affects the cache fill rate and if you want to FF. When playing music with opus, the audio is not throttled. When using aac audio, the video/music is not throttled.
* When watching video in the Play SD menu or the Play SD bookmark menu, the 720p video is not throttled.
* The Play HD menu relies on the cache to FF and RR. The Play HD menu is not throttled.
* Sleep timer, when the count down timer get's to 0 your volume will be slowly lowered to 0% then pause mpv, then it will restore your volume level back to the same level it was at before yt-playlist lowered it to 0%. You can cancel sleep timer at anytime, even if the volume is being lowered.

### Credits, A Special Thank You
yt-dlp<br>
https://github.com/yt-dlp/yt-dlp

mpv<br>
https://github.com/mpv-player/mpv

fzf<br>
https://github.com/junegunn/fzf

jemalloc<br>
https://github.com/jemalloc/jemalloc

billboard-hot-100<br>
https://github.com/mhollingshead/billboard-hot-100

fx<br>
https://github.com/antonmedv/fx

Termux<br>
https://github.com/termux/termux-app

NewPipe<br>
Termux version.<br>
https://github.com/TeamNewPipe/NewPipe

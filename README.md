## Welcome to yt-playlist

No spyware or adware. Respects your privacy. Does not login to YouTube, YouTube Music or Google. Does not use Google's api. Old school theme, no color but very powerful. Changes color based on the terminal theme.<br>

![Screenshot from 2023-09-06 06-33-42](https://github.com/darnrain/yt-playlist/assets/60840489/4415d37e-84ae-4432-93c2-1b9b55ffe14d) ![Screenshot from 2023-09-06 06-32-20](https://github.com/darnrain/yt-playlist/assets/60840489/7fbb216d-d01d-478b-b520-6d383dc43b0d)

![Screenshot from 2023-09-06 07-24-10](https://github.com/darnrain/yt-playlist/assets/60840489/4fa3ddf5-4e63-4390-a904-9935939c53a0)

![Screenshot from 2023-09-06 06-46-50](https://github.com/darnrain/yt-playlist/assets/60840489/cc3b25ba-4b0d-4d76-a541-ab22b0dd81a3)

![Screenshot from 2023-09-06 06-44-50](https://github.com/darnrain/yt-playlist/assets/60840489/f9983dd8-7aba-415d-8e34-f356eadfc4b6)

![Screenshot from 2023-09-06 07-21-15](https://github.com/darnrain/yt-playlist/assets/60840489/49dd4a14-1218-4568-b387-479f8f11757f)

![Screenshot from 2023-09-06 07-30-18](https://github.com/darnrain/yt-playlist/assets/60840489/27aa54eb-c841-4229-9dde-7c5d5be440d7)

8K video, my 2013 laptop says nooo.

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
* 100% open source and free.
* And more...
 
### Known issues:
* yt-playlist will not work on Ubuntu, because of the snap permissions.
* Fast internet connection to stream 1080p, 2k, 4k, 8k.
* Playing 2k, 4k, 8k requires a fast comptuer - gpu and a fast internet connection.

### Tested operating systems:
* Working on the latest Arch/Manjaro Linux, Linux Mint, MX Linux and Termux.
* Should work on other flavors of linux.
* I will test more as time permits.

### Linux ram requirements:
* Recommended 6GB ram for HD 8k. Cache is set to 1.5GB.
* Recommended 4GB ram for HD 4k. Cache is set to 1.15GB.
* Recommended 3GB ram for HD 2k. Cache is set to 768MB.
* Recommended 2GB ram for HD 1080p. Cache is set to 384MB.
* Recommended 512MB ram for SD 720p. Cache is set to 70MB.
* Recommended 256MB ram for Audio/music. Cache is set to 15MB.

### Linux required dependencies:
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

### Notes:
* See help guide down below for installing latest version of yt-dlp and mutagen.
* The Linux instlaler will check to make sure you have all the dependencies installed, if not it will let you know witch ones are missing before installing yt-playlist.
* The Termux installer will install all the dependencies including the optional dependencies, enable volume keys, and you can press "y" to load yt-playlist.

### Upgrading:
Install on top of older versions.<br>

### Online install yt-playlist v1.28 Linux version:
To downgrade, just change the version number in the install command.<br>
Only install or uninstall under a user account. Must have sudo, curl and unzip installed.<br>

To install copy and paste this command into the terminal:<br>

`curl https://github.com/darnrain/yt-playlist/releases/download/v1.28/yt-playlist.zip -L -o /tmp/yt-playlist.zip; unzip -o /tmp/yt-playlist.zip -d /tmp/; sudo chmod +x /tmp/yt-playlist/yt-playlist-linux/install.sh; /tmp/yt-playlist/yt-playlist-linux/install.sh`<br>

To uninstall copy and paste this command into the terminal:<br>

`curl https://github.com/darnrain/yt-playlist/releases/download/v1.28/yt-playlist.zip -L -o /tmp/yt-playlist.zip; unzip -o /tmp/yt-playlist.zip -d /tmp/; sudo chmod +x /tmp/yt-playlist/yt-playlist-linux/uninstall.sh; /tmp/yt-playlist/yt-playlist-linux/uninstall.sh`<br>

If you want to only press "y" to load yt-playlist copy and paste this command in the terminal:<br>

`echo "alias y='yt-playlist'" >> ${HOME}/.bashrc; source ${HOME}/.bashrc`<br>

### Online install yt-playlist v1.28 Termux version:
To downgrade, just change the version number in the install command.<br>

To install copy and paste this command into Termux:<br>

`curl https://github.com/darnrain/yt-playlist/releases/download/v1.28/yt-playlist.zip -L -o ${TMPDIR}/yt-playlist.zip; unzip -o ${TMPDIR}/yt-playlist.zip -d ${TMPDIR}/; chmod +x ${TMPDIR}/yt-playlist/yt-playlist-termux/install.sh; ${TMPDIR}/yt-playlist/yt-playlist-termux/install.sh`<br>

To uninstall copy and paste this command into Termux:<br>

`curl https://github.com/darnrain/yt-playlist/releases/download/v1.28/yt-playlist.zip -L -o ${TMPDIR}/yt-playlist.zip; unzip -o ${TMPDIR}/yt-playlist.zip -d ${TMPDIR}/; chmod +x ${TMPDIR}/yt-playlist/yt-playlist-termux/uninstall.sh; ${TMPDIR}/yt-playlist/yt-playlist-termux/uninstall.sh`<br>

### Command arguments:
`yt-playlist --help`<br>
`yt-playlist --version`<br>
`yt-playlist --import`<br>

### Help guide:
Install the latest yt-dlp and mutagen:<br>
download yt-dlp from GitHub https://github.com/yt-dlp/yt-dlp/releases/latest/download/yt-dlp<br>
`sudo cp yt-dlp /usr/bin/`<br>
`sudo chmod +x /usr/bin/yt-dlp`<br>
Debian based Linux:<br>
`sudo apt update; sudo apt install python3 python3-mutagen`<br>
Arch/Manjaro linux:<br>
`sudo pacman -Syu python python-mutagen`<br>

Uninstalling yt-playlist:<br>
When uninstalling yt-playlist the ~/.config/yt-playlist/ directory does not get deleted, so your favorites, bookmarks, music and history are not deleted by accident. Run this command to delete the ~/.config/yt-playlist/ directory.<br>
`rm -R ${HOME}/.config/yt-playlist/`<br>

### yt-playlist notes:
* In the Playlist menu, options 5,6 are a little slower finding YTMusic Albums and YTMusic Playlists than other search functions.
* The YT playlist search and YT channel search are very fast also get channel playlists.
* Added the option of fast search and slow search to the YTMusic menu.
* v1.3 Added the option to press "t" to show the date and time AM PM format when watching video or listening to music, all play menus.
* You can now copy and paste the command to install the latest version of yt-playlist online.
* I have made a offline installer of yt-playlist v1.1.
* Subtitles are disabled by default. I had trouble getting them working on every video.
* You do not need to enable resume playback for the playback position to be saved. By default yt-playlist saves the resume position when you quit a video or music. Only works in the Play SD menu and the Play SD bookmark menu.
* When playing video/music if you have opus enabled and then press "d" to download audio, yt-playlist will download the opus file.
* When opus is enabled and playing video, the audio will be throttled, only affects the cache fill rate and if you want to FF. When playing music with opus, the audio is not throttled. When using aac audio, the video/music is not throttled.
* When watching video in the Play SD menu or the Play SD bookmark menu, the 720p video is not throttled.
* The Play HD menu relies on the cache to FF and RR. The Play HD menu is not throttled.
* Sleep timer, when the count down timer get's to 0 your volume will be slowly lowered to 0% then pause mpv, then it will restore your volume level back to the same level it was at before yt-playlist lowered it to 0%. You can cancel sleep timer at anytime, even if the volume is being lowered.

### Backstory:
I started working on yt-playlist about 5 months ago, originally it was a Termux version only. I wanted a way of playing YouTube in the background with Termux on my phone. About 2 months into making yt-playlist I installed it on my Thinkpad running Arch Linux. That’s when I got the idea of using mpv to play video on Linux. On Termux you cant play video, it’s audio/music only. I guess it just progressed from there, once I had yt-playlist on my laptop. I wanted to make yt-playlist look old school but also very powerful, that’s why it has no color. At one point I was making menus saying are you sure you want to delete that bookmark? But then I said that’s not my style. If I want to delete a bookmark I want to delete it with out telling the computer twice. When browsing your playlists, at the very top you will see what function fzf is performing like playing or deleting. I made sure to add that because I have deleted some playlists in the past not knowing what function I was in. It’s more like the Linux terminal, as it will not ask you, are you sure you want to delete all your favorites? I would say that yt-playlist is about 95% completed, it’s definitely not in beta anymore. I got a lot of enjoyment creating yt-playlist. I hope you enjoy using yt-playlist as much as I do.<br>

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

NewPipe<br>
Termux version.<br>
https://github.com/TeamNewPipe/NewPipe

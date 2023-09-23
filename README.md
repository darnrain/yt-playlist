# Welcome to yt-playlist v2.x

## No spyware or adware. Respects your privacy. Does not login to YouTube, YouTube Music or Google. Does not use Google's api. Simplistic UI with a numeric layout, for faster access.<br>

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
* Sponsors will be skipped automatically.
* No YouTube/YouTube Music ads.
* Very little cpu usage.
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
* Anything older than macOS big sur, you will need to compile all the dependencies and that could take hr's.
* macOS apple white remote, when watching video FF and RR get's stuck.
* If install.sh or Automated install is taking longer than 5 seconds, then check your internet connection.
* Termux first time install, takes about 10 minuts or so to install all the dependencies.

### Tested OS and working as of 9-20-2023:
* macOS big sur
* Arch/Manjaro/EndeavourOS Linux
* Linux Mint
* MX Linux
* POP!_OS Linux
* Termux
* Should work on other flavors of linux.
* Works on any architecture.
* I will test more as time permits.

### Command arguments:
<pre>
Help menu:              -h or --help
Version:                -v or --version
Play/Pause              --play_pause
Next track              --next
Prev track              --prev
Desktop and terminal
notifications get
artist and title        --title
Download when playing
Audio/Video
Download audio          --download_audio opus
                        --download_audio m4a
Download video          --download_video mp4
Enable cover art
notifications           --cover_art
Import Google takeout:  --import
Suppprted file types:
subscriptions.csv
music-library-songs.csv
Example: "yt-playlist --import subscriptions.csv"

--cover_art is Linux version only.
</pre>

### Credits, A Special Thank You
yt-dlp<br>
https://github.com/yt-dlp/yt-dlp

mpv<br>
https://github.com/mpv-player/mpv

fzf<br>
https://github.com/junegunn/fzf

jemalloc<br>
https://github.com/jemalloc/jemalloc

billboard-hot-100 (1)<br>
https://github.com/mhollingshead/billboard-hot-100

billboard-hot-100 (2)<br>
Billboard 200<br>
Billboard Global 200<br>
Billboard Artist 100<br>
https://github.com/KoreanThinker/billboard-json

1001 Albums You Must Hear Before You Die<br>
https://gist.github.com/tatygrassini/6306893

Rolling Stone's list of The 500 Greatest Songs of All Time.<br> 
https://gist.github.com/nanotaboada/a90ce99a9bc8ca3c63c0f1dfeb41d41d#file-songs-json

Chartmasters Top Songs.<br>
https://github.com/darnrain/yt-playlist/blob/main/top_songs/top_songs.txt

mpv_sponsorblock<br>
https://github.com/po5/mpv_sponsorblock

fx<br>
https://github.com/antonmedv/fx

Termux<br>
https://github.com/termux/termux-app

NewPipe<br>
Termux version.<br>
https://github.com/TeamNewPipe/NewPipe

MIT License<br>

Copyright (c) 2023 darnrain<br>

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:<br>

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.<br>

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.<br>

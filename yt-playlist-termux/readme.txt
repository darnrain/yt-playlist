Termux install.

Dependencies will be automatically installed. 
To install copy yt-playlist.zip file to your internel sorage on the phone.

unzip -o /sdcard/yt-playlist.zip -d ${HOME}/; chmod +x ${HOME}/yt-playlist/yt-playlist-termux/install.sh; ${HOME}/yt-playlist/yt-playlist-termux/install.sh

to just type y to run yt-playlist

echo "alias y='yt-playlist'" >> ${HOME}/.bashrc; source ${HOME}/.bashrc

To uninstall copy yt-playlist.zip folder to your internel sorage on the phone.

unzip -o /sdcard/yt-playlist.zip -d ${HOME}/; chmod +x ${HOME}/yt-playlist/yt-playlist-termux/uninstall.sh; ${HOME}/yt-playlist/yt-playlist-termux/uninstall.sh

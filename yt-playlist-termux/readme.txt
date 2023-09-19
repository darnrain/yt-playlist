Termux install.

Dependencies will be automatically installed. 
To install copy yt-playlist.zip file to your internel sorage on the phone.

offline install with yt-playlist.zip
unzip -o /sdcard/yt-playlist.zip -d ${HOME}/; chmod +x ${HOME}/yt-playlist/yt-playlist-termux/install.sh; ${HOME}/yt-playlist/yt-playlist-termux/install.sh

online install
curl https://github.com/darnrain/yt-playlist/releases/download/v2.28/yt-playlist.zip -L -o /sdcard/yt-playlist.zip; unzip -o /sdcard/yt-playlist.zip -d ${HOME}/; chmod +x ${HOME}/yt-playlist/yt-playlist-termux/install.sh; ${HOME}/yt-playlist/yt-playlist-termux/install.sh

to just type y to run yt-playlist

echo "alias y='yt-playlist'" >> ${HOME}/.bashrc; source ${HOME}/.bashrc

To uninstall copy yt-playlist.zip folder to your internel sorage on the phone.

offline uninstall with yt-playlist.zip
unzip -o /sdcard/yt-playlist.zip -d ${HOME}/; chmod +x ${HOME}/yt-playlist/yt-playlist-termux/uninstall.sh; ${HOME}/yt-playlist/yt-playlist-termux/uninstall.sh

online uninstall
curl https://github.com/darnrain/yt-playlist/releases/download/v2.28/yt-playlist.zip -L -o /sdcard/yt-playlist.zip; unzip -o /sdcard/yt-playlist.zip -d ${HOME}/; chmod +x ${HOME}/yt-playlist/yt-playlist-termux/uninstall.sh; ${HOME}/yt-playlist/yt-playlist-termux/uninstall.sh

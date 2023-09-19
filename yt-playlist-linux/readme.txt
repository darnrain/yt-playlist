Linux install.

Install dependencies first then install yt-playlist

download and install. You can use this one command from now on to install the latest version of yt-playlist.
yes|rm -R /tmp/yt-playlist/; git clone https://github.com/darnrain/yt-playlist.git /tmp/yt-playlist/; sudo chmod +x /tmp/yt-playlist/yt-playlist-linux/install.sh; /tmp/yt-playlist/yt-playlist-linux/install.sh

Type y to run yt-playlist
echo "alias y='yt-playlist'" >> ${HOME}/.bashrc; source ${HOME}/.bashrc

Download and uninstall yt-playlist:
yes|rm -R /tmp/yt-playlist/; git clone https://github.com/darnrain/yt-playlist.git /tmp/yt-playlist/; sudo chmod +x /tmp/yt-playlist/yt-playlist-linux/uninstall.sh; /tmp/yt-playlist/yt-playlist-linux/uninstall.sh

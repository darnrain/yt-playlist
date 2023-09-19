Linux install.

Install dependencies first then yt-playlist

Download and install yt-playlist:
yes|rm -R /tmp/yt-playlist/; git clone https://github.com/darnrain/yt-playlist.git /tmp/yt-playlist/; sudo chmod +x /tmp/yt-playlist/yt-playlist-linux/install.sh; /tmp/yt-playlist/yt-playlist-linux/install.sh

or
sudo chmod +x ./install.sh; ./install.sh

to just type y to run yt-playlist
echo "alias y='yt-playlist'" >> ${HOME}/.bashrc; source ${HOME}/.bashrc

Download and uninstall yt-playlist:
yes|rm -R /tmp/yt-playlist/; git clone https://github.com/darnrain/yt-playlist.git /tmp/yt-playlist/; sudo chmod +x /tmp/yt-playlist/yt-playlist-linux/uninstall.sh; /tmp/yt-playlist/yt-playlist-linux/uninstall.sh

or
sudo chmod +x ./uninstall.sh; ./uninstall.sh

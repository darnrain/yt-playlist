Linux install yt-playlist.

==========================================
Install yt-playlist
==========================================

Automated install:
if [ -d /tmp/yt-playlist/ ]; then yes|rm -R /tmp/yt-playlist/; fi; git clone https://github.com/darnrain/yt-playlist.git /tmp/yt-playlist/; sudo chmod +x /tmp/yt-playlist/yt-playlist-linux/install.sh; /tmp/yt-playlist/yt-playlist-linux/install.sh --online_install

or

Offline install:
sudo chmod +x ./install.sh; ./install.sh

Type y to run yt-playlist:
echo "alias y='yt-playlist'" | tee -a ${HOME}/.bashrc ${HOME}/.zshrc; source ${HOME}/.bashrc; source ${HOME}/.zshrc

==========================================
Unnstall yt-playlist
==========================================

Automated uninstall:
if [ -d /tmp/yt-playlist/ ]; then yes|rm -R /tmp/yt-playlist/; fi; git clone https://github.com/darnrain/yt-playlist.git /tmp/yt-playlist/; sudo chmod +x /tmp/yt-playlist/yt-playlist-linux/uninstall.sh; /tmp/yt-playlist/yt-playlist-linux/uninstall.sh

Offline uninstall:
sudo chmod +x ./uninstall.sh; ./uninstall.sh

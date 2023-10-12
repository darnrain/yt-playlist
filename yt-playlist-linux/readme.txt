Linux yt-playlist.

yt-playlist will work with mpv 0.34.1 but not all of the Audio effects will work.

See dependencies.txt file, for the list of required dependencies.

==========================================
Install yt-playlist
==========================================

Automated install:
if [ -d /tmp/yt-playlist/ ]; then rm -rf /tmp/yt-playlist/; fi; git clone https://github.com/darnrain/yt-playlist.git /tmp/yt-playlist/; sudo chmod +x /tmp/yt-playlist/yt-playlist-linux/install.sh; /tmp/yt-playlist/yt-playlist-linux/install.sh --main

or

Manual install:
sudo chmod +x ./install.sh; ./install.sh

Type y to run yt-playlist:
echo "alias y='yt-playlist'" | tee -a ${HOME}/.bashrc ${HOME}/.zshrc; source ${HOME}/.bashrc; source ${HOME}/.zshrc

==========================================
Unnstall yt-playlist
==========================================

Automated uninstall:
if [ -d /tmp/yt-playlist/ ]; then rm -rf /tmp/yt-playlist/; fi; git clone https://github.com/darnrain/yt-playlist.git /tmp/yt-playlist/; sudo chmod +x /tmp/yt-playlist/yt-playlist-linux/uninstall.sh; /tmp/yt-playlist/yt-playlist-linux/uninstall.sh

Manual uninstall:
sudo chmod +x ./uninstall.sh; ./uninstall.sh

Linux install.

Install dependencies first then yt-playlist

Download and install yt-playlist:
git clone https://github.com/darnrain/yt-playlist.git ${HOME}/yt-playlist/
cd ${HOME}/yt-playlist/yt-playlist-linux/
sudo chmod +x ./install.sh; ./install.sh

to just type y to run yt-playlist

echo "alias y='yt-playlist'" >> ${HOME}/.bashrc; source ${HOME}/.bashrc

Download and uninstall yt-playlist:
git clone https://github.com/darnrain/yt-playlist.git ${HOME}/yt-playlist/
cd ${HOME}/yt-playlist/yt-playlist-linux/
sudo chmod +x ./uninstall.sh; ./uninstall.sh

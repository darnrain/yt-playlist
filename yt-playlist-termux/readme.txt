Termux install.

Dependencies will be automatically installed. 

Download and install. You can use this one command from now on to install the latest version of yt-playlist.
yes|rm -R ${TMPDIR}/yt-playlist/; git clone https://github.com/darnrain/yt-playlist.git ${TMPDIR}/yt-playlist/; chmod +x ${TMPDIR}/yt-playlist/yt-playlist-termux/install.sh; ${TMPDIR}/yt-playlist/yt-playlist-termux/install.sh

to just type y to run yt-playlist
echo "alias y='yt-playlist'" >> ${HOME}/.bashrc; source ${HOME}/.bashrc

Download and uninstall yt-playlist:
yes|rm -R ${TMPDIR}/yt-playlist/; git clone https://github.com/darnrain/yt-playlist.git ${TMPDIR}/yt-playlist/; chmod +x ${TMPDIR}/yt-playlist/yt-playlist-termux/uninstall.sh; ${TMPDIR}/yt-playlist/yt-playlist-termux/uninstall.sh



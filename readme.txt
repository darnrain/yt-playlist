Online install yt-playlist v1.29 Linux version:

To downgrade/upgrade change the version number in the install command.
Only install or uninstall under a user account. Must have sudo, curl and unzip installed.

To install copy and paste this command into the terminal:

curl https://github.com/darnrain/yt-playlist/releases/download/v1.29/yt-playlist.zip -L -o /tmp/yt-playlist.zip; unzip -o /tmp/yt-playlist.zip -d /tmp/; sudo chmod +x /tmp/yt-playlist/yt-playlist-linux/install.sh; /tmp/yt-playlist/yt-playlist-linux/install.sh

To uninstall copy and paste this command into the terminal:

curl https://github.com/darnrain/yt-playlist/releases/download/v1.29/yt-playlist.zip -L -o /tmp/yt-playlist.zip; unzip -o /tmp/yt-playlist.zip -d /tmp/; sudo chmod +x /tmp/yt-playlist/yt-playlist-linux/uninstall.sh; /tmp/yt-playlist/yt-playlist-linux/uninstall.sh

If you want to only press "y" to load yt-playlist copy and paste this command in the terminal:

echo "alias y='yt-playlist'" >> ${HOME}/.bashrc; source ${HOME}/.bashrc






Online install yt-playlist v1.29 Termux version:

To downgrade/upgrade change the version number in the install command.
To install copy and paste this command into Termux:

curl https://github.com/darnrain/yt-playlist/releases/download/v1.29/yt-playlist.zip -L -o ${TMPDIR}/yt-playlist.zip; unzip -o ${TMPDIR}/yt-playlist.zip -d ${TMPDIR}/; chmod +x ${TMPDIR}/yt-playlist/yt-playlist-termux/install.sh; ${TMPDIR}/yt-playlist/yt-playlist-termux/install.sh

To uninstall copy and paste this command into Termux:

curl https://github.com/darnrain/yt-playlist/releases/download/v1.29/yt-playlist.zip -L -o ${TMPDIR}/yt-playlist.zip; unzip -o ${TMPDIR}/yt-playlist.zip -d ${TMPDIR}/; chmod +x ${TMPDIR}/yt-playlist/yt-playlist-termux/uninstall.sh; ${TMPDIR}/yt-playlist/yt-playlist-termux/uninstall.sh

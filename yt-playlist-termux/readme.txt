Termux yt-playlist.

Dependencies will be automatically installed.

==========================================
Install yt-playlist
==========================================

Automated install:
if [ -d ${TMPDIR}/yt-playlist/ ]; then yes|rm -R ${TMPDIR}/yt-playlist/; fi; if ! command -v git; then pkg install git; fi; git clone https://github.com/darnrain/yt-playlist.git ${TMPDIR}/yt-playlist/; chmod +x ${TMPDIR}/yt-playlist/yt-playlist-termux/install.sh; ${TMPDIR}/yt-playlist/yt-playlist-termux/install.sh --online_install

or

Offline install:
chmod +x ./install.sh; ./install.sh

==========================================
Unnstall yt-playlist
==========================================

Automated uninstall:
if [ -d ${TMPDIR}/yt-playlist/ ]; then yes|rm -R ${TMPDIR}/yt-playlist/; fi; git clone https://github.com/darnrain/yt-playlist.git ${TMPDIR}/yt-playlist/; chmod +x ${TMPDIR}/yt-playlist/yt-playlist-termux/uninstall.sh; ${TMPDIR}/yt-playlist/yt-playlist-termux/uninstall.sh

or 

Offline uninstall:
chmod +x ./uninstall.sh; ./uninstall.sh

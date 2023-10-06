Termux yt-playlist.

The installer will automatically download and install all the dependencies. First time install only.

==========================================
Install yt-playlist
==========================================

Automated install:
if [ -d ${TMPDIR}/yt-playlist/ ]; then rm -rf ${TMPDIR}/yt-playlist/; fi; if ! command -v git; then pkg install git; fi; git clone https://github.com/darnrain/yt-playlist.git ${TMPDIR}/yt-playlist/; chmod +x ${TMPDIR}/yt-playlist/yt-playlist-termux/install.sh; ${TMPDIR}/yt-playlist/yt-playlist-termux/install.sh --main

or

Manual install:
chmod +x ./install.sh; ./install.sh

==========================================
Unnstall yt-playlist
==========================================

Automated uninstall:
if [ -d ${TMPDIR}/yt-playlist/ ]; then rm -rf ${TMPDIR}/yt-playlist/; fi; git clone https://github.com/darnrain/yt-playlist.git ${TMPDIR}/yt-playlist/; chmod +x ${TMPDIR}/yt-playlist/yt-playlist-termux/uninstall.sh; ${TMPDIR}/yt-playlist/yt-playlist-termux/uninstall.sh

or 

Manual uninstall:
chmod +x ./uninstall.sh; ./uninstall.sh

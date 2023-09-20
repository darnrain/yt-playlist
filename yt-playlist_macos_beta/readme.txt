macOS install yt-playlist.

If on v0.17 or below, then Install the new dependencies and then Automated install or Offline install.

If you are installing for the first time, start at Install brew.

For notifications to work on macOS you need to give permissions to terminal-notifier.

==========================================
Install yt-playlist
==========================================

Install brew: https://brew.sh/
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

Install the dependencies:
brew install curl nano unzip git mpv yt-dlp findutils gawk jemalloc grep fx gnu-sed coreutils terminal-notifier ffmpeg fzf socat python3 python-mutagen

Automated install:
if [ -d /tmp/yt-playlist/ ]; then yes|rm -R /tmp/yt-playlist/; fi; git clone https://github.com/darnrain/yt-playlist.git /tmp/yt-playlist/; sudo chmod +x /tmp/yt-playlist/yt-playlist_macos_beta/install.sh; /tmp/yt-playlist/yt-playlist_macos_beta/install.sh --online_install

or 

Offline install:
sudo chmod +x ./install.sh; ./install.sh

Type y to run yt-playlist:
echo "alias y='yt-playlist'" | tee -a ${HOME}/.bashrc ${HOME}/.zshrc; source ${HOME}/.bashrc; source ${HOME}/.zshrc

==========================================
Uninstall yt-playlist
==========================================

Automated uninstall:
if [ -d /tmp/yt-playlist/ ]; then yes|rm -R /tmp/yt-playlist/; fi; git clone https://github.com/darnrain/yt-playlist.git /tmp/yt-playlist/; sudo chmod +x /tmp/yt-playlist/yt-playlist_macos_beta/uninstall.sh; /tmp/yt-playlist/yt-playlist_macos_beta/uninstall.sh

Offline uninstall:
sudo chmod +x ./uninstall.sh; ./uninstall.sh

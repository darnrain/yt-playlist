macOS yt-playlist.

If you are installing for the first time, start at Install brew. If your upgrading start at Automated install or Offline install.

For notifications to work on macOS you need to give permissions to terminal-notifier.

If your on an older version of macOS and are getting an error message when trying to install brew, "Cant download software because of network problems." Then go to this link and sign in and find "Command line tools for your version of macOS.
https://developer.apple.com/download/all/?q=command%20line%20tools

==========================================
Install yt-playlist
==========================================

Install brew: https://brew.sh/
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

Install the dependencies:
brew install bash mpv yt-dlp grep gawk jemalloc fx gnu-sed coreutils terminal-notifier ffmpeg fzf socat python3 python-mutagen

Automated install:
if [ -d /tmp/yt-playlist/ ]; then rm -rf /tmp/yt-playlist/; fi; git clone https://github.com/darnrain/yt-playlist.git /tmp/yt-playlist/; sudo chmod +x /tmp/yt-playlist/yt-playlist-macos/install.sh; /tmp/yt-playlist/yt-playlist-macos/install.sh --main

or 

Manual install:
sudo chmod +x ./install.sh; ./install.sh

Type y to run yt-playlist:
echo "alias y='yt-playlist'" | tee -a ${HOME}/.bashrc ${HOME}/.zshrc; source ${HOME}/.bashrc; source ${HOME}/.zshrc

==========================================
Uninstall yt-playlist
==========================================

Automated uninstall:
if [ -d /tmp/yt-playlist/ ]; then rm -rf /tmp/yt-playlist/; fi; git clone https://github.com/darnrain/yt-playlist.git /tmp/yt-playlist/; sudo chmod +x /tmp/yt-playlist/yt-playlist-macos/uninstall.sh; /tmp/yt-playlist/yt-playlist-macos/uninstall.sh

Manual uninstall:
sudo chmod +x ./uninstall.sh; ./uninstall.sh

yt-playlist is in beta on macOS, however v0.7 seems to be running good. I was only able to test yt-playlist on macos big sur.


If you have yt-playlist installed start at step #2.

If you are installing for the first time start at step #1.


1. Install:
Install brew first. https://brew.sh/
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"; brew update

2. Install the dependencies:
brew install curl nano unzip mpv fx gnu-sed coreutils terminal-notifier ffmpeg fzf socat python3 python-mutagen

3. download and install yt-playlist:
yes|rm -R /tmp/yt-playlist/; git clone https://github.com/darnrain/yt-playlist.git /tmp/yt-playlist/; sudo chmod +x /tmp/yt-playlist/yt-playlist_macos_beta/install.sh; /tmp/yt-playlist/yt-playlist_macos_beta/install.sh

or
sudo chmod +x ./install.sh; ./install.sh

4. type y to run yt-playlist. You only need to do this one time.
echo "alias y='yt-playlist'" >> ${HOME}/.bash_profile; source ${HOME}/.bash_profile

download and uninstall yt-playlist:
yes|rm -R /tmp/yt-playlist/; git clone https://github.com/darnrain/yt-playlist.git /tmp/yt-playlist/; sudo chmod +x /tmp/yt-playlist/yt-playlist_macos_beta/uninstall.sh; /tmp/yt-playlist/yt-playlist_macos_beta/uninstall.sh

or
sudo chmod +x ./uninstall.sh; ./uninstall.sh

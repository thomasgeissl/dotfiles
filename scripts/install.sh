#!/bin/sh

unameOut="$(uname -s)"
case "${unameOut}" in
    Linux*)     OS=LINUX;;
    Darwin*)    OS=OSX;;
    CYGWIN*)    OS=CYGWINy;;
    MINGW*)     OS=MINGW;;
    *)          OS="UNKNOWN:${unameOut}"
esac
echo ${OS}


if [ "$OS" == "OSX" ]
then
	softwareupdate --install-rosetta
	/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
	
	brew install git-lfs
	brew install thefuck

	brew install wget
	brew install node

	brew install --cask iterm2
	brew install vim tmux fzf tmate fff
	brew install cmake
	brew install ninja
	brew install autoconf automake
	brew install doxygen

	brew install safe-rm
	ln -s /usr/local/bin/safe-rm /usr/local/bin/rm

	brew install --cask visual-studio-code 
	brew install --cask arduino teensy
	brew install --cask sourcetree
	brew install platformio 
	brew install arduino-cli
	
	brew tap heroku/brew && brew install heroku
	brew install --cask unetbootin

	brew install --cask eagle fritzing
	brew install --cask autodesk-fusion360
	brew install --cask blender

	brew install --cask google-backup-and-sync
	brew install --cask sketch

	brew install --cask google-drive

	brew install --cask google-chrome
	brew install --cask firefox 
	# https://addons.mozilla.org/en/firefox/addon/multi-account-containers/
	# https://addons.mozilla.org/en-US/firefox/addon/facebook-container/
	# https://addons.mozilla.org/en-US/firefox/addon/lastpass-password-manager/

	brew install --cask spectacle

	brew install --cask vlc 
	brew install --cask spotify
	# brew install --cask soundflower 
	# brew install --cask blackhole 
	brew install lame
	# brew install --cask ableton-live
	brew install --cask native-access
	# valhalla dsp plugins
	# kramer master tape

	brew install imagemagick
	brew install glslviewer

	brew install --cask processing supercollider touchdesigner

	brew install --cask slack 
	brew install --cask skype
	brew install --cask zoomus
	brew install --cask discord
	brew install --cask telegram
	brew install --cask signal

	brew tap thomasgeissl/tools
	brew install ofpackagemanager
	brew install ofoscdebugger
	brew install ofmididebugger
	brew install --cask ofpackagemanagerfrontend
	brew install --cask ragazzi

	npm install -g yarn nodemon http-serve mqtt
	npm install -g create-react-app

	brew install python
	# sudo easy_install pip

	brew install --cask virtualbox
	brew install --cask docker
	brew install --cask vagrant
	
	#brew install --cask qt-creator
	#brew install qt
	brew install --cask android-studio android-sdk android-ndk
	brew install --cask java unity steam

	# brew install zsh-syntax-highlighting
fi

if [ "$OS" == "LINUX" ]
then
	sudo apt update
	url -s https://packagecloud.io/install/repositories/github/git-lfs/script.deb.sh | sudo bash
	sudo apt-get install git-lfs
	
	sudo apt install python3-dev python3-pip python3-setuptools
	sudo pip3 install thefuck
	sudo apt-get install vim
	sudo apt-get install tmux
	sudo apt-get install software-properties-common && \
	sudo add-apt-repository ppa:tmate.io/archive    && \
	sudo apt-get update                             && \
	sudo apt-get install tmate

	sudo snap install --classic heroku
	sudo apt install vlc
	sudo apt install lame
	sudo apt install libav-tools 

	sudo apt install snapd
	sudo snap install core
	sudo snap install firefox
	sudo snap install spotify
	sudo snap install skype
	sudo snap install slack

	sudo snap install node

	# https://makandracards.com/makandra/72209-how-to-install-npm-packages-globally-without-sudo-on-linux
	NPM_PACKAGES="$HOME/.npm-packages"
	mkdir -p "$NPM_PACKAGES"
	echo "prefix = $NPM_PACKAGES" >> ~/.npmrc
    	NPM_PACKAGES="$HOME/.npm-packages"

    	echo PATH="$NPM_PACKAGES/bin:$PATH" >> ~/.bashrc
    	echo unset MANPATH  >> ~/.bashrc
    	echo MANPATH="$NPM_PACKAGES/share/man:$(manpath)" >> ~/.bashrc
    	echo NODE_PATH="$NPM_PACKAGES/lib/node_modules:$NODE_PATH" >> ~/.bashrc

	npm install -g http-serve nodemon mqtt

	# install file mananger
	git clone https://github.com/dylanaraps/fff ~/.fff
	cd ~/.fff
	sudo make install

	git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
	~/.fzf/install

	sudo apt install software-properties-common apt-transport-https wget
	wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
	sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
	sudo apt install code

fi

curl -o- https://raw.githubusercontent.com/creationix/nvm/HEAD/install.sh | bash

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k

# install powerline fonts
git clone https://github.com/powerline/fonts.git --depth=1
cd fonts
./install.sh
cd ..
rm -rf fonts


# create directory structure
cd ~
mkdir libs
cd libs
git clone --recursive https://github.com/openframeworks/openFrameworks.git
git clone --recursive https://github.com/juce-framework/JUCE.git

cd ..
mkdir projects
mkdir sand


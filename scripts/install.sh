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
	/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

	brew install thefuck
	brew install wget node

	brew cask install iterm2
	brew install vim tmux fzf tmate
	brew install autoconf automake

	brew install safe-rm
	ln -s /usr/local/bin/safe-rm /usr/local/bin/rm

	brew cask install visual-studio-code arduino
	brew cask install sourcetree
	brew install platformio
	brew cask install eagle
	brew cask install blender

	brew cask install google-chrome firefox cyberduck
	brew cask install vlc soundflower spotify

	brew cask install spectacle

	brew install lame
	brew install imagemagick

	brew cask install pd-extended processing supercollider
	brew cask install slack skype

	brew cask install unetbootin

	brew tap thomasgeissl/tools
	brew install ofpackagemanager
	brew install ofoscdebugger
	brew install ofmididebugger

	npm install -g yarn nodemon http-serve mqtt 
	npm install -g create-react-app @vue/cli

	brew install python
	# sudo easy_install pip


	brew cask install docker
	#brew cask install qt-creator
	#brew install qt
	brew cask install android-sdk
	brew cask install android-ndk
	brew cask install android-studio

	brew cask install java

	brew install zsh-syntax-highlighting
fi

if [ "$OS" == "LINUX" ]
then
	sudo apt update
	sudo apt install python3-dev python3-pip python3-setuptools
	sudo pip3 install thefuck
	sudo apt-get install vim
	sudo apt-get install tmux
	sudo apt-get install software-properties-common && \
	sudo add-apt-repository ppa:tmate.io/archive    && \
	sudo apt-get update                             && \
	sudo apt-get install tmate

	sudo apt install software-properties-common apt-transport-https wget
	wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
	sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
	sudo apt install code

	git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
	~/.fzf/install
fi

curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.34.0/install.sh | bash


curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim



git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k

# install powerline fonts
git clone https://github.com/powerline/fonts.git --depth=1
cd fonts
./install.sh
cd ..
rm -rf fonts

# install file mananger
git clone https://github.com/dylanaraps/fff ~/.fff
cd ~/.fff
if [ "$OS" == "OSX" ]
then
	make PREFIX=/usr/local install
fi
if [ "$OS" == "LINUX" ]
then
	sudo make install
fi

# create directory structure
cd ~
mkdir libs
cd libs
git clone --recursive https://github.com/openframeworks/openFrameworks.git
git clone --recursive https://github.com/WeAreROLI/JUCE.git

cd ..
mkdir projects

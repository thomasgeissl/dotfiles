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
	brew install thefuck
	brew install wget node

	brew cask install iterm2
	brew install vim tmux fzf tmate

	brew install safe-rm
	ln -s /usr/local/bin/safe-rm /usr/local/bin/rm

	brew cask install visual-studio-code arduino
	brew install platformio
	brew cask install eagle
	brew cask install blender

	brew cask install google-chrome firefox cyberduck
	brew cask install vlc spotify

	# spectacle window manager
	brew cask install spectacle

	# lame audio file converter
	brew install lame
	brew install imagemagick

	brew cask install pd-extended processing
	brew cask install slack skype

	brew cask install unetbootin
	brew tap thomasgeissl/tools
	brew install ofpackagemanager

	npm install -g nodemon http-serve mqtt create-react-app

	brew install python
	# sudo easy_install pip


	brew cask install docker
	brew cask install qt-creator
	brew install qt
	brew cask install android-sdk
	brew cask install android-ndk
	brew cask install android-studio
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

/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# clone
git clone https://github.com/powerline/fonts.git --depth=1
# install
cd fonts
./install.sh
# clean-up a bit
cd ..
rm -rf fonts

git clone https://github.com/dylanaraps/fff ~/.fff
cd ~/.fff
sudo make install


cd ~
mkdir libs
cd libs
git clone --recursive https://github.com/openframeworks/openFrameworks.git
git clone --recursive https://github.com/WeAreROLI/JUCE.git

cd ..
mkdir projects

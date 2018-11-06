#!/bin/sh

if test ! $(which brew); then
    echo "Installing homebrew"
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# cli tools
echo "Installing cli tools.."
brew tap caskroom/cask
brew install git
brew install ack
brew install tree
brew install wget 
brew install fzf # Fuzzy file finder
brew install lnav # for viewing log files in terminal 
# terminals cause why not!
brew install hub
brew install reattach-to-user-namespace
brew install tmux
echo "installing tpm plugin manager"
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
brew install zsh
brew install highlight
brew install nvm
brew install z
brew install markdown
brew install node
brew install zsh-syntax-highlighting
brew install zsh-autosuggestions
brew install nmap 
echo "Installing neovim..."
# install neovim
brew install neovim

echo "Installing desktop application..."
brew cask install iterm2
brew cask install slack
brew cask install vlc
exit 0

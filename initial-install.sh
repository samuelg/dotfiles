#!/usr/bin/env bash

# Install Xcode Command Line Tools.
xcode-select --install

# Install Homebrew.
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew install ansible
brew install awscli
brew install bash-completion
brew install brew-cask
brew install exercism
brew install git
brew install go
brew install htop
brew install jq
brew install lynx
brew install macvim
brew install mysql@5.7
brew install neofetch
brew install netcat
brew install node@10
brew install nvm
brew install pdsh
brew install python
brew install pyenv
brew install sngrep
brew install sqlite
brew install tig
brew install tmux
brew install watch
brew install wget
brew install yamllint
brew install fping
brew install git-lfs
brew install mtr
brew install zsh
brew install tree

brew tap homebrew/cask-fonts
brew cask install font-fira-code

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Setup python (see https://opensource.com/article/19/5/python-3-default-mac for details)
pyenv install 3.8.1
pyenv global 3.8.1
echo -e 'if command -v pyenv 1>/dev/null 2>&1; then\n  eval "$(pyenv init -)"\nfi' >> ~/.zshrc

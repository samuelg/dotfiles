#!/usr/bin/env bash

brew install --cask alacritty
brew install awscli
brew install bat
brew install universal-ctags
brew install fd
brew install fzf
brew install golang
brew install golangci-lint
brew install glow
brew install graphviz
brew install htop
brew install httpie
brew install jenv
brew install jq
brew install libpq
brew install neovim
brew install markdownlint-cli
brew install maven
brew install mtr
brew install nvm
brew install pgformatter
brew install pgadmin4
brew install python3
brew install redis
brew install ripgrep
brew install tig
brew install tree
brew install watch
brew install wget
brew install yamllint
brew install zellij
brew install zig
brew install zls

brew tap homebrew/cask-fonts
brew install font-fira-code-nerd-font
brew install font-bigblue-terminal-nerd-font

brew install --cask nikitabobko/tap/aerospace

# setup node.js for neovim coc
# see NODE_VERSION in .zshrc
nvm install 18
nvm use 18

# backup zshrc file first
cp ~/.zshrc ~/.zshrc.backup

# oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# restore zshrc backup
mv ~/.zshrc.backup ~/.zshrc

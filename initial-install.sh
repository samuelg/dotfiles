#!/usr/bin/env bash

# xcode Command Line Tools.
xcode-select --install

# homebrew.
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew install brew-cask
brew install exercism
brew install fzf
brew install git
brew install htop
brew install httpie
brew install jq
brew install lnav
brew install macvim
brew install nvm
brew install pyenv
brew install ripgrep
brew install tig
brew install tmux
brew install watch
brew install wget
brew install yamllint
brew install mtr
brew install tree

brew tap homebrew/cask-fonts
brew install --cask font-fira-code

# vim plugin directories
mkdir -p ~/.vim/autoload ~/.vim/colors ~/.vim/bundle

# vim pathogen
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

# vim plugins
git clone https://github.com/preservim/nerdtree.git ~/.vim/bundle/nerdtree
git clone https://github.com/editorconfig/editorconfig-vim.git ~/.vim/bundle/editorconfig-vim
git clone git://github.com/altercation/vim-colors-solarized.git ~/.vim/bundle/vim-colors-solarized
git clone https://github.com/vim-airline/vim-airline ~/.vim/bundle/vim-airline
git clone https://github.com/vim-airline/vim-airline-themes ~/.vim/bundle/vim-airline-themes
git clone https://github.com/sheerun/vim-polyglot.git ~/.vim/bundle/vim-polyglot
git clone https://github.com/mhinz/vim-startify.git ~/.vim/bundle/vim-startify
git clone https://github.com/junegunn/fzf.vim.git ~/.vim/bundle/fzf

# backup zshrc file first
cp ~/.zshrc ~/.zshrc.backup

# oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# restore zshrc backup
mv ~/.zshrc.backup ~/.zshrc

# power10k theme for oh-my-zsh
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

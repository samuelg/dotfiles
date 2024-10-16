#!/usr/bin/env bash

brew install --cask alacritty
brew install awscli
brew install bat
brew tap universal-ctags/universal-ctags
brew install --HEAD universal-ctags
brew install fd
brew install fzf
brew install golang
brew install golangci-lint
brew install glow
brew install htop
brew install httpie
brew install jenv
brew install jq
brew install libpq
brew install neovim
brew install maven
brew install mtr
brew install nvm
brew install pgformatter
brew install python3
brew install redis
brew install ripgrep
brew install tig
brew install tree
brew install watch
brew install wget
brew install yamllint
brew install zellij

brew tap homebrew/cask-fonts
brew install font-fira-code-nerd-font
brew install font-bigblue-terminal-nerd-font

# setup node.js for neovim coc
# see NODE_VERSION in .zshrc
nvm install 18
nvm use 18

# vim plugin directories
mkdir -p ~/.vim/autoload ~/.vim/colors ~/.vim/bundle

# vim pathogen
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

# vim plugins
git clone https://github.com/preservim/nerdtree.git ~/.vim/bundle/nerdtree
git clone https://github.com/editorconfig/editorconfig-vim.git ~/.vim/bundle/editorconfig-vim
git clone https://github.com/itchyny/lightline.vim ~/.vim/bundle/lightline.vim
git clone https://github.com/sheerun/vim-polyglot.git ~/.vim/bundle/vim-polyglot
git clone https://github.com/mhinz/vim-startify.git ~/.vim/bundle/vim-startify
git clone https://github.com/junegunn/fzf.vim.git ~/.vim/bundle/fzf
git clone https://github.com/dense-analysis/ale.git ~/.vim/bundle/ale
git clone -b release https://github.com/neoclide/coc.nvim.git ~/.vim/bundle/coc.nvim
git clone https://github.com/airblade/vim-rooter.git ~/.vim/bundle/vim-rooter
git clone https://github.com/dracula/vim.git ~/.vim/bundle/dracula
git clone https://github.com/morhetz/gruvbox.git ~/.vim/bundle/gruvbox
git clone https://github.com/nordtheme/vim.git ~/.vim/bundle/nordtheme
git clone https://github.com/ryanoasis/vim-devicons.git ~/.vim/bundle/vim-devicons
git clone https://github.com/ericbn/vim-solarized.git ~/.vim/bundle/vim-solarized
git clone https://github.com/projekt0n/github-nvim-theme.git ~/.vim/bundle/github-nvim-theme
git clone https://github.com/loctvl842/monokai-pro.nvim.git ~/.vim/bundle/monokai-pro
git clone https://github.com/f-person/git-blame.nvim.git ~/.vim/bundle/git-blame

# backup zshrc file first
cp ~/.zshrc ~/.zshrc.backup

# oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# restore zshrc backup
mv ~/.zshrc.backup ~/.zshrc

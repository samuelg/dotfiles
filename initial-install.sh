#!/usr/bin/env bash

# xcode Command Line Tools.
xcode-select --install

# homebrew.
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew install ansible@2.8
brew install aurora
brew install beanstalkd
brew install brew-cask
brew install --HEAD universal-ctags/universal-ctags/universal-ctags
brew install exercism
brew install fd
brew install fzf
brew install git
brew install golang
brew install htop
brew install httpie
brew install jq
brew install libpq
brew install lnav
brew install macvim
brew install nvm
brew install pyenv
brew install redis
brew install ripgrep
brew install shpotify
brew install tig
brew install tmux
brew install watch
brew install wget
brew install yamllint
brew install mtr
brew install tree
brew install vagrant
brew install zellij

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
git clone https://github.com/dense-analysis/ale.git ~/.vim/bundle/ale
git clone https://github.com/neoclide/coc.nvim.git ~/.vim/bundle/coc.nvim
git clone https://github.com/airblade/vim-rooter.git ~/.vim/bundle/vim-rooter
git clone https://github.com/ayu-theme/ayu-vim.git ~/.vim/bundle/ayu-vim
git clone https://github.com/ryanoasis/vim-devicons.git ~/.vim/bundle/vim-devicons
git clone https://github.com/wojciechkepka/bogster.git ~/.vim/bundle/bogster
git clone https://github.com/pearofducks/ansible-vim ~/.vim/bundle/ansible-vim

# backup zshrc file first
cp ~/.zshrc ~/.zshrc.backup

# oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# restore zshrc backup
mv ~/.zshrc.backup ~/.zshrc

# power10k theme for oh-my-zsh
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

# rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
wget https://github.com/rust-analyzer/rust-analyzer/releases/download/2021-04-20/rust-analyzer-mac -O /usr/local/bin/rust-analyzer
sudo chmod 655 /usr/local/bin/rust-analyzer

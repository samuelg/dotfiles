# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Set list of themes to load
# Setting this variable when ZSH_THEME=random
# cause zsh load theme from this variable instead of
# looking in ~/.oh-my-zsh/themes/
# An empty array have no effect
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# default user for theme
DEFAULT_USER="$(whoami)"

# automatically run `nvm use` when .nvmrc present
zstyle ':omz:plugins:nvm' autoload yes

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  aws
  brew
  compleat
  docker
  docker-compose
  fzf
  git
  golang
  history
  httpie
  macos
  node
  npm
  nvm
  pep8
  pip
  pipenv
  postgres
  python
  redis-cli
  ssh-agent
  tig
  vagrant
  virtualenv
)

source $ZSH/oh-my-zsh.sh

# User configuration

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
export SSH_KEY_PATH="~/.ssh/id_rsa"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# various aliases
alias vim="nvim"
alias zshconfig="nvim ~/.zshrc"
alias ohmyzsh="nvim ~/.oh-my-zsh"
alias sssh="/usr/bin/ssh -oStrictHostKeyChecking=no -oUserKnownHostsFile=/dev/null"
alias tv="tidy-viewer"
alias weather="curl -4 \"wttr.in/huntsville?u\""
# don't pass alacritty terminfo to remote host
alias ssh="TERM=xterm-256color ssh"
# suffix aliases
alias -s {js,html,css,md,json,rb,py,rs,go,yml,toml,txt,log}=nvim
alias ctags="`brew --prefix`/bin/ctags"

# fzf
export FZF_DEFAULT_COMMAND='rg --files --follow --hidden'

# golang
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH:$GOPATH/bin

# python
export PYTHONIOENCODING=utf-8
export PATH=$PATH:/opt/homebrew/opt/python@3.10/libexec/bin

# node
export NODE_PATH=$(nvm which 18)

# java
if [ -d "$HOME/.jenv" ]; then
  export PATH="$HOME/.jenv/bin:$PATH"
  eval "$(jenv init -)"
fi

# gcp
if [ -d "$HOME/gcp" ]; then
  export PATH=$PATH:$HOME/gcp/bin
  . $HOME/gcp/completion.zsh.inc
fi


# postgres binaries
export PATH="/opt/homebrew/opt/libpq/bin:$PATH"

# add home bin dir
export PATH="$HOME/bin:$HOME/bin/private:$PATH"

# yarn global binaries
export PATH="$(yarn global bin):$PATH"

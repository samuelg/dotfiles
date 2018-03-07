export NODE_PATH=/usr/local/lib/node_modules
export SVN_EDITOR=vim
source ~/git-completion.bash
export CLICOLOR=1
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx
export PYTHONIOENCODING=utf-8
export PATH="$PATH:~/Library/Android/sdk/platform-tools:~/Library/Android/sdk/tools"
export ANDROID_HOME=/Users/sgalarneau/Library/Android/sdk
export PATH=$PATH:/usr/local/sbin

export NVM_DIR="/Users/sgalarneau/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# use brew bash completion scripts
if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi

parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

export PS1="\u@\h \W\[\033[32m\]\$(parse_git_branch)\[\033[00m\] $ "

# load autojump
[[ -s $(brew --prefix)/etc/profile.d/autojump.sh ]] && source $(brew --prefix)/etc/profile.d/autojump.sh

# load thefuck
eval $(thefuck --alias)

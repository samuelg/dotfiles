#!/usr/bin/env bash

# xcode Command Line Tools.
xcode-select --install

# homebrew.
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

(echo; echo 'eval "$(/opt/homebrew/bin/brew shellenv)"') >> "/Users/$(whoami)/.zprofile"
eval "$(/opt/homebrew/bin/brew shellenv)"

brew install git

git init
git remote add origin git@github.com:samuelg/dotfiles.git
git fetch
git checkout origin/main

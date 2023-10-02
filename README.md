# Initial setup on new machine

- Install xcode command line tools

```sh
xcode-select --install
```

- Fetch setup script

```sh
cd ~/
curl https://raw.githubusercontent.com/samuelg/dotfiles/main/initial-install-pre.sh --output initial-install-pre.sh
chmod +x initial-install-pre.sh
```

- Run the setup script

```sh
./initial-install-pre.sh
```

- Run the initial install script

```sh
eval "$(/opt/homebrew/bin/brew shellenv)"
./initial-install.sh
```

# Dotfiles

## Initial setup

```sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
chezmoi init https://github.com/antw/dotfiles.git
chezmoi diff
chezmoi apply -v
```

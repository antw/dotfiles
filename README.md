# Dotfiles

## Initial setup

```sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
eval $(/opts/homebrew/bin/brew shellenv)
brew install chezmoi 1password-cli
eval $(op signin my.1password.com hi@antw.dev)
chezmoi init https://github.com/antw/dotfiles.git
chezmoi diff
chezmoi apply -v
```

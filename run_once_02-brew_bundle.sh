#!/usr/bin/env bash
set -e

# Install homebrew if it's missing
if ! command -v brew >/dev/null 2>&1; then
  echo "Installing homebrew"
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

  eval "$(/opt/homebrew/bin/brew shellenv)"
fi

brew update
brew bundle check --global || brew bundle install --global
brew cleanup

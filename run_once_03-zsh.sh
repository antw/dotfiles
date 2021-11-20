#!/usr/bin/env bash
set -e

if [ -f "/usr/local/bin/zsh" ]; then
  sudo dscl . -create /Users/$USER UserShell /usr/local/bin/zsh
else if [ -f "/opt/homebrew/bin/zsh"]; then
  sudo dscl . -create /Users/$USER UserShell /opt/homebrew/bin/zsh
fi

if [[ -d ~/.zprezto ]]; then
  echo "Updating Prezto..."

  cd ~/.zprezto

  git fetch
  git reset origin/master --hard
  git clean -fd
else
  echo "Cloning Prezto..."
  git clone https://github.com/sorin-ionescu/prezto ~/.zprezto
  cd ~/.zprezto
fi

git submodule update --init --recursive

setopt EXTENDED_GLOB
for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
  if [[ ! -f "${ZDOTDIR:-$HOME}/.${rcfile:t}" ]]; then
    ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
  fi
done

rm -f ~/.zlogout
rm -f ~/.zpreztorc

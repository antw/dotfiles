export ITERM2_SHOULD_DECORATE_PROMPT=0

export GOPATH=$HOME

export VISUAL=vim
export EDITOR=vim
export BUNDLER_EDITOR="code"

export PAGER=less

# Homebrew
export HOMEBREW_NO_ANALYTICS=1

# Binaries
export PATH=$PATH:$GOPATH/bin

# Python
export PATH="$(pyenv root)/shims:$PATH"
export PATH="$HOME/.local/bin:$PATH"

# Cargo / Rust
if [ -f $HOME/.cargo/env ]; then
  source $HOME/.cargo/env
fi

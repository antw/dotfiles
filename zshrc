# Ensure Homebrew site-functions are in the path.
fpath+=("$HOMEBREW_PREFIX/share/zsh/site-functions")

# History
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory

# Auto-complete.
autoload -Uz compinit && compinit

# Pure prompt.
autoload -U promptinit; promptinit
prompt pure

source $HOMEBREW_PREFIX/share/zsh-history-substring-search/zsh-history-substring-search.zsh
source $HOMEBREW_PREFIX/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

eval "$(zoxide init zsh)"

for include ($HOME/.zshrc.d/*.zsh) source $include

# Shopify dev tool


[[ -x /opt/homebrew/bin/brew ]] && eval $(/opt/homebrew/bin/brew shellenv)

[ -f /opt/dev/dev.sh ] && source /opt/dev/dev.sh

[[ -f /opt/dev/sh/chruby/chruby.sh ]] && { type chruby >/dev/null 2>&1 || chruby () { source /opt/dev/sh/chruby/chruby.sh; chruby "$@"; } }

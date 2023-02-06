# Ensure Homebrew site-functions are in the path.
fpath+=("$HOMEBREW_PREFIX/share/zsh/site-functions")

# Pure prompt.
autoload -U promptinit; promptinit
prompt pure

source $HOMEBREW_PREFIX/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source $HOMEBREW_PREFIX/share/zsh-history-substring-search/zsh-history-substring-search.zsh
source $HOMEBREW_PREFIX/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

eval "$(zoxide init zsh)"

for include ($HOME/.zshrc.d/*.zsh) source $include

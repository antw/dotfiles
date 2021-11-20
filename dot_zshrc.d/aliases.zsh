alias be="bundle exec"
alias ls="exa"
alias z="fasd_cd -d"

alias k=kubectl

if ! command -v kubectl; then
  source <(kubectl completion zsh)
  complete -o default -F __start_kubectl k
fi

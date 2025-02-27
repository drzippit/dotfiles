# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Antidote package manager
source ~/.config/zsh/antidote/antidote.zsh
antidote load ${ZDOTDIR:-$HOME}/.config/zsh/zsh_plugins.txt

# Load p10k if exists
[[ ! -f ~/.config/zsh/.p10k.zsh ]] || source ~/.config/zsh/.p10k.zsh

# Update path
export GOPATH=$HOME/go
export PATH=$PATH:~/.local/bin:/opt/nvim-linux64/bin:$GOPATH:$GOPATH/bin
export CDPATH=~/.config/nvim-custom/

# Set nvim as editor
export EDITOR=nvim

# Aliases
if command -v eza &>/dev/null; then
  alias ls="eza --icons=always"
  alias ll="eza --icons=always -la"
  alias lla='eza -alhg'
  alias tree='eza --tree'
fi
if command -v zoxide &>/dev/null; then
  eval "$(zoxide init zsh)"

  alias cd='z'
  # Alias below is same as 'cd -', takes to the previous directory
  alias cdd='z -'
fi

# --- File Manager ---
alias fm='yazi'
function y() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
	yazi "$@" --cwd-file="$tmp"
	if cwd="$(command cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
		builtin cd -- "$cwd"
	fi
	rm -f -- "$tmp"
}

# --- Terraform ---
alias tf='terraform'
alias tfa='terraform apply'
alias tfaaa='terraform apply --auto-approve'
alias tfc='terraform console'
alias tfd='terraform destroy'
alias tff='terraform fmt'
alias tfi='terraform init'
alias tfiu='terraform init -upgrade'
alias tfo='terraform output'
alias tfp='terraform plan'
alias tfv='terraform validate'
alias tfs='terraform state'
alias tft='terraform test'
alias tfsh='terraform show'

# --- Kubernetes ---
# This command is used a LOT both below and in daily life
alias k=kubectl
# Apply a YML file
alias kaf='kubectl apply -f'
# Drop into an interactive terminal on a container
alias keti='kubectl exec -t -i'
# General aliases
alias kdel='kubectl delete'
alias kdelf='kubectl delete -f'
# List all contexts
alias kcgc='kubectl config get-contexts'
# Pod management.
alias kgp='kubectl get pods'
alias kgpl='kgp -l'
alias kgpn='kgp -n'
alias kgpsl='kubectl get pods --show-labels'
alias kgpa='kubectl get pods --all-namespaces'
alias kgpw='kgp --watch'
alias kgpwide='kgp -o wide'
alias kep='kubectl edit pods'
alias kdp='kubectl describe pods'
alias kdelp='kubectl delete pods'
alias kgpall='kubectl get pods --all-namespaces -o wide'

# Service management.
alias kgs='kubectl get svc'
alias kgsa='kubectl get svc --all-namespaces'
alias kgsw='kgs --watch'
alias kgswide='kgs -o wide'
alias kes='kubectl edit svc'
alias kds='kubectl describe svc'
alias kdels='kubectl delete svc'

# Ingress management
alias kgi='kubectl get ingress'
alias kgia='kubectl get ingress --all-namespaces'
alias kei='kubectl edit ingress'
alias kdi='kubectl describe ingress'
alias kdeli='kubectl delete ingress'

# Namespace management
alias kgns='kubectl get namespaces'
alias kens='kubectl edit namespace'
alias kdns='kubectl describe namespace'
alias kdelns='kubectl delete namespace'
alias kcn='kubectl config set-context --current --namespace'

# ConfigMap management
alias kgcm='kubectl get configmaps'
alias kgcma='kubectl get configmaps --all-namespaces'
alias kecm='kubectl edit configmap'
alias kdcm='kubectl describe configmap'
alias kdelcm='kubectl delete configmap'

# Secret management
alias kgsec='kubectl get secret'
alias kgseca='kubectl get secret --all-namespaces'
alias kdsec='kubectl describe secret'
alias kdelsec='kubectl delete secret'

# Deployment management.
alias kgd='kubectl get deployment'
alias kgda='kubectl get deployment --all-namespaces'
alias kgdw='kgd --watch'
alias kgdwide='kgd -o wide'
alias ked='kubectl edit deployment'
alias kdd='kubectl describe deployment'
alias kdeld='kubectl delete deployment'
alias ksd='kubectl scale deployment'
alias krsd='kubectl rollout status deployment'
# Rollout management.
alias kgrs='kubectl get replicaset'
alias kdrs='kubectl describe replicaset'
alias kers='kubectl edit replicaset'
alias krh='kubectl rollout history'

# File copy
alias kcp='kubectl cp'

# Node Management
alias kgno='kubectl get nodes'
alias kgnosl='kubectl get nodes --show-labels'
alias keno='kubectl edit node'
alias kdno='kubectl describe node'
alias kdelno='kubectl delete node'

# PVC management.
alias kgpvc='kubectl get pvc'
alias kgpvca='kubectl get pvc --all-namespaces'
alias kgpvcw='kgpvc --watch'
alias kepvc='kubectl edit pvc'
alias kdpvc='kubectl describe pvc'
alias kdelpvc='kubectl delete pvc'

# Service account management.
alias kdsa="kubectl describe sa"
alias kdelsa="kubectl delete sa"

# DaemonSet management.
alias kgds='kubectl get daemonset'
alias kgdsa='kubectl get daemonset --all-namespaces'
alias kgdsw='kgds --watch'
alias keds='kubectl edit daemonset'
alias kdds='kubectl describe daemonset'
alias kdelds='kubectl delete daemonset'

# CronJob management.
alias kgcj='kubectl get cronjob'
alias kecj='kubectl edit cronjob'
alias kdcj='kubectl describe cronjob'
alias kdelcj='kubectl delete cronjob'

# Job management.
alias kgj='kubectl get job'
alias kej='kubectl edit job'
alias kdj='kubectl describe job'
alias kdelj='kubectl delete job'
alias kru='kubectl rollout undo'

# Statefulset management.
alias kgss='kubectl get statefulset'
alias kgssa='kubectl get statefulset --all-namespaces'
alias kgssw='kgss --watch'
alias kgsswide='kgss -o wide'
alias kess='kubectl edit statefulset'
alias kdss='kubectl describe statefulset'
alias kdelss='kubectl delete statefulset'
alias ksss='kubectl scale statefulset'
alias krsss='kubectl rollout status statefulset'

# Port forwarding
alias kpf="kubectl port-forward"

# Tools for accessing all information
alias kga='kubectl get all'
alias kgaa='kubectl get all --all-namespaces'

# Logs
alias kl='kubectl logs'
alias kl1h='kubectl logs --since 1h'
alias kl1m='kubectl logs --since 1m'
alias kl1s='kubectl logs --since 1s'
alias klf='kubectl logs -f'
alias klf1h='kubectl logs --since 1h -f'
alias klf1m='kubectl logs --since 1m -f'
alias klf1s='kubectl logs --since 1s -f'

# --- Kubernetes end ---

# ViM Distro's
alias vim="nvim" # Default nvim, based on lazy-vim
alias vc='NVIM_APPNAME=nvim-custom nvim' # Custom which is more bloated but does the same as lazy-vim

# Bind up and down keys to partially search in history
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

# Completions for tab to only need a part
autoload -Uz +X compinit && compinit
autoload -Uz +X bashcompinit && bashcompinit
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}' 'r:|=*' 'l:|=* r:|=*'

eval "$(direnv hook zsh)"

if command -v fuck &>/dev/null; then
  eval $(thefuck --alias)
  eval $(thefuck --alias fk)
fi

if command -v fzf &>/dev/null; then
  source <(fzf --zsh)
fi

if command -v k9s &>/dev/null; then
  source <(k9s completion zsh)
fi

typeset -g POWERLEVEL9K_INSTANT_PROMPT=quiet

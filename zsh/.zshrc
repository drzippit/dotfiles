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

# Tools for accessing all information
alias kga='kubectl get all'
alias kgaa='kubectl get all --all-namespaces'
# --- Kubernetes end ---

#  Brew declerative
alias bbic="brew update &&\
    brew bundle install --cleanup --file=~/dotfiles/Brewfile &&\
    brew upgrade --greedy"

# ViM Distro's
alias vim="nvim" # Default nvim, based on lazy-vim

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

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

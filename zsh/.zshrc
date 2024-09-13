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
export PATH=$PATH:~/.local/bin:/opt/nvim-linux64/bin:$GOPATH
export CDPATH=~/.config/nvim-custom/

# Set nvim as editor
export EDITOR=nvim

# Load shell integration
#source <(fzf --zsh)
eval "$(zoxide init zsh)"

# Aliases
alias vim="NVIM_APPNAME=nvim-custom nvim"
alias nvim="NVIM_APPNAME=nvim-custom nvim"
alias v="NVIM_APPNAME=nvim-custom nvim"
alias ls="eza --icons=always"
alias ll="eza --icons=always -la"
alias cd="z"
# Terraform
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

# ViM Distro's
alias vk='NVIM_APPNAME=nvim-kickstart nvim' # Kickstart
alias vc='NVIM_APPNAME=nvim-custom nvim' # Custom
alias nvc='NVIM_APPNAME=nvim-chad nvim' #NvChad
alias nm='NVIM_APPNAME=nvim-mini nvim' #NvMini

# Bind up and down keys to partially search in history
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

# Completions for tab to only need a part
autoload -Uz +X compinit && compinit
autoload -Uz +X bashcompinit && bashcompinit
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}' 'r:|=*' 'l:|=* r:|=*'

eval $(thefuck --alias)
eval $(thefuck --alias fk)
source <(fzf --zsh)


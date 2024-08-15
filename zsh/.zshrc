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

# Load shell integration
source <(fzf --zsh)
eval "$(zoxide init zsh)"

# Aliases
alias vim="nvim"
alias ls="eza --icons=always"
alias ll="eza --icons=always -la"
alias cd="z"

# Bind up and down keys to partially search in history
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

# Completions for tab to only need a part
autoload -Uz +X compinit && compinit
autoload -Uz +X bashcompinit && bashcompinit
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}' 'r:|=*' 'l:|=* r:|=*'

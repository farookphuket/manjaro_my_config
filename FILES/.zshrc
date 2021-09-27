# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Use powerline
USE_POWERLINE="true"
# Source manjaro-zsh-configuration
if [[ -e /usr/share/zsh/manjaro-zsh-config ]]; then
  source /usr/share/zsh/manjaro-zsh-config
fi
# Use manjaro zsh prompt
if [[ -e /usr/share/zsh/manjaro-zsh-prompt ]]; then
  source /usr/share/zsh/manjaro-zsh-prompt
fi


alias ll='ls -la'
alias la='ls -A'
alias l='ls -CF'
alias cl='clear'

neofetch

# To customize prompt, run `p10k configure` or edit /usr/share/zsh/p10k.zsh.
[[ ! -f /usr/share/zsh/p10k.zsh ]] || source /usr/share/zsh/p10k.zsh



plugins=(git zsh-syntax-highlighting zsh-autosuggestions)


autoload -Uz history-beginning-search-menu
zle -N history-beginning-search-menu
bindkey '^X^X' history-beginning-search-menu

alias ll="ls -la"
alias cl="clear"
alias vi="nvim ."


# ========= for Ubuntu,Debian 
#alias nvar="nautilus /var/www/html"
#alias cvar="cd /var/www/html/"


# ======= manjaroi,Arch Linux
alias nnet="nautilus /srv/http"
alias cnet="cd /srv/http && tmux"
alias pkt="pkill tmux"



# ======== php artisan alias
alias ptinker="php artisan tinker"
alias pseed="php artisan db:seed"
alias pmifresh="php artisan migrate:fresh"
alias proute="php artisan route:list"
alias pwatch="npm run watch"

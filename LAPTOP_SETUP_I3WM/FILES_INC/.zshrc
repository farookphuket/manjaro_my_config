
# This file was copy from `Manjaro Laptop` on Tue 28 Sep 2021 at Roi-et
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

#antigen bundle zsh-users/zsh-autosuggestions
#source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
#


# call neofetch
neofetch


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

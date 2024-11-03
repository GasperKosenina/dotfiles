export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"

if [ "$TMUX" = "" ]; then tmux; fi

if command -v rbenv &>/dev/null; then
    eval "$(rbenv init -)"
fi

alias v='nvim'
alias s='cd ~/School'
alias c='clear'
alias mp='cd ~/My_Projects'
alias d='cd ~/dotfiles'
alias gs='git status'
alias ga='git add .'
alias gc='git commit'
alias gp='git pull'

set -o vi

export PATH=$PATH:$(go env GOPATH)/bin

source $ZSH/oh-my-zsh.sh
source <(fzf --zsh)
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh

plugins=(git zsh-syntax-highlighting zsh-bat)

__conda_setup="$('/usr/local/Caskroom/miniconda/base/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/usr/local/Caskroom/miniconda/base/etc/profile.d/conda.sh" ]; then
        . "/usr/local/Caskroom/miniconda/base/etc/profile.d/conda.sh"
    else
        export PATH="/usr/local/Caskroom/miniconda/base/bin:$PATH"
    fi
fi
unset __conda_setup

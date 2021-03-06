#!/bin/bash

function git_branch {
  ref=$(git symbolic-ref HEAD 2> /dev/null) || return
  echo " [$(tput setaf 4)"${ref#refs/heads/}"$(tput sgr0)]"
}

# My prompt w/ git branch
export PS1="\$(tput bold)\$(tput setaf 4)\w\$(tput sgr0)\$(git_branch): "

# Adding extra ~/.bin to path
export PATH="~/.bin:$PATH"

# Aliases
alias g="git"
alias v="vim"
alias t="tmux"
alias z="zeus"
alias connect="ssh finn@178.79.137.198"
alias redis="sudo redis-server /etc/redis/6379.conf"

# Common typos
alias cd..="cd .."
alias gist="git st"

# On e.g. ubuntu, remap casplock
#if hash xmodmap 2>/dev/null; then
#  xmodmap -e 'clear Lock' -e 'keycode 0x42 = Escape'
#fi

# Run rbenv
if hash rbenv 2>/dev/null; then
  eval "$(rbenv init -)" 
fi
alias redis="sudo redis-server /etc/redis/6379.conf"
export PATH="$HOME/.rbenv/shims:$PATH"

# vim <3
EDITOR="vim"

# git completion
source $HOME/etc/git-completion.bash

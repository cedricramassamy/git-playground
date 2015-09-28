# .bashrc


# Source global definitions
if [ -f /etc/bashrc ]; then
        . /etc/bashrc
fi
if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
      . /etc/bash_completion
fi

force_color_prompt=yes

# User specific aliases and functions

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

alias ls='ls -G'
alias l='ls -al'
alias lh='ls -alh'

alias nano='nano -c'

alias gti='git'
alias gto='git'
alias goit='git'
alias gits='git status'

alias gtis='gits'
alias gitl='git log --graph --decorate'
alias gtil='gitl'
alias gitp='git pull --rebase'
alias gtip='gitp'
alias gitr='git rebase -i'
alias gtir='gitr'
alias gitd='git diff'
alias gitla='git log --graph --decorate --pretty=oneline --abbrev-commit'
alias gitmp='git commit -m tmp && git rebase -i'
alias gtimp='gitmp'
alias hs='history'
alias pas='ps aux | grep '

PS1='\[\033[1;35m\]\t ${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u\[\033[00m\]\[\033[04;34m\]@\[\033[00m\]\[\033[1;33m\]\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]$ '

alias gtid='gitd'
alias gitv='git describe --tags --long --always'
alias gtiv='gitv'
alias gtila='gitla'
alias gitree='git log --graph --oneline --all --simplify-by-decoration'

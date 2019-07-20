# General aliases for interactive operation:

alias cp='cp -iu'   # interactive, only if newer
alias rm='rm -i'
alias mv='mv -iu'   # interactive, only if newer

alias c='clear'
alias cls='clear'
alias delete='rm -i'

## Display raw-control-characters (control-A is ^A)
alias l='less -r'
alias less='less -r'

alias vi=vim

# enable color support of ls
alias ll='ls -lF --color=auto'			# long list
alias la='ls -A  --color=auto' 			# all but . and ..
alias ls='ls -F --color=auto'
alias dir="ls -l --color=auto | grep '^d'"      # list only the directories
alias vdir='ls --color=auto --format=long'

alias blueterm='setterm -term linux -back blue -fore white -clear'

# Default to human readable figures
alias df='df -h'
alias du='du -h'

# alias whence='type -a'                        # where, of a sort
alias grep='grep --color'                       # show differences in colour



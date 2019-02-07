# colorize 
export CLICOLOR=1
export LSCOLORS=ExFxCxDxCxegedabagacAh

# set default editor to vi
export SVN_EDITOR=vim

# remove duplicate entries in bash history
export HISTIGNORE="&:[bf]g:exit"
export PYTHONPATH=/usr/local/lib/python2.7/site-packages:$PYTHONPATH

# Colors from http://wiki.archlinux.org/index.php/Color_Bash_Prompt
# misc
NO_COLOR='\e[0;37m' #disable any colors
# regular colors
BLACK='\e[0;30m'
RED='\e[0;31m'
GREEN='\e[0;32m'
YELLOW='\e[0;33m'
BLUE='\e[0;34m'
MAGENTA='\e[0;35m'
CYAN='\e[0;36m'
WHITE='\e[0;37m'

# COLORS
LIGHT_GRAY="\[\033[0;37m\]"; BLUE="\[\033[1;36m\]"; RED="\[\033[0;31m\]"; LIGHT_RED="\[\033[1;31m\]"; 
GREEN="\[\033[0;32m\]"; WHITE="\[\033[1;37m\]"; LIGHT_GRAY="\[\033[0;37m\]"; YELLOW="\[\033[1;33m\]";
# GIT PROMPT (http://gist.github.com/120804)
function parse_git_branch { 
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ \(\1\)/'; 
}
function parse_git_status { 
  git status 2> /dev/null | sed -e '/working directory clean$/!d' | wc -l; 
}
function check_git_changes { 
  # tput setaf 1 = RED, tput setaf 2 = GREEN
  [ `parse_git_status` -ne 1 ] && tput setaf 1 || tput setaf 2
}

PS1="\[$WHITE\]⌈(╯°□°)╯︵ ┻━┻\[$NO_COLOR\] :: \[$CYAN\][\$(~/.rvm/bin/rvm-prompt i v g)]\[$NO_COLOR\] :: \w\[$GREEN\] ::\$(parse_git_branch)\[$WHITE\]\n⌊[~]"

export PATH=$PATH:/usr/local/git/bin

alias ls='ls -la'
alias corgi='echo woof woof'
alias mvim='mvim -c :NERDTree'
alias start_postgres='pg_ctl -D /usr/local/var/postgresql@9.6 start'
alias stop_postgres='pg_ctl -D /usr/local/var/postgresql@9.6 stop'
alias memecached='brew services start memcached'
alias bers='bundle exec rspec spec'

#SHORTCUTS!
alias bur='bundle update; rspec spec'

#git
alias gcl='git clone'
alias gs='git status'
alias gf='git fetch'
alias gco='git checkout'
alias gcm='git checkout master'
alias ga='git add'
alias gca!='git commit -a --amend'
alias gca='git commit'
alias grhh='git reset --hard HEAD'
alias sq2='git rebase -i HEAD~2'

export HEADLESS=false
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile
export PATH="/usr/local/opt/postgresql@9.6/bin:$PATH"
PATH=$PATH:/usr/local/sbin
export GOPATH=$HOME
export PAPERTRAIL_API_TOKEN='F1aIflfgodo5e3D03CIs'
export PATH="/usr/local/opt/qt@5.5/bin:$PATH"
export NPM_TOKEN=1a36ca50-d0e8-4381-85c4-5065c281a204

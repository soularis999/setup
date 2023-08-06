# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="ys"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git autoenv brew docker docker-compose vi-mode)

# User configuration
export PATH="/bin:/usr/local/bin:/usr/bin"
source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='vim'
else
   export EDITOR='vim'
fi

alias edit='vim'
alias emacs='emacs -nw'
alias ls='ls -G'
alias ll='ls -laG'

## Show hidden files ##
alias l.='ls -d .* --color=auto'

## set some other defaults ##
alias df='df -H'
alias du='du -ch'

## get rid of command not found ##
alias cd..='cd ..'
 
## a quick way to get out of current directory ##
alias ..='cd ..'
alias ...='cd ../../../'
alias ....='cd ../../../../'

## Colorize the grep command output for ease of use (good for log files)##
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

## create parent dir on demand
alias mkdir='mkdir -pv'

# handy short cuts #
alias h='history'
alias j='jobs -l'

## pass options to free ## 
alias meminfo='free -m -l -t'
 
## get top process eating memory
alias psmem='ps auxf | sort -nr -k 4'
alias psmem10='ps auxf | sort -nr -k 4 | head -10'
 
## get top process eating cpu ##
alias pscpu='ps auxf | sort -nr -k 3'
alias pscpu10='ps auxf | sort -nr -k 3 | head -10'
 
## Get server cpu info ##
alias cpuinfo='lscpu'

################### Fuzzy search #####################
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

################### ASDF #############################
[ -f  /usr/local/opt/asdf/libexec/asdf.sh ] &&  . /usr/local/opt/asdf/libexec/asdf.sh


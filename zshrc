# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="dst"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git gitfast brew tmux asdf docker docker-compose vi-mode iterm2 rust themes)

# User configuration
export PATH="/bin:/usr/local/bin:/usr/bin"
source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='nvim'
else
   export EDITOR='nvim'
fi

# Enable neovim true color support
export NVIM_TUI_ENABLE_TRUE_COLOR=1

alias edit='nvim'
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

################### Max alias #######################
alias md5='/sbin/md5 -r'
alias md5sum='/sbin/md5 -r'

################### Fuzzy search #####################
[ -f ~/.fzf.zsh ] && source <(fzf --zsh)

################### RUST #############################
[ -f ~/.cargo/env ] && source ~/.cargo/env

################### ASDF #############################
[ -f /opt/homebrew/opt/asdf/libexec/asdf.sh ] &&
	. /opt/homebrew/opt/asdf/libexec/asdf.sh

################### PowelLevel10k ####################
source ~/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

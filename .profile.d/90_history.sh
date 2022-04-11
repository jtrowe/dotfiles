# Name:             ~/.profile.d/90_history.sh
# Maintainer:       Joshua T. Rowe
# Canonical Source: https://github.com/jtrowe/dotfiles
# License:          MIT License

[[ -d ~/.history ]] || mkdir --mode=0700 ~/.history
[[ -d ~/.history ]] && chmod 0700 ~/.history

# append to the history file, don't overwrite it
shopt -s histappend

HISTCONTROL=ignoreboth
HISTTIMEFORMAT='%F %T  '
HISTFILE=~/.history/history.$(date +%Y%m%d-%H%M%S).$$.log
HISTFILESIZE=0
HISTFILESIZE=10000
HISTSIZE=10000

# Write the history file after every command
PROMPT_COMMAND='history -a'

# So this variable is availabe to shells
export HISTFILE

# Creates symlink in current directory to $HISTFILE
alias local-history='ln --symbolic $HISTFILE .$(basename $HISTFILE)'

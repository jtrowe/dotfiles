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

PROMPT_COMMAND='history -a'


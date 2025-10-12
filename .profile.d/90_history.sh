# Name:             ~/.profile.d/90_history.sh
# Maintainer:       Joshua T. Rowe
# Canonical Source: https://github.com/jtrowe/dotfiles
# License:          MIT License

[[ -d ~/.history ]] || mkdir --mode=0700 ~/.history
[[ -d ~/.history ]] && chmod 0700 ~/.history


function history-reset {
    # append to the history file, don't overwrite it
    shopt -s histappend

    # Write the history file after every command
    PROMPT_COMMAND='history -a'

    HISTCONTROL=ignoreboth

    HIST_DATE=$(date +%Y%m%d-%H%M%S)
    HIST_TIMESTAMP=$(date +%Y%m%d-%H%M%S)

    HISTFILE=~/.history/history.$HIST_DATE.$$.log

    HISTTIMEFORMAT='%F %T  '

    # probably needed if try to reset after local-history is already run
    if [[ ! -e "$HISTFILE" ]]
    then
        HISTFILESIZE=0
    fi

    HISTFILESIZE=0
    HISTFILESIZE=10000
    HISTSIZE=10000

    # So this variable is availabe to shells
    export HIST_DATE
    export HISTFILE

}


# Will create a symlink in current directory to $HISTFILE
# and set the environment variable LOCAL_HISTDIR to the
# current directory.
# ( So you can remember where you called # local-history. )
function local-history {
    name=${1:-}

    LOCAL_HISTDIR=$(pwd -P)
    export LOCAL_HISTDIR

    link=.history.$name.$HIST_DATE.$$.log

    ts=$(date +%s)

    echo "#$ts" >> $HISTFILE
    printf 'echo "local-history: HISTFILE => %s"\n' "$HISTFILE" >> $HISTFILE

    echo "#$ts" >> $HISTFILE
    printf 'echo "local-history: LOCAL_HISTDIR => %s"\n' "$LOCAL_HISTDIR" >> $HISTFILE


    ln --symbolic $HISTFILE $link
}


history-reset


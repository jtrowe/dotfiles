# Name:             ~/.profile
# Maintainer:       Joshua T. Rowe
# Canonical Source: https://github.com/jtrowe/dotfiles
# License:          MIT License


# if running bash
if [ -n "$BASH_VERSION" ]; then
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi


if [ -d $HOME/.profile.d ]
then
    for p in $HOME/.profile.d/*.sh
    do
        if [ -r $p ]
        then
            . $p
        fi
    done
fi


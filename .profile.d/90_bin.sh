# Name:             ~/.profile.d/90_bin.sh
# Maintainer:       Joshua T. Rowe
# Canonical Source: https://github.com/jtrowe/dotfiles
# License:          MIT License

if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi



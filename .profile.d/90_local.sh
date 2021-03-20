# Name:             ~/.profile.d/90_local.sh
# Maintainer:       Joshua T. Rowe
# Canonical Source: https://github.com/jtrowe/dotfiles
# License:          MIT License

if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi



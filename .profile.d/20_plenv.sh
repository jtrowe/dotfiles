# Name:             ~/.profile.d/20_plenv.sh
# Maintainer:       Joshua T. Rowe
# Canonical Source: https://github.com/jtrowe/dotfiles
# License:          MIT License

export PATH="$HOME/.plenv/bin:$PATH"

eval "$(plenv init -)"

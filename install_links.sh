# find ~ -maxdepth 3 -type l -exec ls -l {} + | \
# grep 'apps/dotfiles' | \
# awk '{print "ls -s " $11 " " $9}' | \
# sed -e "s/\/home\/tim/~/g"
ls -s ~/apps/dotfiles/alacritty/alacritty.toml      ~/.config/alacritty/alacritty.toml
ls -s ~/apps/dotfiles/config/i3/config              ~/.config/i3/config
ls -s ~/apps/dotfiles/config/nvim/init.lua          ~/.config/nvim/init.lua
ls -s ~/apps/dotfiles/screenlayout/auto-monitors.sh ~/.screenlayout/auto-monitors.sh
ls -s ~/apps/dotfiles/vim/vimrc                     ~/.vim/vimrc


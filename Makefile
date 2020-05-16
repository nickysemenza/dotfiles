all:
	ln -sf ~/.dotfiles/zshrc.symlink ~/.zshrc
	mkdir -p ~/.hammerspoon &&  ln -sf ~/.dotfiles/hammerspoon.lua ~/.hammerspoon/init.lua
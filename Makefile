all:
	ln -sf ~/.dotfiles/zshrc.symlink ~/.zshrc
	ln -sf ~/.dotfiles/vimrc ~/.vimrc
	mkdir -p ~/.hammerspoon &&  ln -sf ~/.dotfiles/hammerspoon.lua ~/.hammerspoon/init.lua
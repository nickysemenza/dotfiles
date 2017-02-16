# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="af-magic"
ENABLE_CORRECTION="true"
plugins=(git osx jsontools common-aliases pip python sudo zsh-syntax-highlighting)
source $ZSH/oh-my-zsh.sh
eval $(thefuck --alias)

export PATH="$PATH:${HOME}/bin"
#export PIP_REQUIRE_VIRTUALENV=true

export EDITOR='subl -w'
alias zshconfig="subl ~/.zshrc"
alias reload="source ~/.zshrc"
alias we="curl wttr.in"
alias o="open ."
alias ddev="cd ~/dev"
alias gl="git log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold cyan)%aD%C(reset) %C(bold green)(%ar)%C(reset)%C(bold yellow)%d%C(reset)%n'' %C(white)%s%C(reset) %C(dim white)- %an%C(reset)' --all"

mcd () {
	mkdir -p $1
	cd $1
}
export PATH="/usr/local/sbin:$PATH"

export NVM_DIR="/Users/nickysemenza/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
export PATH="$HOME/.yarn/bin:$PATH"

export GOPATH=$HOME/godata
export PATH=$PATH:$GOPATH/bin
##### ZSH SETUP
export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="af-magic"
ENABLE_CORRECTION="true"	#command correction
plugins=(git osx jsontools common-aliases pip python sudo zsh-syntax-highlighting)
source $ZSH/oh-my-zsh.sh	#load oh my zsh

#### MISC
eval $(thefuck --alias)		#command fixer
export EDITOR='subl -w'		#open files with sublime

##### ALIASES
alias git=hub
alias zshconfig="subl ~/.zshrc" #open zsh config with sublime
alias reload="source ~/.zshrc" 	#reload zsh from new config
alias we="curl wttr.in" 	#get the weather
alias o="open ."		#open current directory in finder
alias ddev="cd ~/dev"		#cd to ~/dev
alias gl="git log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold cyan)%aD%C(reset) %C(bold green)(%ar)%C(reset)%C(bold yellow)%d%C(reset)%n'' %C(white)%s%C(reset) %C(dim white)- %an%C(reset)' --all"

mcd () { mkdir -p $1; cd $1 } 		#mcd dir: makes a dir and cd's into it

export GOPATH=$HOME/godata
##### PATH config
export PATH=$PATH:$GOPATH/bin		#add gopath
export PATH="$PATH:${HOME}/bin"		#add ~
export PATH="/usr/local/sbin:$PATH" 	#add brew sbin
export PATH="$HOME/.yarn/bin:$PATH" 	#add yarn


export NVM_DIR="/Users/nickysemenza/.nvm"	#nvm
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" # This loads nvm


fpath=(~/.zsh/completion $fpath)

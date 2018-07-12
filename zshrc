##### ZSH SETUP
export ZSH=$HOME/.oh-my-zsh
# ZSH_THEME="af-magic"
ZSH_THEME="ys"
ENABLE_CORRECTION="true"	#command correction
plugins=(git osx jsontools pip python sudo zsh-syntax-highlighting laravel5)
source $ZSH/oh-my-zsh.sh	#load oh my zsh

#### MISC
eval $(thefuck --alias)		#command fixer
export EDITOR='subl -w'		#open files with sublime
export GPG_TTY=$(tty)
##### ALIASES
alias pu="vendor/bin/phpunit --verbose --coverage-text --coverage-html=coverage"
alias git=hub
alias zshconfig="subl ~/.zshrc" #open zsh config with sublime
alias reload="source ~/.zshrc" 	#reload zsh from new config
alias we="curl wttr.in" 		#get the weather
alias o="open ."				#open current directory in finder
alias ddev="cd ~/dev"			#cd to ~/dev
alias gl="git log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold cyan)%aD%C(reset) %C(bold green)(%ar)%C(reset)%C(bold yellow)%d%C(reset)%n'' %C(white)%s%C(reset) %C(dim white)- %an%C(reset)' --all"
alias dnsflush="sudo killall -HUP mDNSResponder;sudo killall mDNSResponderHelper;sudo dscacheutil -flushcache"
alias cdgo="~/go/src/github.com/nickysemenza"
mcd () { mkdir -p $1; cd $1 } 		#mcd dir: makes a dir and cd's into it
lb() { vim ~/logbook/$(date '+%Y-%m-%d').md } #logbook

##### PATH config
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin			#add gopath
export PATH=$PATH:/usr/local/opt/go/libexec/bin #system gopath
export PATH="$PATH:${HOME}/bin"			#add ~/bin
export PATH="/usr/local/sbin:$PATH" 	#add brew sbin
export PATH="$HOME/.yarn/bin:$PATH" 	#add yarn

export JAVA_HOME=$(/usr/libexec/java_home)
export PATH=$JAVA_HOME/jre/bin:$PATH
export PATH="/usr/local/Cellar/node/7.10.0/bin:$PATH"
# node version manager
export NVM_DIR="/Users/nickysemenza/.nvm"	#nvm
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" # This loads nvm


fpath=(~/.zsh/completion $fpath)

# added by travis gem
[ -f /Users/nickysemenza/.travis/travis.sh ] && source /Users/nickysemenza/.travis/travis.sh

# tabtab source for electron-forge package
# uninstall by removing these lines or running `tabtab uninstall electron-forge`
[[ -f /Users/nickysemenza/Desktop/ganache/node_modules/tabtab/.completions/electron-forge.zsh ]] && . /Users/nickysemenza/Desktop/ganache/node_modules/tabtab/.completions/electron-forge.zsh
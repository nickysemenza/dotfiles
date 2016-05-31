# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh
#ZSH_THEME="af-magic"
ZSH_THEME="agnoster"
ENABLE_CORRECTION="true"
plugins=(git osx jsontools common-aliases pip python sudo zsh-syntax-highlighting)
source $ZSH/oh-my-zsh.sh

# User configuration

export NPM_PACKAGES="${HOME}/.npm-packages"
export NODE_PATH="$NPM_PACKAGES/lib/node_modules:$NODE_PATH"
export NODE_PATH="$NODE_PATH:/usr/local/lib/node_modules"


export PATH="$NPM_PACKAGES/bin:$PATH"
export PATH="$PATH:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/opt/X11/bin:/Users/$HOME/bin"
export PATH="/usr/local/sbin:$PATH"

export EDITOR='subl -w'

export PYTHONPATH=/usr/local/lib/python2.7/site-packages:$PYTHONPATH
#export PATH="$PATH:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools"

###RVM
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
#[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" 
########### ALIASES


################### ZSH MANAGEMENT
alias zshconfig="subl ~/.zshrc"
alias reload="source ~/.zshrc"

################## MAMP
comp() { /Applications/MAMP/bin/php/php5.5.10/bin/php /usr/bin/composer.phar "$*"; }
alias compo="/Applications/MAMP/bin/php/php5.5.10/bin/php /usr/bin/composer.phar $argv;"
alias phpmamp="/Applications/MAMP/bin/php/php5.5.10/bin/php $argv;"
alias phplog="tail -f /Applications/MAMP/logs/php_error.log"
alias mymamp="/Applications/MAMP/Library/bin/mysql --host=localhost -uroot -proot"

export MAMP_PHP=/Applications/MAMP/bin/php/php5.6.2/bin
export PATH="$MAMP_PHP:$PATH"



##### SERVERS 
alias vps="ssh root@v.nickysemenza.com"
alias cs="ssh nsemenza@moore04.cs.purdue.edu"

alias we="curl wttr.in"
alias o="open ."
alias dev="cd ~/dev"


alias gl="git log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold cyan)%aD%C(reset) %C(bold green)(%ar)%C(reset)%C(bold yellow)%d%C(reset)%n'' %C(white)%s%C(reset) %C(dim white)- %an%C(reset)' --all"

jav() {
	javac "$1.java";
	java "$1";
}

mcd () {
	mkdir -p $1
	cd $1
}

#PARACHUTE
alias pb="cd ~/Documents/dev/parachute/backend; ls"
alias pf="cd ~/Documents/dev/parachute/frontend; ls"
########### END ALIASES



### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"




. /Library/Python/2.7/site-packages/powerline/bindings/zsh/powerline.zsh


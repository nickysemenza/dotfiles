# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="af-magic"
ENABLE_CORRECTION="true"
plugins=(git osx jsontools common-aliases pip python sudo zsh-syntax-highlighting)
source $ZSH/oh-my-zsh.sh



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
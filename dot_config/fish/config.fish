set -gx EDITOR subl
# source $HOME/.cargo/env
set -Up fish_user_paths ~/.cargo/bin
set -x GOPATH $HOME/go
set -x PATH $PATH $GOPATH/bin
set -x PATH $PATH $HOME/bin
set -x PATH $PATH /opt/homebrew/bin
set -x PATH $PATH /opt/homebrew/Cellar

fish_add_path /usr/local/sbin
fish_add_path /opt/homebrew/opt/python@3.9/libexec/binfish_add_path /opt/homebrew/opt/openjdk/bin

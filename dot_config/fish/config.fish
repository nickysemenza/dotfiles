set -gx EDITOR subl
# source $HOME/.cargo/env
set -Up fish_user_paths ~/.cargo/bin
set -x GOPATH $HOME/go
set -x PATH $PATH $GOPATH/bin
set -x PATH $PATH $HOME/bin


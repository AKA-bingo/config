source /usr/local/share/antigen/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle brew
antigen bundle docker
antigen bundle docker-compose
antigen bundle golang
antigen bundle command-not-found

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-completions

# Load the theme.
antigen theme Soliah

# Tell Antigen that you're done.
antigen apply

#GOLANG
#export GOROOT=/usr/local/go
export GOPATH=$HOME/workspace/golang
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin
export GOPROXY=https://goproxy.io

#Proxy
export ALL_PROXY=socks5://127.0.0.1:1086
export http_proxy=http://127.0.0.1:1087
export https_proxy=http://127.0.0.1:1087;

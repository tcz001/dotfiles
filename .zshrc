# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="agnoster"
DEFAULT_USER="twer"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git svn ruby rails brew gem rvm bundle mvn sbt jekyll gpg2 haxe go)

source $ZSH/oh-my-zsh.sh

export CLICOLOR=1
export LSCOLORS=fxbxaxdxcxegedabagacad
export TERM=xterm-color
export GOPATH=$HOME/go/
alias tw='cd ~/talks'
alias ta='cd ~/dev/TA-Probation'
alias ec='cd ~/dev/ecool'
alias ca='cd ~/dev/carnival'
alias st='cd ~/dev/strike'
alias hl='cd ~/dev/hyperledger'
alias dl='cd ~/dev/deeplearning'
alias vr='cd ~/dev/vr'
alias ls='ls -a'
alias ll='ls -al'
alias cl='clear'
alias git='nocorrect git'
alias vim='nvim'
alias chrome='open -a /Applications/Google\ Chrome.app'
alias ga='echo $(python /Users/twer/dev/bash-vpn/totp.py) | pbcopy'
alias gita='echo $(python /Users/twer/dev/bash-vpn/totp_github.py) | pbcopy'
alias gdbnew='/usr/local/Cellar/gdb/7.9.1/bin/gdb'
alias killl='kill -9'

# Travis
[ -f /Users/twer/.travis/travis.sh ] && source /Users/twer/.travis/travis.sh

# PATH
PATH=$PATH:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:~/bin:/Users/twer/.local/bin:/usr/local/sbin
PATH=$PATH:$GOPATH/bin
## RVM
PATH=$PATH:$HOME/.rvm/bin
## Postgres
PATH=$PATH:/Applications/Postgres.app/Contents/Versions/9.4/bin
## Heroku
PATH=$PATH:/usr/local/heroku/bin
## PhoneGap
PATH=$PATH:~/dev/adt-bundle/sdk/platform-tools:~/dev/adt-bundle/sdk/tools
## ccache
PATH=$PATH:/usr/local/opt/ccache/libexec
PATH=$PATH:/usr/local/opt/llvm/bin
## Conda
PATH=$PATH:/Users/twer/miniconda2/bin

export PATH=$PATH

# direnv
eval "$(direnv hook zsh)"

# openssl libconv libpcap
export LDFLAGS="-L/usr/local/opt/openssl/lib -L/usr/local/opt/libiconv/lib -L/usr/local/opt/libpcap/lib"
export CPPFLAGS="-I/usr/local/opt/openssl/include -I/usr/local/opt/libiconv/include -I/usr/local/opt/libpcap/include"
export PKG_CONFIG_PATH=PKG_CONFIG_PATH:/usr/local/opt/openssl/lib/pkgconfig

# pattern match history
bindkey '^R' history-incremental-pattern-search-backward

# C and Cpp include/lib dirs
export C_INCLUDE_PATH=/usr/local/include
export CPLUS_INCLUDE_PATH=/usr/local/include
export C_LIB_PATH=/usr/local/lib
export CPLUS_LIB_PATH=/usr/local/lib
# docbook
export XML_CATALOG_FILES=/usr/local/etc/xml/catalog

# Java
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_05.jdk/Contents/Home/
# Android
export ANDROID_HOME=~/dev/adt-bundle/sdk/

# NodeJS
export NVM_DIR="/Users/twer/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

# Locale
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

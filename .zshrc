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

# Customize to your needs...
export PATH=$PATH:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:~/bin
export CLICOLOR=1
export LSCOLORS=fxbxaxdxcxegedabagacad
export TERM=xterm-color
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.7.0_25.jdk/Contents/Home/
export DYLD_LIBRARY_PATH=/opt/oracle/instantclient_11_2/
export GOPATH=$HOME/go/
alias tw='cd ~/talks'
alias ta='cd ~/dev/TA-Probation'
alias ca='cd ~/dev/carnival'
alias we='cd ~/dev/wechat'
alias st='cd ~/dev/strike'
alias ls='ls -a'
alias ll='ls -al'
alias cl='clear'
alias git='nocorrect git'
alias vim='nvim'
alias chrome='open -a /Applications/Google\ Chrome.app'
alias ga='echo $(python /Users/twer/dev/bash-vpn/totp.py) | pbcopy'
alias gdbnew='/usr/local/Cellar/gdb/7.9.1/bin/gdb'

export PATH=${PATH}:~/dev/adt-bundle/sdk/platform-tools:~/dev/adt-bundle/sdk/tools # Add PhoneGap

# added by travis gem
[ -f /Users/twer/.travis/travis.sh ] && source /Users/twer/.travis/travis.sh

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
PATH=$PATH:/Applications/Octave-cli.app/Contents/MacOS
export ANT_OPTS="-Xms512m -Xmx1024m"
export PATH=/Users/twer/pebble-dev/PebbleSDK-current/bin:$PATH
PATH=$PATH:/Users/twer/node_modules/karma/bin
PATH=$PATH:/Applications/Postgres.app/Contents/Versions/9.4/bin
PATH=$PATH:$GOPATH/bin
eval "$(direnv hook zsh)"



### ola's alias
alias gp='git pull --rebase'
alias gc='git commit -a'
alias gpu='git push'
alias gd='git diff'
export XML_CATALOG_FILES=/usr/local/etc/xml/catalog

### ccache
export PATH=${PATH}:/usr/local/opt/ccache/libexec
export PATH=${PATH}:/usr/local/opt/llvm/bin

### android
export ANDROID_HOME=~/dev/adt-bundle/sdk/

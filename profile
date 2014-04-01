#!/bin/bash

source ~/.git-prompt.sh
source ~/.git-completion.sh

PS1='[\u@\h \[\e[0;34m\]\W\[\e[m\]$(__git_ps1 " \[\e[0;32m\](%s)\[\e[m\]")]\$ '

alias go2j='cd $HOME/Dev/workspace_juno'
alias go2i='cd $HOME/Dev/workspace_intellij'
alias go2go='cd $HOME/Dev/workspace_intellij/go/src/github.com/pgu'
alias ls='ls -Gphal'
alias gitmeld='git mergetool -t meld -y'

export PORTAL_DIR='file:///Users/pascal/Dev'

export GOPATH=/Users/pascal/Dev/workspace_intellij/go
export PATH=$PATH:$GOPATH/bin

export GOROOT=/usr/local/go

export PATH=/Users/pascal/Dev/google/golang/go_appengine:$PATH

export JAVA_HOME=/System/Library/Frameworks/JavaVM.framework/Versions/CurrentJDK/Home
export PATH=$PATH:$JAVA_HOME/bin

export M2_HOME=/usr/share/maven
export M2=$M2_HOME/bin
export PATH=$PATH:$M2



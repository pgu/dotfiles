# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# don't put duplicate lines in the history. See bash(1) for more options
# ... or force ignoredups and ignorespace
HISTCONTROL=ignoredups:ignorespace

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "$debian_chroot" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color) color_prompt=yes;;
    xterm) color_prompt=yes;;
esac

# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
#force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	# We have color support; assume it's compliant with Ecma-48
	# (ISO/IEC-6429). (Lack of such support is extremely rare, and such
	# a case would tend to support setf rather than setaf.)
	color_prompt=yes
    else
	color_prompt=
    fi
fi

if [ "$color_prompt" = yes ]; then
  PS1='${debian_chroot:+($debian_chroot)}\[\033[00;35m\]\u@\h\[\033[00m\]:\[\033[00;31m\]\w\[\033[00m\]\[\e[00;34m\]$(__git_ps1 " [%s] ")\[\e[m\]\$ '
else
  PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\[\e[1;33m\]$(__git_ps1 " [%s] ")\[\e[m\]\$ '
fi
unset color_prompt force_color_prompt

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias go2s='cd $HOME/bin/workspace/storeforce'
alias go2w='cd $HOME/bin/workspace_wikeo/webtop'
alias go2ww='cd $HOME/bin/workspace_wikeo/webtop/portal'
alias go2j='cd /media/pgu/workspace'
alias go2i='cd /media/pgu/workspace_intellij_perso'
alias go2tomcat='cd $HOME/bin/tomcat/apache-tomcat-7.0.22'
alias go2script='cd $HOME/bin/workspace_wikeo/wikeo/wikeo-sh'
alias go2fit='cd $HOME/bin/fitnesse'
alias go2p='cd $HOME/Dropbox/workspace/zaarby'
alias go2go='cd /media/pgu/workspace_intellij_perso/go/src/github.com/pgu'
alias go2g='cd $HOME/bin/golang/go_appengine/gopath/src/github.com/pgu'

alias ff='~/bin/ff_6/firefox/firefox -P ff6 -no-remote &'
alias gitmeld="git mergetool -t meld -y"
alias gl="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"

alias wimp='cd $HOME/bin/workspace_wikeo/wikeo/wikeo-foundation/wikeo-import/target'
alias goserve='goapp serve --port 8989'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
    . /etc/bash_completion
fi

export M2_HOME=/home/pascal/bin/maven/apache-maven-3.0.3
export M2="$M2_HOME/bin"
export MAVEN_OPTS="-Dmaven.artifact.threads=4 -Xmx512m -XX:MaxPermSize=256m"
PATH="$M2:$PATH"

#export MONGO_HOME=$HOME/bin/mongodb/mongodb-linux-x86_64-1.6.4
#PATH="$MONGO_HOME/bin:$PATH"

export JAVA_HOME="/usr/lib/jvm/java-6-sun"
PATH="$JAVA_HOME/bin:$PATH"

# ------------
#    GOLANG
# ------------
alias go=goapp
export GOLANG_HOME="$HOME/bin/golang"
export GOPATH="/media/pgu/workspace_intellij_perso/go"

# GO GAE
export GOLANG_GAE="$GOLANG_HOME/go_appengine"
export GOROOT="$GOLANG_GAE/goroot"

# GO standalone (1.2)
#export GOROOT="$GOLANG_HOME/go"

export PATH="$GOPATH/bin:$PATH"
export PATH="$GOROOT/bin:$PATH"
export PATH="$PATH:$GOLANG_GAE"

# ------------
# ------------


PATH="$HOME/bin_tmp:$PATH"
PATH="$HOME/bin/jdepend/jdepend-2.9.1:$PATH"

export WIKEO_DEPLOY_HOME="$HOME/bin/workspace_wikeo/wikeo/wikeo-deploy"

# ssh setup
# ssh-add $HOME/.ssh/id_rsa
DIR_WIKEO_SH="$HOME/bin/workspace_wikeo/wikeo/wikeo-sh"
#$DIR_WIKEO_SH/work-ssh-add.sh

export PATH="$PATH:$DIR_WIKEO_SH"

export WIKEO_PROPERTIES_DIR="file:///home/pascal/bin"
export PORTAL_DIR='file:///home/pascal/bin'

#export WEBTOP_PROPERTIES_DIR="$HOME/bin"

export PATH="$HOME/bin/node/node-v0.10.5-linux-x64/bin:$PATH"
export PATH="$HOME/bin/phantomjs/phantomjs/bin:$PATH"






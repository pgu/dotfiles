defaults write com.apple.finder AppleShowAllFiles YES
# killall Finder 

source ~/.git-completion.sh
source ~/.git-prompt.sh

export GIT_PS1_SHOWDIRTYSTATE=true
export GIT_PS1_SHOWUNTRACKEDFILES=true
export GIT_PS1_SHOWSTASHSTATE=true
export GIT_PS1_SHOWUPSTREAM="auto verbose name git"
export GIT_PS1_DESCRIBE_STYLE="branch"
export GIT_PS1_SHOWCOLORHINTS=true
export GIT_PS1_STATESEPARATOR=""

#export PS1='\e[0;32m\e[40m \W \e[m$(__git_ps1 "\e[1;33m\e[40m (%s) \e[m")\e[0;32m\e[40m \$ \e[m '
export PS1='\[\e[1;32m\]\[\e[40m\] \W \[\e[1;33m\]$(__git_ps1 "(%s)")\[\e[m\] \n'

# some more ls aliases
alias ls='ls -kFGlAhp'
#alias vi='mvim'

alias gl="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"

export MAVEN_OPTS="-Dmaven.artifact.threads=4 -Xmx512m"
export M2_HOME=/usr/share/maven
export M2="$M2_HOME/bin"
PATH="$M2:$PATH"

#export JAVA_HOME=/System/Library/Frameworks/JavaVM.framework/Versions/CurrentJDK/Home
#usr/libexec/java_home -v 1.7 / 1.8
/usr/libexec/java_home
PATH="$JAVA_HOME/bin:$PATH"
alias j7='export JAVA_HOME=`/usr/libexec/java_home -v 1.7`'

export CASSANDRA_HOME=~/Dev/datastax/dse
PATH="$CASSANDRA_HOME/bin:$PATH"

#export GOROOT=/usr/local/go
export GOPATH=~/Dev/workspace_intellij/go
export PATH=~/Dev/go_appengine:$PATH

alias go2i="cd ~/Dev/workspace_intellij/"
alias go2g="cd ~/Dev/workspace_intellij/go/src/github.com/pgu"
alias cdc="cd ~/Dev/workspace_intellij/apispark-console"
alias cda="cd ~/Dev/workspace_intellij/apispark"
alias cdr="cd ~/Dev/workspace_intellij/restlet-studio"

# ssh setup
# ssh-add $HOME/.ssh/id_rsa


# The next line updates PATH for the Google Cloud SDK.
# source '/Users/pascal/Dev/google/cloud/pascal/google-cloud-sdk/path.bash.inc'

# The next line enables bash completion for gcloud.
# source '/Users/pascal/Dev/google/cloud/pascal/google-cloud-sdk/completion.bash.inc'



##
# Your previous /Users/pascal/.bash_profile file was backed up as /Users/pascal/.bash_profile.macports-saved_2015-01-02_at_10:32:57
##

# MacPorts Installer addition on 2015-01-02_at_10:32:57: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.


export WORKSPACE_APISPARK=$HOME/Dev/workspace_intellij

alias xtop='top -F -R -o cpu'



[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

export PATH="/usr/local/bin:$PATH"

code () { VSCODE_CWD="$PWD" open -n -b "com.microsoft.VSCode" --args $* ;}


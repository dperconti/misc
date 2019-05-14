
#!/bin/bash

COLUMNS=`tput cols` export COLUMNS # Get screen width.

WELCOME="WELCOME, DONATO"
VERSE="If you're worn out in this footrace with men, what makes you think you can race against horses?"

dp_smaller_than=160
if [ $COLUMNS -lt $dp_smaller_than ]
then
    for i in {1..$COLUMNS}; do; echo -n "="; done;
    printf "%*s\n" $(((${#WELCOME}+$COLUMNS)/2)) "$WELCOME"
    printf "%*s\n" $(((${#VERSE}+$COLUMNS)/2)) "$VERSE"
    for i in {1..$COLUMNS}; do; echo -n "="; done;
fi

# using color
export CLICOLOR=1

# \h:\W \u\$
export PS1='\[\033[01;33m\]\u@\h\[\033[01;31m\] \W\$\[\033[00m\] '

# grep
alias grep='grep --color=always'

#   ------------------------------------------------------------
#   Virtualenv
#   ------------------------------------------------------------
export WORKON_HOME=$HOME/.virtualenvs
source /usr/local/bin/virtualenvwrapper.sh
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh

eval "$(pyenv init -)" # Sets python to use pyenv
export PYENV_VIRTUALENVWRAPPER_PREFER_PYVENV="true"

#   ------------------------------------------------------------
#   Set Paths
#   ------------------------------------------------------------
# Bin
export PATH=/usr/local/git/bin:/usr/local/bin:/opt/X11/bin/:$PATH

# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

 # Java Virtual Machine
 # export JAVA_HOME=$(/usr/libexec/java_home)
 export JAVA_HOME=`/usr/libexec/java_home`
 export PATH=$PATH:$JAVA_HOME/bin

 function setjdk() {
  if [ $# -ne 0 ]; then
   removeFromPath '/System/Library/Frameworks/JavaVM.framework/Home/bin'
   if [ -n "${JAVA_HOME+x}" ]; then
    removeFromPath $JAVA_HOME
   fi
   export JAVA_HOME=`/usr/libexec/java_home -v $@`
   export PATH=$JAVA_HOME/bin:$PATH
  fi
 }
 function removeFromPath() {
  export PATH=$(echo $PATH | sed -E -e "s;:$1;;" -e "s;$1:?;;")
 }
setjdk 1.8.0_151

POWERLEVEL9K_MODE='awesome-patched'
POWERLEVEL9K_PYTHON_ICON='\U1F40D'
POWERLEVEL9K_SHORTEN_DIR_LENGTH=1
POWERLEVEL9K_TIME_FORMAT="%D{%H:%M:%S}"
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=('time' 'status' 'todo' 'context' 'dir' 'vcs' 'virtualenv')
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=('nvm' 'rvm' 'load' 'ram_joined' 'battery')


 # Set name of the theme to load.
 # Look in ~/.oh-my-zsh/themes/
 # Optionally, if you set this to "random", it'll load a random theme each
 # time that oh-my-zsh is loaded.
 ZSH_THEME="powerlevel9k/powerlevel9k"
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
  DISABLE_AUTO_TITLE="true"

 # Uncomment following line if you want to disable command autocorrection
 # DISABLE_CORRECTION="true"

 # Uncomment following line if you want red dots to be displayed while waiting for completion
  COMPLETION_WAITING_DOTS="true"

 # Uncomment following line if you want to disable marking untracked files under
 # VCS as dirty. This makes repository status check for large repositories much,
 # much faster.
 # DISABLE_UNTRACKED_FILES_DIRTY="true"

 # Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
 # Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
 # Example format: plugins=(rails git textmate ruby lighthouse)
 plugins=(git git-extras osx)
 source $ZSH/oh-my-zsh.sh

 # Hide the user@hostname information
 DEFAULT_USER="$(whoami)"

#   -------------------------------
#   1.  ENVIRONMENT CONFIGURATION
#   -------------------------------

#   ------------------------------------------------------------
# Custom Functions
#   ------------------------------------------------------------


#   -----------------------------
#   2.  MAKE TERMINAL BETTER
#   -----------------------------
    alias cp='cp -iv'                           # Preferred 'cp' implementation
    alias mv='mv -iv'                           # Preferred 'mv' implementation
    alias mkdir='mkdir -pv'                     # Preferred 'mkdir' implementation
    alias ll='ls -FGlAhp'                       # Preferred 'ls' implementation
    alias less='less -FSRXc'                    # Preferred 'less' implementation
    cd() { builtin cd "$@"; ll; }               # Always list directory contents upon 'cd'
    alias cd..='cd ../'                         # Go back 1 directory level (for fast typers)
    alias ..='cd ../'                           # Go back 1 directory level
    alias .2='cd ../../'                        # Go back 2 directory levels
    alias .3='cd ../../../'                     # Go back 3 directory levels
    alias .4='cd ../../../../'                  # Go back 4 directory levels
    alias .5='cd ../../../../../'               # Go back 5 directory levels
    alias .6='cd ../../../../../../'            # Go back 6 directory levels

    alias hideFiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'      # Hide hidden files
    alias showFiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'     # Show hidden files
    alias fixBear='sudo rm /Applications/Bear.app/Contents/Resources/Default\ App\ Theme.theme; sudo rm /Applications/Bear.app/Contents/Resources/Default\ Text\ Theme.theme; sudo mv /Applications/Bear.app/Contents/Resources/Cobalt\ App\ Theme.theme /Applications/Bear.app/Contents/Resources/Default\ App\ Theme.theme; sudo mv /Applications/Bear.app/Contents/Resources/Cobalt\ Text\ Theme.theme /Applications/Bear.app/Contents/Resources/Default\ Text\ Theme.theme'
    alias fixSlack='cat /Users/dperconti/slack_css.txt | sudo tee -a /Applications/Slack.app/Contents/Resources/app.asar.unpacked/src/static/ssb-interop.js'
    alias addspace="defaults write com.apple.dock persistent-apps -array-add '{tile-data={}; tile-type=\"spacer-tile\";}' & killall Dock"
    alias mfa="oathtool -v --totp -b Z7OCMXCKTTUU7RATYTGVGOI2RSLTSMSZR6Y3Q3NBARY6THC2PFNCAEAIEL6TATX3 | tail -1 | pbcopy"


#   -----------------------------
#   2.5 NPM
#   -----------------------------

export PATH=~/.npm-global/bin:$PATH

#   -----------------------------
#   2.5 Shortcuts
#   -----------------------------
    alias Desktop="cd ~/Desktop"
    alias swift="lldb --repl"
    alias sourceit="cp ~/.zshrc ~/.bash_profile; clear; source ~/.bash_profile"
    alias clear="sourceit; clear"
    alias fuck='eval $(thefuck $(fc -ln -1 | tail -n 1)); fc -R'
    alias ipy='python3 -m IPython'
    alias ipy2='python3 -m IPython'

    ## GIT SHORTCUTS
    alias gitClean="git fetch --all && git reset --hard origin/master;"
    alias gitCleanLocal="git reset --hard; git clean -fd"
    alias gitSmash="find . -type d -depth 1 -exec git --git-dir={}/.git --work-tree=$PWD/{} pull origin master \;"
    gitDelete() {git push origin --delete $1}
    gs() {
        git reset $(git merge-base master $(git branch | grep \* | cut -d ' ' -f2)); git add -A
    }
    gi() {
        git rm -r --cached .; git add .; git commit -m "fixed untracked files"
    }

    ## pip shortcuts
    alias pipClean="pip freeze | xargs pip uninstall -y"

    ## Random 
    alias address="echo '3111 107th Pl SE, Bellevue, WA 98004' | pbcopy"
    alias ipython="python -m IPython"
    alias ipython3="python3 -m IPython"

#   -------------------------------
#   3.  FILE AND FOLDER MANAGEMENT
#   -------------------------------

#   extract:  Extract most know archives with one command
#   ---------------------------------------------------------
    extract () {
        if [ -f $1 ] ; then
          case $1 in
            *.tar.bz2)   tar xjf $1     ;;
            *.tar.gz)    tar xzf $1     ;;
            *.bz2)       bunzip2 $1     ;;
            *.rar)       unrar e $1     ;;
            *.gz)        gunzip $1      ;;
            *.tar)       tar xf $1      ;;
            *.tbz2)      tar xjf $1     ;;
            *.tgz)       tar xzf $1     ;;
            *.zip)       unzip $1       ;;
            *.Z)         uncompress $1  ;;
            *.7z)        7z x $1        ;;
            *)     echo "'$1' cannot be extracted via extract()" ;;
             esac
         else
             echo "'$1' is not a valid file"
         fi
    }

#   ---------------------------
#   6.  NETWORKING
#   ---------------------------

alias netCons='lsof -i'                                            # netCons:      Show all open TCP/IP sockets
alias flushDNS='dscacheutil -flushcache'                           # flushDNS:     Flush out the DNS Cache
alias lsock='sudo /usr/sbin/lsof -i -P'                            # lsock:        Display open sockets
alias lsockU='sudo /usr/sbin/lsof -nP | grep UDP'                  # lsockU:       Display only open UDP sockets
alias lsockT='sudo /usr/sbin/lsof -nP | grep TCP'                  # lsockT:       Display only open TCP sockets
alias ipInfo0='ifconfig en0'                                       # ipInfo0:      Get info on connections for en0
alias ipInfo1='ifconfig en1'                                       # ipInfo1:      Get info on connections for en1
alias openPorts='sudo lsof -i | grep LISTEN'                       # openPorts:    All listening connections
alias showBlocked='sudo ipfw list'                                 # showBlocked:  All ipfw rules inc/ blocked IPs

#   ii:  display useful host related informaton
#   -------------------------------------------------------------------
    ii() {
        echo -e "\nYou are logged on ${RED}$HOST"
        echo -e "\nAdditionnal information:$NC " ; uname -a
        echo -e "\n${RED}Users logged on:$NC " ; w -h
        echo -e "\n${RED}Current date :$NC " ; date
        echo -e "\n${RED}Machine stats :$NC " ; uptime
        echo -e "\n${RED}Current network location :$NC " ; scselect
        echo -e "\n${RED}Public facing IP Address :$NC " ; myip
        #echo -e "\n${RED}DNS Configuration:$NC " ; scutil --dns
        echo
    }

# export YVM_DIR=/Users/dperconti/.yvm
# [ -r $YVM_DIR/yvm.sh ] && source $YVM_DIR/yvm.sh

# added by pipsi (https://github.com/mitsuhiko/pipsi)
export PATH="/Users/dperconti/.local/bin:$PATH"

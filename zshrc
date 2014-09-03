# Path to your oh-my-zsh configuration.
 ZSH=$HOME/.oh-my-zsh

 # Maven Build Stuff
 # export M2_HOME=/usr/local/apache-maven/apache-maven-3.1.1
 # export M2=$M2_HOME/src/bin
 # export PATH=$M2:$PATH
 
 # Java Virtual Machine
 export JAVA_HOME=$(/usr/libexec/java_home)
 export PATH=$PATH:$JAVA_HOME/bin

 # Akka Stuff
 export AKKA_HOME=/Users/donatoperconti/tools/akka-2.3.4
 export PATH=$PATH:$AKKA_HOME/bin

 # Scala Stuff
 export SCALA_HOME=/Users/donatoperconti/tools/scala-2.11.2
 export PATH=$PATH:$SCALA_HOME/bin

 # SBT Stuff
export SBT_OPTS=-XX:MaxPermSize=256m

 #export PATH=$PATH:scala-2.9.1/bin

 # Set name of the theme to load.
 # Look in ~/.oh-my-zsh/themes/
 # Optionally, if you set this to "random", it'll load a random theme each
 # time that oh-my-zsh is loaded.
 ZSH_THEME="agnoster"
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
 DEFAULT_USER=donatoperconti

 # Customize to your needs...
 alias goadmin="ssh dperconti@admin-1.prod.urbanairship.com" 

 # Custom Functions
 goscp()
 {
     scp dperconti@admin-1.prod.urbanairship.com:/home/dperconti/$1 ~/Desktop/
 }

#   -------------------------------
#   1.  ENVIRONMENT CONFIGURATION
#   -------------------------------

#   Set Paths
#   ------------------------------------------------------------
    export PATH=/usr/local/share/python:/usr/local/bin:/usr/local/sbin:$HOME/.local/bin:$PATH:$HOME/.rvm/bin
    export PIP_NO_INDEX=1
    export PIP_FIND_LINKS=http://pulp.prod.urbanairship.com/repos/python-packages/
    export PATH=/usr/local/bin:$PATH
    export AIRSHIP_PATH=/Users/donatoperconti/Documents/dev/caseWork/airship
    export CHEF_PATH=/Users/donatoperconti/Documents/dev/caseWork/chef_configs
    export ARCHFLAGS="-Wno-error=unused-command-line-argument-hard-error-in-future"
    export DEV=/Users/donatoperconti/Documents/dev/

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
    alias ...='cd ../../'                       # Go back 2 directory levels
    alias .3='cd ../../../'                     # Go back 3 directory levels
    alias .4='cd ../../../../'                  # Go back 4 directory levels
    alias .5='cd ../../../../../'               # Go back 5 directory levels
    alias .6='cd ../../../../../../'            # Go back 6 directory levels
    alias carbon='python /opt/graphite/bin/carbon-cache.py'
    alias graphite-web='python /opt/graphite/bin/run-graphite-devel-server.py /opt/graphite'

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

alias myip='curl ip.appspot.com'                    # myip:         Public facing IP Address
alias netCons='lsof -i'                             # netCons:      Show all open TCP/IP sockets
alias flushDNS='dscacheutil -flushcache'            # flushDNS:     Flush out the DNS Cache
alias lsock='sudo /usr/sbin/lsof -i -P'             # lsock:        Display open sockets
alias lsockU='sudo /usr/sbin/lsof -nP | grep UDP'   # lsockU:       Display only open UDP sockets
alias lsockT='sudo /usr/sbin/lsof -nP | grep TCP'   # lsockT:       Display only open TCP sockets
alias ipInfo0='ipconfig getpacket en0'              # ipInfo0:      Get info on connections for en0
alias ipInfo1='ipconfig getpacket en1'              # ipInfo1:      Get info on connections for en1
alias openPorts='sudo lsof -i | grep LISTEN'        # openPorts:    All listening connections
alias showBlocked='sudo ipfw list'                  # showBlocked:  All ipfw rules inc/ blocked IPs

#   ii:  display useful host related informaton
#   -------------------------------------------------------------------
    ii() {
        echo -e "\nYou are logged on ${RED}$HOST"
        echo -e "\nAdditionnal information:$NC " ; uname -a
        echo -e "\n${RED}Users logged on:$NC " ; w -h
        echo -e "\n${RED}Current date :$NC " ; date
        echo -e "\n${RED}Machine stats :$NC " ; uptime
        echo -e "\n${RED}Current network location :$NC " ; scselect
        echo -e "\n${RED}Public facing IP Address :$NC " ;myip
        #echo -e "\n${RED}DNS Configuration:$NC " ; scutil --dns
        echo
    }


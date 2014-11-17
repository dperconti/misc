
#!/bin/bash

COLUMNS=`tput cols` export COLUMNS # Get screen width.

WELCOME="WELCOME, DONATO"
VERSE="If you're worn out in this footrace with men, what makes you think you can race against horses?"
L_1="         ..,:cloddooddooooddoooddxxdolc:,...                             ..';coxxdo:,.                               ..',;:c:cllloooooooooooodddllc:,..     "
L_2="     .:loooloool;,'....';::ccc::;:cllclxkxdddooc:,.                   .:x00OOOkxddk000kd:.                  ..';clodkOkxxdoooool:::::;:;'';dkocc;:lx000ko,  "
L_3="   'dko;'...,ld;    .,dkdl::,..       ,lc;:c:cox00Oxdoc,..           .dWWXo'.'..  ';:dO0O,            ..;loddddolcoxo;.  ..      .:l::cc' .oKk;.  .';:lk0k:."
L_4="  :XXc  ..';cd:      ;OO'    .,;ccccccokkl:ldxooddooxO0OOOxo:'.       ;OWO, .;'.   .c:...        .,codxxdl:,'',:lol'..;ccclc:cllcc:.      .,ko. .,clc:,;:'. "
L_5=" .dWk' 'll:;,',:cc,  .,,..;c,.  .''''.'''. .;ccoxkxxkkkkkO0KXX0xl;.    oNXo,:0Oc'..c0l.,'   .,:oxxxol:;;;coollll:.   .',,,,,:xx;. .;'     .c0kc::;:k0xlcc'  "
L_6="  .:c;cdc..;dxo:,.,:'. .lOxc..',cllll::ll:;:ooldkkxc;cddlld0K0XKKXKOo;oXMNxlk0d,'lOOd' .codOKXK0o::c:llldx:.,:::;',;:cllcllclxkko'.::.   'o0klcxkdloOOl,.   "
L_7="      .;;cdko'..cdxdc...c0o. .,,''.',cc'.'',cdl;;,,'.,:cdkkxxkx:.';lOKNMWKl,''.  ....,lxK0xdl;',coollcc:ll,.:lcoxxkxol,'','..',ll.    ..c0KkdlcoOklc;.      "
L_8="          ..,:okd;..,dOd;:;.   .;dkOd:. ..''',clodxxkxdo:;,,,,;,. 'dddkxc.  .,.    .::cxc'''.''.':,,:oxxxxxkkolol;'':c;coxOOdc..,.   ,xO0Ko;:cloc'          "
L_9="             .;l:,cdxo,.;odl' .;0Kd,':loxxk0Okxo:,''..........  .'dOxxc.   .k0;   .lXx. ..;;'','',,..';:;,;cldxxxxxxxkOkdO0dl:.  .cod0Kl;ldxxl.             "
L_10="              .'clod;',dOo:,';cxKO, 'c:',:lc'..,;;;'.           ...'dKXd'.:kNX:.'cxNXc     .,,........,;,...',;;;okl',cldo;. 'clcx0d;:lodl,'.              "
L_11="                 .'cdxOk;..;kKkl,....'';dX0;;ol:'.                 ;OWMXl'lko,..,ldx:......     ...        .'cxkkKNo';cl;....'clokkkxc;c:.                 "
L_12="                    ..,clcloo:.   .',;:lkXx',:..                   .kWWk'.   ..  ... ..  ..                  'dKNWKc,odc;;cl:;;;:cc:;'.                    "
L_13="                        ......    .coddlc;,,codo.                  .dXNx..',:;'.'::;'   .                     ;0NO;.,oxkdddc.                              "
L_14="                                ,x0xl:....:0KOdl;.                 .xNNl .;:,.  .''''.  ''                   'OW0;..  .:x0KOkl.                            "
L_15="                               :KWx..,,;cokxd:. ..                  cXX: .,'...    .,.                       lNK:  .;:;:dX0lcc,                            "
L_16="                               cNXc':oxdlldl.   ..                  .kWo  .;:l, ..',;.                      .xNo   .;dOOKX0k:                              "
L_17="                               .oKK0x;';cll:'.   ..                 '0Nl  .',:.  .,od,    ..                .OX:    .:k0KK0d,                              "
L_18="                                 'oOx:ox:,co:''..cc.                '0No    .c'   .''   ...,'              'OX0l. .;d0K0kc.                                "
L_19="                                   .';odcod,;l,'oo:cc:,'.           .oWO.   .:.   ..    ':..,.         ...;OWkoOxc:oOxl'                                   "
L_20="                                      .';cl::,.':'';:c:,.            ,0No. .:l.  ..     ''  .'.       ,loolol;:ol;'..                                      "
L_21="                                          ....          ..            lNK,  .'                ....     ....                                                "
L_22="                                                                      .oXx..::'''.                                                                         "
L_23="                                                                       .dNk'..                                                                             "
L_24="                                                                        'ONx.                                                                              "
L_25="                                                                         ;0Xo.                                                                             "
L_26="                                                                          .dKk.                                                                            "
L_27="                                                                           .dNx,.                                                                          "
L_28="                                                                            .','.                                                                          "

dp_smaller_than=160
if [ $COLUMNS -lt $dp_smaller_than ]
then
    for i in {1..$COLUMNS}; do; echo -n "="; done;
    printf "%*s\n" $(((${#WELCOME}+$COLUMNS)/2)) "$WELCOME"
    printf "%*s\n" $(((${#VERSE}+$COLUMNS)/2)) "$VERSE"
    for i in {1..$COLUMNS}; do; echo -n "="; done;
else
    for i in {1..$COLUMNS}; do; echo -n "="; done;
    printf "%*s\n" $(((${#WELCOME}+$COLUMNS)/2)) "$WELCOME"
    for i in {1..$COLUMNS}; do; echo -n "="; done;

    printf "%*s\n" $(((${#L_1}+$COLUMNS)/2)) "$L_1"
    printf "%*s\n" $(((${#L_2}+$COLUMNS)/2)) "$L_2"
    printf "%*s\n" $(((${#L_3}+$COLUMNS)/2)) "$L_3"
    printf "%*s\n" $(((${#L_4}+$COLUMNS)/2)) "$L_4"
    printf "%*s\n" $(((${#L_5}+$COLUMNS)/2)) "$L_5"
    printf "%*s\n" $(((${#L_6}+$COLUMNS)/2)) "$L_6"
    printf "%*s\n" $(((${#L_7}+$COLUMNS)/2)) "$L_7"
    printf "%*s\n" $(((${#L_8}+$COLUMNS)/2)) "$L_8"
    printf "%*s\n" $(((${#L_9}+$COLUMNS)/2)) "$L_9"
    printf "%*s\n" $(((${#L_10}+$COLUMNS)/2)) "$L_10"
    printf "%*s\n" $(((${#L_11}+$COLUMNS)/2)) "$L_11"
    printf "%*s\n" $(((${#L_12}+$COLUMNS)/2)) "$L_12"
    printf "%*s\n" $(((${#L_13}+$COLUMNS)/2)) "$L_13"
    printf "%*s\n" $(((${#L_14}+$COLUMNS)/2)) "$L_14"
    printf "%*s\n" $(((${#L_15}+$COLUMNS)/2)) "$L_15"
    printf "%*s\n" $(((${#L_16}+$COLUMNS)/2)) "$L_16"
    printf "%*s\n" $(((${#L_17}+$COLUMNS)/2)) "$L_17"
    printf "%*s\n" $(((${#L_18}+$COLUMNS)/2)) "$L_18"
    printf "%*s\n" $(((${#L_19}+$COLUMNS)/2)) "$L_19"
    printf "%*s\n" $(((${#L_20}+$COLUMNS)/2)) "$L_20"
    printf "%*s\n" $(((${#L_21}+$COLUMNS)/2)) "$L_21"
    printf "%*s\n" $(((${#L_22}+$COLUMNS)/2)) "$L_22"
    printf "%*s\n" $(((${#L_23}+$COLUMNS)/2)) "$L_23"
    printf "%*s\n" $(((${#L_24}+$COLUMNS)/2)) "$L_24"
    printf "%*s\n" $(((${#L_25}+$COLUMNS)/2)) "$L_25"
    printf "%*s\n" $(((${#L_26}+$COLUMNS)/2)) "$L_26"
    printf "%*s\n" $(((${#L_27}+$COLUMNS)/2)) "$L_27"
    printf "%*s\n" $(((${#L_28}+$COLUMNS)/2)) "$L_28"

    for i in {1..$COLUMNS}; do; echo -n "="; done;
    printf "%*s\n" $(((${#VERSE}+$COLUMNS)/2)) "$VERSE"
    for i in {1..$COLUMNS}; do; echo -n "="; done;
fi

 # Path to your oh-my-zsh configuration.
 ZSH=$HOME/.oh-my-zsh

 # Maven Build Stuff
 # export M2_HOME=/usr/local/apache-maven/apache-maven-3.1.1
 # export M2=$M2_HOME/src/bin
 # export PATH=$M2:$PATH

 # Java Virtual Machine
 # export JAVA_HOME=$(/usr/libexec/java_home)
 export JAVA_HOME=`/usr/libexec/java_home -v 1.6`
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

#   -------------------------------
#   1.  ENVIRONMENT CONFIGURATION
#   -------------------------------

# Urban Airship
    alias goadmin="ssh dperconti@admin-1.prod.urbanairship.com"
    alias goworker4="ssh dperconti@worker-4.prod.urbanairship.com"

# Developer Short Cuts
    alias swift="lldb --repl"
    alias sourceit="clear; source ~/.bash_profile"

#   ------------------------------------------------------------
# Custom Functions
#   ------------------------------------------------------------

 goscp()
 {
     scp dperconti@admin-1.prod.urbanairship.com:/home/dperconti/$1 ~/Desktop/
 }

#   ------------------------------------------------------------
#   Set Paths
#   ------------------------------------------------------------
    export PATH=/usr/local/share/python:/usr/local/bin:/usr/local/sbin:$HOME/.local/bin:$PATH:$HOME/.rvm/bin
    export PIP_NO_INDEX=1
    #export PIP_FIND_LINKS=http://pulp.prod.urbanairship.com/repos/python-packages/
    export PATH=/usr/local/bin:$PATH

    # DEV Quicklink
    export DEV=/Users/donatoperconti/Documents/dev/

    ## Airship / Vagrant Junk
    export AIRSHIP_PATH=/Users/donatoperconti/Documents/dev/caseWork/airship_VM/airship
    export CHEF_PATH=/Users/donatoperconti/Documents/dev/caseWork/airship_VM/chef_configs
    export ARCHFLAGS="-Wno-error=unused-command-line-argument-hard-error-in-future"

    # Airship Vagrant QUICKLINK
    export AIRSHIP_VM=/Users/donatoperconti/Documents/dev/caseWork/airship_VM

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
    alias carbon='python /opt/graphite/bin/carbon-cache.py'
    alias graphite-web='python /opt/graphite/bin/run-graphite-devel-server.py /opt/graphite'
    alias Desktop="cd ~/Desktop"

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
        echo -e "\n${RED}Public facing IP Address :$NC " ;myip
        #echo -e "\n${RED}DNS Configuration:$NC " ; scutil --dns
        echo
    }


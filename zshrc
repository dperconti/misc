#!/bin/bash

COLUMNS=`tput cols` export COLUMNS # Get screen width.

WELCOME="WELCOME, DONATO"
VERSE="If you're worn out in this footrace with men, what makes you think you can race against horses?"
 L_1="        ..,:cloddooddooooddoooddxxdolc:,...                             ..';coxxdo:,.                               ..',;:c:cllloooooooooooodddllc:,..     "
 L_2="    .:loooloool;,'....';::ccc::;:cllclxkxdddooc:,.                   .:x00OOOkxddk000kd:.                  ..';clodkOkxxdoooool:::::;:;'';dkocc;:lx000ko,  "
 L_3="  'dko;'...,ld;    .,dkdl::,..       ,lc;:c:cox00Oxdoc,..           .dWWXo'.'..  ';:dO0O,            ..;loddddolcoxo;.  ..      .:l::cc' .oKk;.  .';:lk0k:."
 L_4=" :XXc  ..';cd:      ;OO'    .,;ccccccokkl:ldxooddooxO0OOOxo:'.       ;OWO, .;'.   .c:...        .,codxxdl:,'',:lol'..;ccclc:cllcc:.      .,ko. .,clc:,;:'. "
 L_5=".dWk' 'll:;,',:cc,  .,,..;c,.  .''''.'''. .;ccoxkxxkkkkkO0KXX0xl;.    oNXo,:0Oc'..c0l.,'   .,:oxxxol:;;;coollll:.   .',,,,,:xx;. .;'     .c0kc::;:k0xlcc'  "
 L_6=" .:c;cdc..;dxo:,.,:'. .lOxc..',cllll::ll:;:ooldkkxc;cddlld0K0XKKXKOo;oXMNxlk0d,'lOOd' .codOKXK0o::c:llldx:.,:::;',;:cllcllclxkko'.::.   'o0klcxkdloOOl,.   "
 L_7="     .;;cdko'..cdxdc...c0o. .,,''.',cc'.'',cdl;;,,'.,:cdkkxxkx:.';lOKNMWKl,''.  ....,lxK0xdl;',coollcc:ll,.:lcoxxkxol,'','..',ll.    ..c0KkdlcoOklc;.      "
 L_8="         ..,:okd;..,dOd;:;.   .;dkOd:. ..''',clodxxkxdo:;,,,,;,. 'dddkxc.  .,.    .::cxc'''.''.':,,:oxxxxxkkolol;'':c;coxOOdc..,.   ,xO0Ko;:cloc'          "
 L_9="            .;l:,cdxo,.;odl' .;0Kd,':loxxk0Okxo:,''..........  .'dOxxc.   .k0;   .lXx. ..;;'','',,..';:;,;cldxxxxxxxkOkdO0dl:.  .cod0Kl;ldxxl.             "
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

if [ -f ~/.maven-completion.bash ]; then
  . ~/.maven-completion.bash
fi

# Path to your oh-my-zsh installation.
export ZSH=/Users/donato/.oh-my-zsh


#   ------------------------------------------------------------
#   Set Paths
#   ------------------------------------------------------------
export PATH=/Library/PostgreSQL/10/bin:/opt/chefdk/bin:/usr/local/git/bin:/usr/local/bin:/usr/local/apache-maven-3.5.0/bin:/sbin:$PATH

# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Java Virtual Machine
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

#   -------------------------------
#   1.  ENVIRONMENT AND ZSH CONFIGURATION
#   -------------------------------

    POWERLEVEL9K_MODE='awesome-patched'
    POWERLEVEL9K_SHORTEN_DIR_LENGTH=1
    POWERLEVEL9K_TIME_FORMAT="\UE12E %D{%H:%M:%S}"
    POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=('time' 'status' 'todo' 'context' 'dir' 'vcs' 'virtualenv')
    POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=('nvm' 'rvm' 'load' 'ram_joined' 'battery')

    # Set name of the theme to load.
    ZSH_THEME=agnoster

    # Uncomment following line if you want to disable autosetting terminal title.
    DISABLE_AUTO_TITLE="true"

    # Uncomment following line if you want red dots to be displayed while waiting for completion
    COMPLETION_WAITING_DOTS="true"

    # Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
    # Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
    # Example format: plugins=(rails git textmate ruby lighthouse)
    plugins=(git git-extras osx)
    source $ZSH/oh-my-zsh.sh

    # Hide the user@hostname information
    DEFAULT_USER=donato

#   -----------------------------
#   2.  MAKE TERMINAL BETTER
#   -----------------------------
    alias cp='cp -iv'                           # Preferred 'cp' implementation
    alias mv='mv -iv'                           # Preferred 'mv' implementation
    alias mkdir='mkdir -pv'                     # Preferred 'mkdir' implementation
    alias less='less -FSRXc'                    # Preferred 'less' implementation
    cd() { builtin cd "$@"; ll; }               # Always list directory contents upon 'cd'
    alias cd..='cd ../'                         # Go back 1 directory level (for fast typers)
    alias ..='cd ../'                           # Go back 1 directory level
    alias .2='cd ../../'                        # Go back 2 directory levels
    alias .3='cd ../../../'                     # Go back 3 directory levels
    alias .4='cd ../../../../'                  # Go back 4 directory levels
    alias .5='cd ../../../../../'               # Go back 5 directory levels
    alias .6='cd ../../../../../../'            # Go back 6 directory levels
    alias grep='grep --color=always'            # Make grep better

    # Listing Files

    alias ll='ls -FGlAhp'                       # Preferred 'ls' implementation

    # Flags:
    #   -G: default colors, different for directories vs. files
    #   -F: includes a trailing `/` at the end of directory names
    #   -l: display long format (file types, permissions, number of hard
    #       links, owner, group, size, last-modified date, and filename)
    #   -t: sort the list of files by modification time
    alias l='ls -GF -lt | awk '\''{
      printf("%-4.4s ", $5);
      printf("%4s %-3.2d %-5.5s  ", $6, $7, $8);
      printf("%-7.59s\n", $9);
    }'\'' | tail +2'  # Remove first line from output (formerly "total")

    alias ls='ls -1 '

    # Grep (case-insensitive)
    alias lg='l | grep -i'

#   -----------------------------
#   2.5 Shortcuts and Aliases
#   -----------------------------

    # Shortcuts
    alias Desktop="cd ~/Desktop"
    alias sourceit="cp ~/.zshrc ~/.bash_profile; clear; source ~/.bash_profile"
    alias clear="sourceit; clear"
    alias fuck='eval $(thefuck $(fc -ln -1 | tail -n 1)); fc -R'

    # Local Project shortcuts
    alias runserver='python manage.py runserver'									 # Runserver for django project
    alias herokurun='heroku local'									               # Heroku local

    ## git shortcuts
    alias gitCleanLocal="git reset --hard; git clean -fd"
    alias gitSmash="find . -type d -depth 1 -exec git --git-dir={}/.git --work-tree=$PWD/{} pull origin master \;"
    alias gst='git status'      # Git Status
    alias gc='git commit'       # Git commit
    alias gco='git checkout'    # Git checkout
    alias ga='git add'          # Git add

    # Tomcat shortcuts
    alias tomstart='/Library/Tomcat/bin/startup.sh'       # Start tomcat server
    alias tomstop='/Library/Tomcat/bin/shutdown.sh'       # Stop tomcat server

    # ZSH shortcuts
    alias zshconfig="atom ~/.zshrc"

    # Repl starting
    alias swift="lldb --repl"
    alias octave="/usr/local/octave/3.8.0/bin/octave-3.8.0; exit;"

    # Other
    alias addspace="defaults write com.apple.dock persistent-apps -array-add '{tile-data={}; tile-type=\"spacer-tile\";}' & killall Dock"   # Adds a space in the menu

#   -----------------------------
#   2.6 Custom Functions
#   -----------------------------

    gitDelete() {git push origin --delete $1}
    notify() {
      osascript -e 'display notification "'$1'" with title "'$2'"'
    }

#   -------------------------------
#   3.  FILE AND FOLDER MANAGEMENT
#   -------------------------------

#   extract:  Extract most known archives with one command
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

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

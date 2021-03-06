# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="jispwoso"
DISABLE_AUTO_UPDATE="true"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Uncomment this to disable bi-weekly auto-update checks
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

# Uncomment following line if you want to  shown in the command execution time stamp 
# in the history command output. The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|
# yyyy-mm-dd
# HIST_STAMPS="mm/dd/yyyy"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

export PATH="/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/opt/X11/bin"
# export MANPATH="/usr/local/man:$MANPATH"

# must add 'HashKnownHosts no' to .ssh/config
zstyle -e ':completion::*:*:*:hosts' hosts 'reply=(${=${${(f)"$(cat {/etc/ssh_,~/.ssh/known_}hosts(|2)(N) /dev/null)"}%%[# ]*}//,/ })'

# # Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"
PATH=${PATH}:${HOME}/bin
export EDITOR=/usr/bin/vim
HISTCONTROL=ignoreboth
HISTSIZE=1000
HISTFILESIZE=2000
test -d ~/.histfile/ || mkdir ~/.histfile/
if [ "$?WINDOW" ] ; then
   export HISTFILE=~/.histfile/hist$WINDOW
else
   export HISTFILE=~/.histfile/hist
fi
export JAVA_HOME=`/usr/libexec/java_home -v 1.7`
export PATH=${JAVA_HOME}/bin:$PATH
export ECLIPSE_HOME=/opt/homebrew-cask/Caskroom/eclipse-ide/4.4.1/eclipse/
alias hw="history -w ~/.histfile/last"
alias hr="history -r ~/.histfile/last"
alias ha="history -a ~/.histfile/last"
alias hn="history -n ~/.histfile/last"
alias hc="history -c"
alias ntptime="sudo /etc/init.d/ntp stop;sudo ntpdate -s time.stdtime.gov.tw;"
alias virc="vim ~/.zshrc;source ~/.zshrc"
alias loadrc="source ~/.zshrc" 
alias sshbsd="mosh tutul@bsd3.cs.nctu.edu.tw"
alias sshlinux="mosh tutul@linux4.cs.nctu.edu.tw"
alias sshtutul='mosh --ssh="ssh -p 8527" tutul@140.113.208.150 -p 60001'
alias sshtunnel="ssh -L 9000:www.cs.nctu.edu.tw:443 tutul@bsd3.cs.nctu.edu.tw"
alias moshnetsec='mosh --ssh="ssh -p 8527" netsec@140.113.208.135 -p 60001'
alias moshodl='mosh --ssh="ssh -p 8888" skysky@140.113.208.135 -p 60002'
alias sshodl='ssh skysky@140.113.208.135 -p 8888'
alias sshnetsec='ssh netsec@140.113.208.135 -p 8527'
alias sshtriwalks='mosh tutul@www.triwalks.com'
alias sshflood='ssh 140.113.208.135 -p 1908 -l skysky'

reservice(){
    for i in $(ls /etc/init.d/$1*); do $i restart; done
}

killscreen(){
    screen -X -S $1 quit 
}
TITLE="$SHORT_HOST"

# Source .bashrc
if [ -r $HOME/.bashrc ]; then
  source $HOME/.bashrc
fi

# Setting XDG base directory
export XDG_CONFIG_HOME=$HOME/.config
export XDG_CACHE_HOME=$HOME/.cache
export XDG_DATA_HOME=$HOME/.local/share
export XDG_DATA_DIRS=/usr/local/share:/usr/share
export XDG_CONFIG_DIRS=/etc/xdg

# Setting prompt
export GIT_PS1_SHOWDIRTYSTATE=true
export GIT_PS1_SHOWSTASHSTATE=true
export PS1='\[\033[32m\]\h:\W\[\033[31m\]$(__git_ps1 [%s])\[\033[00m\]\[\033[32m\]\$\[\033[00m\] '

# Setting java
export JAVA_HOME=`/System/Library/Frameworks/JavaVM.framework/Versions/A/Commands/java_home -v "1.8"`
export PATH=${JAVA_HOME}/bin:$PATH

# Setting less
export LESSHISTFILE=$XDG_CACHE_HOME/less/history
export LESSKEY=$XDG_CONFIG_HOME/less/lesskey

# Setting bash_history
export HISTFILESIZE=2000
export HISTSIZE=2000
export HISTFILE=${XDG_DATA_HOME}/bash/history
if [ ! -d ${XDG_DATA_HOME}/bash ]
then
  mkdir ${XDG_DATA_HOME}/bash
fi

export PATH="${HOME}/bin:/usr/local/php5/bin:/usr/local/sbin:$PATH"

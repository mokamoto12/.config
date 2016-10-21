# Source bash_prompt
if [ -f $(brew --prefix)/etc/bash_completion.d/git-prompt.sh ]; then
  . $(brew --prefix)/etc/bash_completion.d/git-prompt.sh
fi

# Source bash_completion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

# Setting alias
alias vi='nvim'
alias cp='cp -i'
alias ls='ls -G'
alias ll='ls -l'
alias la='ls -al'
alias gst='git status'
alias mv='mv -i'

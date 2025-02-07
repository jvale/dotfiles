export EDITOR=/usr/bin/vim
export HISTCONTROL=ignoredups:erasedups
export HISTFILESIZE=50000
export PROMPT_COMMAND="history -a; $PROMPT_COMMAND"

export LC_ALL=en_US.UTF-8

# When the shell exits, append to the history file instead of overwriting it
shopt -s histappend

# Homebrew
export PATH="/usr/local/opt/curl-openssl/bin:$PATH"

# Python
export PATH="/usr/local/opt/python/libexec/bin:$PATH"
export REQUESTS_CA_BUNDLE="/usr/local/etc/openssl@1.1/cert.pem"
source /usr/local/bin/virtualenvwrapper.sh

# pyenv
export PYENV_VIRTUALENVWRAPPER_PREFER_PYVENV="true"
export PYENV_ROOT="$HOME/.pyenv"
if command -v pyenv 1>/dev/null 2>&1; then
  export PATH="$PYENV_ROOT/bin:$PATH"
  eval "$(pyenv init -)"
fi

# Miniconda
if [ -f "/opt/miniconda3/etc/profile.d/conda.sh" ]; then
   . "/opt/miniconda3/etc/profile.d/conda.sh"
fi

alias ll="ls -l"

sshk() { ssh-copy-id $1 && ssh $1; }

if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

alias chrome="/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome"
lerolero ()
{
    chrome --headless --disable-gpu --dump-dom https://www.lerolero.com 2>/dev/null | sed -e "s,article,div,g" | xmllint --html --xpath '//*[contains(@class,"sentence")]/text()' - | say -v joana
}


alias k=kubectl
alias ka='kubectl apply'
alias kc='kubectl create'
alias kctx=kubectx
alias kd='kubectl describe'
alias kdel='kubectl delete'
alias ke='kubectl edit'
alias kg='kubectl get'
alias kl='kubectl logs'
alias kns=kubens
alias kr='kubectl replace'
alias ku='kubectl update'
alias kx='kubectl exec'

export ANSIBLE_TRANSPORT=ssh

alias weather="curl http://v2.wttr.in/Porto"

export EDITOR=/usr/bin/vim
export HISTCONTROL=ignoredups:erasedups
export HISTFILESIZE=50000
export PROMPT_COMMAND="history -a; $PROMPT_COMMAND"

export LC_ALL=en_US.UTF-8

# When the shell exits, append to the history file instead of overwriting it
shopt -s histappend

# Homebrew
export PATH="/usr/local/opt/curl-openssl/bin:$PATH"

alias ll="ls -l"

sshk() { ssh-copy-id $1 && ssh $1; }

if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

# Python
export REQUESTS_CA_BUNDLE="/usr/local/etc/openssl@1.1/cert.pem"
source /usr/local/bin/virtualenvwrapper.sh
export PATH="/usr/local/opt/python@3.8/bin:$PATH"

alias chrome="/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome"

lerolero ()
{
    #curl -s http://www.lerolero.com/ | xmllint --html --xpath '//*[@id="frase_aqui"]/text()' - 2> /dev/null | say -v joana
    chrome --headless --disable-gpu --dump-dom https://www.lerolero.com 2>/dev/null | sed -e ':a' -e 'N' -e '$!ba' -e 's#.*<div class=\"sentence[^>]*>\([^<]*\)</div>.*>#\1#g'| say -v joana
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

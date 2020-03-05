export EDITOR=/usr/bin/vim
export HISTCONTROL=ignoredups:erasedups
export HISTFILESIZE=50000
export PROMPT_COMMAND="history -a; $PROMPT_COMMAND"

export LC_ALL=en_US.UTF-8

# When the shell exits, append to the history file instead of overwriting it
shopt -s histappend

# Homebrew
export PATH="/usr/local/sbin:$PATH"

alias fucking=sudo
alias ll="ls -l"

sshk() { ssh-copy-id $1 && ssh $1; }

if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

PATH=$HOME/.chefdk/gem/ruby/2.4.0/bin:/usr/local/bin:$PATH

# Python
source /usr/local/bin/virtualenvwrapper.sh

export PATH="/usr/local/opt/curl/bin:$PATH"

lerolero ()
{
    curl -s http://www.lerolero.com/ | xmllint --html --xpath '//*[@id="frase_aqui"]/text()' - 2> /dev/null | cowsay
}
lerolerov ()
{
    chrome --headless --disable-gpu --dump-dom https://www.lerolero.com 2>/dev/null | sed -e ':a' -e 'N' -e '$!ba' -e 's#.*<div class=\"sentence[^>]*>\([^<]*\)</div>.*>#\1#g'| say -v joana
}

# Add Visual Studio Code (code)
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"


# The next line updates PATH for the Google Cloud SDK.
if [ -f '~/Projects/google-cloud-sdk/path.bash.inc' ]; then . '~/Projects/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '~/Projects/google-cloud-sdk/completion.bash.inc' ]; then . '~/Projects/google-cloud-sdk/completion.bash.inc'; fi

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

export REQUESTS_CA_BUNDLE="/usr/local/etc/openssl/cert.pem"

alias weather="curl http://v2.wttr.in/Porto"

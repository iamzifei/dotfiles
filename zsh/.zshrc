# Theme
ZSH_THEME="pygmalion"

# settings
export ZSH="$HOME/.oh-my-zsh"
plugins=(git)
source $ZSH/oh-my-zsh.sh

# Set mac user name and ssh key, if any
export MAC_USER="james.gong"
export SSH_KEY_NAME=""

# Python pyenv setting
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"
eval "$(pyenv init -)"

# Node NVM setting
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"                   # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion" # This loads nvm bash_completion

# Java Setting
export JAVA_HOME=/Library/Java/JavaVirtualMachines/amazon-corretto-17.jdk/Contents/Home
export PATH="$JAVA_HOME/bin:$PATH"
# export GROOVY_HOME=/opt/homebrew/opt/groovy/libexec
# export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"

# pnpm settings
export PNPM_HOME="/Users/$MAC_USER/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac

# using npm LTS by default
nvm use --lts

# functions
setSSHKeys() {
  ssh-add -D
  ssh-add -K $HOME/.ssh/$SSH_KEY_NAME
}

removeSSHKeys() {
  ssh-add -D
}

set_http_proxy() {
  export HTTP_PROXY=http://127.0.0.1:8079
  export HTTPS_PROXY=${HTTP_PROXY}
  export http_proxy=${HTTP_PROXY}
  export https_proxy=${HTTP_PROXY}
  export NO_PROXY=127.0.0.1,localhost
  export no_proxy=${NO_PROXY}
}

unset_http_proxy() {
  unset HTTP_PROXY
  unset HTTPS_PROXY
  unset http_proxy
  unset https_proxy
  unset NO_PROXY
  unset no_proxy
}


# Maven
# export MAVEN_HOME="$HOME/Dev/apache-maven-3.9.1"
# export PATH="$MAVEN_HOME/bin:$PATH"

# VSCode insider
# alias code='code-insiders'

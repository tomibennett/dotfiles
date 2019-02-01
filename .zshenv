# env {
  export EDITOR=vim

  # do Brew setup on darwin
  if [[ -d /usr/local ]]; then
    PATH="/usr/local/bin:/usr/local/sbin:$PATH"
    MANPATH="/usr/local/share/man:$MANPATH"
  fi
# }

# own bin folder {
  export PATH="$HOME/bin:$PATH"
# }

# ruby {
  export PATH="$HOME/.rbenv/bin:$PATH"
# }

# java {
  export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk1.8.0_191.jdk/Contents/Home"
# }

# javascript {
  export NPM_PACKAGES="${HOME}/.npm-packages"
  export PATH="$NPM_PACKAGES/bin:$PATH"
  unset MANPATH
# }

# fzf {
  if [[ ! "$PATH" == */usr/local/opt/fzf/bin* ]]; then
    export PATH="$PATH:/usr/local/opt/fzf/bin"
  fi
# }

# docker-machine {
  # eval $(docker-machine env default)
# }

# java {
  #THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
  export SDKMAN_DIR="$HOME/.sdkman"
  [[ -s "/Users/tom/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
# }

# nvm {
  # very slow, we should do something to prevent it from loading this way
  export NVM_DIR="$HOME/.nvm"
  source "/usr/local/opt/nvm/nvm.sh"
# }

# ruby {
  eval "$(rbenv init -)"
  alias be='bundle exec'
# }

# DARTY {
  source "${HOME}/dev/darty/.zshenv.darty"
# }

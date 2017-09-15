# env {
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
  export JAVA_HOME="/Library/Java/Home"
# }

# javascript {
  export NPM_PACKAGES="${HOME}/.npm-packages"
  export PATH="$NPM_PACKAGES/bin:$PATH"
  unset MANPATH
# }

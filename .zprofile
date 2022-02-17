# MAC OSX
# prevent tmux from reordoring PATH variable
if [ -f /etc/profile ]; then
      PATH=""
      source /etc/profile
fi

eval "$(pyenv init --path)"

# disable the press-and-hold character palette & allow key repeat
defaults write -g ApplePressAndHoldEnabled -bool false

# Expanded Save Panel
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true && \
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode2 -bool true

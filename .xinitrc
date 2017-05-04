[[ -L ~/.Xresources ]] && xrdb ~/.Xresources

setxkbmap -option caps:ctrl_modifier

dropbox&
sh ~/.fehbg &
blueman-applet &
mpd&

# exec bspwm
# exec cinnamon-session
exec i3

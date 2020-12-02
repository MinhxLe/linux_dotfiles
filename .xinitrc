# export QT_QPA_PLATFORMTHEME="qt5ct"

[[ -f ~/.Xmodmap ]] && xmodmap ~/.Xmodmap

# xcompmgr -c &
# picom --config ~/.config/.picom/picom.conf &
xbindkeys
xrdb ~/.Xresources
exec i3
# exec bspwm

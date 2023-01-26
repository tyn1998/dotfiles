xrdb -merge ~/.Xresources

# Remap keys
xmodmap ~/.Xmodmap

# fcitx
# eval "$(dbus-launch --sh-syntax --exit-with-session)"
# export XMODIFIERS="@im=fcitx"
# export QT_IM_MODULE=<module>
# export GTK_IM_MODULE=<module>

exec i3

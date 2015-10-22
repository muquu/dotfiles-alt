#!/bin/sh

if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

[ -f /etc/xprofile ] && source /etc/xprofile
[ -f ~/.xprofile ] && source ~/.xprofile

if [ -f ~/.Xmodmap ]; then
    xmodmap ~/.Xmodmap
fi

## Imput Module
# UIM
# export GTK_IM_MODULE=uim
# export QT_IM_MODULE=uim
# export XMODIFIERS="@im=uim"
# uim-xim &
# uim-toolbar-gtk-systray &

# fcitx
export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS="@im=fcitx"
#export DefaultIMModule=fcitx

# rxvt-unicode daemon
[ -f ~/.Xresources ] && xrdb -merge ~/.Xresources
#urxvt256c-mld -q -f -o &

# Start WM
#exec startxfce4
#exec startlxde
#exec startkde
#exec xmonad
#exec awesome
#exec i3
exec cinnamon-session
#exec mate-session
#exec openbox-session
#exec startlxqt

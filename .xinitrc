[ -f ~/.xmodmap ] && xmodmap ~/.xmodmap
compton &
feh --bg-tile ~/images/wallpaper.png &
urxvtd -q -f -o &
sbcl --load ~/lisp/startstump.lisp

[[ -f ~/.xmodmap ]] && xmodmap ~/.xmodmap
compton &
feh --bg-tile /home/nnitrx/Images/zentile2.png &
urxvtd -q -f -o &
sbcl --load ~/lisp/startstump.lisp

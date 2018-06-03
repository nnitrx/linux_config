[[ -f ~/.xmodmap ]] && xmodmap ~/.xmodmap
urxvtd -q -f -o &
exec sbcl --load ~/lisp/startstump.lisp

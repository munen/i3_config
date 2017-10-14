xrdb ~/.Xresources

xmodmap ~/.Xmodmap

dropbox start -i &
nm-applet &
volumeicon &
owncloud &

# Tap to click
synclient TapButton1=1 &
# Two finger tap == Right Click
synclient TapButton2=3 &
# Three finger tap == Middle Click
synclient PalmDetect=1 &
# Natural Scroll direction
synclient VertScrollDelta=-243 &
synclient HorizScrollDelta=-243 &

# don't activate screensaver
xset s off &
# disable DPMS (Energy Star) features.
xset -dpms &
# don't blank the video device
xset s noblank &

exec i3

export TERMINAL=qterminal

xrdb -merge ~/.Xresources

kwalletd5 &

xmodmap ~/.Xmodmap

nm-applet &
volumeicon &
# redshift &
redshift-gtk &
blueman-applet &
emacs --daemon &

# Wait for a bit. Otherwise there will be a racing condition for
# several X-related commands like `xset`. Thanks @nico.
sleep 2

# Tap to click. This is currently disabled since PalmDetect is very bad and fails _often_.
# synclient TapButton1=1 &

# Two finger tap == Right Click
synclient TapButton2=3 &

# Three finger tap == Middle Click
synclient TapButton3=2 &

# Palm Detection
synclient PalmDetect=1 &

# Natural Scroll direction
#synclient VertScrollDelta=-243 &
#synclient HorizScrollDelta=-243 &

# don't activate screensaver
# xset s off &
# disable DPMS (Energy Star) features.
# xset -dpms &
# don't blank the video device
# xset s noblank &

# Load gnome-keyring
dbus-update-activation-environment --systemd DISPLAY
eval $(/usr/bin/gnome-keyring-daemon --start --components=pkcs11,secrets,ssh)
export SSH_AUTH_SOCK

# Gnome HiDPI
export GDK_SCALE=2

# QT HiDPI
export QT_SCREEN_SCALE_FACTORS=1.5

dropbox start -i &
owncloud &

#exec i3

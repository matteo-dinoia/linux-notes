# GAMES

## SETUP WINE
https://www.gloriouseggroll.tv/how-to-get-out-of-wine-dependency-hell/

## GENERAL PROBLEMS
* **Black screen on video/cutscene** use the mf-install.sh
* **No sound** `paru -S pulseaudio-alsa`
    * check if also these are needed (lib32-alsa-plugins lib32-libpulse lib32-openal)
* **minecraft fail to launch** pacman -S xorg-xrandr

# BUG
1. yellow line (backgroud) in the topbar (only master)
2. logging in show movement of the virtual desktop
3. wallpaper page load strange
4. WIFI PEAP cannot connect with username & password
5. crash of drkonqi every logout and login
6. white on white password feedback
7. image (pasted file2)
8. Missing text in application in System monitor page (top right)
9. in game big cursor
10. most used page should disappear if history is disabled
11. union status bar in kate
12. lagging switching system tray page (allow disable animation)
13. lag on loading first time overview

## Feature request
Automatic switch fps (or option in power manager)

## KDE linux
* make resumable & show better progress
* accessibility page is super 
* flakpak fetching seem to be much slower than command line (possibly because flatpak end and then just wait there for some reason)

## Calamaris install (old)
* it doesn't update internet status while installing
* crash random during custom partitioning; if double click on edit, create, ... button (to test)

# BUILD COMMAND
kde-builder --pretend plasma-workspace systemsettings spectacle kate yakuake dolphin konsole 

-! krdp packagekit-qt discover

EXTRA: --rebuild-failures --refresh-build

# MIssing
shiboken6-generator
- something
Sonnet doesn't clone
appstream wrong min version


# TO ORGANIZE
lostfiles utils
setup of XDG
xdg-ninja


sudo update-ca-trust + sudo packey --init + sudo packey --populate

sudo mbuffer -i kde-linux_202607100254.iso -o /dev/sda -m 1G --hash crc32
or
sudo  dd bs=10M if=... of=... conv=fsync oflag=direct status=progress

# BUG
1. preview of line in okular is messed up
2. 24h format for sddm not respected
3. sddm virtualkeyboard do nothing
4. changing tablet setting doesn't apply up until replugging
5. tablet keep aspect ratio does nothing 
6. logging show movement of the virtual desktop
7. touchpad on OSD
8. sddm cursor
9. kmenu editor doesn't actually delete files
10. kemu editor modification make it impossible for the file to be deleted when uninstalling and so reinstalling cause old setting to be still there
11. Laggy behaviour in krunner reordering
12. custom ordering not followed for bookmark


# xournalpp
1. focus not took by app (gtk only - xournalpp only)
2. doesn't use portal for file picker when asked


# Build command
kde-builder --pretend plasma-workspace systemsettings spectacle kate yakuake dolphin konsole -! krdp packagekit-qt discover

EXTRA: --rebuild-failures --refresh-build

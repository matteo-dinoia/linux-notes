# BUG
* logging in show movement of the virtual desktop
* recent & file search & color page are draggable
* difficult to distinguish active tab in yakuake (expecially when only 2 tabs)
* SDDM apply kde settings doesn't apply keyboard preference
* different app between krunner and middle click 
* too small default text for monospace
* cannot paste image copied with spectacle -brnc but -brc work (also -bnc does nothing copy nothing)
* dolphin wrong damage when konsole panel is open


# Tablet
* loading app icon is not on tablet cursor
* Doesn't register first click and so on some app on hover enter maybe

# Calamaris install
* Take too long to launch
* it doesn't update internet status while installing
* crash random during custom partitioning (if double click on edit, create, ... button)

# Build command
kde-builder --pretend plasma-workspace systemsettings spectacle kate yakuake dolphin konsole -! krdp packagekit-qt discover

EXTRA: --rebuild-failures --refresh-build

## To organize
lostfiles utils
setup of XDG
xdg-ninja

# BUG
* logging in show movement of the virtual desktop
* recent & file search & color page are draggable
* difficult to distinguish active tab in yakuake (expecially when only 2 tabs)
* SDDM apply kde settings doesn't apply keyboard preference
* different app between krunner and middle click 
* too small default text for monospace
* change command in shortcut does nothing as apply cannot be selected
* cannot paste image copied with spectacle -brnc but -brc work
* flashing when making a screenshot with spectacle (if content updated while doing screenshot)
* pasting cliboard image to file doesn't work
* dolphin damaged long file name remaing (image )

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

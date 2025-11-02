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

# AMD
* Random freeze

# Tablet
* pixel on bottom (bottom-left and bottom-right) doesn't tile (if using some other projection)
* when plugged with pen hover, hover is not initially set
* Doesn't register first click and so (Xournal).
* loading app icon is not on tablet cursor

# Calamaris install
* Take too long to launch
* it doesn't update internet status while installing
* crash random during custom partitioning (if double click on edit, create, ... button)

# Build command
kde-builder --pretend plasma-workspace systemsettings spectacle kate yakuake dolphin konsole -! krdp packagekit-qt discover

EXTRA: --rebuild-failures --refresh-build

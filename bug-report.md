# BUG
1. logging in show movement of the virtual desktop
2. kmenu editor doesn't actually delete files + modification make it impossible for the file to be deleted when uninstalling and so reinstalling cause old setting to be still there

# Tablet
1. changing tablet setting doesn't apply up until replugging
2. tablet keep aspect ratio does nothing 
3. focus not taken by gtk(?) app

# System settings
1. "Laggy" behaviour in krunner reordering (system setting) (also new)
2. recent page is draggable (also new)

# Fleet
1. backend downloaded after not during -> and are in cache????

# Install
1. it doens't update internet status while installing
2. preview of where windows is snap make it crash
3. crash random during custom partitioning

# Arch
1. audio volume are reset

# My
Asus gpu set command is borked


# Build command
kde-builder --pretend plasma-workspace systemsettings spectacle kate yakuake dolphin konsole -! krdp packagekit-qt discover

EXTRA: --rebuild-failures --refresh-build

# Missing dependencies
* **sddm theming missing** `sudo pacman -S sddm-kcm`
* **missing google account in settings** `sudo pacman -S kaccounts-providers kio-gdrive`
* **missing man** `sudo pacman -S man-db man-pages`
* **missing dolphin pdf preview** `sudo pacman -S kdegraphics-thumbnailers` -> F12
* **font microsoft for compat** `sudo paru -S ms-font-ttf` (aur) 
* **manipulating mkfs.fat**: `sudo pacman -S dosfstool`
* **mainpulating nfts and exfat**: `sudo pacman -s ntfs-3g exfat-utils`
* **no icon in timezone** -> `sudo pacman -S noto-fonts-emoji`
* **no cube in kde** -> `sudo pacamn -S qt6-quick3d`

## TOOL TO KNOW
* uso **bc** al posto di calc
* **nmtui** for setting wifi easier
* **downgrade** to downgrade packages


# SCREENSHOT
* clipboard->config->general->non-text-selection->"Only when explecetly copied"


# YAKUAKE NOT OPENING FIRST TIME
create costum shorcut


# MISSING HIDDEN IN MENU EDITOR
They must be enabled in the settings


# FOR LATEX INSTALLATION
install texlive-basic texlive-langenglish texlive-langitalian texlive-latex texlive-latexextra texlive-latexrecommended texlive-pictures


# DATABASE
sudo rm -fr /var/lib/postgres/data/*  # if want to remove data
sudo su postgres
initdb -D /var/lib/postgres/data
sudo systemctl enable --now postgresql
createdb tweb
createuser --interactive
psql -d tweb
\password jakartas

# HOW TO INSTALL
* **latex**: install texlive-basic texlive-langenglish texlive-langitalian texlive-latex texlive-latexextra texlive-latexrecommended texlive-pictures
* **calculator** install bc

# NOT WORKING
* **bluetooth not connecting** `sudo pacman -S pipewire-alsa`
* **no icon in timezone** -> `sudo pacman -S noto-fonts-emoji`
* **no cube in kde** -> `sudo pacamn -S qt6-quick3d`
* **asking password for wifi password each time**: sudo pacman -S kwallet-pam
    * rm -rf ~/.local/share/kwalletd/*  ~/.config/kwalletrc
* **clipboard** not copying images: 
    clipboard->config->general->non-text-selection->"Only when explecetly copied"
* **yakuake not opening** create custom shortcut
* **missing hidden in menu editor**: They must be enabled in the settings
* **Pacman already in use**: `sudo rm -f /var/lib/pacman/db.lck`
* **no backlight** -> acpi_backlight=native in /boot/loader/entries/arch.conf

## CUSTOMIZATION
* **wrong portal used** add to ~/.profile `export GTK_USE_PORTAL=1`
* **Wonkie sddm**: sddm -> apply plasma settings

## MISSING COMPONENTS
* **missing japanese** `sudo pacman -S adobe-source-han-sans-jp-fonts`
* **sddm theming missing** `sudo pacman -S sddm-kcm`
* **missing google account in settings** `sudo pacman -S kaccounts-providers kio-gdrive`
* **missing man** `sudo pacman -S man-db man-pages`
* **missing dolphin pdf preview** `sudo pacman -S kdegraphics-thumbnailers` -> F12
* **font microsoft for compat** `sudo paru -S ms-font-ttf` (aur) 
* **manipulating mkfs.fat**: `sudo pacman -S dosfstool`
* **mainpulating nfts and exfat**: `sudo pacman -s ntfs-3g exfat-utils`



## TOOL TO KNOW
* **nmtui** for setting wifi easier
* **downgrade** to downgrade packages

## INSTALL DATABASE
``` bash
sudo rm -fr /var/lib/postgres/data/*  # if want to remove data
sudo su postgres
initdb -D /var/lib/postgres/data
sudo systemctl enable --now postgresql
createdb tweb
createuser --interactive
psql -d tweb
\password jakartas
```

## INSTALLING PIPEWIRE INSTEAD OF PULSE
```sh
pacman -S plasma-pa pipewire pipewire-pulse kpipewire
systemctl --user enable --now pipewire-pulse.service
```

## SETUP SSH LOGIN KEY
ssh-copy-id -i ~/.ssh/_key_name_ _remote host_ 

# WATCHDOG (TO BE VALIDATED)
/etc/sysctl.d/disable_watchdog.conf      kernel.nmi_watchdog = 0
/etc/sysctl.d/dirty.conf                vm.dirty_writeback_centisecs = 6000

# RECOVERING 
* **missing /vmlinuz-linux** use `sudo pacman -S linux --overwrite="*"`
* **recover deleted partition** using disktest

# NANO
## MOUSE AND COLOR
edit to `/etc/nanorc`
```bash
# Mouse
set mouse
# Syntax highlighin
include "/usr/share/nano/*.nanorc"
```

## NANO AS DEFAULT
``` bash
# Set nano as default
export VISUAL=nano
export EDITOR=nano
git config --global core.editor "nano"
```






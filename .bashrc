# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PROMPT_COMMAND=__prompt_command

__prompt_command() {
    local EXIT="$?"                # This needs to be first
    PS1=""

    #Color \[ \]  needed
    local blk='\[\033[01;30m\]'   # Black
    local red='\[\033[01;31m\]'   # Red
    local grn='\[\033[01;32m\]'   # Green
    local ylw='\[\033[01;33m\]'   # Yellow
    local blu='\[\033[01;34m\]'   # Blue
    local pur='\[\033[01;35m\]'   # Purple
    local cyn='\[\033[01;36m\]'   # Cyan
    local wht='\[\033[01;37m\]'   # White
    local clr='\[\033[0m\]'      # Reset

    PS1+="${grn}\u${clr}"

    if [ $EXIT != 0 ]; then
        PS1+="${red}"
    fi

    PS1+="@${clr}\h ${blu}\${PWD/'/home/matteo'/'~'}${clr}${ylw}\$${clr} "
    PS2="\[\033[1m\]\[\033[33m\]> \[\033[0m\]"
}

# Sudo styling
export SUDO_PROMPT="$(tput bold)[sudo] Password:$(tput sgr0) "

#Alias
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias paru-Qk='paru -Qk 2>/dev/null | grep -v " 0 " | cut -d ":" -f 1'
alias paru-fix='paru-Qk | { res=""; while read -r p; do res="$p $res"; done; paru -S $res --overwrite="*" --noconfirm; }'
alias paru-rm-lock='sudo rm -f /var/lib/pacman/db.lck'
alias paru-list-useless='paru -Runsc $(paru -Qdttq)'
alias logout-kde='qdbus org.kde.Shutdown /Shutdown logout'
alias ghostscript='/usr/bin/gs'
alias paru-locked='systemd-inhibit --who=paru --why="Running update/modify operation" paru'
alias fast-mirror="sudo reflector --threads 64 --save /etc/pacman.d/mirrorlist --protocol https --latest 200 --score 40 --fastest 20 --sort rate --country Italy,Germany,Finland,Belgium,Austria,France"

##Git alias
alias gs='git status'
alias gd='git diff'
alias gf='git fetch --all && git prune'
alias gch='git checkout'
alias gll='git log'
alias gl="git log --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias gb='git branch'
alias gcom='git commit -m'
alias gcomA='git add -A && git commit -m'
alias gpush='git push'
alias gpull='git pull'
alias gsw='git switch'
alias greset='git reset'
alias g='git'

alias git-delete-branches-danger='git switch main && git branch | grep -v "* main" | xargs git branch -D '

## Other aliases
alias compress-pdf='ghostscript -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=/ebook -dNOPAUSE -dBATCH -dColorImageResolution=150 -sOutputFile=output.pdf '
alias compress-pdfs='for filename in *.pdf; do mv "${filename}" "${filename}.bak" &&  compress-pdf "${filename}.bak" && mv "output.pdf" "${filename}"; done'


## School

#History setup
export HISTFILE="${XDG_STATE_HOME}"/bash_history
HISTCONTROL=ignorespace:erasedups
HISTTIMEFORMAT="%F %T "
HISTSIZE=2000
HISTFILESIZE=2000
bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'
# Ctrl + R for search in command
# Ctrl + C to remove

#Extra autocomplete
complete -cf sudo paru pacman
complete -c man
complete -cf doas
complete -F _command doas
complete -F _command sudo

#Exports
export EDITOR=nano

#Other
bind TAB:menu-complete




# The following lines were added by compinstall
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
zstyle :compinstall filename '/home/pat/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=90000
SAVEHIST=180000
# End of lines configured by zsh-newuser-install

# plugins

# command prompt
######################################

autoload -Uz promptinit
promptinit
PS1='%F{blue}%n%f@%F{blue}%m%f: %F{blue}%~%f$ '

neofetch
alias clear='clear && neofetch'

# alias vars
######################################

# Shortcuts
alias zsource='source ~/.zshrc'
alias zshell='vim ~/.zshrc'
alias resolution='xdpyinfo | grep dimensions'

# Keep aliases when sudo
alias sudo='sudo '

#color options
alias grep='grep --color=always'
alias pacman='pacman --color=always'
alias ls='ls --color=always'

# Android mount
alias android-mount='jmtpfs ~/mnt && cd ~/mnt && ll'
alias android-unmount='cd ~/. && fusermount -u ~/mnt && ll ~/mnt'

# ls options
alias ll='ls -lF'
alias la='ls -lAF'
alias lr='ls -ltrF'

# aur
alias aurupdate='for dir in ~/Packages/*; do (cd "$dir" && pwd && git pull); done'

# grep word in file
alias gword='grep -rnw . -e $1'
alias gpart='grep -rn . -e $1'

# vpn
alias vpn-connect='sudo systemctl start vpnc@workVpn.service'
alias vpn-disconnect='sudo systemctl stop vpnc@workVpn.service'
alias vpn-status='systemctl is-active vpnc@workVpn.service'

# WiFi
alias wifi-restart='sudo systemctl restart netctl-auto@wlp3s0'
alias wifi-scan='sudo iw dev wlp3s0 scan | grep -e SSID -e signal'

# Work vnc
alias vnc-pax-1='vncviewer paxrf32:3'
alias vnc-pax-2='vncviewer paxrf32:33'
alias vnc-c72-1='vncviewer irv-c72:3'
alias vnc-c72-2='vncviewer irv-c72:33'
alias vnc-c62-1='vncviewer irv-c62:3'
alias vnc-c62-2='vncviewer irv-c62:33'

alias ssh-pax='ssh pgutierr@paxrf32'
alias ssh-norw='ssh pgutierr@ma-jdichiar'
alias ssh-c72='ssh pgutierr@irv-c72'
alias ssh-c62='ssh pgutierr@irv-c62'

# wine shortcuts
alias wgog='WINEPREFIX="$HOME/Wine/gog/" \
            WINEARCH=win32 \
            wine ~/Wine/gog/drive_c/Program\ Files/GOG\ Galaxy/GalaxyClient.exe'
alias wsteam='WINEPREFIX="$HOME/Wine/steam/" \
              wine ~/Wine/steam/drive_c/Program\ Files/Steam/steam.exe -no-cef-sandbox'
alias gogFlags='WINEPREFIX="$HOME/Wine/gog/" WINEARCH=win32'
alias steamFlags='WINEPREFIX="$HOME/Wine/steam/" WINEARCH=win32'
alias controlFlags='WINEPREFIX="$HOME/Wine/control360/" WINEARCH=win32'
alias wfirefox='WINEPREFIX="$HOME/Wine/wine32/" \
                WINEARCH=win32 \
                wine ~/Wine/wine32/drive_c/Program\ Files/Mozilla\ Firefox/firefox.exe'

#exports
#######################################
export LANG=en_US.UTF-8
export VISUAL=vim
export EDITOR=vim

# user functions
#######################################

# clone git url
aurclone () {
    cd ~/Packages/.
    git clone "https://aur.archlinux.org/$1.git"
    cd $1
}

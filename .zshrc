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

# alias vars
######################################

# zshell
alias zsource='source ~/.zshrc'
alias zshell='vim ~/.zshrc'

# Keep aliases when sudo
alias sudo='sudo '

#color options
alias grep='grep --color=always'
alias pacman='pacman --color=always'
alias ls='ls --color=always'

# application shortcuts
alias pac='pacman'
alias spac='sudo pacman'

# Android mount
alias conAndroid='jmtpfs ~/mnt && cd ~/mnt && ll'
alias disAndroid='cd ~/. && fusermount -u ~/mnt && ll ~/mnt'

# ls options
alias ll='ls -lF'
alias la='ls -lAF'
alias lr='ls -ltrF'

# aur
alias aurupdate='for dir in ~/Packages/*; do (cd "$dir" && pwd && git pull); done'
alias aur='auracle search'

# vpn
alias conVpn='sudo systemctl start vpnc@workVpn.service'
alias disVpn='sudo systemctl stop vpnc@workVpn.service'
alias statVpn='systemctl is-active vpnc@workVpn.service'

# WiFi
alias restartWifi='sudo systemctl restart netctl-auto@wlp3s0'
alias scanWifi='sudo iw dev wlp3s0 scan | grep -e SSID -e signal'

# vnc
alias vncTest1='vncviewer 10.20.1.101:81'
alias vncWork1='vncviewer 10.20.1.100:81'
alias vncTest2='vncviewer 10.20.1.101:3'
alias vncWork2='vncviewer 10.20.1.100:3'
alias vncNorw='vncviewer 159.75.112.215:81'
alias telTest='telnet paxrf32'
alias telWork='telnet workstation' 
alias telNorw='telnet rfapps1'
alias sshWork='ssh pgutierr@workstation'
alias sshTest='ssh pgutierr@paxrf32'
alias sshNorw='ssh pgutierr@ma-jdichiar'
alias sshc72='ssh pgutierr@irv-vappseng1-c72'
alias sshc62='ssh pgutierr@irv-vappseng1-c62'
alias ftpWork='ftp workstation'
alias ftpTest='ftp paxrf32'

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

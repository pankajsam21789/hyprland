#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
fastfetch
alias startx='hyprland'
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias hlwall='hyprctl hyprpaper wallpaper "eDP-1,/home/pankaj/Wallpapers/Balcony-ja.png"'
alias pacman='sudo pacman'
alias hyperctl='hyprctl'
export EDITOR=nvim
PS1='\e[34m[\e[32m\u\e[0m@\e[32m\h \e[33m\W\e[34m]\e[32m\$\e[0m '
a=$(tty);b=${a##*/};test "tty1" == "${b:0:4}" && hyprland
alias gs="git status"
alias ga="git add"
alias gc="git commit -m"
alias gp="git push"
alias gpl="git pull"
alias gst="git stash"
alias gsp="git stash; git pull"
alias gfo="git fetch origin"
alias gcheck="git checkout"
alias gcredential="git config credential.helper store"
alias pacmans='sudo pacman -S --noconfirm'
alias pacmanss='pacman -Ss'
#alias systemctl='sudo systemctl'
alias mount='sudo mount'
changewallpaper () {
	cdir="$(pwd)"
	echo "hyprctl hyprpaper preload ${cdir}/$1  && 	hyprctl hyprpaper wallpaper ,${cdir}/$1"
}
eval "$(starship init bash)"

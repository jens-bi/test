# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
#ZSH_THEME="robbyrussell"
#ZSH_THEME="powerlevel9k/powerlevel9k"


# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
	git
	zsh-autosuggestions
	zsh-syntax-highlighting
	zsh-completions
	#antigen
	colorize
	colored-man-pages
	ubuntu
)

source $ZSH/oh-my-zsh.sh
#source  ~/powerlevel9k/powerlevel9k.zsh-theme
#source ~/.oh-my-zsh/custom/themes/powerlevel9k/powerlevel9k.zsh-theme
#source ~/.oh-my-zsh/themes/fino-time.zsh-theme

# https://www.ditig.com/256-colors-cheat-sheet
#PROMPT='%(?.%F{blue}√.%F{red}?%?)%f %B%F{240}%1~%f%b '
#PROMPT='%K{57}%n%k %B%F{118}%(4~|...|)%3~%F{178} %# %b%f%k'
#PS2=$' \e[0;34m%}%B>%{\e[0m%}%b '

#PROMPT=╭─$'%K{57}%n%k %B%F{118}%(4~|...|)%3~%F{178} %# %b%f%k %{$fg[blue]%}%{$reset_color%}$(git_prompt_info)%{$reset_color%}\
#╰─%{$fg_bold[magenta]%}$%{$reset_color%} '

local return_code="%(?..%{$fg[red]%}%? %{$fg[magenta]%}↵%{$reset_color%})"
local user_host='%{$terminfo[bold]$fg[green]%}%{$bg[blue]%}%n%{$reset_color%}'
#local user_host='%{$terminfo[bold]$fg[green]%}%{$bg[blue]%}%n%{$fg[grey]%}%{$bg[blue]%}@%{$reset_color%}%{$fg[cyan]%}%{$bg[blue]%}%M%{$reset_color%}'
local current_dir='%{$terminfo[bold]$fg[cyan]%}%(5~|...|)%4~%{$reset_color%}' #%~
#local git_branch='%{$fg[blue]%}$(git_prompt_info)%{$reset_color%}'

PROMPT="╭─${user_host}:${current_dir} 
╰─>${git_branch} %{$fg[magenta]%}%B$%b "
RPS1="${return_code}"

ZSH_THEME_GIT_PROMPT_PREFIX=""
ZSH_THEME_GIT_PROMPT_SUFFIX=""
ZSH_THEME_GIT_PROMPT_DIRTY=" %{$fg[red]%}✗%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN=" %{$fg[green]%}✔%{$reset_color%}"

#powerlevel custom settings
#POWERLEVEL9K_MODE='awesome-fontconfig'
#POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status )
#POWERLEVEL9K_SHORTEN_DIR_LENGTH=2
#POWERLEVEL9K_OS_ICON_BACKGROUND="white"
#POWERLEVEL9K_OS_ICON_FOREGROUND="blue"
#POWERLEVEL9K_PROMPT_ON_NEWLINE=true
#POWERLEVEL9K_TIME_FORMAT="%D{%H:%M:%S | %d.%m.%y}"



# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#

setopt GLOB_DOTS

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export EDITOR='vim'
export VISUAL='vim'

alias -s txt=vim
alias -s py=geany
alias -s json=code
alias -s {mp4,mpeg,mpg,mkv}=mpv
alias -s {zip,ZIP}="unzip -l"
alias -s {exe,msi}=wine
alias -g gp="grep -i"

#alias lock='xsecurelock'
alias lock='xscreensaver-command -lock'

# change shells
tobash () { chsh -s $(which bash) $(whoami) }
tozsh () { chsh -s $(which zsh) $(whoami) }

# cd
alias 1='cd ..; ls'
alias 2='cd ../..; ls'
alias 3='cd ../../..; ls'
alias 4='cd ../../../..; ls'
alias 5='cd ../../../../..; ls'
alias 6='cd ../../../../../..; ls'
alias 7='cd ../../../../../../..; ls'
alias 8='cd ../../../../../../../..; ls'

# ls
alias ls='ls --color auto'
alias l='ls -a'
alias ls='ls -a'
alias ll='ls -lha'
alias la='ls -lhd .*'
alias lr='ls -R'
alias l.="ls -A | egrep '^\.'"

# no lsd
alias lss='\ls -hs --color'
alias lls='\ls -lhaS --color | head -n 20'
alias llt='\ls -t --color | head -n 20'
alias lt='\ls -t --color | head -n 20'
alias lst='\ls -t --color | head -n 20'

# lsd
if [ -e $(which lsd) ]; then
    alias ls='lsd'
fi

# misc
alias 'rm=rm -i'
alias 'mv=mv -i'
alias 'cp=cp -i'
alias 'mkdir=mkdir -p'
alias 'df=df -h --exclude-type=tmpfs --exclude-type=devtmpfs --exclude-type=squashfs'
alias 'du=du -h'

alias qwertz="sudo localectl set-x11-keymap de"
alias qwerty="sudo localectl set-x11-keymap us"

alias setxkbmap-deruus='setxkbmap -layout de,ru,us -variant nodeadkeys,, -option grp:alt_shift_toggle; setxkbmap -query'
alias setxkbmap-de='setxkbmap -layout de; setxkbmap -query'

#alias grep='grep -i --color=auto -n'
alias grep='grep -i --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

alias ps='ps auxf'
alias psgrep='ps auxf | grep -i --color=auto'
alias free='free -th'
alias g='gvim'
alias v='vim'
#alias sus='sudo su'
#alias ssu='sudo su'

alias ping='ping -c 4'
alias wget='wget -c'
alias update-fc='sudo fc-cache -fv'
alias acpi='acpi -V'

alias shutdown="sudo shutdown now"
alias halt="sudo shutdown now"

# the debian/ubuntu version of archroot
debchroot () {
    path='/mnt'
    if [[ ! -d $path ]]; then sudo mkdir -p $path; fi
    sudo mount -o bind /dev/ $path/dev
    sudo mount -o bind /dev/pts $path/dev/pts
    sudo mount -o bind /proc $path/proc
    sudo mount -o bind /sys $path/sys
    chroot $path
}

# grub fix, for debian like distros
grub-fix () {
if [ $# = 0 ]; then $1="sda1"; fi
    sudo mount /dev/$1 /boot/efi
    sudo mount /dev/$1 /mnt
    sudo mount --bind /dev /mnt/dev 
    sudo mount --bind /dev/pts /mnt/dev/pts 
    sudo mount --bind /proc /mnt/proc 
    sudo mount --bind /sys /mnt/sys 
    sudo chroot /mnt \
        grub-install --target=x86_64-efi --efi-directory=/boot/efi --no-nvram --force /dev/${1/%[0-9]/} \
        #grub-install --recheck /dev/${1/%[0-9]/} \
        grub-mkconfig -o /boot/grub/grub.cfg \
        efibootmgr -v
}

# without chroot
grub-reinstall () {
if [ $# -eq 0 ]; then 1=sda1; fi
    sudo mount /dev/$1 /mnt/
    #sudo grub-install --boot-directory=/mnt/boot /dev/sda
    sudo grub-install --target=x86_64-efi --efi-directory=/mnt/boot/efi --no-vram --recheck /dev/${1/%[0-9]/}
    sudo update-grub
    #grub-mkconfig -o /mnt/boot/grub/grub.cfg
}

# from within a live cd
grub-chroot-install () {
if [ $# -eq 0 ]; then 1=sda1; fi
    sudo mount /dev/$1 /mnt
    for i in /dev /dev/pts /proc /sys /run; do
        sudo mount -B $i /mnt/$i;
    done
    sudo chroot /mnt grub-install --target=x86_64-efi --efi-directory=/mnt/boot/efi --no-vram --force /dev/${1/%[0-9]/} && update-grub
}

# systemctl
alias systemctl-list-enabled-service='systemctl list-unit-files --type=service --state=enabled'
alias systemctl-list-service='systemctl list-unit-files --type=service'
alias systemctl-status='systemctl status'
alias systemctl-search='systemctl list-unit-files | grep'

# $1 can be enable, disable, start, stop, reload, restart and some other
systemctl-libvirt () {
if [ $# -eq 0 ]; then 1=enable; fi
sudo systemctl $1 --now libvirtd.service 
sudo systemctl $1 --now virtlockd.socket 
sudo systemctl $1 --now virtlogd.socket 
sudo systemctl $1 --now libvirtd.socket 
sudo systemctl $1 --now libvirtd-ro.socket 
sudo systemctl $1 --now libvirt-guests.service 
sudo systemctl $1 --now libvirtd-admin.socket 
sudo systemctl $1 --now virtlockd-admin.socket 
sudo systemctl $1 --now virtlogd-admin.socket
}

systemctl-nfs () {
if [ $# -eq 0 ]; then 1=enable; fi
sudo systemctl $1 --now nfs-client.target 
sudo systemctl $1 --now nfs-kernel-server 
sudo systemctl $1 --now nfs-blkmap 
sudo systemctl $1 --now nfs-server 
sudo systemctl $1 --now portmap 
sudo systemctl $1 --now rpcbind 
sudo systemctl $1 --now rpcbind.socket
}

systemctl-cups () {
if [ $# -eq 0 ]; then 1=enable; fi
sudo systemctl $1 --now cups 
sudo systemctl $1 --now cups.path 
sudo systemctl $1 --now cups.socket 
sudo systemctl $1 --now cups-browsed
}

systemctl-samba () {
if [ $# -eq 0 ]; then 1=enable; fi
sudo systemctl $1 --now nmbd
sudo systemctl $1 --now smbd
}

systemctl-docker () {
if [ $# -eq 0 ]; then 1=enable; fi
sudo systemctl $1 --now docker
sudo systemctl $1 --now docker.socket
sudo systemctl $1 --now containerd
}

# resolv.conf
#Google 	8.8.8.8 	8.8.4.4
#Control D 	76.76.2.0 	76.76.10.0
#Quad9 	        9.9.9.9 	149.112.112.112
#OpenDNS Home 	208.67.222.222 	208.67.220.220
#Cloudflare 	1.1.1.1 	1.0.0.1
#CleanBrowsing 	185.228.168.9 	185.228.169.9
#Alternate DNS 	76.76.19.19 	76.223.122.150
#AdGuard DNS 	94.140.14.14 	94.140.15.15
#Verisign       64.6.64.6       64.6.65.6
#OpenNIC        216.87.84.211   23.90.4.6
#UncensoredDNS  91.239.100.100  89.233.43.71
nameserver-resplace () {
if [ $# = 1 ]; then
    sudo sed -i "s/nameserver.*/nameserver $1/" /etc/resolv.conf
else
    sudo sed -i 's/nameserver.*/nameserver 8.8.4.4/' /etc/resolv.conf
fi
}

# apt
if [[ -e $(which apt) ]]; then
    alias apt-up='sudo apt update && sudo apt dist-upgrade'
    alias apt-list-installed='apt list --installed'
    alias apt-list-upgradable='apt list --upgradable'
    alias apt-i='sudo apt install'
    alias apt-r='sudo apt remove'
    alias apt-s='apt search'
    alias apt-get-only-upgrade='sudo apt-get --show-progress --no-install-recommends --only-upgrade'
    alias dpkg-i='sudo dpkg --install'
    alias dpkg-reconfigure-timezone='sudo dpkg-reconfigure tzdata'
    alias dpkg-reconfigure-locales='sudo dpkg-reconfigure locales'
    dpkg-details () {
        dpkg-query -L $1 &&
        dpkg-query -s $1
        #apt show $1 
    }
    # deb get
    if [[ ! -e $(which deb-get) ]]; then
        alias install-deb-get='sudo apt install curl -y && curl -sL https://raw.githubusercontent.com/wimpysworld/deb-get/main/deb-get | sudo -E bash -s install deb-get'
    fi
    # openbox menu (todo)
    if [ ! -e $(which obmenu-generator) ]; then
        apt-obmenu-generator () {
            sudo echo 'deb http://download.opensuse.org/repositories/home:/Head_on_a_Stick:/obmenu-generator/Debian_testing/ /' > /etc/apt/sources.list.d/home:Head_on_a_Stick:obmenu-generator.list
            wget -nv https://download.opensuse.org/repositories/home:Head_on_a_Stick:obmenu-generator/Debian_testing/Release.key -O ~/Release.key
            sudo apt-key add - < ~/Release.key
            echo apt update
            echo apt install obmenu-generator
        }
    fi
fi

# pacman
if [[ -e $(which pacman) ]]; then
    alias pacman-unlock="sudo rm /var/lib/pacman/db.lck"
    alias pacman='sudo pacman --color auto'
    alias pacman-mirror="sudo reflector -f 30 -l 30 --number 10 --verbose --save /etc/pacman.d/mirrorlist"
    alias pacman-cleanup='sudo pacman -Rns $(pacman -Qtdq)'
fi

# functions -----------------------------------------------------------
#
# find
f() {
    find . -iname \*$1\* | grep $1
    }

ff() {
    find . -type f -iname \*$1\* | grep $1
    }

fd() {
    find . -type d -iname \*$1\* | grep $1
    }

ff1() {
    find . -maxdepth 1 -type f -iname \*$1\* | grep $1
    }

fd1() {
    find . -maxdepth 1 -type d -iname \*$1\* | grep $1
    }

# tar
totargz () {
    if [[ -f $1 || -d $1 ]]; then
	tar cfvz "$1.tar.gz" "$1" &&
	echo "tar cfvz $1.tar.gz $1 && ls -l $1.tar.gz"
    else
	echo "please turn over a file or a directory"
    fi
}

totarbz2 () {
    if [[ -f $1 || -d $1 ]]; then
	tar cfvj "$1.tar.bz2" "$1" &&
	echo "tar cfvj $1.tar.bz2 $1 && ls -l $1.tar.bz2"
    else
	echo "please turn over a file or a directory"
    fi
}

# flatpak
if [[ -e $(which flatpak) ]]; then
    alias flatpak-repo='flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo &&         flatpak remote-add --if-not-exists flathub-beta https://flathub.org/beta-repo/flathub-beta.flatpakrepo'
    alias librewolf='flatpak run io.gitlab.librewolf-community'
fi

# touchpad
touchpad-toggle () {
    id=$(xinput list | grep -Eo 'TouchPad\s*id\=[0-9]{1,2}' | grep -Eo '[0-9]{1,2}')
    state=$(xinput list-props $id | grep "Device Enabled" | grep -o "[01]$")
    if [ $state -eq 0 ]; then
        xinput --enable $id
    else
        xinput --disable $id
    fi
    unset id state
}

# create swapfile
#sudo fallocate -l 1G /swapfile
swapfile-create () {
    if [[ $# -eq 1 || $# -eq 2 ]]; then
	if [[ $2 ]]; then
            size="${2/%[KMGkmg]/}"
        else
            size=2048
        fi
        #sudo dd if=/dev/zero of=/${1/\/} count=${size}M bs=1K &&
	sudo fallocate -l ${size}M /${1/\/} &&
        sudo mkswap /${1/\/} &&
	sudo chown root:root /${1/\/} &&
    	sudo chmod 600 /${1/\/} &&
	sudo swapon /${1/\/} &&
	swapon --show &&
        echo "\ndont forget to add to /etc/fstab: \n\n/${1/\/} \t\t\tswap \tswap \t defaults \t0 0"
    else
        echo "syntax : $0 path [size], where the path is relative to / and the size is in MB"
    fi
    unset size
}

# extract
alias x='extract'
extract () {
     if [ $# = 2 ]; then
        case $1 in
            *.tar.gz)   tar xzf $1 -C $2    ;;
            *.tar.bz2)  tar xjf $1 -C $2    ;;
            *.tar)      tar xf $1 -C $2     ;;
            *.tgz)      tar xzf $1 -C $2    ;;
            *.tbz2)     tar xjf $1 -C $2    ;;
            *.zip)      unzip $1 -d $2      ;;
            *.rar)      unrar x $1 $2       ;;
            *)          echo "'$1' cannot be extracted via extract()" ;;
        esac
     elif [ -f $1 ] ; then
         case $1 in
             *.tar.bz2)   tar xjf $1     ;;
             *.tar.gz)    tar xzf $1     ;;
             *.bz2)       bunzip2 $1     ;;
             *.rar)       unrar x $1     ;;
             *.gz)        gunzip $1      ;;
             *.tar)       tar xf $1      ;;
             *.tbz2)      tar xjf $1     ;;
             *.tgz)       tar xzf $1     ;;
             *.zip)       unzip $1       ;;
             *.Z)         uncompress $1  ;;
             *.7z)        7z x $1    ;;
             *)           echo "'$1' cannot be extracted via extract()" ;;
         esac
     else
         echo "'$1' is not a valid file"
     fi
}




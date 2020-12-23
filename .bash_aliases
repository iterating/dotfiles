#!/bin/bash
# source ~/.bashrc

# Shortcuts
alias wgetall="wget --limit-rate=200k --no-clobber --convert-links --random-wait -r -p -E -e robots=off -U mozilla"
alias wgetit="wget --limit-rate=200k --no-clobber --convert-links --random-wait -p -E -e robots=off -U mozilla"
# Update system. Update, clean out unused configs, copy new kernel to /boot/efi.
# edit /boot/efi/
alias update="sudo apt update && sudo apt dist-upgrade -y && sudo apt autoremove --purge -y && sudo aptitude purge ~c -y && sudo cp /boot/*-amd64 /boot/efi/Sunny"
# this is for Coreboot, copy new kernel to /boot/efi.
alias updateboot='sudo cp /boot/*-amd64 /boot/efi/Sunny'

# Mounting and unmounting software RAID
alias raid='sudo mount /dev/md0 /media/Memories'
alias backup='/media/Memories/backup.sh'
alias {uraid,unraid}='sudo sync && sudo umount /media/Memories'

# Sensible aliases
alias inxi="inxi -Fxxxz"
alias ll="ls -al"
alias ln="ln -v"
alias mkdir="mkdir -p"
alias {edit,sub,suble,ed}="subl"

# quick git
alias gitpush='git add . && git commit -m . && git push origin master'
alias gitpull='git pull origin master'

# Pretty print the path
alias path='echo $PATH | tr -s ":" "\n"'

#painless extracting
function extract {
 if [ -z "$1" ]; then
    # display usage if no parameters given
    echo "Usage: extract <path/file_name>.<zip|rar|bz2|gz|tar|tbz2|tgz|Z|7z|xz|ex|tar.bz2|tar.gz|tar.xz>"
 else

    if [ -f $1 ] ; then
        # NAME=${1%.*}
        # mkdir $NAME && cd $NAME
        case $1 in
	  *.tar)	tar xvjf ../$1    ;;
          *.tar.bz2)   tar xvjf ../$1    ;;
          *.tar.gz)    tar xvzf ../$1    ;;
          *.tar.xz)    tar xvJf ../$1    ;;
          *.lzma)      unlzma ../$1      ;;
          *.bz2)       bunzip2 ../$1     ;;
          *.rar)       unrar x -ad ../$1 ;;
          *.gz)        gunzip ../$1      ;;
          *.tar)       tar xvf ../$1     ;;
          *.tbz2)      tar xvjf ../$1    ;;
          *.tgz)       tar xvzf ../$1    ;;
          *.zip)       unzip ../$1       ;;
          *.Z)         uncompress ../$1  ;;
          *.7z)        7z x ../$1        ;;
          *.xz)        unxz ../$1        ;;
          *.exe)       cabextract ../$1  ;;
          *)           echo "extract: '$1' - unknown archive method" ;;
        esac
    else
        echo "$1 - file does not exist"
    fi
fi
}

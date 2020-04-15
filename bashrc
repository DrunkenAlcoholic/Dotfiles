source /usr/share/defaults/etc/profile

# Terminal Promt title = current directory
PROMPT_COMMAND='echo -ne "\033]0;${PWD}\007"'

# Add Kitty terminal command completions
source <(kitty + complete setup bash)

#     .--.  .-.   .-.  .--.   .----.
#    / {} \ | |   | | / {} \ { {__
#   /  /\  \| `--.| |/  /\  \.-._} }
#   `-'  `-'`----'`-'`-'  `-'`----'

extract () {
   if [ -f $1 ] ; then
       case $1 in
           *.tar.bz2)   tar xvjf $1         ;;
           *.tar.gz)    tar xvzf $1         ;;
           *.bz2)       bunzip2 $1          ;;
           *.rar)       unrar x $1          ;;
           *.gz)        gunzip $1           ;;
           *.tar)       tar xvf $1          ;;
           *.tbz2)      tar xvjf $1         ;;
           *.tgz)       tar xvzf $1         ;;
           *.zip)       unzip $1            ;;
           *.Z)         uncompress $1       ;;
           *.7z)        7z x $1             ;;
           *.zst)       tar -I zstd -xvf $1 ;;
           *)           echo "don't know how to extract '$1'..." ;;
       esac
   else
       echo "'$1' is not a valid file!"
   fi
 }

#list
alias ls='ls --color=auto'
alias la='ls -a'
alias ll='ls -la'
alias l='ls'
alias l.="ls -A | egrep '^\.'"

#grep
alias grep="grep --color=auto"
alias egrep="egrep --color=auto"
alias fgrep="fgrep --color=auto"

#eopkg
alias update='sudo eopkg ur'
alias upgrade='sudo eopkg up'
alias remove='sudo eopkg rm'
alias purge='sudo eopkg rmf'
alias details='eopkg info'
alias search='eopkg search'
alias install='sudo eopkg it'

#ip address
alias ipe='curl ipinfo.io/ip'

#fix typo's
alias cd..="cd .."
alias pdw="pwd"

#youtube-dl
alias yt='youtube-dl --recode-video mp4'
alias yta-aac="youtube-dl --extract-audio --audio-format aac "
alias yta-best="youtube-dl --extract-audio --audio-format best "
alias yta-flac="youtube-dl --extract-audio --audio-format flac "
alias yta-m4a="youtube-dl --extract-audio --audio-format m4a "
alias yta-mp3="youtube-dl --extract-audio --audio-format mp3 "
alias yta-opus="youtube-dl --extract-audio --audio-format opus "
alias yta-vorbis="youtube-dl --extract-audio --audio-format vorbis "
alias yta-wav="youtube-dl --extract-audio --audio-format wav "
alias ytv-best="youtube-dl -f bestvideo+bestaudio "

alias rmd='rm -r'
alias srm='sudo rm'
alias srmd='sudo rm -r'
alias cpd='cp -R'
alias scp='sudo cp'
alias scpd='sudo cp -R'

alias slin='sudo ln -s'
alias lin='ln -s'

#get the error messages from journalctl
alias jctl="journalctl -p 3 -xb"

#Person Coronavirus python script

alias coronav="python3 ~/bin/CoronaStats"

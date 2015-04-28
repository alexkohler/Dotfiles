#Get some damn bash completition
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

alias cls=clear

alias vncserver="sudo touch /etc/vnc/service/on" || echo "Server started. (I think?)"

#fix vim 
alias vim='/Applications/MacVim.app/Contents/MacOS/Vim'
#A real man's tab completition
bind '"\C-i": menu-complete'
#can't be a leet hacker without leet terminal colors and a solarized theme
export TERM=xterm-256color  
export CLICOLOR=1
export LSCOLORS=gxfxbEaEBxxEhEhBaDaCaD
#Full directory paths please
export PS1='\u\[\033[01;37m\]@hackintosh:\w\$ '

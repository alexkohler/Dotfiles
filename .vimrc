:syntax on
:set hlsearch
colorscheme elflord
"Fix line wrapping
:nnoremap j gj
:nnoremap k gk
"Comma mapleader is for productive people 
:let mapleader = ","
:map <Leader>l :setlocal number!<CR>
:map <Leader>q 0
:map <Leader>p $
:map <Leader>d d$
:nmap \c :SyntasticCheck 
"Remap that pesky escape key
ino jj <esc>
cno jj <c-c> 

call pathogen#infect()  
"Kick vim and make sure we're getting all 256 colors!
if $TERM == "xterm-256color" || $TERM == "screen-256color" || $COLORTERM == "gnome-terminal"
  set t_Co=256
endif

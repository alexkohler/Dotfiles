:syntax on  
:execute pathogen#infect()
:set hlsearch
colorscheme elflord
"Fix line wrapping
:nnoremap j gj
:nnoremap k gk
"Comma mapleader is for productive people 
:let mapleader = " " 
:map <Leader>l :setlocal number!<CR>
:map <Leader>q 0
:map <Leader>p $
:map <Leader>d d$
:map <Leader>w <c-w>
:map <Leader>c :!  
:map <Leader>g  :! go run % <ENTER>
:map <Leader>n :bn <ENTER>
:map <Leader>p :bp <ENTER>
"please save me from carpal tunnel
:map <Leader>s :w <ENTER> 
"Remap that pesky escape key
ino jj <esc>
cno jj <c-c> 

"Kick vim and make sure we're getting all 256 colors!
if $TERM == "xterm-256color" || $TERM == "screen-256color" || $COLORTERM == "gnome-terminal"
  set t_Co=256
endif
set number
":set mouse=a


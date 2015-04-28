:syntax on 
:set hlsearch
:colorscheme jellybeans 
"Proper line wrapping
:nmap j gj
:nmap k gk
"Pathon plugin manager
:execute pathogen#infect()
:let mapleader = ","
"Mapleader shortcuts 
:map <Leader>l :setlocal number!<CR>
:map <Leader>q 0
:map <Leader>p v$
:map <Leader>d d$
"Remap that pesky escape key
ino jj <esc>
cno jj <c-c>
set vb "stfu with the bells macvim
"for c fun
set tabstop=4 
set shiftwidth=4
set background=dark
:colorscheme solarized

"filetype plugin indent off
call pathogen#infect()
call pathogen#helptags()
filetype plugin on
:syntax enable
:set hlsearch
"Fix line wrapping
:nnoremap j gj
:nnoremap k gk
" Space mapleader is for productive people 
:let mapleader = " " 
:map <Leader>l :setlocal number!<CR>
:map <Leader>q 0
:map <Leader>p $
:map <Leader>d d$
:map <Leader>w <c-w>
:map <Leader>c :!  
:map <Leader>bn :bnext
:map <Leader>bp :bprev
"set makeprg=.$GOPATH/helperScripts/build
set makeprg=/home/alex/workspace/multi-server/helperScripts/build
" have to kick vimrc by resourcing because makeprg gets reset for some reason
:map <Leader>g :Make -a <ENTER>
:map <Leader>t :Make -t <ENTER>
:map <Leader>d :GitGutterLineHighlightsToggle <ENTER>
" please save me from carpal tunnel
:map <Leader>s :w <ENTER> 
" Remap that pesky escape key
ino jj <esc>
cno jj <c-c> 

" NERDTree shortcut
nmap <leader>ne :NERDTreeToggle<cr>
" Kick vim and make sure we're getting all 256 colors!
if $TERM == "xterm-256color" || $TERM == "screen-256color" || $COLORTERM == "gnome-terminal"
  set t_Co=256
endif
set number
:set mouse=a
"set runtimepath^=~/.vim/bundle/ctrlp.vim
" The Silver Searcher
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif

" bind K to grep word under cursor
nnoremap KO :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>
" bind \ (backward slash) to grep shortcut
command -nargs=+ -complete=file -bar Ag silent! grep! <args>|cwindow|redraw!
nnoremap \ :Ag<SPACE>

" Enable NeoComplete at startup
autocmd VimEnter * NeoCompleteEnable     
"tagbar
let g:tagbar_type_go = {  
    \ 'ctagstype' : 'go',
    \ 'kinds'     : [
        \ 'p:package',
        \ 'i:imports:1',
        \ 'c:constants',
        \ 'v:variables',
        \ 't:types',
        \ 'n:interfaces',
        \ 'w:fields',
        \ 'e:embedded',
        \ 'm:methods',
        \ 'r:constructor',
        \ 'f:functions'
    \ ],
    \ 'sro' : '.',
    \ 'kind2scope' : {
        \ 't' : 'ctype',
        \ 'n' : 'ntype'
    \ },
    \ 'scope2kind' : {
        \ 'ctype' : 't',
        \ 'ntype' : 'n'
    \ },
    \ 'ctagsbin'  : 'gotags',
    \ 'ctagsargs' : '-sort -silent'
\ }
nmap <F8> :TagbarToggle<CR>
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlPLastMode'
let g:ctrlp_extensions = ['buffertag', 'tag', 'line', 'dir']
let g:ctrlp_working_path_mode = 0
":GitGutterLineHighlightsEnable
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
let g:SuperTabClosePreviewOnPopupClose = 1
" Run gofmt on save
let g:go_fmt_command = "goimports"
set completeopt-=preview

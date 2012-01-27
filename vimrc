" Initialization {{{

" We don't want vi compatibility.
set nocompatible

" Load pathogen.vim
source ~/.vim/bundle/pathogen/autoload/pathogen.vim
call pathogen#infect()

" enable syntax highlighting
syntax on

" load the plugin and indent settings for the detected filetype
filetype plugin indent on

" }}}

" General settings {{{

set encoding=utf-8

" Allow backspacing over everything in insert mode
set backspace=indent,eol,start

" Keep 50 items in command history
set history=50

" }}}

" Whitespace {{{

set nowrap
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set textwidth=78
"set listchars=tab:▸\
"set list

" }}}

" Indentation {{{

" set autoindent
" set nosmartindent
" set nocindent

" }}}

" Statusline {{{

set laststatus=2
set statusline=%F%m%r%h%w\ %{fugitive#statusline()}\ [T:%Y\ F:%{&ff}]\ [L:%l/%L\ C:%v\ (%p%%)]

" Show (partial) command in statusline
set showcmd
set showmatch

" }}}

" Searching {{{
"
set hlsearch
set ignorecase
set smartcase
set incsearch

" }}}

" Split {{{

" Horizontal splits open below the current buffer
set splitbelow

" Vertical splits open to the right of the current buffer
set splitright

" }}}

" Backup {{{

set backupdir=~/.vim/.backup
set directory=~/.vim/.backup

" }}}

" Fold/view {{{

set viewdir=~/.vim/.view
set viewoptions=folds,cursor
set foldmethod=manual

" }}}

" Omni completion {{{

set wildmode=list:longest,list:full
"set wildmenu
"set wildmode=list:full
set wildignore+=*.o,*.obj,.git,*.rbc,*.class,.svn,vendor/gems/*,coverage/*

" }}}

" Mappings {{{

let mapleader = ","

" ,wr to toggle wrap/no wrap
map <leader>wr :set nowrap! nowrap?<cr>

" ,pa to toggle paste mode
map <leader>pa :set paste! paste?<cr>

" ,n to toggle line numbers
map <leader>n :set number! number?<cr>

" ,l to toggle list
map <leader>l :set list! list?<cr>

" Make ctrl+a/ctrl+e work in insert mode
imap <C-a> <C-o>0
imap <C-e> <C-o>$

" Make ctrl+a jump to beginning of line in command mode
cnoremap <C-a> <C-b>

" bind ctrl-l to hashrocket
imap <C-l> <space>=><space>

" ,z - Toggle fold visibility
map <leader>z zi

" Remap space to :
noremap <space> :

" Visually select the text that was last edited/pasted
nmap gV `[v`]

" ctrl+j/ctrl+k to move up/down in insert mode
imap <C-j> <C-o>gj
imap <C-k> <C-o>gk

" opt+U to toggle word case
map <M-u> g~iw
imap <M-u> <C-o>g~iw

" Clear search highlighting
nmap <leader>/ :nohlsearch<cr>

" }}}

" Fat fingers
command! -bang E e<bang>
command! -bang Q q<bang>
command! -bang W w<bang>
command! -bang QA qa<bang>
command! -bang Qa qa<bang>
command! -bang Wa wa<bang>
command! -bang WA wa<bang>
command! -bang Wq wq<bang>
command! -bang WQ wq<bang>

" Include local vim config {{{

if filereadable(expand("~/.vimrc.local"))
  source ~/.vimrc.local
endif

" }}}

" vim:ft=vim:fdm=marker:ts=2:sw=2:sts=2:et

" enter the current millenium
set nocompatible

" Line Numbers

set number
set relativenumber

" Tabs & spaces

set tabstop=4               " number of visual spaces per tab
set softtabstop=4           " number of spaces in tab when editing
set autoindent              " copy indenting from prior line
" set expandtab               " expand tabs to spaces
set shiftwidth=4            " using indent operations in visual mode use this much whitepsace

" utf-8 setup

set encoding=utf-8                      " The encoding displayed.
set fileencoding=utf-8                  " The encoding written to file.

" line endings
set ff=unix

" Whitespace characters

set list
set listchars=tab:»\ ,trail:·,extends:»,precedes:«

" Syntax Highlighting

syntax enable
filetype plugin on

" Status bar
set laststatus=2
set ruler

" Search options
set ignorecase                          " Do case insensitive matching

" Auto reload if file is unedited
set autoread

" File finding
set path+=**
set wildmenu

" Status bar coloring
hi StatusLine ctermbg=15 ctermfg=4
au InsertEnter * hi StatusLine ctermbg=15 ctermfg=1
au InsertLeave * hi StatusLine ctermbg=15 ctermfg=4

" Tweaks for browsing
" let g:netrw_banner=0        " disable annoying banner
let g:netrw_browse_split=4  " open in prior window
let g:netrw_altv=1          " open splits to the right
let g:netrw_liststyle=3     " tree view
let g:netrw_list_hide=netrw_gitignore#Hide()
let g:netrw_list_hide.=',\(^\|\s\s\)\zs\.\S\+'


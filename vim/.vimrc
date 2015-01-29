" Setup vim-pathogen.
source ~/dotfiles/external/vim/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect('~/dotfiles/external/vim/{}')

" Please...
set nocompatible

" Use syntax highlighting.
syntax on

" Vim is smart.
filetype on
filetype indent on
filetype plugin on

" Search options.
set hlsearch
set incsearch

" Use whatever coding style is specified.
set modeline

" Highlight characters when line is longer than 80 chars.
match ErrorMsg '\%>80v.\+'

" I have a decent terminal emulator.
colorscheme wolfpack

" Remap mapleader to something more convenient.
let mapleader = ","

" Line/column numbers.
set ruler
set number
set relativenumber
set numberwidth=6    " Should be enough. Comfortable padding.
set cpoptions+=n     " Wrapped lines don't have blank line numbers.

" Improved incsearch config.
map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)
set hlsearch
let g:incsearch#auto_nohlsearch = 1
map n  <Plug>(incsearch-nohl-n)
map N  <Plug>(incsearch-nohl-N)
map *  <Plug>(incsearch-nohl-*)
map #  <Plug>(incsearch-nohl-#)
map g* <Plug>(incsearch-nohl-g*)
map g# <Plug>(incsearch-nohl-g#)

" Setup vim-pathogen.

source ~/dotfiles/external/vim/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect('~/dotfiles/external/vim/{}')

" Please...
set nocompatible

" Use syntax highlighting.
syntax on

" Vim is smart.
filetype on
filetype plugin indent on
filetype plugin on

" Search options.
set hlsearch
set incsearch

" Use whatever style is specified.
set modeline

" Some more options.
set ruler

" Highlight characters when line is longer than 80 chars.
match ErrorMsg '\%>80v.\+'

" I have a decent terminal emulator.
set background=dark
colorscheme solarized


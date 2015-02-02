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
let mapleader=","

" Line/column numbers.
set ruler
set number
set relativenumber
set numberwidth=6    " Should be enough. Comfortable padding.
set cpoptions+=n     " Wrapped lines don't have blank line numbers.

" Incsearch plugin config.
let g:incsearch#auto_nohlsearch=1
map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)
map n  <Plug>(incsearch-nohl-n)
map N  <Plug>(incsearch-nohl-N)
map *  <Plug>(incsearch-nohl-*)
map #  <Plug>(incsearch-nohl-#)
map g* <Plug>(incsearch-nohl-g*)
map g# <Plug>(incsearch-nohl-g#)

" Powerline plugin config.
python from powerline.vim import setup as powerline_setup
python powerline_setup()
python del powerline_setup
set laststatus=2

" Syntastic plugin config.
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
map <Leader>n :lnext<cr>
map <Leader>p :lprev<cr>

" Gvim config.
if has("gui_running")
    set guifont=Meslo\ LG\ S\ DZ\ Regular\ for\ Powerline:h12
endif

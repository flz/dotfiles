if has('vim_starting')
  if &compatible
    set nocompatible
  endif
  set runtimepath+=~/dotfiles/external/vim/dein.vim/
endif

if dein#load_state('~/dotfiles/external/vim/untracked')
  call dein#begin('~/dotfiles/external/vim/untracked')

  call dein#add('~/dotfiles/external/vim/dein.vim')
  call dein#add('Shougo/deoplete.nvim')
  if !has('nvim')
    call dein#add('roxma/nvim-yarp')
    call dein#add('roxma/vim-hug-neovim-rpc')
  endif

  " Load a bunch of plugins.
  call dein#add('Shougo/unite.vim')
  call dein#add('Shougo/unite-outline')
  call dein#add('Shougo/vimfiler')
  call dein#add('scrooloose/nerdcommenter')
  call dein#add('haya14busa/incsearch.vim')
  call dein#add('carlson-erik/wolfpack')
  call dein#add('scrooloose/syntastic')
  call dein#add('tpope/vim-markdown')
  call dein#add('terryma/vim-instant-markdown')
  call dein#add('ludovicchabant/vim-lawrencium')
  call dein#add('ervandew/supertab')
  " call dein#add('xolox/vim-misc')
  " call dein#add('xolox/vim-notes')
  call dein#add('Shougo/neomru.vim')
  call dein#add('bling/vim-airline')
  call dein#add('vim-airline/vim-airline-themes')

  call dein#add('Shougo/vimproc.vim', {
  \ 'build' : {
  \     'mac' : 'make -f make_mac.mak',
  \     'linux' : 'make',
  \     'unix' : 'gmake',
  \    },
  \ })

  call dein#end()
  call dein#save_state()
endif

" Use all the vim goodness.
filetype plugin indent on

" System detection.
if has("unix")
  let s:uname = system("uname -s")
else
  let s:uname = "meh"
endif

" Use syntax highlighting.
syntax on

" Search options.
set hlsearch
set incsearch

" Use whatever coding style is specified.
set modeline

" I have a decent terminal emulator.
colorscheme wolfpack

" Remap mapleader to something more convenient.
let mapleader=","

" Enable the mouse, just in case.
set mouse=a

" Line/column numbers.
set ruler
set number
set relativenumber
set numberwidth=6    " Should be enough. Comfortable padding.
set cpoptions+=n     " Wrapped lines don't have blank line numbers.

" Incsearch plugin config.
let g:incsearch#auto_nohlsearch = 1
map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)
map n  <Plug>(incsearch-nohl-n)
map N  <Plug>(incsearch-nohl-N)
map *  <Plug>(incsearch-nohl-*)
map #  <Plug>(incsearch-nohl-#)
map g* <Plug>(incsearch-nohl-g*)
map g# <Plug>(incsearch-nohl-g#)

" Airline plugin config.
set laststatus=2
let g:airline_powerline_fonts = 1
let g:airline_theme = "powerlineish"

" Syntastic plugin config.
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_enable_signs = 0
map <leader>n :lnext<cr>
map <leader>p :lprev<cr>

" Vimfiler plugin config.
let g:vimfiler_as_default_explorer = 1

" Notes plugin config.
let g:notes_suffix = '.txt'
if s:uname == "Darwin\n"
  let g:notes_directories = ['~/Documents/Notes']
else
  let g:notes_directories = ['~/notes']
endif

" Unite plugin config.
let g:unite_prompt = '» '
let g:unite_split_rule = 'botright'
let g:unite_enable_start_insert = 1
let g:unite_source_history_yank_enable = 1
let g:unite_force_overwrite_statusline = 0
call unite#filters#matcher_default#use(['matcher_fuzzy'])
call unite#filters#sorter_default#use(['sorter_rank'])
nnoremap <leader>t :<c-u>Unite -buffer-name=files file_rec/async:!<cr>
nnoremap <leader>o :<c-u>Unite -buffer-name=outline outline<cr>
nnoremap <leader>y :<c-u>Unite -buffer-name=yank history/yank<cr>
nnoremap <leader>e :<c-u>Unite -buffer-name=buffer buffer<cr>
nnoremap <leader>f :<c-u>Unite -auto-resize file_rec/async<cr>
nnoremap <leader>ft :<c-u>Unite -auto-resize -default-action=tabopen file_rec/async:!<cr>
nnoremap <leader>fs :<c-u>Unite -auto-resize -default-action=split file_rec/async:!<cr>
nnoremap <leader>fv :<c-u>Unite -auto-resize -default-action=vsplit file_rec/async:!<cr>

" Custom mappings for the unite buffer.
autocmd FileType unite call s:unite_settings()
function! s:unite_settings()
  " Play nice with supertab
  let b:SuperTabDisabled = 1
endfunction

" Use templates when available.
autocmd! BufNewFile * silent! 0r ~/.vim/templates/template.%:e

" Gvim config.
if has("gui_running")
    set guifont=Meslo\ LG\ S\ DZ\ Regular\ for\ Powerline:h12
endif

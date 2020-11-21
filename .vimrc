﻿" Normally this if-block is not needed, because `:set nocp` is done
" automatically when .vimrc is found. However, this might be useful
" when you execute `vim -u .vimrc` from the command line.
if &compatible
  " `:set nocp` has many side effects. Therefore this should be done
  " only when 'compatible' is set.
  set nocompatible
endif


" Minpac package manager
packadd minpac
call minpac#init()

" minpac must have {'type': 'opt'} so that it can be loaded with `packadd`.
call minpac#add('k-takata/minpac', {'type': 'opt'})

" Add other plugins here.
call minpac#add('ryanoasis/vim-devicons')
call minpac#add('liuchengxu/vista.vim')
call minpac#add('dense-analysis/ale')
let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'javascript': ['prettier', 'eslint'],
\}


call minpac#add('itchyny/lightline.vim')
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ }

call minpac#add('preservim/nerdtree')


set encoding=utf8
set guifont=Sauce Code\ Pro\ Nerd\ Font\ Complete\ Mono\ 11
if !has('gui_running')
  set t_Co=256
endif

colo wombat256mod

" Display options
set title                   " show file name in window title

" Language specific settings
autocmd FileType javascript setlocal shiftwidth=2 tabstop=2 expandtab
autocmd FileType python setlocal shiftwidth=4 tabstop=4 expandtab

set nocompatible  " No compatibility with vi, enable vim features

" Load pathogen with docs for all plugins
filetype off
call pathogen#infect()
call pathogen#helptags()
syntax on
filetype plugin indent on

" Buffer options
set hidden                  " hide buffers when they are abandoned
set autoread                " auto reload changed files
set autowrite               " automatically save before commands like :next and :make

" Term
if &term =~ "xterm"
    set t_Co=256            " set 256 colors
endif

colo wombat256mod

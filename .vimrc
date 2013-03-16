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

" Display options
set title                   " show file name in window title
set visualbell              " mute error bell
set listchars=tab:â¥\ ,trail:Â·,extends:â¯,precedes:â¯,eol:$,nbsp:~
set linebreak               " break lines by words
set winminheight=0          " minimal window height
set winminwidth=0           " minimal window width
set scrolloff=4             " min 4 symbols bellow cursor
set sidescroll=4            " ?
set sidescrolloff=10        " ?
set showcmd                 " ?
set whichwrap=b,s,<,>,[,],l,h
set completeopt=menu,preview
set infercase               " ?
set cmdheight=2             " ?

" Tab options
set autoindent              " copy indent from previous line
set smartindent             " enable nice indent
set expandtab               " tab with spaces
set smarttab                " indent using shiftwidth"
set shiftwidth=4            " number of spaces to use for each step of indent
set softtabstop=4           " tab like 4 spaces
set shiftround              " drop unused spaces

" Term
if &term =~ "xterm"
    set t_Co=256            " set 256 colors
endif

colo wombat256mod

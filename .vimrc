set nocompatible  " No compatibility with vi, enable vim features

set backupdir=$HOME/.cache/vim/backup      " where to put backup file
set backup                                 " make backup file and leave it around
set backupskip+=svn-commit.tmp,svn-commit.[0-9]*.tmp
set directory=/tmp                         " where to put swap file
let g:SESSION_DIR = $HOME.'/.cache/vim/sessions'

" Create system vim dirs
if finddir(&backupdir) == ''
    silent call mkdir(&backupdir, "p")
endif

if finddir(g:SESSION_DIR) == ''
    silent call mkdir(g:SESSION_DIR, "p")
endif

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
set listchars=tab:⇥\ ,trail:·,extends:⋯,precedes:⋯,eol:$,nbsp:~
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

" Backup and swap files
set history=1000            " history length
set viminfo+=h              " save history
set ssop-=blank             " dont save blank vindow
set ssop-=options           " dont save options

" Search options
set hlsearch                " Highlight search results
set ignorecase              " Ignore case in search patterns
set smartcase               " Override the 'ignorecase' option if the search pattern contains upper case characters
set incsearch               " While typing a search command, show where the pattern

" Matching characters
set showmatch               " Show matching brackets
set matchpairs+=<:>         " Make < and > match as well

" Localization
set langmenu=none            " Always use english menu
set keymap=russian-jcukenwin " Alternative keymap
set iminsert=0               " English by default
set imsearch=-1              " Search keymap from insert mode
set spelllang=en,ru          " Languages
set encoding=utf-8           " Default encoding
set fileencodings=utf-8,cp1251,koi8-r,cp866
set termencoding=utf-8
set bomb

" Wildmenu
set wildmenu                " use wildmenu ...
set wildcharm=<TAB>
set wildignore=*.pyc        " ignore file pattern

" Undo
if has('persistent_undo')
    set undofile            " enable persistent undo
    set undodir=/tmp/       " store undofiles in a tmp dir
endif

" Folding
if has('folding')
    set foldmethod=marker   " Fold on marker
    set foldlevel=999       " High default so folds are shown to start
endif

" X-clipboard support
if has('unnamedplus')
    set clipboard+=unnamed     " enable x-clipboard
endif

" Term
if &term =~ "xterm"
    set t_Co=256            " set 256 colors
endif

colo wombat256mod

let mapleader = ","

" Edit
set backspace=indent,eol,start " Allow backspace to remove indents, newlines and old text
set virtualedit=all         " on virtualedit for all modes

set confirm
set numberwidth=1              " Keep line numbers small if it's shown

" # Project settings
" enables the reading of .vimrc, .exrc and .gvimrc in the current directory.
set exrc

" must be written at the last.  see :help 'secure'.
set secure

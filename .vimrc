﻿set nocompatible  " No compatibility with vi, enable vim features

set backupdir=$HOME/.cache/vim/backup      " where to put backup file
set backup                                 " make backup file and leave it around
set backupskip+=svn-commit.tmp,svn-commit.[0-9]*.tmp
set directory=/tmp                         " where to put swap file
let g:SESSION_DIR = $HOME.'/.cache/vim/sessions'
let g:username = $USERNAME
let g:email = $EMAIL
let g:template_dir = $HOME."/.vim/templates/"
let g:Powerline_symbols = 'fancy'
let g:NERDSpaceDelims = 1
let g:pymode_rope_lookup_project = 0
let g:pymode_rope = 0
let g:pymode_breakpoint_cmd = "import ipdb; ipdb.set_trace()  # XXX BREAKPOINT"

" Syntastic settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_python_checkers = []
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
" END: Syntastic settings

" ChangeLog settings (default ft-changelog-plugin)
" Name file ChangeLog, this is most canonical name.
let g:changelog_username = $USERNAME." <".$EMAIL.">"
" END: ChangeLog settings

let CoVim_default_name = $USERNAME
let CoVim_default_port = "5005"

let g:javascript_conceal_function   = "ƒ"

" Create system vim dirs
if finddir(&backupdir) == ''
    silent call mkdir(&backupdir, "p")
endif

if finddir(g:SESSION_DIR) == ''
    silent call mkdir(g:SESSION_DIR, "p")
endif

" Load pathogen with docs for all plugins
filetype off
" call pathogen#infect()
" call pathogen#helptags()
syntax on
filetype plugin indent on

set rtp+=$HOME/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'

Bundle 'kien/ctrlp.vim.git'
Bundle 'bling/vim-airline'
Bundle 'scrooloose/nerdtree.git'
Bundle 'scrooloose/nerdcommenter.git'
Bundle 'kana/vim-fakeclip.git'
Bundle 'klen/python-mode.git'
Bundle 'tpope/vim-fugitive.git'
Bundle 'tpope/vim-surround.git'
Bundle 'mattn/emmet-vim'

Bundle 'c.vim'
Bundle 'derekwyatt/vim-scala.git'
Bundle 'rking/ag.vim'
Bundle 'aperezdc/vim-template.git'
Bundle 'drmingdrmer/xptemplate.git'
Bundle 'majutsushi/tagbar.git'
Bundle 'Rykka/riv.vim'
Bundle 'hallison/vim-markdown'

Bundle 'vim-scripts/vimwiki.git'
Bundle 'itchyny/calendar.vim'
Bundle 'vim-scripts/TaskList.vim.git'
Bundle 'jceb/vim-orgmode'


Bundle 'csv.vim'
augroup filetypedetect
    au! BufRead,BufNewFile *.csv,*.dat	setfiletype csv
    au! BufNewFile,BufRead *.less set filetype=less
augroup END

Bundle 'Gundo'
" python-mode does the job
Bundle 'scrooloose/syntastic'
Bundle 'LargeFile'
Bundle 'L9'

Bundle 'mattn/webapi-vim'
Bundle 'jelera/vim-javascript-syntax'
Bundle 'pangloss/vim-javascript'
Bundle 'nathanaelkane/vim-indent-guides'
Bundle 'othree/html5.vim'
Bundle 'kchmck/vim-coffee-script'
Bundle 'gorodinskiy/vim-coloresque'
Bundle 'groenewege/vim-less'

Bundle 'nginx.vim'
Bundle 'JuliaLang/julia-vim'
Bundle 'LaTeX-Suite-aka-Vim-LaTeX'
Bundle 'bufexplorer.zip'
Bundle 'kana/vim-arpeggio'
Bundle 'chase/vim-ansible-yaml'
Bundle 'FredKSchott/CoVim'

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
autocmd FileType html :setlocal shiftwidth=2 ts=2 softtabstop=2
autocmd Filetype javascript :setlocal shiftwidth=2 ts=2 softtabstop=2

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

" Set paste
nnoremap <F10> :set invpaste paste?<CR>
set pastetoggle=<F10>

nnoremap <Leader>m :w <BAR> !lessc % > %:t:r.css<CR><space>

" # Project settings
" enables the reading of .vimrc, .exrc and .gvimrc in the current directory.
set exrc

" must be written at the last.  see :help 'secure'.
set secure

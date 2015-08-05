set nocompatible  " No compatibility with vi, enable vim features

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
let g:syntastic_loc_list_height=3
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

call plug#begin('~/.vim/plugged')

Plug 'kien/ctrlp.vim'
Plug 'bling/vim-airline'
Plug 'scrooloose/nerdtree', {'on':  'NERDTreeToggle'}
Plug 'scrooloose/nerdcommenter'
Plug 'kana/vim-fakeclip'
Plug 'klen/python-mode'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'mattn/emmet-vim'

Plug 'c.vim'
Plug 'derekwyatt/vim-scala'
Plug 'rking/ag.vim'
Plug 'majutsushi/tagbar'
Plug 'Rykka/riv.vim'
Plug 'hallison/vim-markdown'

Plug 'vim-scripts/vimwiki'
Plug 'itchyny/calendar.vim'
Plug 'vim-scripts/TaskList.vim'
Plug 'jceb/vim-orgmode'

" Build you complete me
function! BuildYCM(info)
  " info is a dictionary with 3 fields
  " - name:   name of the plugin
  " - status: 'installed', 'updated', or 'unchanged'
  " - force:  set on PlugInstall! or PlugUpdate!
  if a:info.status == 'installed' || a:info.force
    !YCM_CORES=1 ./install.sh --clang-completer --gocode-completer
  endif
endfunction
Plug 'Valloric/YouCompleteMe', {'do': function('BuildYCM')}
autocmd! User YouCompleteMe call youcompleteme#Enable()


Plug 'csv.vim'
augroup filetypedetect
    au! BufRead,BufNewFile *.csv,*.dat	setfiletype csv
    au! BufNewFile,BufRead *.less set filetype=less
    au! BufRead,BufNewFile *.json set filetype=json
augroup END

Plug 'Gundo'
" python-mode does the job
Plug 'scrooloose/syntastic'
Plug 'LargeFile'
Plug 'L9'

Plug 'mattn/webapi-vim'
Plug 'jelera/vim-javascript-syntax'
Plug 'pangloss/vim-javascript'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'othree/html5.vim'
Plug 'kchmck/vim-coffee-script'
Plug 'gorodinskiy/vim-coloresque'
Plug 'groenewege/vim-less'

Plug 'nginx.vim'
Plug 'JuliaLang/julia-vim'
Plug 'LaTeX-Suite-aka-Vim-LaTeX'
Plug 'bufexplorer.zip'
Plug 'kana/vim-arpeggio'
Plug 'chase/vim-ansible-yaml'
Plug 'FredKSchott/CoVim'

Plug 'elzr/vim-json'
augroup json_autocmd
    autocmd!
    autocmd FileType json set autoindent
    autocmd FileType json set formatoptions=tcq2l
    autocmd FileType json set textwidth=78 shiftwidth=2
    autocmd FileType json set softtabstop=2 tabstop=8
    autocmd FileType json set expandtab
    autocmd FileType json set foldmethod=syntax
augroup END

call plug#end()

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

" Normally this if-block is not needed, because `:set nocp` is done
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
call minpac#add('elmcast/elm-vim')


" Disable backup files *.ext~
set nobackup
set nowritebackup  " prevent 'jumping files' on the Windows desktop

let mapleader=","
set encoding=utf8
set guifont=Sauce\ Code\ Pro\ Nerd\ Font\ Complete\ Mono\ 11
if !has('gui_running')
  set t_Co=256
endif

if &t_Co >= 256 || has("gui_running")
    colorscheme wombat256mod
endif

if &t_Co > 2 || has("gui_running")
    " switch syntax highlighting on, when the terminal has colors
    syntax on
endif

filetype plugin indent on  " enable indenting based on the file type

" Display options
set title                   " show file name in window title

" Language specific settings
autocmd FileType javascript setlocal shiftwidth=2 tabstop=2 expandtab
autocmd FileType python setlocal shiftwidth=4 tabstop=4 expandtab


function! FzyCommand(choice_command, vim_command)
  try
    let output = system(a:choice_command . " | fzy ")
  catch /Vim:Interrupt/
    " Swallow errors from ^C, allow redraw! below
  endtry
  redraw!
  if v:shell_error == 0 && !empty(output)
    exec a:vim_command . ' ' . output
  endif
endfunction

" nnoremap <leader>fz :call FzyCommand("find . -type f", ":e")<cr>
nnoremap <leader>fz :call FzyCommand("ag . --silent -l -g ''", ":e")<cr>

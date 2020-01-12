"""
" Vundle  (https://github.com/gmarik/Vundle.vim.git)
"""
set nocompatible     " required
filetype off         " required
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
  " alternatively, pass a path where Vundle should install plugins
  "call vundle#begin('~/some/path/here')
  " let Vundle manage Vundle, required
  Plugin 'gmarik/Vundle.vim'
  " Folds classes/methods/etc.
  Plugin 'tmhedberg/SimpylFold'
  " Git commands in vim prefixed by G (e.g. `Gstatus`)
  Plugin 'tpope/vim-fugitive'
  " VIM Status bar
  Plugin 'vim-airline/vim-airline'
call vundle#end()            " required
filetype plugin indent on    " required

"
" Predefined behavior
"
source $VIMRUNTIME/vimrc_example.vim
" source $VIMRUNTIME/mswin.vim
behave mswin

" Default window splitting behavior
set splitbelow
set splitright

" Custom hotkeys for navigating split windows
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Enable class/method/etc. folding
set foldmethod=indent
set foldlevel=99
" Use spacebar to fold
nnoremap <space> za 

" Case-insensitive search if lowercase
set ignorecase
set smartcase

" Show line numbers
set number

" Default colorscheme
colorscheme desert

" Don't save files that end with ~ to pwd
" https://stackoverflow.com/a/6367422/11415371
set backup
set backupdir=.backup,C:/WINDOWS/TEMP,~/.vim/.backup
set backupskip=C:/WINDOWS/Temp/*
set directory=.swp,C:/WINDOWS/Temp,~/.vim/.swp,
set undodir=.undo,C:/WINDOWS/Temp,~/.vim/.undo
set writebackup

" PEP8-compliant indentation/whitespace
au BufNewFile,BufRead *.py
  \ set tabstop=4 |
  \ set softtabstop=4 |
  \ set shiftwidth=4 |
  \ set textwidth=79 |
  \ set expandtab |
  \ set autoindent |
  \ set fileformat=unix

" Check Python for whitespace before end of line
highlight BadWhitespace ctermbg=red guibg=darkred
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/
autocmd ColorScheme * highlight BadWhitespace ctermbg=red guibg=darkred

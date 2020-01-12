" Vundle  (https://github.com/gmarik/Vundle.vim.git)
set nocompatible     " required
filetype off         " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" add all your plugins here (note older versions of Vundle
" used Bundle instead of Plugin)


" All of your Plugins must be added before the following line
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

" Case-insensitive search if lowercase
set ignorecase
set smartcase

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

"
" Predefined behavior
"
source $VIMRUNTIME/vimrc_example.vim
" source $VIMRUNTIME/mswin.vim
behave mswin

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

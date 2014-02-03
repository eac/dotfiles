color sunburst
set tabstop=2
set shiftwidth=2
set encoding=utf-8

filetype indent on
set autoindent
set smartindent
set expandtab

set number

set lines=120

" Directories for swp files
set backupdir=~/.vim/backup
set directory=~/.vim/backup

" Declare common Ruby files
au BufRead,BufNewFile {Gemfile,Rakefile,config.ru} set ft=ruby

"set rtp+=/usr/local/Cellar/go/1.0.3/misc/vim
"filetype plugin indent on
syntax on

" Trim trailing whitespace
autocmd BufWritePre *.rb,*.js,*.erb,*.scss :%s/\s\+$//e

" Swap tabs for spaces
autocmd BufWritePre *.rb,*.js,*.erb,*.scss :%s/\t/  /e

" Highlight trailing whitespace
set list listchars=tab:»·,trail:·"

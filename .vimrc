set nocompatible               " be iMproved
filetype off                   " required!

set number
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()


" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'
Bundle 'altercation/vim-colors-solarized'
"多语法检查
Bundle 'scrooloose/syntastic'
"赋值语句代码对齐
Bundle 'junegunn/vim-easy-align'
"airline
Bundle 'bling/vim-airline'
"gitgutter
Bundle 'airblade/vim-gitgutter'
"vim-virtualenv
Bundle 'jmcantrell/vim-virtualenv'

syntax on
set background=dark
let g:solarized_termcolors=16
colorscheme solarized
set t_Co=256
call togglebg#map("<F5>")


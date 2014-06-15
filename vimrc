set encoding=utf-8
set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
set fileformat=unix
set guifont=Courier:h12
set linespace=4
set shiftwidth=4
set tabstop=4
set softtabstop=4
set expandtab
set noswapfile
set backspace=start,indent,eol
set numberwidth=4
set autoindent
set smartindent
set nobackup
set writebackup
set hlsearch 
set incsearch
set autoread
set nu  
set ruler
" set wildmode=longest,list,full
" set wildmenu
colorscheme desert

" cygwin terminal cursor config
" let &t_ti.="\e[1 q"
" let &t_SI.="\e[5 q"
" let &t_EI.="\e[1 q"
" let &t_te.="\e[0 q"

" fix cygwin save readonly file confirm
" cabbrev w w!

" hotkey
map <silent> <F9> :tabp<CR>
map <silent> <F10> :tabn<CR>
map <silent> <F2> :redraw!<CR>
nnoremap <silent> <C-Left> :execute 'silent! tabmove ' . (tabpagenr()-2)<CR>
nnoremap <silent> <C-Right> :execute 'silent! tabmove ' . tabpagenr()<CR>

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#rc()
" alternatively, pass a path where Vundle should install bundles
"let path = '~/some/path/here'
"call vundle#rc(path)
" let Vundle manage Vundle, required
Bundle 'gmarik/vundle'

" My Vundle config

" PowerLine
Bundle 'Lokaltog/vim-powerline'
set laststatus=2
set t_Co=256
let g:Powline_symbols='fancy'

" NERD Tree A file explore plugin for vim
Bundle "scrooloose/nerdtree"

let g:NERDTreeDirArrows=0

" emment
Bundle "mattn/emmet-vim"

" enable emmet in different mode
let g:user_emmet_mode='n'    "only enable normal mode functions.
let g:user_emmet_mode='inv'  "enable all functions, which is equal to
let g:user_emmet_mode='a'    "enable all function in all mode.

" redefine trigger key
let g:user_emmet_leader_key='<C-E>'

" coffee support
Bundle 'kchmck/vim-coffee-script'

syntax on
filetype plugin indent on
autocmd BufNewFile,BufReadPost *.coffee setl foldmethod=indent
cabbrev coffee autocmd BufWritePost *.coffee silent make!

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
let g:tlist_javascript_settings = 'javascript;s:string;a:array;o:object;f:function'
let g:NERDTreeDirArrows=0
map <silent> <F10> :tabp<CR>
map <silent> <F12> :tabn<CR>
map <silent> <F4> :JSHint<CR>
nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>
nnoremap <silent> <A-Left> :execute 'silent! tabmove ' . (tabpagenr()-2)<CR>
nnoremap <silent> <A-Right> :execute 'silent! tabmove ' . tabpagenr()<CR>

set nocompatible              " be iMproved, required
filetype off                  " required
filetype plugin indent on     " required
syntax on

filetype plugin on
filetype indent on

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#rc()
" alternatively, pass a path where Vundle should install bundles
"let path = '~/some/path/here'
"call vundle#rc(path)

" let Vundle manage Vundle, required
Bundle 'gmarik/vundle'

" My Vundle config

" PowerLine插件 状态栏增强展示
Bundle 'Lokaltog/vim-powerline'
set laststatus=2
set t_Co=256
let g:Powline_symbols='fancy'

" vim-markdown
Bundle 'plasticboy/vim-markdown'

" NERD Tree A file explore plugin for vim
Bundle "scrooloose/nerdtree"

" emment
Bundle "mattn/emmet-vim"

" elable emmet in different mode
let g:user_emmet_mode='n'    "only enable normal mode functions.
let g:user_emmet_mode='inv'  "enable all functions, which is equal to
let g:user_emmet_mode='a'    "enable all function in all mode.

" redefine trigger key
let g:user_emmet_leader_key='<C-E>'

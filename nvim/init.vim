let mapleader=" "
syntax on
set number
set norelativenumber
set cursorline
set wrap
set showcmd
set wildmenu

set hlsearch
exec "nohlsearch"
set incsearch
set ignorecase
set smartcase
noremap = nzz
noremap - Nzz
noremap <LEADER><CR> :nohlsearch<CR>

map sr :set splitright<CR>:vsplit<CR>
map sl :set nosplitright<CR>:vsplit<CR>
map su :set nosplitbelow<CR>:split<CR>
map sd :set splitbelow<CR>:split<CR>

map <LEADER>l <C-w>l
map <LEADER>k <C-w>k
map <LEADER>h <C-w>h
map <LEADER>j <C-w>j

map <up> :res +5<CR>
map <down> :res -5<CR>
map <left> :vertical resize-5<CR>
map <right> :vertical resize+5<CR>

map tn :tabe<CR>
map tl :-tabnext<CR>
map tn :+tabnext<CR>

map sv <C-w>t<C-w>H
map sh <C-w>t<C-w>K

set mouse=a
set encoding=utf-8
set showmatch
let &t_ut=''
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set paste
set list
set listchars=tab:▸\ ,trail:▫
set scrolloff=10
set tw=0
set indentexpr=
set backspace=indent,eol,start
set foldmethod=indent
set foldlevel=99
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_SR = "\<Esc>]50;CursorShape=2\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"
set laststatus=2
set autochdir
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
set clipboard=unnamedplus

set nocompatible
filetype on
filetype indent on
filetype plugin on
filetype plugin indent on
set shell=/bin/bash

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin('~/.vim/bundle/plugged')
Plugin 'VundleVim/Vundle.vim'
call vundle#end()

call plug#begin('~/.vim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'jiangmiao/auto-pairs'

"注释 <leader>cc 反注释 <leader>cu
Plug 'scrooloose/nerdcommenter'

"go-to 插件 <leader>d definition (K, <leader>n / r(rename))
Plug 'davidhalter/jedi-vim'

Plug 'scrooloose/nerdtree'
Plug 'neomake/neomake'
Plug 'morhetz/gruvbox'

Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

"Airline主题设置
let g:airline_solarized_bg='dark'

"gruvbox主题设置
colorscheme gruvbox
set background=dark

"neomake代码检查
let g:neomake_python_enabled_makers = ['pylint']
call neomake#configure#automake('nrwi', 500)

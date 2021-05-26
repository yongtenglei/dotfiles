"
" ____               __     ___
"|  _ \ ___ _   _    \ \   / (_)_ __ ___
"| |_) / _ \ | | |____\ \ / /| | '_ ` _ \
"|  _ <  __/ |_| |_____\ V / | | | | | | |
"|_| \_\___|\__, |      \_/  |_|_| |_| |_|
"           |___/

let mapleader=" "
syntax on
set number
"set relativenumber
set cursorline
set wrap
set showcmd
set wildmenu
set wildmode=longest:list,full
set nobackup
set noswapfile
set spell spelllang=en_us

inoremap ' ''<ESC>i
inoremap " ""<ESC>i
inoremap ( ()<ESC>i
inoremap < <><ESC>i
inoremap [ []<ESC>i
inoremap { {}<ESC>i
inoremap {<CR> {<CR>}<ESC>O


set hlsearch
exec "nohlsearch"
set incsearch
set ignorecase
set smartcase
noremap = nzz
noremap - Nzz
noremap <LEADER><CR> :nohlsearch<CR>

"进行分屏
map sr :set splitright<CR>:vsplit<CR>
map sl :set nosplitright<CR>:vsplit<CR>
map su :set nosplitbelow<CR>:split<CR>
map sd :set splitbelow<CR>:split<CR>

"分屏cursor切换
map <LEADER>l <C-w>l
map <LEADER>k <C-w>k
map <LEADER>h <C-w>h
map <LEADER>j <C-w>j

"切换竖直sh or水平分屏sv
map sv <C-w>t<C-w>H
map sh <C-w>t<C-w>K

map <up> :res +5<CR>
map <down> :res -5<CR>
map <left> :vertical resize-5<CR>
map <right> :vertical resize+5<CR>

map tn :tabe<CR>
map tl :-tabnext<CR>
map tr :+tabnext<CR>

set mouse=a
set encoding=utf-8
set guifont=DejaVu_Sans_Mono_Font
set showmatch
let &t_ut=''
set expandtab
set autoindent
set cindent
set tabstop=2
set shiftwidth=2
set softtabstop=2
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
set autowrite
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
set clipboard=unnamedplus

set nocompatible
filetype on
filetype indent on
filetype plugin on
filetype plugin indent on
set shell=/bin/bash

"placeholder <++>
map <LEADER><LEADER> <Esc>/<++><CR>:nohlsearch<CR>c4i
call plug#begin('~/.vim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
"vim-snippets
Plug 'honza/vim-snippets'

"visual-multi
Plug 'mg979/vim-visual-multi', {'branch': 'master'}

"wildfire.vim
Plug 'gcmt/wildfire.vim'

"美化nerdtree
Plug 'ryanoasis/vim-devicons'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

"ale
"Plug 'dense-analysis/ale'

"vim-starttify
Plug 'mhinz/vim-startify'

"vim-go
Plug 'fatih/vim-go', { 'do': ':GoInstallBinaried'}
"vim-surround
Plug 'tpope/vim-surround'
"fzf
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

"indentline
Plug 'Yggdroot/indentLine'

"rainbow parentheses
Plug 'luochen1990/rainbow'

"注释 <leader>cc 反注释 <leader>cu
Plug 'scrooloose/nerdcommenter'

"go-to 插件 <leader>d definition (K, <leader>n / r(rename))
"Plug 'davidhalter/jedi-vim'

"floaterm
Plug 'voldikss/vim-floaterm'

Plug 'scrooloose/nerdtree'

Plug 'morhetz/gruvbox'

"markdown stuff
Plug 'godlygeek/tabular' "必要插件，安装在vim-markdown前面
Plug 'plasticboy/vim-markdown'
Plug 'mzlogin/vim-markdown-toc'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
Plug 'vimwiki/vimwiki'

Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

"Airline主题设置
let g:airline_solarized_bg='dark'

"gruvbox主题设置
colorscheme gruvbox
set background=dark

"indentLine
let g:indentLine_char_list = ['|', '¦', '┆', '┊']

"vim-markdown
let g:vim_markdown_math = 1
"vim-markdown-doc
let g:vmt_cycle_list_item_markers = 1
"vim-markdown-preview
let g:mkdp_browser = 'chromium'

"nerdtree config
"当NERDTree为剩下的唯一窗口时自动关闭
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
"设置树的显示图标
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
let NERDTreeIgnore = ['\.pyc$']  " 过滤所有.pyc文件不显示
"let g:NERDTreeShowLineNumbers=1  " 是否显示行号
let g:NERDTreeHidden=0     "不显示隐藏文件
"Making it prettier
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
" 过滤: 所有指定文件和文件夹不显示
let NERDTreeIgnore = ['\.pyc$', '\.swp', '\.swo', '\.vscode', '__pycache__']
map tt :NERDTreeToggle<CR>

" Compile function
map r :call CompileRunGcc()<CR>
func! CompileRunGcc()
  exec "w"
  if &filetype == 'c'
    exec "!g++ % -o %<"
    exec "!time ./%<"
  elseif &filetype == 'cpp'
    exec "!g++ % -o %<"
    exec "!time ./%<"
  elseif &filetype == 'java'
    exec "!javac %"
    exec "!time java %<"
  elseif &filetype == 'sh'
    :!time bash %
  elseif &filetype == 'python'
    silent! exec "!clear"
    exec "!time python3 %"
  elseif &filetype == 'html'
    exec "!firefox % &"
  elseif &filetype == 'markdown'
    exec "MarkdownPreview"
  elseif &filetype == 'vimwiki'
    exec "MarkdownPreview"
  elseif &filetype == 'go'
    exec ":GoRun %"
  endif
endfunc
"rainbow parentheses
let g:rainbow_active = 1

"ale config
"let g:ale_disable_lsp = 1
"floaterm config
let g:floaterm_keymap_toggle = '<LEADER>ft'
"python path
let g:python3_host_prog = "/usr/bin/python3"

"coc config
let g:coc_global_extensions = [
	\ 'coc-css',
	\ 'coc-diagnostic',
	\ 'coc-eslint',
	\ 'coc-explorer',
	\ 'coc-flutter-tools',
	\ 'coc-gitignore',
	\ 'coc-html',
	\ 'coc-import-cost',
	\ 'coc-json',
	\ 'coc-lists',
	\ 'coc-prettier',
	\ 'coc-prisma',
	\ 'coc-pyright',
	\ 'coc-clangd',
	\ 'coc-snippets',
	\ 'coc-sourcekit',
	\ 'coc-stylelint',
	\ 'coc-syntax',
	\ 'coc-tailwindcss',
	\ 'https://github.com/rodrigore/coc-tailwind-intellisense',
	\ 'coc-tasks',
	\ 'coc-translator',
	\ 'coc-tslint-plugin',
	\ 'coc-tsserver',
	\ 'coc-vetur',
	\ 'coc-vimlsp',
	\ 'coc-yaml',
	\ 'coc-yank']

set hidden

" Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=100

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif

" Use <c-l> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-l> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)


"coc-snippet

" Use <C-j> for select text for visual placeholder of snippet.
vmap <C-j> <Plug>(coc-snippets-select)

" Use <C-j> for jump to next placeholder, it's default of coc.nvim
let g:coc_snippet_next = '<c-j>'

" Use <C-k> for jump to previous placeholder, it's default of coc.nvim
let g:coc_snippet_prev = '<c-k>'

"Make <tab> used for trigger completion, completion confirm, snippet expand and jump like VSCode.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? coc#_select_confirm() :
      \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction




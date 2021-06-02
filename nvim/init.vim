"
" ____			   __	 ___
"|  _ \ ___ _   _	\ \   / (_)_ __ ___
"| |_) / _ \ | | |____\ \ / /| | '_ ` _ \
"|  _ <  __/ |_| |_____\ V / | | | | | | |
"|_| \_\___|\__, |	  \_/  |_|_| |_| |_|
"		   |___/
" ===
" === Auto load for first time uses
" ===
"if empty(glob('~/.config/nvim/autoload/plug.vim'))
	"silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
				"\ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	"autocmd VimEnter * PlugInstall --sync | source ~/.config/nvim/init.vim
"endif

let mapleader=" "
syntax on
set number
set relativenumber
set cursorline
set wrap
set showcmd
set wildmenu
set wildmode=longest:list,full
set nobackup
set noswapfile
set spell spelllang=en_us

"inoremap ' ''<ESC>i
"inoremap " ""<ESC>i
"inoremap ( ()<ESC>i
"inoremap < <><ESC>i
"inoremap [ []<ESC>i
"inoremap { {}<ESC>i
"inoremap {<CR> {<CR>}<ESC>O


set hlsearch
exec "nohlsearch"
set incsearch
set ignorecase
set smartcase
noremap = nzz
noremap - Nzz
noremap <LEADER><CR> :nohlsearch<CR>

"进行分屏
noremap sr :set splitright<CR>:vsplit<CR>
noremap sl :set nosplitright<CR>:vsplit<CR>
noremap su :set nosplitbelow<CR>:split<CR>
noremap sd :set splitbelow<CR>:split<CR>

"分屏cursor切换
noremap <LEADER>ww <C-w>w
noremap <LEADER>l <C-w>l
noremap <LEADER>k <C-w>k
noremap <LEADER>h <C-w>h
noremap <LEADER>j <C-w>j
noremap qf <C-w>o

" Press <SPACE> + q to close the window below the current window
noremap <LEADER>qq <C-w>j:q<CR>

"切换竖直sh or水平分屏sv
noremap sv <C-w>t<C-w>H
noremap sh <C-w>t<C-w>K

" Rotate screens
noremap srh <C-w>b<C-w>K
noremap srv <C-w>b<C-w>H

" adjust windows size
noremap <up> :res +5<CR>
noremap <down> :res -5<CR>
noremap <left> :vertical resize-5<CR>
noremap <right> :vertical resize+5<CR>

"tab management
noremap tn :tabe<CR>
noremap th :-tabnext<CR>
noremap tl :+tabnext<CR>

" Move the tabs with tmh and tml
noremap tmh :-tabmove<CR>
noremap tml :+tabmove<CR>

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
" improve scrolling performance when navigating through large results
set lazyredraw


set nocompatible
filetype on
filetype indent on
filetype plugin on
filetype plugin indent on
set shell=/bin/bash


" ===
" === Terminal Behaviors
" ===
let g:neoterm_autoscroll = 1
autocmd TermOpen term://* startinsert
" go back to normal
tnoremap <C-N> <C-\><C-N>
" go back to last screen
"tnoremap <C-O> <C-\><C-N><C-O>
let g:terminal_color_0  = '#000000'
let g:terminal_color_1  = '#FF5555'
let g:terminal_color_2  = '#50FA7B'
let g:terminal_color_3  = '#F1FA8C'
let g:terminal_color_4  = '#BD93F9'
let g:terminal_color_5  = '#FF79C6'
let g:terminal_color_6  = '#8BE9FD'
let g:terminal_color_7  = '#BFBFBF'
let g:terminal_color_8  = '#4D4D4D'
let g:terminal_color_9  = '#FF6E67'
let g:terminal_color_10 = '#5AF78E'
let g:terminal_color_11 = '#F4F99D'
let g:terminal_color_12 = '#CAA9FA'
let g:terminal_color_13 = '#FF92D0'
let g:terminal_color_14 = '#9AEDFE'

" ===
" === Basic Mappings
" ===
noremap ; :

" Save & quit
"noremap Q :q<CR>
"noremap <C-q> :qa<CR>
noremap S :w<CR>

" Open or source the vimrc file anytime
noremap <LEADER>rc :e ~/.config/nvim/init.vim<CR>
noremap <LEADER>src :source ~/.config/nvim/init.vim<CR>

" Copy to system clipboard
vnoremap Y "+y

" Indentation
nnoremap < <<
nnoremap > >>

" Adjacent duplicate words
noremap <LEADER>dw /\(\<\w\+\>\)\_s*\1

" Space to Tab
nnoremap <LEADER>tt :%s/	/\t/g
vnoremap <LEADER>tt :s/	/\t/g


" Folding
noremap <silent> <LEADER>o za

" ===
" === Cursor Movement
" ===

" yank to the end of line
noremap <silent> \v v$h

" go to the start of the line
noremap <silent> <LEADER>H 0
" go to the end of the line
noremap <silent> <LEADER>L $

" ===
" === Markdown Settings
" ===
" Snippets
source ~/.config/nvim/md-snippets.vim
" auto spell
autocmd BufRead,BufNewFile *.md setlocal spell

"vim-markdown
let g:vim_markdown_math = 1
let g:vim_markdown_new_list_item_indent = 2

"vim-markdown-doc
let g:vmt_cycle_list_item_markers = 1
"vim-markdown-preview
let g:instant_markdown_slow = 0
let g:instant_markdown_autostart = 1
let g:instant_markdown_allow_unsafe_content = 1
let g:instant_markdown_mathjax = 1
let g:instant_markdown_browser = "firefox --new-window"
let g:instant_markdown_port = 8090
let g:instant_markdown_autoscroll = 1
"vimwiki"
let g:vimwiki_list = [{'path': '~/vimwiki/',
                      \ 'syntax': 'markdown', 'ext': '.md'}]
nmap \ww <Plug>VimwikiIndex

" ===
" === Other useful stuff
" ===
" Open a new instance of st with the cwd
nnoremap \t :tabe<CR>:-tabmove<CR>:term sh -c 'st'<CR><C-\><C-N>:q<CR>

" Opening a terminal window
noremap <LEADER>/ :set splitbelow<CR>:split<CR>:res +10<CR>:term<CR>

" go to placeholder <++> and edit
noremap <LEADER><LEADER> <Esc>/<++><CR>:nohlsearch<CR>c4i

" Spelling Check with <space>sc
noremap <LEADER>sc :set spell!<CR>

" Auto change directory to current dir
autocmd BufEnter * silent! lcd %:p:h

" Call figlet
noremap tx :r !figlet

" find and replace
noremap \s :%s//g<left><left>

" set wrap
noremap <LEADER>sw :set wrap<CR>

call plug#begin('~/.vim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ojroques/vim-scrollstatus'

"suda.vim
Plug 'lambdalisue/suda.vim'

"Far find and replace
Plug 'brooth/far.vim'

"tarbar
Plug 'preservim/tagbar'
"vim-snippets
Plug 'honza/vim-snippets'

"visual-multi
Plug 'mg979/vim-visual-multi', {'branch': 'master'}

"wildfire.vim
Plug 'gcmt/wildfire.vim'

" easy-align
Plug 'junegunn/vim-easy-align'

"vista.vim
Plug 'liuchengxu/vista.vim'

"ale
"Plug 'dense-analysis/ale'

"easy-mostion
Plug 'easymotion/vim-easymotion'

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

Plug 'morhetz/gruvbox'

"yay -S ranger python-pynvim ueberzug required
Plug 'kevinhwang91/rnvimr'

" xtabline
Plug 'mg979/vim-xtabline'

"markdown stuff
" preview requirxdg-utils curl nodejs
" npm -g install instant-markdown-d
Plug 'godlygeek/tabular' "必要插件，安装在vim-markdown前面
Plug 'plasticboy/vim-markdown'
Plug 'mzlogin/vim-markdown-toc'
Plug 'vimwiki/vimwiki'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}

Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

"Airline theme
let g:airline_theme='solarized'
"scrollstatus
let g:airline_section_x = '%{ScrollStatus()}'
let g:scrollstatus_size = 12
let g:scrollstatus_symbol_track = '-'
let g:scrollstatus_symbol_bar = '*'


"tarbar
nnoremap <leader>tb :TagbarToggle<CR>

"gruvbox主题设置
colorscheme gruvbox
set background=dark

"indentLine
let g:indentLine_char_list = ['|', '¦', '┆', '┊']

"eastmotion
nmap ss <Plug>(easymotion-s2)


"" press f10 to show hlgroup
"function! SynGroup()
  "let l:s = synID(line('.'), col('.'), 1)
  "echo synIDattr(l:s, 'name') . ' -> ' . synIDattr(synIDtrans(l:s), 'name')
"endfun
"map <F10> :call SynGroup()<CR>


" Compile function
"map r :call CompileRunGcc()<CR>
"func! CompileRunGcc()
  "exec "w"
  "if &filetype == 'c'
	"exec "!g++ % -o %<"
	"exec "!time ./%<"
  "elseif &filetype == 'cpp'
	"exec "!g++ % -o %<"
	"exec "!time ./%<"
  "elseif &filetype == 'java'
	"exec "!javac %"
	"exec "!time java %<"
  "elseif &filetype == 'sh'
	":!time bash %
  "elseif &filetype == 'python'
	"silent! exec "!clear"
	"exec "!time python3 %"
  "elseif &filetype == 'html'
	"exec "!firefox % &"
  "elseif &filetype == 'markdown'
	"exec "MarkdownPreview"
  "elseif &filetype == 'vimwiki'
	"exec "MarkdownPreview"
  "elseif &filetype == 'go'
	"exec ":GoRun %"
  "endif
"endfunc

" Compile function
noremap r :call CompileRunGcc()<CR>
func! CompileRunGcc()
	exec "w"
	if &filetype == 'c'
		exec "!g++ % -o %<"
		exec "!time ./%<"
	elseif &filetype == 'cpp'
		set splitbelow
		exec "!g++ -std=c++11 % -Wall -o %<"
		:sp
		:res -15
		:term ./%<
	elseif &filetype == 'java'
		set splitbelow
		:sp
		:res -5
		term javac % && time java %<
	elseif &filetype == 'sh'
		:!time bash %
	elseif &filetype == 'python'
		set splitbelow
		:sp
		:term python3 %
	elseif &filetype == 'html'
		silent! exec "!".g:mkdp_browser." % &"
	elseif &filetype == 'markdown'
		exec "InstantMarkdownPreview"
	elseif &filetype == 'tex'
		silent! exec "VimtexStop"
		silent! exec "VimtexCompile"
	elseif &filetype == 'dart'
		exec "CocCommand flutter.run -d ".g:flutter_default_device." ".g:flutter_run_args
		silent! exec "CocCommand flutter.dev.openDevLog"
	elseif &filetype == 'javascript'
		set splitbelow
		:sp
		:term export DEBUG="INFO,ERROR,WARNING"; node --trace-warnings .
	elseif &filetype == 'go'
		set splitbelow
		:sp
		:term go run .
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
	\ 'coc-tasks',
	\ 'coc-translator',
	\ 'coc-tslint-plugin',
	\ 'coc-tsserver',
	\ 'coc-vetur',
	\ 'coc-vimlsp',
	\ 'coc-yaml',
	\ 'coc-yank',
	\ 'coc-pairs',
  \ 'coc-clangd']

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
nnoremap <silent><nowait> <LEADER>d :CocList diagnostics<cr>
nmap <silent> <LEADER>- <Plug>(coc-diagnostic-prev)
nmap <silent> <LEADER>=<Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

"coc-snippet

" Use <C-j> for select text for visual placeholder of snippet.
vmap <C-j> <Plug>(coc-snippets-select)

" Use <C-j> for jump to next placeholder, it's default of coc.nvim
let g:coc_snippet_next = '<c-j>'

" Use <C-k> for jump to previous placeholder, it's default of coc.nvim
let g:coc_snippet_prev = '<c-k>'

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')

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

" coc-explorer
nnoremap tt :CocCommand explorer<CR>

" coc-translator
nmap ts <Plug>(coc-translator-p)


" rnvimr
" Make Ranger replace Netrw and be the file explorer
let g:rnvimr_enable_ex = 1

" Make Ranger to be hidden after picking a file
let g:rnvimr_enable_picker = 1

" Disable a border for floating window
let g:rnvimr_draw_border = 0

highlight link RnvimrNormal CursorLine
nnoremap <silent> R :RnvimrToggle<CR><C-\><C-n>:RnvimrResize 0<CR>
let g:rnvimr_action = {
            \ '<C-t>': 'NvimEdit tabedit',
            \ '<C-x>': 'NvimEdit split',
            \ '<C-v>': 'NvimEdit vsplit',
            \ 'gw': 'JumpNvimCwd',
            \ 'yw': 'EmitRangerCwd'
            \ }
let g:rnvimr_layout = { 'relative': 'editor',
            \ 'width': &columns,
            \ 'height': &lines,
            \ 'col': 0,
            \ 'row': 0,
            \ 'style': 'minimal' }
let g:rnvimr_presets = [{'width': 1.0, 'height': 1.0}]

"xtabline
let g:xtabline_settings = {}
let g:xtabline_settings.enable_mappings = 0
let g:xtabline_settings.tabline_modes = ['tabs', 'buffers']
let g:xtabline_settings.enable_persistance = 0
let g:xtabline_settings.last_open_first = 1
noremap \p :echo expand('%:p')<CR>

" ===
" === Vista.vim
" ===
noremap <LEADER>v :Vista!!<CR>
noremap <c-t> :silent! Vista finder coc<CR>
let g:vista_icon_indent = ["╰─▸ ", "├─▸ "]
let g:vista_default_executive = 'coc'
let g:vista_fzf_preview = ['right:50%']
let g:vista#renderer#enable_icon = 1
let g:vista#renderer#icons = {
\   "function": "\uf794",
\   "variable": "\uf71b",
\  }
" function! NearestMethodOrFunction() abort
" 	return get(b:, 'vista_nearest_method_or_function', '')
" endfunction
" set statusline+=%{NearestMethodOrFunction()}
" autocmd VimEnter * call vista#RunForNearestMethodOrFunction()

let g:scrollstatus_size = 15

" ===
" === Far.vim
" ===
nnoremap <silent> <LEADER>rr  :Far<cr>
vnoremap <silent> <LEADER>rr  :Far<cr>
let g:far#enable_undo=1

" ===
" === suda.vim
" ===
let g:suda_smart_edit = 1

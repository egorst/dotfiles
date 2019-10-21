set nocompatible
language C
set enc=utf-8
set t_Co=256
colorscheme xoria256

execute pathogen#infect()

if has('gui_running')
set guioptions -=e
set guioptions -=m
set guioptions -=T
set guifont=DejaVu\ Sans\ Mono:h10
autocmd GUIEnter * simalt ~x
endif

set autowrite
set autoindent
set smartindent
set expandtab
set smarttab
set softtabstop=4
set shiftwidth=4

set number
set relativenumber

set laststatus=2

syntax on
filetype on
filetype plugin on
filetype indent on

set langmenu=C
set langmap=ёйцукенгшщзхъфывапролджэячсмитьбюЙЦУКЕHГШЩЗХЪФЫВАПРОЛДЖЭЯЧСМИТЬБЮ;`qwertyuiop[]asdfghjkl\\;'zxcvbnm\\,.QWERTYUIOP{}ASDFGHJKL:\\"ZXCVBNM<>

map <C-Up> <C-Y><Up>
map <C-Down> <C-E><Down>
map <PageUp> <C-U><C-U>
map <PageDown> <C-D><C-D>
imap <PageUp> <C-O><C-U><C-O><C-U>
imap <PageDown> <C-O><C-D><C-O><C-D>

inoremap <C-h> <Left>|cnoremap <C-h> <Left>|
inoremap <C-k> <Up>|cnoremap <C-k> <Up>|
inoremap <C-j> <Down>|cnoremap <C-j> <Down>|
inoremap <C-l> <Right>|cnoremap <C-l> <Right>|

set ttimeoutlen=50
inoremap <C-c> <Esc>

inoremap kj <ESC>
inoremap jj <ESC>

nnoremap ; :|xnoremap ; :

set scrolloff=2
set showmode
set showcmd
set hidden
set wildmenu
set showtabline=2
set wildmode=list:longest
set visualbell
set backspace=indent,eol,start
set undodir="/tmp/vimdir"
set undofile

nnoremap / /\v
vnoremap / /\v
set ignorecase
set smartcase
set gdefault
set incsearch
set showmatch
set hlsearch
nnoremap <leader><space> :noh<cr>

nnoremap <tab> %
vnoremap <tab> %

nnoremap <leader>R :set relativenumber!<cr>
nnoremap <leader>N :set number!<cr>
nnoremap <leader>P :set paste! paste?<cr>

nnoremap <C-N> :bnext<cr>
nnoremap <C-P> :bprev<cr>

nmap <Leader>1 <Plug>lightline#bufferline#go(1)
nmap <Leader>2 <Plug>lightline#bufferline#go(2)
nmap <Leader>3 <Plug>lightline#bufferline#go(3)
nmap <Leader>4 <Plug>lightline#bufferline#go(4)
nmap <Leader>5 <Plug>lightline#bufferline#go(5)
nmap <Leader>6 <Plug>lightline#bufferline#go(6)
nmap <Leader>7 <Plug>lightline#bufferline#go(7)
nmap <Leader>8 <Plug>lightline#bufferline#go(8)
nmap <Leader>9 <Plug>lightline#bufferline#go(9)
nmap <Leader>0 <Plug>lightline#bufferline#go(10)

set wrap

" lightline-bufferline
let g:lightline#bufferline#show_number  = 1
let g:lightline#bufferline#shorten_path = 0
let g:lightline#bufferline#unnamed      = '[No Name]'
" minimal lightline
let g:lightline                  = {}
let g:lightline.tabline          = {'left': [['buffers']], 'right': [['close']]}
let g:lightline.component_expand = {'buffers': 'lightline#bufferline#buffers'}
let g:lightline.component_type   = {'buffers': 'tabsel'}

" vim-go
let g:go_fmt_command = "goimports"
let g:go_fmt_fail_silently = 1
autocmd FileType go nmap <leader>b  <Plug>(go-build)
autocmd FileType go nmap <leader>r  <Plug>(go-run)
autocmd BufNewFile,BufRead *.go setlocal noexpandtab tabstop=4 shiftwidth=4

" set listcar but not list (set list manually)
set listchars=tab:▸\ ,eol:¬

nnoremap j gj
nnoremap k gk

set viminfo='10,\"100,:20,%

autocmd BufReadPost *
  \ if line("'\"") > 1 && line("'\"") <= line("$") |
  \  exe "normal! g`\"" |
  \ endif

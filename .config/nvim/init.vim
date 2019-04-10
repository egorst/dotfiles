set nocompatible
language C
set t_Co=256
colorscheme xoria256

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
set showtabline=1
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
nnoremap <leader>p :set paste! paste?<cr>

nnoremap <leader>c :tabnew <left><right>
nnoremap <leader>q :tabclose<cr>

nnoremap <leader>1 1gt
nnoremap <leader>2 2gt
nnoremap <leader>3 3gt
nnoremap <leader>4 4gt
nnoremap <leader>5 5gt
nnoremap <leader>6 6gt
nnoremap <leader>7 7gt
nnoremap <leader>8 8gt
nnoremap <leader>9 9gt

set wrap

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


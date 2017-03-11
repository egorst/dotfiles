set nocompatible
set t_Co=256
"let g:zenburn_high_Contrast = 0
colorscheme xoria256
"colorscheme xoria256 " zenburn xoria256

"let g:tomorrow_termcolors = 256
"let g:tomorrow_termtrans = 0 " set to 1 if using transparant background
"let g:tomorrow_diffmode = "high"
"colorscheme tomorrow

set autoindent          " always set autoindenting on
set smartindent
set expandtab
set smarttab
set softtabstop=4
set shiftwidth=4

set laststatus=2

execute pathogen#infect()

syntax on
set hlsearch
set smartcase
set showtabline=2
filetype on
filetype plugin on
filetype indent on

set langmenu=en_US.UTF-8
"language message en
set langmap=ёйцукенгшщзхъфывапролджэячсмитьбюЙЦУКЕHГШЩЗХЪФЫВАПРОЛДЖЭЯЧСМИТЬБЮ;`qwertyuiop[]asdfghjkl\\;'zxcvbnm\\,.QWERTYUIOP{}ASDFGHJKL:\\"ZXCVBNM<>

"set number

set incsearch
nmap <silent> ,/ :let @/=""<CR> " clear highlighted search

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

nnoremap <silent> ,F :let word=expand("<cword>")<CR>:vsp<CR>:wincmd w<cr>:exec("tag ". word)<cr>

" in gnome-terminal control-space generates ^@
map <C-@> <Esc>
map! <C-@> <Esc>

nnoremap ; :|xnoremap ; :

inoremap kj <ESC>
inoremap jj <ESC>


set scrolloff=2
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set visualbell
set backspace=indent,eol,start
"set relativenumber
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

nnoremap <leader>r :set relativenumber!<cr>
nnoremap <leader>n :set number!<cr>
nnoremap <leader>p :set paste! paste?<cr>

vnoremap <leader>c "*y
nnoremap <leader>v "*p

set wrap
"set textwidth=120
"set formatoptions=qrn1
"set colorcolumn=128

" set listcar but not list (set list manually)
set listchars=tab:?\ ,eol:¬

nnoremap j gj
nnoremap k gk

" Unite
let g:unite_source_history_yank_enable = 1
"call unite#filters#matcher_default#use(['matcher_fuzzy'])
nnoremap <leader>t :<C-u>Unite -no-split -buffer-name=files   -start-insert file_rec/async:!<cr>
nnoremap <leader>f :<C-u>Unite -no-split -buffer-name=files   -start-insert file<cr>
nnoremap <leader>r :<C-u>Unite -no-split -buffer-name=mru     -start-insert file_mru<cr>
nnoremap <leader>o :<C-u>Unite -no-split -buffer-name=outline -start-insert outline<cr>
nnoremap <leader>y :<C-u>Unite -no-split -buffer-name=yank    history/yank<cr>
nnoremap <leader>e :<C-u>Unite -no-split -buffer-name=buffer  buffer<cr>

" Custom mappings for the unite buffer
autocmd FileType unite call s:unite_settings()
function! s:unite_settings()
  " Play nice with supertab
  let b:SuperTabDisabled=1
  " Enable navigation with control-j and control-k in insert mode
  imap <buffer> <C-j>   <Plug>(unite_select_next_line)
  imap <buffer> <C-k>   <Plug>(unite_select_previous_line)
endfunction

" neocomplete
let g:neocomplete#enable_at_startup = 1

set viminfo='10,\"100,:20,%

autocmd BufReadPost *
  \ if line("'\"") > 1 && line("'\"") <= line("$") |
  \  exe "normal! g`\"" |
  \ endif


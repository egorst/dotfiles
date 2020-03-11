language C
set langmenu=C
set langmap=ёйцукенгшщзхъфывапролджэячсмитьбюЙЦУКЕHГШЩЗХЪФЫВАПРОЛДЖЭЯЧСМИТЬБЮ;`qwertyuiop[]asdfghjkl\\;'zxcvbnm\\,.QWERTYUIOP{}ASDFGHJKL:\\"ZXCVBNM<>

colorscheme falcon " xoria256

call plug#begin()
Plug 'itchyny/lightline.vim'
Plug 'mengelbrecht/lightline-bufferline'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-vinegar'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'Shougo/neosnippet.vim'
Plug 'Shougo/neosnippet-snippets'
Plug 'lervag/vimtex'
Plug 'fatih/vim-go'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
call plug#end()

set autowrite
set smartindent
set expandtab
set smarttab
set softtabstop=4
set shiftwidth=4

set number
set relativenumber

filetype on
filetype plugin on
filetype indent on
syntax on

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
set showmatch
nnoremap <leader><space> :noh<cr>

nnoremap <leader>R :set relativenumber!<cr>
nnoremap <leader>N :set number!<cr>
nnoremap <leader>P :set paste! paste?<cr>

" vim-go
let g:go_fmt_command = "goimports"
let g:go_fmt_fail_silently = 1
autocmd FileType go nmap <leader>b  <Plug>(go-build)
autocmd FileType go nmap <leader>r  <Plug>(go-run)
autocmd BufNewFile,BufRead *.go setlocal noexpandtab tabstop=4 shiftwidth=4

" lightline
let g:lightline = {
    \ 'component': {
    \   'lineinfo': '⭡ %3l:%-2v',
    \ },
    \ 'separator': { 'left': "\ue0b0", 'right': "\ue0b2" },
    \ 'subseparator': { 'left': "\ue0b1", 'right': "\ue0b3" },
    \ 'tabline_separator': { 'left': "\ue0b0", 'right': "\ue0b2" },
    \ 'tabline_subseparator': { 'left': "\ue0b1", 'right': "\ue0b3" }
    \ }
let g:lightline.tabline          = {'left': [['buffers']], 'right': [['close']]}
let g:lightline.component_expand = {'buffers': 'lightline#bufferline#buffers'}
let g:lightline.component_type   = {'buffers': 'tabsel'}

let g:lightline#bufferline#show_number  = 1
let g:lightline#bufferline#shorten_path = 1
let g:lightline#bufferline#unnamed      = '[No Name]'

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

nnoremap <silent> <M-]> :bnext<CR>
nnoremap <silent> <M-[> :bprev<CR>

let g:netrw_liststyle = 3
let g:netrw_fastbrowse = 0
autocmd FileType netrw setl bufhidden=wipe

" deoplete
let g:deoplete#enable_at_startup = 1

" vimtex
let g:tex_flavor='latex'
let g:vimtex_view_method='zathura'
let g:vimtex_quickfix_mode=0
set conceallevel=1
let g:tex_conceal='abdmg'

" neosnippet
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)

" SuperTab like snippets behavior.
" Note: It must be "imap" and "smap".  It uses <Plug> mappings.
imap <expr><TAB>
 \ pumvisible() ? "\<C-n>" :
 \ neosnippet#expandable_or_jumpable() ?
 \    "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
 \ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

" For conceal markers.
if has('conceal')
  set conceallevel=2 concealcursor=niv
endif

nnoremap <leader>p :Files<cr>
nnoremap <leader>o :Lines<cr>
nnoremap <leader>g :Rg<cr>
nnoremap <leader>t :Tags<cr>
nnoremap <leader>u :Buffers<cr>

" set listcar but not list (set list manually)
set listchars=tab:▸\ ,eol:¬

nnoremap j gj
nnoremap k gk

set viminfo='10,\"100,:20,%

autocmd BufReadPost *
  \ if line("'\"") > 1 && line("'\"") <= line("$") |
  \  exe "normal! g`\"" |
  \ endif


call plug#begin('~/.vim/plugged')
  Plug 'ctrlpvim/ctrlp.vim'
  Plug 'KeitaNakamura/neodark.vim'
  Plug 'tpope/vim-fugitive'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'scrooloose/nerdtree'
  Plug 'scrooloose/nerdcommenter'
  Plug 'rbgrouleff/bclose.vim'
  Plug 'chriskempson/vim-tomorrow-theme'
  Plug 'tpope/vim-db'
  Plug 'ekalinin/Dockerfile.vim'
  Plug 'tpope/vim-surround'

  " git
  Plug 'rdolgushin/gitignore.vim'

  " psql
  Plug 'exu/pgsql.vim'

  " ruby
  Plug 'vim-ruby/vim-ruby'

  " github gists
  Plug 'mattn/webapi-vim'
  Plug 'mattn/gist-vim'

  " html
  Plug 'mattn/emmet-vim'

  " javascript
  " Plug 'mxw/vim-jsx'
  " Plug 'isRuslan/vim-es6'
  Plug 'othree/yajs.vim'
  Plug 'othree/html5.vim'
  Plug 'HerringtonDarkholme/yats.vim'
call plug#end()

let mapleader = ","

set backspace=indent,eol,start

set wildmenu
set autoread
set autowrite

set nocompatible      " We're running Vim, not Vi!
syntax on             " Enable syntax highlighting
filetype on           " Enable filetype detection
filetype indent on    " Enable filetype-specific indenting
filetype plugin on    " Enable filetype-specific plugins

" remove trailing whitespaces on buffer write
autocmd BufWritePre * %s/\s\+$//e
" hilight search terms
set hlsearch
" ruler
set number


" mapping
inoremap jj <esc>
nnoremap <leader>ev :vs $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
nnoremap <silent> <leader><space> :noh<cr>
nnoremap <s-k> <c-y>
nnoremap <s-j> <c-e>
nmap <F1> <nop>
nnoremap ; :
vnoremap <silent> <leader>cp :w !xsel -b<cr>
nnoremap <silent> <leader>pa :r !xsel -b<cr>
nnoremap <silent> <leader>q :Bclose<cr>
nnoremap <space> za
" splits
nnoremap <silent>vv <c-w>v
nnoremap <silent>vs <c-w>s
nnoremap <c-h> <c-w>h
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-l> <c-w>l
" resize
nnoremap <c-s>- :res -5<cr>
nnoremap <c-s>+ :res +5<cr>
nnoremap <c-\>> :vertical-res +5<cr>
nnoremap <c-\<>  :vertical-res -5<cr>
nnoremap <leader>f gg=G<c-o><c-o>


" theme & colors
syntax enable

colorscheme Tomorrow-Night
let g:airline_theme='tomorrow'

" cursorline
set cursorline
hi CursorLineNr cterm=None ctermfg=3
hi LineNr ctermbg=None


" wrap & break
set linebreak
let &showbreak = '>\ '


" fold
set foldmethod=syntax
set foldlevel=10


" tabulations
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2


" airline
let g:airline#extensions#tabline#enabled=1
let g:airline_powerline_fonts=1
let g:airline_right_sep=''
let g:airline_left_sep=''
let g:airline#extensions#tabline#left_sep=''
let g:airline#extensions#tabline#right_sep=''
let g:airline#extensions#tabline#left_alt_sep=''
let g:airline#extensions#wordcount#enabled=0
let g:airline#extensions#tabline#fnamemod = ':t'
set laststatus=2


" ctrlp
let g:ctrlp_custom_ignore = {
  \ 'dir': '\v(node_modules|__pycache__)$',
  \ 'file': '\v\.(pyc|o)$'
  \ }


" nerdtree
  nnoremap <c-n> :NERDTreeToggle<cr>


" nerdcommenter
let g:NERDSpaceDelims = 1
let g:NERDCompactSexyComs = 1
let g:NERDDefaultAlign = 'left'


" gist-vim
let g:gist_clip_command='xclip -selection clipboard'
let g:gist_detect_filetype=1
let g:gist_post_private=1


" YouCompleteMe
let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'
let g:ycm_autoclose_preview_window_after_completion = 1


" tabs & buffers
nnoremap <silent> <leader>tn :tabnew<cr>
nnoremap <silent> <leader>tj :tabnext<cr>
nnoremap <silent> <leader>tk :tabprev<cr>
nnoremap <silent> <leader>tt :tabedit

nnoremap <silent> <leader>j :bn<cr>
nnoremap <silent> <leader>k :bp<cr>


" swap files
set directory ^=~/.vimswap//

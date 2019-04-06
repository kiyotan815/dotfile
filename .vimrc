if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=~/dotfiles/.vim/dein/repos/github.com/Shougo/dein.vim
let s:dein_dir = expand('~/dotfiles/.vim/dein')

" Required:
if dein#load_state(s:dein_dir)
  call dein#begin(s:dein_dir)

  call dein#load_toml(s:dein_dir . '/plugins.toml', {'lazy': 0})
  call dein#load_toml(s:dein_dir . '/lazy.toml', {'lazy': 1})



  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif




colorscheme nefertiti
syntax enable
set t_Co=256 "256color

" show . file nerdtreee
let NERDTreeShowHidden = 1
" Use deoplete.
let g:deoplete#enable_at_startup = 1


set nobackup
set noswapfile
set autoread
set hidden
set showcmd
set number
set virtualedit=onemore
set smartindent
set showmatch
set laststatus=2
set wildmode=list:longest

set expandtab
set tabstop=2
set shiftwidth=2

set ignorecase
set smartcase
set incsearch

set wrapscan
set hlsearch
set encoding=utf-8
set fileformats=unix,dos,mac



nnoremap <silent><C-e> :NERDTreeToggle<CR>
inoremap jj <Esc>
nnoremap j gj
nnoremap k gk
nnoremap gj j
nnoremap gk k

"unite keyconfig
noremap <C-P> :Unite buffer<CR>
noremap <C-N> :Unite -buffer-name=file file<CR>
noremap <C-Z> :Unite file_mru<CR>
" ウィンドウを分割して開く
au FileType unite noremap <silent> <buffer> <expr> <C-J> unite#do_action('split')
au FileType unite inoremap <silent> <buffer> <expr> <C-J> unite#do_action('split')
" ウィンドウを縦に分割して開く
au FileType unite noremap <silent> <buffer> <expr> <C-K> unite#do_action('vsplit')
au FileType unite inoremap <silent> <buffer> <expr> <C-K> unite#do_action('vsplit')
" ESCキーを2回押すと終了する
au FileType unite noremap <silent> <buffer> <ESC><ESC> :q<CR>
au FileType unite inoremap <silent> <buffer> <ESC><ESC> <ESC>:q<CR>


set completeopt+=noinsert

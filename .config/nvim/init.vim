if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=~/dotfiles/.vim/dein/repos/github.com/Shougo/dein.vim
let s:dein_dir = expand('~/dotfiles/.vim/dein')

" Required:
if dein#load_state(s:dein_dir)
  call dein#begin(s:dein_dir)

  call dein#load_toml(s:dein_dir . '/plugins.toml')
  call dein#load_toml(s:dein_dir . '/lazy.toml')


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

" mapping
nmap n <Plug>(anzu-n-with-echo)
nmap N <Plug>(anzu-N-with-echo)
nmap * <Plug>(anzu-star-with-echo)
nmap # <Plug>(anzu-sharp-with-echo)
" clear status
nmap <Esc><Esc> <Plug>(anzu-clear-search-status)
" statusline
set statusline=%{anzu#search_status()}

" vimgrep 移動
nnoremap [q :cprevious<CR>   " 前へ
nnoremap ]q :cnext<CR>       " 次へ
nnoremap [Q :<C-u>cfirst<CR> " 最初へ
nnoremap ]Q :<C-u>clast<CR>  " 最後へ

" vimgrep quickfix-w 自動表示
autocmd QuickFixCmdPost *grep* cwindow


"set completeopt+=noinsert
let g:neosnippet#snippets_directory = '~/dotfiles/snippets/'

" f検索　大文字小文字判別しない
let g:clever_f_ignore_case = 1


let g:deoplete#enable_at_startup = 1

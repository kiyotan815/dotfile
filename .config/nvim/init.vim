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
noremap <S-h>   ^
noremap <S-l>   $

"Unite
let g:unite_enable_start_insert=1
let g:unite_source_history_yank_enable =1
let g:unite_source_file_mru_limit = 200
nnoremap <silent> ,uy :<C-u>Unite history/yank<CR>
nnoremap <silent> ,ub :<C-u>Unite buffer<CR>
nnoremap <silent> ,uf :<C-u>UniteWithBufferDir -buffer-name=files file<CR>
nnoremap <silent> ,ur :<C-u>Unite -buffer-name=register register<CR>
"unite -rails
nnoremap <buffer><C-H><C-H><C-H>  :<C-U>Unite rails/view<CR>
nnoremap <buffer><C-H><C-H>       :<C-U>Unite rails/model<CR>
nnoremap <buffer><C-H>            :<C-U>Unite rails/controller<CR>

nnoremap <buffer><C-H>c           :<C-U>Unite rails/config<CR>
nnoremap <buffer><C-H>s           :<C-U>Unite rails/spec<CR>
nnoremap <buffer><C-H>m           :<C-U>Unite rails/db -input=migrate<CR>
nnoremap <buffer><C-H>l           :<C-U>Unite rails/lib<CR>
nnoremap <buffer><expr><C-H>g     ':e '.b:rails_root.'/Gemfile<CR>'
nnoremap <buffer><expr><C-H>r     ':e '.b:rails_root.'/config/routes.rb<CR>'
nnoremap <buffer><expr><C-H>se    ':e '.b:rails_root.'/db/seeds.rb<CR>'
nnoremap <buffer><C-H>ra          :<C-U>Unite rails/rake<CR>
nnoremap <buffer><C-H>h           :<C-U>Unite rails/heroku<CR>



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

" tagsジャンプの時に複数ある時は一覧表示
nnoremap <C-]> g<C-]>

" vimgrep quickfix-w 自動表示
autocmd QuickFixCmdPost *grep* cwindow


"set completeopt+=noinsert

" f検索　大文字小文字判別しない
let g:clever_f_ignore_case = 1

let g:deoplete#enable_at_startup = 1
let g:deoplete#auto_complete_start_length = 1

"Buffer
nnoremap <silent> <C-j> :bprev<CR>
nnoremap <silent> <C-k> :bnext<CR>



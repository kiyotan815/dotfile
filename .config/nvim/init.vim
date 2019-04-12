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

" mapleader
let mapleader = ","

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


" key config
nnoremap <silent><C-e> :NERDTreeToggle<CR>
inoremap jj <Esc>
noremap <S-h>   ^
noremap <S-l>   $
nnoremap j gj
nnoremap k gk
nnoremap gj j
nnoremap gk k

" split
nnoremap s <Nop>
nnoremap sj <C-w>j
nnoremap sk <C-w>k
nnoremap sl <C-w>l
nnoremap sh <C-w>h
nnoremap sJ <C-w>J
nnoremap sK <C-w>K
nnoremap sL <C-w>L
nnoremap sH <C-w>H
nnoremap sn gt
nnoremap sp gT
nnoremap sr <C-w>r
nnoremap s= <C-w>=
nnoremap sw <C-w>w
nnoremap so <C-w>_<C-w>|
nnoremap sO <C-w>=
nnoremap sN :<C-u>bn<CR>
nnoremap sP :<C-u>bp<CR>
nnoremap st :<C-u>tabnew<CR>
nnoremap sT :<C-u>Unite tab<CR>
nnoremap ss :<C-u>sp<CR>
nnoremap sv :<C-u>vs<CR>
nnoremap sq :<C-u>q<CR>
nnoremap sQ :<C-u>bd<CR>

call submode#enter_with('bufmove', 'n', '', 's>', '<C-w>>')
call submode#enter_with('bufmove', 'n', '', 's<', '<C-w><')
call submode#enter_with('bufmove', 'n', '', 's+', '<C-w>+')
call submode#enter_with('bufmove', 'n', '', 's-', '<C-w>-')
call submode#map('bufmove', 'n', '', '>', '<C-w>>')
call submode#map('bufmove', 'n', '', '<', '<C-w><')
call submode#map('bufmove', 'n', '', '+', '<C-w>+')
call submode#map('bufmove', 'n', '', '-', '<C-w>-')

"Unite
let g:unite_enable_start_insert=1
let g:unite_source_history_yank_enable =1
let g:unite_source_file_mru_limit = 200
nnoremap <silent> ,uy :<C-u>Unite history/yank<CR>
nnoremap <silent> ,ub :<C-u>Unite buffer<CR>
nnoremap <silent> ,uf :<C-u>UniteWithBufferDir -buffer-name=files file<CR>
nnoremap <silent> ,ur :<C-u>Unite -buffer-name=register register<CR>

"------------------------------------
" Unite-rails.vim
"------------------------------------
"{{{
nnoremap <silent><C-H><C-H><C-H>  :<C-U>Unite rails/view<CR>
nnoremap <silent><C-H><C-H>       :<C-U>Unite rails/model<CR>
nnoremap <silent><C-H>            :<C-U>Unite rails/controller<CR>

nnoremap <silent><C-H>c           :<C-U>Unite rails/config<CR>
nnoremap <silent><C-H>s           :<C-U>Unite rails/spec<CR>
nnoremap <silent><C-H>m           :<C-U>Unite rails/db -input=migrate<CR>
nnoremap <silent><C-H>l           :<C-U>Unite rails/lib<CR>
nnoremap <silent><expr><C-H>g     ':e '.b:rails_root.'/Gemfile<CR>'
nnoremap <silent><expr><C-H>r     ':e '.b:rails_root.'/config/routes.rb<CR>'
nnoremap <silent><expr><C-H>se    ':e '.b:rails_root.'/db/seeds.rb<CR>'
nnoremap <silent><C-H>ra          :<C-U>Unite rails/rake<CR>
nnoremap <silent><C-H>h           :<C-U>Unite rails/heroku<CR>


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

" f検索　大文字小文字判別しない
let g:clever_f_ignore_case = 1

"Buffer
nnoremap <silent> <C-j> :bprev<CR>
nnoremap <silent> <C-k> :bnext<CR>

" snippets
let g:neosnippet#snippets_directory = '~/.vim/snippets/'


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

" Rspec key
nnoremap <leader>r :RunSpec<CR>
nnoremap <leader>l :RunSpecLine<CR>
nnoremap <leader>e :RunSpecLastRun<CR>
nnoremap <leader>cr :RunSpecCloseResult<CR>

" key config leader
nnoremap <leader>d :bd<CR>
nnoremap <leader>q :q!<CR>

" autosave
augroup Vimrc
  autocmd!
  autocmd InsertLeave * call <SID>auto_save()
  function! s:auto_save()
    if filewritable(expand('%'))
      write
    endif
  endfunction
augroup END

"call plug#begin ('~/.vim/plugged')
"
"  "ファイルオープンを便利に
"  Plug 'Shougo/unite.vim'
"  "Unite.vimで最近使ったファイルを表示できるようにする
"  Plug 'Shougo/neomru.vim'
"  "colorschema
"  Plug 'ujihisa/unite-colorscheme'
"  "color solarized
"  Plug 'altercation/vim-colors-solarized'
"  "color twilight
"  Plug 'vim-scripts/twilight'
"  "color molokai
"  Plug 'tomasr/molokai'
"  "color material
"  Plug 'jdkanani/vim-material-theme'
"  "color nefertiti
"  Plug 'jeetsukumaran/vim-nefertiti'
"  "インデントを見やすくしてくれる
"  Plug 'nathanaelkane/vim-indent-guides'
"  "サイドバーを表示（プロジェクト）
"  Plug 'scrooloose/nerdtree'
"  "vim上からgit command
"  Plug 'tpope/vim-fugitive'
"  "html css 爆速
"  Plug 'mattn/emmet-vim'
"  "入力補完
"  Plug 'Shougo/neocomplete.vim'
"  " 隠しファイルをデフォルトで表示させる
"  let NERDTreeShowHidden = 1
"   ruby"
"  Plug 'vim-ruby/vim-ruby'
"   rails"
"  Plug 'tpope/vim-rails'
"   slim"
"  Plug 'slim-template/vim-slim'
"
"call plug#end()
"

"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/Users/kiyotaibaragi/.cache/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('/Users/kiyotaibaragi/.cache/dein')
  call dein#begin('/Users/kiyotaibaragi/.cache/dein')

  " Let dein manage dein
  " Required:
  call dein#add('/Users/kiyotaibaragi/.cache/dein/repos/github.com/Shougo/dein.vim')

  " Add or remove your plugins here like this:
  "call dein#add('Shougo/neosnippet.vim')
  "call dein#add('Shougo/neosnippet-snippets')
  
  "ファイルオープンを便利に
  call dein#add('Shougo/unite.vim')
  "Unite.vimで最近使ったファイルを表示できるようにする
  call dein#add('Shougo/neomru.vim')
  "colorschema
  call dein#add('ujihisa/unite-colorscheme')
  "color solarized
  call dein#add('altercation/vim-colors-solarized')
  "color twilight
  call dein#add('vim-scripts/twilight')
  "color molokai
  call dein#add('tomasr/molokai')
  "color material
  call dein#add('jdkanani/vim-material-theme')
  "color nefertiti
  call dein#add('jeetsukumaran/vim-nefertiti')
  "インデントを見やすくしてくれる
  call dein#add('nathanaelkane/vim-indent-guides')
  "サイドバーを表示（プロジェクト）
  call dein#add('scrooloose/nerdtree')
  "vim上からgit command
  call dein#add('tpope/vim-fugitive')
  "html css 爆速
  call dein#add('mattn/emmet-vim')
  "入力補完
  call dein#add('Shougo/neocomplete.vim')
  " 隠しファイルをデフォルトで表示させる
  let NERDTreeShowHidden = 1
  " ruby"
  call dein#add('vim-ruby/vim-ruby')
  " rails"
  call dein#add('tpope/vim-rails')
  " slim"
  call dein#add('slim-template/vim-slim')


  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

"End dein Scripts-------------------------
"
"

colorscheme nefertiti
syntax enable
set t_Co=256 "256color

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


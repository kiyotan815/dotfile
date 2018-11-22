call plug#begin ('~/.vim/plugged')

  "ファイルオープンを便利に
  Plug 'Shougo/unite.vim'
  "Unite.vimで最近使ったファイルを表示できるようにする
  Plug 'Shougo/neomru.vim'
  "colorschema
  Plug 'ujihisa/unite-colorscheme'
  "color solarized
  Plug 'altercation/vim-colors-solarized'
  "color twilight
  Plug 'vim-scripts/twilight'
  "color molokai
  Plug 'tomasr/molokai'
  "color material
  Plug 'jdkanani/vim-material-theme'
  "color nefertiti
  Plug 'jeetsukumaran/vim-nefertiti'
  "インデントを見やすくしてくれる
  Plug 'nathanaelkane/vim-indent-guides'
  "サイドバーを表示（プロジェクト）
  Plug 'scrooloose/nerdtree'
  "vim上からgit command
  Plug 'tpope/vim-fugitive'
  "html css 爆速
  Plug 'mattn/emmet-vim'
  "入力補完
  Plug 'Shougo/neocomplete.vim'
  " 隠しファイルをデフォルトで表示させる
  let NERDTreeShowHidden = 1

call plug#end()

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

if g:dein#_cache_version !=# 100 || g:dein#_init_runtimepath !=# '/Users/kiyotaibaragi/.config/nvim,/etc/xdg/nvim,/Users/kiyotaibaragi/.local/share/nvim/site,/usr/local/share/nvim/site,/usr/share/nvim/site,/usr/local/Cellar/neovim/0.3.1/share/nvim/runtime,/usr/share/nvim/site/after,/usr/local/share/nvim/site/after,/Users/kiyotaibaragi/.local/share/nvim/site/after,/etc/xdg/nvim/after,/Users/kiyotaibaragi/.config/nvim/after,/Users/kiyotaibaragi/dotfiles/.vim/dein/repos/github.com/Shougo/dein.vim' | throw 'Cache loading error' | endif
let [plugins, ftplugin] = dein#load_cache_raw(['/Users/kiyotaibaragi/dotfiles/.config/nvim/init.vim', '/Users/kiyotaibaragi/dotfiles/.vim/dein/plugins.toml', '/Users/kiyotaibaragi/dotfiles/.vim/dein/lazy.toml'])
if empty(plugins) | throw 'Cache loading error' | endif
let g:dein#_plugins = plugins
let g:dein#_ftplugin = ftplugin
let g:dein#_base_path = '/Users/kiyotaibaragi/dotfiles/.vim/dein'
let g:dein#_runtime_path = '/Users/kiyotaibaragi/dotfiles/.vim/dein/.cache/init.vim/.dein'
let g:dein#_cache_path = '/Users/kiyotaibaragi/dotfiles/.vim/dein/.cache/init.vim'
let &runtimepath = '/Users/kiyotaibaragi/.config/nvim,/etc/xdg/nvim,/Users/kiyotaibaragi/.local/share/nvim/site,/usr/local/share/nvim/site,/usr/share/nvim/site,/Users/kiyotaibaragi/dotfiles/.vim/dein/repos/github.com/Shougo/dein.vim,/Users/kiyotaibaragi/dotfiles/.vim/dein/.cache/init.vim/.dein,/usr/local/Cellar/neovim/0.3.1/share/nvim/runtime,/Users/kiyotaibaragi/dotfiles/.vim/dein/.cache/init.vim/.dein/after,/usr/share/nvim/site/after,/usr/local/share/nvim/site/after,/Users/kiyotaibaragi/.local/share/nvim/site/after,/etc/xdg/nvim/after,/Users/kiyotaibaragi/.config/nvim/after'
filetype off
let g:monster#completion#rcodetools#backend = "async_rct_complete"
let g:deoplete#sources#omni#input_patterns = { "ruby" : '[^. *\t]\.\w*\|\h\w*::',}
let g:run_rspec_bin = 'bin/rspec'
let g:auto_save_in_insert_mode = 0
autocmd dein-events InsertEnter * call dein#autoload#_on_event("InsertEnter", ['neosnippet.vim', 'deoplete.nvim', 'vim-monster', 'vim-endwise'])

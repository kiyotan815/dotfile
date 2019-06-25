if g:dein#_cache_version !=# 100 || g:dein#_init_runtimepath !=# '/Users/kiyotaibaragi/.vim,/usr/share/vim/vimfiles,/usr/share/vim/vim80,/usr/share/vim/vimfiles/after,/Users/kiyotaibaragi/.vim/after,/Users/kiyotaibaragi/dotfiles/.vim/dein/repos/github.com/Shougo/dein.vim' | throw 'Cache loading error' | endif
let [plugins, ftplugin] = dein#load_cache_raw(['/Users/kiyotaibaragi/.vimrc', '/Users/kiyotaibaragi/dotfiles/.vim/dein/plugins.toml', '/Users/kiyotaibaragi/dotfiles/.vim/dein/lazy.toml'])
if empty(plugins) | throw 'Cache loading error' | endif
let g:dein#_plugins = plugins
let g:dein#_ftplugin = ftplugin
let g:dein#_base_path = '/Users/kiyotaibaragi/dotfiles/.vim/dein'
let g:dein#_runtime_path = '/Users/kiyotaibaragi/dotfiles/.vim/dein/.cache/.vimrc/.dein'
let g:dein#_cache_path = '/Users/kiyotaibaragi/dotfiles/.vim/dein/.cache/.vimrc'
let &runtimepath = '/Users/kiyotaibaragi/.vim,/usr/share/vim/vimfiles,/Users/kiyotaibaragi/dotfiles/.vim/dein/repos/github.com/Shougo/dein.vim,/Users/kiyotaibaragi/dotfiles/.vim/dein/.cache/.vimrc/.dein,/usr/share/vim/vim80,/Users/kiyotaibaragi/dotfiles/.vim/dein/.cache/.vimrc/.dein/after,/usr/share/vim/vimfiles/after,/Users/kiyotaibaragi/.vim/after'
let g:auto_save_in_insert_mode = 0
let g:monster#completion#rcodetools#backend = "async_rct_complete"
let g:deoplete#sources#omni#input_patterns = { "ruby" : '[^. *\t]\.\w*\|\h\w*::',}
let g:run_rspec_bin = 'bin/rspec'
autocmd dein-events InsertEnter * call dein#autoload#_on_event("InsertEnter", ['neosnippet.vim', 'deoplete.nvim', 'vim-monster', 'vim-endwise'])

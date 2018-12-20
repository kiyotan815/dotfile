autocmd BufReadPost *.fugitiveblame setfiletype fugitiveblame
" Detect syntax file.
autocmd BufNewFile,BufRead *.snip,*.snippets set filetype=neosnippet
autocmd BufNewFile,BufRead *.slim setfiletype slim

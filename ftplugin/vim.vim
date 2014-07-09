" Comment

vnoremap <buffer> <BS> :s/^/"<CR><C-O>
nnoremap <buffer> <BS> :s/^/"<CR><C-O>
vnoremap <buffer> <CR> :s/^\s*\zs"//e<CR><C-O>
nnoremap <buffer> <CR> :s/^\s*\zs"//e<CR><C-O>

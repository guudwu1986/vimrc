setlocal noexpandtab
setlocal softtabstop=0
setlocal shiftwidth=8
setlocal nospell

"com! -nargs=1 T exe "normal o<args><Tab>guusummary<Tab>/\\\\tag|<args>|tag\\\\/<ESC>" | w | /\\\\tag|<args>|tag\\\\/

nnoremap <buffer> <CR> :q<CR>
"autocmd BufWritePre guutags sort i

inoremap <buffer> () ()<++><ESC>F)i
inoremap <buffer> [] []<++><ESC>F]i
inoremap <buffer> {} {}<++><ESC>F}i

nnoremap <RIGHT> a\c\|\s\|<C->\|s\\|c\<++><ESC>10hi

function! AddTag(name)
  execute "normal A \\tag|".a:name."|tag\\"
  tabedit guutags
  execute "normal o".a:name."\tguusummary\t/\\\\tag|".a:name."|tag\\\\/"
  sort
  silent! write
  silent! execute "/^".a:name."/"
  normal 1gtgg
  silent! execute "tag ".a:name
  normal zz
  return
endfunction

nnoremap <buffer> <CR> :tabonly<CR>

command! -nargs=1 T call AddTag("<args>")

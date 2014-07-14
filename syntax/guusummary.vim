let b:current_syntax='guunote'

syntax spell toplevel

" Option

setlocal tags=./guutags
setlocal notimeout
setlocal conceallevel=3
setlocal textwidth=0
setlocal nowrap
setlocal colorcolumn=0

" Highlight

syntax region guuArgument oneline matchgroup=Comment concealends
  \ start='\\a|' end='|a\\' contains=@NoSpell
highlight guuArgument ctermfg=Red
nnoremap <buffer> <LocalLeader>a a\a\|\|a\<++><ESC>6hi

syntax region guuFunction oneline matchgroup=Comment concealends
  \ start='\\u|' end='|u\\'
  \ contains=@NoSpell,guuFunctionArgument
highlight guuFunction ctermfg=Black ctermbg=White
nnoremap <buffer> <LocalLeader>u a\u\|\|u\<++><ESC>6hi
syntax region guuFunctionArgument oneline matchgroup=Comment concealends
  \ contained start='\\a|' end='|a\\' contains=@NoSpell
highlight guuFunctionArgument ctermbg=White ctermfg=Red

syntax region guuFile oneline matchgroup=Comment concealends
  \ start='\\f|' end='|f\\' contains=@NoSpell
highlight guuFile ctermfg=Cyan
nnoremap <buffer> <LocalLeader>f a\f\|\|f\<++><ESC>6hi

syntax region guuItem oneline matchgroup=Comment concealends
  \ start='\\i|' end='|i\\' contains=@NoSpell,guuArgument
highlight guuItem ctermfg=Green
nnoremap <buffer> <LocalLeader>i a\i\|\|i\<++><ESC>6hi

syntax region guuCommand oneline matchgroup=Comment concealends
  \ start='\\c|' end='|c\\'
  \ contains=guuCommandArgument,@NoSpell,guuSpecialArgument
highlight guuCommand ctermbg=Yellow ctermfg=Black
nnoremap <buffer> <LocalLeader>c a\c\|\|c\<++><ESC>6hi
syntax region guuCommandArgument oneline matchgroup=Comment concealends
  \ contained start='\\a|' end='|a\\' contains=@NoSpell
highlight guuCommandArgument ctermbg=Yellow ctermfg=Red
syntax region guuSpecialArgument oneline matchgroup=Comment concealends
  \ contained start='\\s|' end='|s\\' contains=@NoSpell
highlight guuSpecialArgument ctermbg=Yellow ctermfg=Blue

syntax region guuOption oneline matchgroup=Comment concealends
  \ start='\\o|' end='|o\\' contains=@NoSpell,guuArgument
highlight guuOption ctermfg=Magenta
nnoremap <buffer> <LocalLeader>o a\o\|\|o\<++><ESC>6hi

syntax region guuVariable oneline matchgroup=Comment concealends
  \ start='\\v|' end='|v\\' contains=@NoSpell
highlight guuVariable ctermfg=Black ctermbg=Green
nnoremap <buffer> <LocalLeader>v a\v\|\|v\<++><ESC>6hi

syntax region guuString oneline matchgroup=Comment concealends
  \ start='\\s|' end='|s\\' contains=@NoSpell
highlight guuString ctermfg=Yellow
nnoremap <buffer> <LocalLeader>s a\s\|\|s\<++><ESC>6hi

syntax region guuTag oneline matchgroup=Comment concealends conceal
  \ start=/\\tag|/ end=/|tag\\/ contains=@NoSpell
highlight guuTag ctermfg=DarkMagenta

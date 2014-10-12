inoremap <buffer> () ()<++><ESC>F)i
inoremap <buffer> [] []<++><ESC>F]i
inoremap <buffer> {} {}<++><ESC>F}i
inoremap <buffer> $$ $$<++><LEFT><LEFT><LEFT><LEFT><LEFT>

inoremap <buffer> (( \left(  \right)<++><ESC>F\hi
inoremap <buffer> [[ \left[  \right]<++><ESC>F\hi
inoremap <buffer> {{ \left{  \right}<++><ESC>F\hi
inoremap <buffer> << \left\langle  \right\rangle<++><ESC>2F\hi
inoremap <buffer> \|\| \left\\|  \right\\|<++><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT>

command! -buffer -nargs=1 B
  \ normal o\begin{<args>}<CR><++><CR>\end{<args>}<ESC>02k

command! -buffer Th
  \ B theorem
command! -buffer De
  \ B definition

nnoremap <buffer> <LocalLeader>gg
  \ o\begin{gather}<CR><++><CR>\end{gather}<ESC>02k
nnoremap <buffer> <LocalLeader>ga
  \ o\begin{gather*}<CR><++><CR>\end{gather*}<ESC>02k

nnoremap <buffer> <LocalLeader>ee
  \ o\begin{equation}<CR><++><CR>\end{equation}<ESC>02k
nnoremap <buffer> <LocalLeader>eq
  \ o\begin{equation*}<CR><++><CR>\end{equation*}<ESC>02k

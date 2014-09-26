inoremap <buffer> () ()<++><ESC>F)i
inoremap <buffer> [] []<++><ESC>F]i
inoremap <buffer> {} {}<++><ESC>F}i

inoremap <buffer> (( \left(  \right)<++><ESC>F\hi
inoremap <buffer> [[ \left[  \right]<++><ESC>F\hi
inoremap <buffer> {{ \left{  \right}<++><ESC>F\hi
inoremap <buffer> << \left\langle  \right\rangle<++><ESC>2F\hi

command! -buffer -nargs=1 B
  \ normal o\begin{<args>}<CR><++><CR>\end{<args>}<ESC>02k

nnoremap <buffer> <LocalLeader>gg
  \ o\begin{gather}<CR><++><CR>\end{gather}<ESC>02k
nnoremap <buffer> <LocalLeader>ga
  \ o\begin{gather*}<CR><++><CR>\end{gather*}<ESC>02k

nnoremap <buffer> <LocalLeader>ee
  \ o\begin{equation}<CR><++><CR>\end{equation}<ESC>02k
nnoremap <buffer> <LocalLeader>eq
  \ o\begin{equation*}<CR><++><CR>\end{equation*}<ESC>02k

" Macaulay2 stuff
function! M2SendLine()
  call M2SendString(getline("."))
  normal j
endfunction

function! M2SendString(str)
  let cmd = printf("tmux send-keys -t .+ '%s' Enter", a:str)
  let log = system(cmd)
endfunction

noremap <F11> :call M2SendLine()<CR>
noremap <F12> :call M2SendString("restart()")<CR>

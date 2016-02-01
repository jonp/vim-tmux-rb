function! rubytesting#pipe_command(cmd)
  let a:x = escape(a:cmd, '\"')
  execute  "silent ! tmux send-keys -t 1 \"" . a:x . "\" C-m"
  execute "redraw!"
endfunction

function! rubytesting#test_current()
  let a:x = "load '../myguard.rb'; reload_lib; test([], '', '%')"
  call rubytesting#pipe_command(a:x)
endfunction

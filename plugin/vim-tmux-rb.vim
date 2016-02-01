function! vim_tmux_rb#pipe_command(cmd)
  let a:x = escape(a:cmd, '\"')
  execute  "silent ! tmux send-keys -t 1 \"" . a:x . "\" C-m"
  execute "redraw!"
endfunction

function! vim_tmux_rb#test_current()
  let a:x = "load '../myguard.rb'; reload_lib; test([], '', '%')"
  call vim_tmux_rb#pipe_command(a:x)
endfunction

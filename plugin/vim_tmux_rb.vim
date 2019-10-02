function! vim_tmux_rb#pipe_command(cmd)
  let escaped = escape(cmd, '\"')
  execute  "silent ! tmux send-keys -t 1 \"" . escaped . "\" C-m"
  execute "redraw!"
endfunction

function! vim_tmux_rb#test_current()
  let cmd = "load '../myguard.rb'; reload_lib; test([], '', '%')"
  call vim_tmux_rb#pipe_command(cmd)
endfunction

" sends an up arrow and return to window 1
function! vim_tmux_rb#rerun()
  let cmd = "OA"
  call vim_tmux_rb#pipe_command(cmd)
endfunction

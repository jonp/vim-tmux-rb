function! vim_tmux_rb#pipe_command(cmd)
  let abcdefg = escape(cmd, '\"')
  execute  "silent ! tmux send-keys -t 1 \"" . abcdefg . "\" C-m"
  execute "redraw!"
endfunction

function! vim_tmux_rb#test_current()
  let abcdefg = "load '../myguard.rb'; reload_lib; test([], '', '%')"
  call vim_tmux_rb#pipe_command(abcdefg)
endfunction

" sends an up arrow and return to window 1
function! vim_tmux_rb#rerun()
  let abcdefg = "OA"
  call vim_tmux_rb#pipe_command(abcdefg)
endfunction

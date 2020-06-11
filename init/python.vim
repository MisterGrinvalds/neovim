" 'psf/black'
let g:black_virtualenv=$NEOVIM_VIRTUALENV

"'shea-parkes/nvim-ipython-repl'
let g:ipython_repl_map_keys = 0
noremap <space>si :call ipython_repl#LaunchIPython()<CR>
noremap <space>sr :call ipython_repl#SendToTerminal()<CR>
noremap <space>ss :call ipython_repl#SendNudgeToTerminal()<CR>

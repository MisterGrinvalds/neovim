" 'tpope/vim-fugitive'
nnoremap <space>gita :Git add %:p<CR><CR>
nnoremap <space>gitA :Git add -A<CR>
nnoremap <space>gitb :Git branch<Space>
nnoremap <space>gitbr :Git branch<Space>
nnoremap <space>gitco :Git checkout<Space>
nnoremap <space>gitcob :Git checkout -b<Space>
nnoremap <space>gitc :Gcommit -v<CR>
nnoremap <space>gitca :Gcommit -v --amend<CR>
nnoremap <space>gitcA :Git add -A<CR>:Gcommit -v<CR>
nnoremap <space>gitd :Gdiff<CR>
nnoremap <space>gitf :Git fetch<CR>
nnoremap <space>gitlg :Git log --graph --pretty=format:'%C(yellow)%h%Creset %C(red)%d%Creset %s %C(white)(%cr)%Creset %C(cyan)<%an>%Creset' --abbrev-commit<CR>
nnoremap <space>gitm :Git merge<Space>
nnoremap <space>gitr :Git remote<Space>
nnoremap <space>gits :Gstatus<CR>
nnoremap <space>gitw :Git whatchanged<CR>

" 'airblade/vim-gitgutter'
nnoremap <space>fold :GitGutterFold<CR>


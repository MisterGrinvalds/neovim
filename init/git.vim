" 'tpope/vim-fugitive'
nnoremap <space>ga :Git add %:p<CR><CR>
nnoremap <space>gA :Git add -A<CR>
nnoremap <space>gb :Git branch<Space>
nnoremap <space>gbr :Git branch<Space>
nnoremap <space>gco :Git checkout<Space>
nnoremap <space>gcob :Git checkout -b<Space>
nnoremap <space>gc :Gcommit -v<CR>
nnoremap <space>gca :Gcommit -v --amend<CR>
nnoremap <space>gcA :Git add -A<CR>:Gcommit -v<CR>
nnoremap <space>gd :Gdiff<CR>
nnoremap <space>gf :Git fetch<CR>
nnoremap <space>glg :Git log --graph --pretty=format:'%C(yellow)%h%Creset %C(red)%d%Creset %s %C(white)(%cr)%Creset %C(cyan)<%an>%Creset' --abbrev-commit<CR>
nnoremap <space>gm :Git merge<Space>
nnoremap <space>gr :Git remote<Space>
nnoremap <space>gs :Gstatus<CR>
nnoremap <space>gw :Git whatchanged<CR>

" 'airblade/vim-gitgutter'
set updatetime=100
nnoremap <space>fold :GitGutterFold<CR>


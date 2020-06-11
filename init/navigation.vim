" System
noremap <Tab>b					:buffer<Space>
noremap <Tab>ba					:badd<Space>
noremap <Tab>bd					:bdelete<Space>
noremap <Tab>bw					:bwipeout<Space>
noremap <Tab><Tab>			:bnext<CR>
noremap <Tab>s<Tab>			:sbnext<CR>
noremap <S-Tab><S-Tab>	:bprevious<CR>
noremap <S-Tab>s<S-Tab>	:sbprevious<CR>

" 'junegunn/fzf.vim'
noremap <Space>file			:Files<Space>
noremap <Space>gfile		:GFiles<Space>
noremap <Space>?gfile		:GFiles?<CR>
noremap <Space>hist			:History<CR>
noremap <Space>chist		:History:<CR>
noremap <Space>shist		:History/<CR>
noremap <Space>ghist		:Commit<CR>
noremap <Space>?ghist		:BCommits<CR>
noremap <Space>ftype		:Filetypes<CR>
noremap <Space>htags		:Helptags<CR>
noremap <Space>maps			:Maps<CR>
noremap <Tab>buf				:Buffers<CR>
noremap <Tab>win				:Windows<CR>

" 'preservim/nerdtree
let g:NERDTreeShowHidden=1
let g:NERDTreeShowLineNumbers=1
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") && v:this_session == "" | NERDTree | endif
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
noremap <space>nav :NERDTreeToggle<CR>
autocmd FileType nerdtree nmap <buffer> <left> p
autocmd FileType nerdtree nmap <buffer> <right> o

" 'majutsushi/tagbar'
let g:tagbar_show_linenumbers=-1
noremap <Space>tag :TagbarToggle<CR>


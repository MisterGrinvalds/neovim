call plug#begin('~/.vim/plugged')

" Aesthetics
Plug 'altercation/vim-colors-solarized'
Plug 'nathanaelkane/vim-indent-guides'

" Git
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

" Python
Plug 'psf/black'
Plug 'shea-parkes/nvim-ipython-repl'

" Completion
Plug 'maralla/completor.vim'
Plug 'davidhalter/jedi-vim'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'

" Tags
Plug 'majutsushi/tagbar'
Plug 'numirias/semshi'

" Highlighting
Plug 'RRethy/vim-illuminate'

" Navigation
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'preservim/nerdtree'
Plug 'itchyny/lightline.vim'

" Vim
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-unimpaired'

call plug#end()

source init/shell.vim


call plug#begin($VIM_PLUGGED)

" ./init/aesthetics.vim
Plug 'itchyny/lightline.vim'
Plug 'altercation/vim-colors-solarized'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'RRethy/vim-illuminate'

" ./init/completion.vim
Plug 'neoclide/coc.nvim'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'

" ./init/git.vim
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

" ./init/navigation.vim
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'majutsushi/tagbar'
Plug 'schickling/vim-bufonly'

" ./init/python.vim
Plug 'psf/black'
Plug 'shea-parkes/nvim-ipython-repl'

" ./init/tex.vim
Plug 'lervag/vimtex'

" ./init/vim.vim
Plug 'skywind3000/asyncrun.vim'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-unimpaired'

call plug#end()

source $XDG_CONFIG_HOME/nvim/init/aesthetics.vim
source $XDG_CONFIG_HOME/nvim/init/completion.vim
source $XDG_CONFIG_HOME/nvim/init/git.vim
source $XDG_CONFIG_HOME/nvim/init/navigation.vim
source $XDG_CONFIG_HOME/nvim/init/python.vim
source $XDG_CONFIG_HOME/nvim/init/tex.vim
source $XDG_CONFIG_HOME/nvim/init/vim.vim


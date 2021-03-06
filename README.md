# Preface

This implementation of neovim is for Unix and Linux for now. I would like to define a way of deploying this in Windows too.

Plugins are managed via [vim-plug](https://github.com/junegunn/vim-plug) because it is awesome and easy to use. I am utilizing `$XDG_[CACHE|CONFIG|DATA]_HOME` environment variable specifications via my [.bash_profile](https://github.com/MisterGrinvalds/.bash_profile) and keeping everything cleanly and safely tucked away in my [.dotfiles](https://github.com/MisterGrinvalds/.dotfiles) directory.

Colouring currently provided by [Solarized](https://github.com/altercation/vim-colors-solarized) as it reminds me of my 1996 Jeep Cherokee (RIP Rusty). Illuminate words under cursor via [vim-illuminate](https://github.com/RRethy/vim-illuminate) for now. Use indentation guides to make analyzing control flow easier via [Indent Guides](https://github.com/nathanaelkane/vim-indent-guides). Finally, [lightline.vim](https://github.com/itchyny/lightline.vim) gives a great, customizable, status bar.

Agnostic completion currently being done via [coc.nvim](https://github.com/neoclide/coc.nvim). This works well unless the analysis cache is really large. In this case, use tmux to load the text editor in its own session and keep it live. Rapid commenting and uncommenting is possible with tpope's [commentary.vim](https://github.com/tpope/vim-commentary). [surround.vim](https://github.com/tpope/vim-surround) is another winner from tpope that allows for an easier way to change surrounding characters ('...', "...", \<exmpl\>...\</exmpl\>, etc.)

Git tools for neovim include [fugitive.vim](https://github.com/tpope/vim-fugitive) which keeps you in neovim and enhances diffs, commits, and more. Changes in the current document are indicated in the left margin using [vim-gitgutter](https://github.com/airblade/vim-gitgutter).

I will be using mainly Python for the near future. There is definitely value in not worrying about style or syntax, making [Black](https://github.com/psf/black) a good choice for a formatter. `coc` is currently set to format on close to keep rules enforced. Interactive sessions in Python are tricky in neovim, and [nvim-ipython-repl](https://github.com/shea-parkes/nvim-ipython-repl) provides useful commands to control a REPL from the file being edited.

Filetree navigation is provided by [The NERDTree](https://github.com/preservim/nerdtree). Finding files, functions, commands, mappings, etc. in neovim is possible with [fzf.vim](https://github.com/junegunn/fzf.vim). Tag information is shown in vertical pane on the right with [Tagbar](https://github.com/majutsushi/tagbar).

# Conventions

After putzing around long enough with different approaches, my current strategy is to componentize by functional groups. Functional groups are related to coding (completion, git, python), user experience (aesthetics, navigation), or editor functionality for now. Plugins for each of the groups are sorted in `init.vim`, with configurations relating to that group in the eponymous `init/functional_group.vim` file. 

## Mappings

Get all current key mappings with `:Maps`.

Buffer-related commands are mapped with `<Tab>`. All others are assigned via `<Space>` for now. 

Git aliases are copied over from my [.dotfiles git aliases](https://github.com/MisterGrinvalds/.dotfiles/blob/master/git/config.d/alias.md).


# Installation

## Linux and Unix

1. Clone this repository
2. Change into its directory
3. Execute `initialize.sh`


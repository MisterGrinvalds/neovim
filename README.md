## Installation

Borrowed heavily from <https://github.com/Optixal/neovim-init.vim>.

### OS Specific

#### Mac OS X
```
brew update
brew install neovim python3
```

#### Linux
```
sudo apt update
sudo apt install neovim python3 curl
```


### Linux | Unix Specific
```
python3 -m pip install virtualenv
python3 -m virtualenv --python /usr/local/bin/python3 $XDG_CONFIG_HOME/nvim/env/
source $XDG_CONFIG_HOME/nvim/env/bin/activate
pip install black jedi neovim psutil setproctitle 
deactivate

# Who plugs the plugins?
curl -fLo $XDG_CONFIG_HOME/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```



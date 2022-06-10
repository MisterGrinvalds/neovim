if [[ $OSTYPE = "darwin"* || $OSTYPE = "linux-gnu" ]]; then

	export DOTFILES="$HOME"

	if [ ! -d "$DOTFILES/nvim" ]; then
		mkdir "$DOTFILES/nvim"
	fi
	
	rsync -avr --exclude=".doc*" --exclude=".git*" --exclude="initialize.sh" --exclude="README.md" ./ "$DOTFILES/nvim"
	
	valid_responses=('y' 'n')
	while [[ ! " ${valid_responses[@]} " =~ " $reply " ]]; do
		echo "Run OS-based install scripts? [y/n]"
		read reply
	done
	
	if [[ $reply = 'y' ]]; then
		if [[ "$OSTYPE" = "darwin"* ]]; then
			echo "Running Mac Installer Script"
			brew update && brew install curl ctags neovim node python3 yarn
			python3 -m pip install virtualenv
			python3 -m virtualenv --python /usr/local/bin/python3 $NEOVIM_VIRTUALENV
			source $XDG_CONFIG_HOME/nvim/env/bin/activate
			pip install black ipython neovim npm psutil setproctitle
			pip install --upgrade git+https://github.com/psf/black.git
			deactivate
			curl -vfLo $XDG_CONFIG_HOME/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
			cd $DOTFILES/nvim && yarn install
		fi

		if [[ $OSTYPE = "linux-gnu" ]]; then
			echo "Running Linux Installer Script"
			curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
			echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
			sudo apt update && sudo apt install -o Dpkg::Options::="--force-overwrite" yarn
			sudo apt install curl exuberant-ctags -y neovim nodejs python3 python3-dev python3-pip
			python3 -m pip install virtualenv
			python3 -m virtualenv --python /usr/bin/python3 $NEOVIM_VIRTUALENV
			source $XDG_CONFIG_HOME/nvim/env/bin/activate
			pip install black ipython neovim npm psutil setproctitle
			pip install --upgrade git+https://github.com/psf/black.git
			deactivate
			curl -fLo $XDG_CONFIG_HOME/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
			cd $DOTFILES/nvim && yarn install
		fi
	fi
fi

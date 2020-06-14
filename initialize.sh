if [[ "$OSTYPE" = "darwin"* || "$OSTYPE" = "linux-gnu" ]]; then
	if [ ! -d "$DOTFILES/nvim" ]; then
		mkdir "$DOTFILES/nvim"
	fi

	rsync -avr --exclude=".doc*" --exclude=".git*" --exclude="initialize.sh" --exclude="README.md" ./ "$DOTFILES/nvim"

fi

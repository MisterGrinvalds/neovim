" System
filetype indent plugin on

" Spacing
set shiftwidth=2
set softtabstop=2
set tabstop=2
autocmd Filetype html					setlocal ts=2 sw=2				expandtab
autocmd Filetype json					setlocal ts=2 sw=2 sts=2	expandtab			smartindent
autocmd Filetype javascript		setlocal ts=4 sw=4 sts=0	noexpandtab
autocmd Filetype python				setlocal ts=4 sw=4 sts=4	expandtab			smartindent

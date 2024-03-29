" System
set cmdheight=2

" 'itchyny/lightline.vim'
set noshowmode

function! CocCurrentFunction()
    return get(b:, 'coc_current_function', '')
endfunction

function! GitGutterForLightLine()
  let deltas = GitGutterGetHunkSummary()
  if winwidth(0) < 120
    return ''
  elseif deltas[0] == 0 && deltas[1] == 0 && deltas[2] == 0
    return ''
  else
    return '+' . deltas[0] . ' ~' . deltas[1] . ' -' . deltas[2]
  endif
endfunction

function! GitRepoForLightLine()
  " Need to cache for each buffer for performance
  if !exists('b:my_git_repo_folder_name')
    let root = asyncrun#get_root('%')
    let b:my_git_repo_folder_name = root != '' ? fnamemodify(root, ':t') : 'None'
  endif
  if winwidth(0) < 100
    return ''
  else
    return b:my_git_repo_folder_name != 'None' ? b:my_git_repo_folder_name : ''
  endif
endfunction

"	\ 'colorscheme': 'solarized',
let g:lightline = {
	\ 'active': {
  \   'left': [ [ 'mode', 'paste' ],
  \             [ 'gitrepo', 'gitbranch', 'gitgutter', 'cocstatus', 'currentfunction' ],
  \             [ 'readonly', 'filename', 'modified' ]],
  \  'right': [ [ 'percent', 'lineinfo' ],
  \             [ 'filetype', 'fileformat', 'fileencoding' ] ]
  \ },
  \ 'inactive': {
  \   'left': [ [ 'gitrepo' ], [ 'filename' ] ],
  \  'right': [ [ 'filetype' ] ]
  \ },
  \ 'component_function': {
	\		'cocstatus': 'coc#status',
	\		'currentfunction': 'CocCurrentFunction',
  \   'gitbranch': 'fugitiveHead()',
  \   'gitgutter': 'GitGutterForLightLine',
  \   'gitrepo': 'GitRepoForLightLine',
  \ },
  \ }

" 'altercation/vim-colors-solarized'
syntax enable
"colorscheme solarized
"set background=dark

" 'nathanaelkane/vim-indent-guides'
let g:indent_guides_enable_on_vim_startup = 1

" 'RRethy/vim-illuminate'
noremap <S-Space>ill :IlluminationToggle<CR>
let g:Illuminate_ftHighlightGroups = {}

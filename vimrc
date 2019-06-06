set nocompatible
" set default 'runtimepath' (without ~/.vim folders)
let &runtimepath = printf('%s/vimfiles,%s,%s/vimfiles/after', $VIM, $VIMRUNTIME, $VIM)

" what is the name of the directory containing this file?
let g:portable = fnamemodify(resolve(expand('<sfile>:p')), ':h')
"echom '» Loading runtime path: ' . g:portable

" add the directory to 'runtimepath'
let &runtimepath = printf('%s,%s,%s/after', g:portable, &runtimepath, g:portable)

" Keypad VS PUTTY
exe "source" . g:portable . '/etc/keypad-integration.vim'

" Plug
exe "source" . g:portable . '/etc/plug.vim'

" Base config
exe "source" . g:portable . '/etc/base.vim'
exe "source" . g:portable . '/etc/syntastic.vim'

if executable('ag')
    let g:ackprg = 'ag --vimgrep'
endif

let g:UltiSnipsEditSplit="vertical"

let g:airline_theme = "lucius"
let g:airline_section_a = '%{hostname()}'
let g:airline_powerline_fonts = 0

let g:fzf_layout = { 'down': '30%' }

" Super tab
let g:SuperTabDefaultCompletionType = ""

" Vdebug
exe "source " . g:portable . '/etc/vdebug.vim'

" Switch definitions
exe "source " . g:portable . '/etc/switch_definitions.vim'

" ultisnips
exe "source " . g:portable . '/etc/ultisnips.vim'

" NerdTree
exe "source " . g:portable . '/etc/nerdtree.vim'

" Remaps
exe "source " . g:portable . '/etc/remaps.vim'

" Helpers
exe "source " . g:portable . '/etc/helpers.vim'

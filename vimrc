set nocompatible
" set default 'runtimepath' (without ~/.vim folders)
let &runtimepath = printf('%s/vimfiles,%s,%s/vimfiles/after', $VIM, $VIMRUNTIME, $VIM)

" what is the name of the directory containing this file?
let g:portable = fnamemodify(resolve(expand('<sfile>:p')), ':h')
"echom '» Loading runtime path: ' . g:portable

" add the directory to 'runtimepath'
let &runtimepath = printf('%s,%s,%s/after', g:portable, &runtimepath, g:portable)

exe "source " . g:portable . "/etc/plug.vim"

let g:custom_plugs = {
            \ 'keypad-integration': 'Keypad VS PUTTY',
            \ 'base': 'Base config',
            \ 'syntastic': 'Syntax checker',
            \ 'vdebug': 'Debug tools',
            \ 'switch_definitions': 'Handy switch/loop ',
            \ 'ultisnips': 'Snippets integration',
            \ 'nerdtree': 'Tree view',
            \ 'tagbar': 'Overview',
            \ 'tslime': 'Tmux ♥ Vim',
            \ 'hexmode': 'Roxxorrr mode',
            \ 'remaps': 'Key map',
            \ 'helpers': 'Day to day work',
            \ }

" Loading
for f in keys(g:custom_plugs)
    silent echom "Loading: ". g:custom_plugs[f]
    exe "source ". g:portable . "/etc/" . f . ".vim"
endfor

let g:UltiSnipsEditSplit="vertical"

let g:airline_theme = "lucius"
" let g:airline_section_a = '%{echo $hostname()}'
let g:airline_powerline_fonts = 0
let g:airline#extensions#tagbar#enabled = 1

let g:fzf_layout = { 'down': '30%' }

" Super tab
let g:SuperTabDefaultCompletionType = ""

" TSlime
"if executable("tmux") > 0
"    exe "source " . g:portable . '/etc/tslime.vim'
"endif


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
            \ 'binary': 'Binary handeling',
            \ 'syntastic': 'Syntax checker',
            \ 'vdebug': 'Debug tools',
            \ 'switch_definitions': 'Handy switch/loop ',
            \ 'ultisnips': 'Snippets integration',
            \ 'nerdtree': 'Tree view',
            \ 'tagbar': 'Overview',
            \ 'tagbar_types': 'Tagbar ctags types',
            \ 'tslime': 'Tmux ♥ Vim',
            \ 'hexmode': 'Roxxorrr mode',
            \ 'remaps': 'Key map',
            \ 'helpers': 'Day to day work',
            \ 'ansible': 'Ansible',
            \ 'test': 'Test config',
            \ }

" Loading
for f in keys(g:custom_plugs)
    silent echom "Loading: ". g:custom_plugs[f]
    exe "source ". g:portable . "/etc/" . f . ".vim"
endfor


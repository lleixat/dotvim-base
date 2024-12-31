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
            \ 'keypad-integration': 'Keypad VS PUTTY (spoiler: Keypad win)',
            \ 'base': 'Base config',
            \ 'binary': 'Binary handeling',
            \ 'syntastic': 'Syntax checker',
            \ 'vdebug': 'Debug tools',
            \ 'switch_definitions': 'Deliver switch goodies',
            \ 'ultisnips': 'Snip Snap',
            \ 'nerdtree': 'Tree view',
            \ 'tagbar': 'Overview',
            \ 'tagbar_types': 'Tag the Tree',
            \ 'tslime': 'Tmux ♥ Vim',
            \ 'hexmode': 'Roxxorrr mode: [ON]',
            \ 'remaps': 'Fat fingers mode: [ON]',
            \ 'helpers': 'Day to day work',
            \ 'the_silver_searcher': 'Line up',
            \ 'commands': 'Custom commands',
            \ 'ansible': 'I am sAnsible',
            \ 'testing': 'Test your ass dude!',
            \ }

" Loading
for f in keys(g:custom_plugs)
    silent! echom "Loading: ". g:custom_plugs[f]
    exe "source ". g:portable . "/etc/" . f . ".vim"
endfor

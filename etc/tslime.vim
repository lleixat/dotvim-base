let g:tslime_always_current_session = 1
let g:tslime_always_current_window = 1

" Maps
vmap <C-c><C-c> <Plug>SendSelectionToTmux
nmap <C-c><C-c> <Plug>NormalModeSendToTmux
nmap <C-c>r <Plug>SetTmuxVars

" Run tests
nmap <C-c><C-t> :Tmux make test<CR>

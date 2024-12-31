let g:ag_prg="/usr/sbin/ag --vimgrep"
let g:ag_working_path_mode="r"

" use * to search current word in normal mode
nmap * <Plug>AgActionWord
" use * to search selected text in visual mode
vmap * <Plug>AgActionVisual"

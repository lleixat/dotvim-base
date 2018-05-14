" Plug
source ~/.vim/etc/plug.vim

" Base config
source ~/.vim/etc/base.vim

if executable('ag')
      let g:ackprg = 'ag --vimgrep'
  endif

let g:UltiSnipsEditSplit="vertical"

let g:airline_theme = "lucius"
let g:airline_section_a = '%{hostname()}'
let g:airline_powerline_fonts = 1

let g:fzf_layout = { 'down': '30%' }

" Super tab
let g:SuperTabDefaultCompletionType = ""

" Vdebug
source ~/.vim/etc/vdebug.vim

" Remaps
source ~/.vim/etc/remaps.vim


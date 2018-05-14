" Base config
set mouse=a
set nu
set tabstop=4
set shiftwidth=4
set expandtab
let mapleader=","
set hls

set background=dark
colorscheme hybrid_material

augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END
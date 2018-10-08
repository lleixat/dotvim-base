" Base config
set mouse=a
set ttymouse=a
set nu
set tabstop=4
set shiftwidth=4
set expandtab
let mapleader=","
set hls
set splitright
set splitbelow

set background=dark
colorscheme hybrid_material

augroup numbertoggle
    autocmd!
    autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
    if v:version > 704
        autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
    else
        autocmd BufLeave,FocusLost,InsertEnter   * set number
    endif
augroup END

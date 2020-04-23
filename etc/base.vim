" Base config
set ttyfast
set mouse=a
set ttymouse=xterm2
set term=screen-256color
set nu
set tabstop=4
set shiftwidth=4
set expandtab
set nopaste
let mapleader=","
set hls
set splitright
set splitbelow
set showmatch                     " show matching brackets (),{},[]
filetype plugin on
filetype plugin indent on         " required!
set encoding=utf-8
set termencoding=utf-8

set background=dark
silent! colorscheme hybrid_material

augroup numbertoggle
    autocmd!
    autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
    if v:version > 704
        autocmd BufLeave,FocusLost,InsertEnter * set norelativenumber
    else
        autocmd BufLeave,FocusLost,InsertEnter * set number
    endif
augroup END

let &colorcolumn="80,".join(range(120,300),",")

set fillchars=vert:\│
if exists('+breakindent')
    set breakindent
endif

set cursorcolumn
set cursorline


"set listchars=eol:¬,tab:>·,trail:~,extends:>,precedes:<,space:🞄
set list
noremap <F1> :set list!<CR>

" Disable line num
:autocmd FileType nerdtree set norelativenumber
:autocmd FileType taglist set norelativenumber

" fugitive tags
:set tags^=./.git/tags;


imap <c-space> <Plug>(asyncomplete_force_refresh)

let g:gundo_prefer_python3 = 1

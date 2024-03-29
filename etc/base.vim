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


let ft2Ignore=['nerdtree', 'taglist', 'tagbar', 'vim-minimap', 'qf', 'coc-explorer', 'list']

" Remove line num for special ft
augroup numbertoggle
    autocmd!
    autocmd BufEnter,FocusGained,InsertLeave * if index(ft2Ignore, &ft) < 0 | set relativenumber
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

" try to fix cursor shape
if &term =~? 'rxvt' || &term =~? 'xterm' || &term =~? 'st-'
        " 1 or 0 -> blinking block
        " 2 -> solid block
        " 3 -> blinking underscore
        " 4 -> solid underscore
        " Recent versions of xterm (282 or above) also support
        " 5 -> blinking vertical bar
        " 6 -> solid vertical bar
        " Insert Mode
        let &t_SI .= "\<Esc>[6 q"
        " Normal Mode
        let &t_EI .= "\<Esc>[2 q"
endif

"set listchars=eol:¬,tab:>·,trail:~,extends:>,precedes:<,space:🞄
set list
noremap <F1> :set list!<CR>


" fugitive tags
":set tags^=./.git/tags;


imap <c-space> <Plug>(asyncomplete_force_refresh)

let g:gundo_prefer_python3 = 1

:hi DiffDelete ctermbg=236 ctermfg=238

let g:UltiSnipsEditSplit="vertical"

" let g:airline_section_a = '%{echo $hostname()}'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tagbar#enabled = 1
let g:airline#extensions#bufferline#enabled = 1
let g:airline_skip_empty_sections = 1
let g:airline_theme = "lucius"
au WinEnter,BufWinEnter __vial_* let w:airline_disabled=1
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
"let g:airline_symbols.space = "\ua0"


let g:fzf_layout = { 'down': '30%' }

" Super tab
let g:SuperTabDefaultCompletionType = ""

" TSlime
"if executable("tmux") > 0
"    exe "source " . g:portable . '/etc/tslime.vim'
"endif

set ttimeoutlen=10

" mapping is set for gtags
let g:gen_tags#gtags_default_map=1

let g:indentguides_spacechar = ''
let g:indentguides_tabchar = ''
let g:indentguides_ignorelist = ft2Ignore

" Coc
let g:coc_disable_startup_warning = 1

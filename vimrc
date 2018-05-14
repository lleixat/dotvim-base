call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-fugitive'
Plug 'mhinz/vim-signify'

Plug 'ervandew/supertab'
Plug 'shawncplus/phpcomplete.vim'
Plug 'majutsushi/tagbar'
if	has('python3')
    Plug 'joonty/vdebug'
endif
Plug 'jiangmiao/auto-pairs'
Plug 'qbbr/vim-symfony'

if v:version > 704
    Plug 'SirVer/ultisnips'
endif

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'ap/vim-buftabline'

Plug 'kristijanhusak/vim-hybrid-material'

Plug 'mileszs/ack.vim'
Plug 'tpope/vim-sensible'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'sheerun/vim-polyglot'


call plug#end()

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


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
Plug 'vim-scripts/YankRing.vim'
Plug 'editorconfig/editorconfig-vim'

Plug 'ap/vim-buftabline'

Plug 'kristijanhusak/vim-hybrid-material'

Plug 'mileszs/ack.vim'
Plug 'tpope/vim-sensible'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'sheerun/vim-polyglot'
Plug 'vim-scripts/apachestyle'
Plug 'junegunn/vim-easy-align'


call plug#end()

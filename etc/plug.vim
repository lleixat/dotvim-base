call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-fugitive'
Plug 'mhinz/vim-signify'
if has('clientserver')
    Plug 'idbrii/AsyncCommand'
endif

Plug 'ervandew/supertab'
Plug 'majutsushi/tagbar'
if has('python3')
    Plug 'joonty/vdebug'
    Plug 'nvie/vim-flake8'
    Plug 'valloric/youcompleteme'
endif
Plug 'AndrewRadev/switch.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'qbbr/vim-symfony'
Plug 'godlygeek/tabular'

if v:version > 704
    Plug 'SirVer/ultisnips'
endif

Plug 'vim-syntastic/syntastic'
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
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'sheerun/vim-polyglot'
Plug 'vim-scripts/apachestyle'
Plug 'junegunn/vim-easy-align'
Plug 'tomtom/checksyntax_vim'
Plug 'tomtom/tlib_vim'
Plug 'martinda/Jenkinsfile-vim-syntax'
Plug 'mechatroner/rainbow_csv'

call plug#end()

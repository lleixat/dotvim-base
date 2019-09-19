call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-fugitive'
Plug 'will133/vim-dirdiff'
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
    Plug 'honza/vim-snippets'
endif

Plug 'vim-scripts/YankRing.vim'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'sgur/ctrlp-extensions.vim'
Plug 'vim-syntastic/syntastic'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'editorconfig/editorconfig-vim'
Plug 'janko/vim-test'
if executable('tmux') > 0
    Plug 'jgdavey/tslime.vim'
endif

Plug 'chrisbra/Colorizer'

Plug 'ap/vim-buftabline'

Plug 'kristijanhusak/vim-hybrid-material'

if has('python3')
    Plug 'sharat87/roast.vim'
endif
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
Plug 'mzlogin/vim-markdown-toc'

call plug#end()

call plug#begin(g:portable . '/plugged')

Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-dispatch'
Plug 'will133/vim-dirdiff'
Plug 'mhinz/vim-signify'
if has('clientserver')
    Plug 'idbrii/AsyncCommand'
endif

Plug 'ervandew/supertab'
Plug 'majutsushi/tagbar'
Plug 'jsfaint/gen_tags.vim'
Plug 'misterbuckley/vim-definitive'
if has('python3')
    "Plug 'joonty/vdebug'
    Plug 'puremourning/vimspector', {'do': './install_gadget.py --enable-python --enable-bash --no-check-certificate'}
endif
Plug 'AndrewRadev/switch.vim'
Plug 'AndrewRadev/splitjoin.vim'
Plug 'AndrewRadev/linediff.vim'
Plug 'AndrewRadev/tagalong.vim'
Plug 'AndrewRadev/inline_edit.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'pearofducks/ansible-vim'

if v:version > 704
    Plug 'SirVer/ultisnips'
    Plug 'honza/vim-snippets'
endif

Plug 'vim-scripts/YankRing.vim'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'sgur/ctrlp-extensions.vim'
Plug 't9md/vim-quickhl'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'jmcantrell/vim-virtualenv'
Plug 'editorconfig/editorconfig-vim'
Plug 'janko/vim-test'
if executable('tmux') > 0
    Plug 'jgdavey/tslime.vim'
    Plug 'tmux-plugins/vim-tmux-focus-events'
    Plug 'roxma/vim-tmux-clipboard'
endif

Plug 'chrisbra/Colorizer'

Plug 'kristijanhusak/vim-hybrid-material'

if has('python3')
    "Plug 'sharat87/roast.vim'
    Plug 'baverman/vial'
    Plug 'baverman/vial-http'
endif
Plug 'mileszs/ack.vim'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-abolish'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'Xuyuanp/nerdtree-git-plugin', { 'on':  'NERDTreeToggle' }
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'ryanoasis/vim-devicons'
Plug 'scrooloose/nerdcommenter'
Plug 'sheerun/vim-polyglot'
Plug 'vim-scripts/apachestyle'
Plug 'junegunn/vim-easy-align'
Plug 'tomtom/checksyntax_vim'
Plug 'tomtom/tlib_vim'
Plug 'martinda/Jenkinsfile-vim-syntax'
Plug 'mechatroner/rainbow_csv'
Plug 'mzlogin/vim-markdown-toc'
Plug 'Glench/Vim-Jinja2-Syntax'
Plug 'sjl/gundo.vim'
Plug 'dhruvasagar/vim-zoom'

Plug 'tokozedg/vim-sman'

" Use release branch (Recommend)
Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'mattn/gist-vim'
Plug 'mattn/webapi-vim'
Plug 'lleixat/vim-minimap'

call plug#end()

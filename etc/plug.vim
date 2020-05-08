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
    "Plug 'valloric/youcompleteme'
    Plug 'mattn/vim-lsp-settings'
    Plug 'ryanolsonx/vim-lsp-python'
    Plug 'prabirshrestha/asyncomplete.vim'
    Plug 'prabirshrestha/async.vim'
    Plug 'prabirshrestha/vim-lsp'
    Plug 'prabirshrestha/asyncomplete-lsp.vim'
endif
Plug 'AndrewRadev/switch.vim'
Plug 'AndrewRadev/splitjoin.vim'
Plug 'AndrewRadev/linediff.vim'
Plug 'AndrewRadev/tagalong.vim'
Plug 'AndrewRadev/inline_edit.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'


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
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'scrooloose/nerdcommenter'
Plug 'Xuyuanp/nerdtree-git-plugin', { 'on':  'NERDTreeToggle' }
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

call plug#end()

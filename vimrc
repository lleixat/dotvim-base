call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-fugitive'
Plug 'mhinz/vim-signify'

Plug 'ervandew/supertab'
Plug 'shawncplus/phpcomplete.vim'
Plug 'majutsushi/tagbar'
Plug 'joonty/vdebug'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'ap/vim-buftabline'


Plug 'tpope/vim-sensible'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'sheerun/vim-polyglot'


call plug#end()


let g:airline_theme='simple'

" Super tab
let g:SuperTabDefaultCompletionType = ""

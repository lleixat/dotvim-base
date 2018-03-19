call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-fugitive'
Plug 'mhinz/vim-signify'

Plug 'ervandew/supertab'
Plug 'shawncplus/phpcomplete.vim'
Plug 'majutsushi/tagbar'
Plug 'joonty/vdebug'
Plug 'jiangmiao/auto-pairs'
Plug 'qbbr/vim-symfony'
Plug 'SirVer/ultisnips'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'ap/vim-buftabline'
Plug 'joonty/vdebug'

Plug 'kristijanhusak/vim-hybrid-material'

Plug 'mileszs/ack.vim'
Plug 'tpope/vim-sensible'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'sheerun/vim-polyglot'


call plug#end()

set mouse=a
set nu
set tabstop=4
set shiftwidth=4
set expandtab
let mapleader=","
set hls

set background=dark
colorscheme hybrid_material

augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END

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
let g:vdebug_options = {'ide_key': 'PHPSTORM'}
let g:vdebug_options = {'break_on_open': 0}
let g:vdebug_options = {'server': '127.0.0.1'}
let g:vdebug_options = {'port': '9999'}

" Remaps
nnoremap <silent> <S-Right> :bnext<CR>
nnoremap <silent> <S-Left> :bprevious<CR>
nnoremap <silent> <F7> :TagbarToggle<CR>
noremap <C-f> :Ack<space>
noremap <C-S-f> :Ack <cword><CR>
noremap <C-p> :FZF<CR>
noremap <C-t> :tabnew<CR>
noremap <C-Left> :tabprevious<CR>
noremap <C-Right> :tabnext<CR>


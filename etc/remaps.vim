" file: ~/.vim/etc/remaps.vim

" Sudo thing
cmap w!! w !sudo tee > /dev/null %

" Buffers & Tabs
nnoremap <silent> <S-Right> :bnext<CR>
nnoremap <silent> <S-Left> :bprevious<CR>
noremap <C-t> :tabnew<CR>
noremap <S-Left> :tabprevious<CR>
noremap <S-Right> :tabnext<CR>

" Tagbar
nnoremap <silent> <F7> :TagbarToggle<CR>

" Search
nnoremap <leader>f :Ack<space>
nnoremap <leader>F :Ack <cword><CR>
nnoremap <C-p> :FZF<CR>

" Bubbling {{{
" source: https://gist.githubusercontent.com/cloud8421/1958373/raw/63fe52214cc46f1772c1c3b1931c5771e8fe100e/gistfile1.vim

nmap <C-Up> ddkP
nmap <C-Down> ddp
nmap <C-Left> <<
nmap <C-Right> >>

"Horizontal bubbling
vnoremap < <gv
vnoremap > >gv

"Keep selection
nmap gV `[v`]

"Bubble multiple lines
vmap <C-Up> xkP`[V`]
vmap <C-Down> xp`[V`]
vmap <C-Right> >gv
vmap <C-Left> <gv

map ^[[A <C-Up>
map ^[[B <C-Down>
map ^[[D <C-Left>
map ^[[C <C-Right>

" }}}

" YankRing
nnoremap <silent> <C-Y> :YRShow<CR>
nnoremap <silent> <C-P> :CtrlP<CR>
nnoremap <silent> <C-B> :CtrlPBuffer<CR>


" EasyAlign
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)"

" NERDTreeToggle
nmap <F12> :NERDTreeToggle<cr>
nmap <S-F12> :NERDTreeFind<cr>

" Switch
nmap - :Switch<cr>

" Buffers
nmap <S-Right> :bnext<cr>
nmap <S-Left> :bprevious<cr>

" QHLS
nmap <leader>m <Plug>(quickhl-manual-this)
xmap <leader>m <Plug>(quickhl-manual-this)
nmap <leader>M <Plug>(quickhl-manual-reset)
xmap <leader>M <Plug>(quickhl-manual-reset)
nmap <leader>j <Plug>(quickhl-cword-toggle)
nmap <leader>] <Plug>(quickhl-tag-toggle)
map H <Plug>(operator-quickhl-manual-this-motion)

let g:quickhl_manual_colors = [
        \ "gui=bold ctermfg=16  ctermbg=153 guibg=#0a7383 guifg=#ffffff",
        \ "gui=bold ctermfg=7   ctermbg=170 guibg=#a07040 guifg=#ffffff",
        \ "gui=bold ctermfg=7   ctermbg=143 guibg=#4070a0 guifg=#ffffff",
        \ "gui=bold ctermfg=7   ctermbg=126 guibg=#40a070 guifg=#ffffff",
        \ ]

" Gundo
nnoremap <F8> :GundoToggle<CR>

" FindDefinition
nnoremap <Leader>d :SFindDefinition<CR>

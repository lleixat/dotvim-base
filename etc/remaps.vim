" file: ~/.vim/etc/remaps.vim

" Sudo thing
cmap w!! w !sudo tee > /dev/null %

" Buffers & Tabs
nnoremap <silent> <S-Right> :bnext<CR>
nnoremap <silent> <S-Left> :bprevious<CR>
noremap <C-t> :tabnew<CR>
noremap <C-Left> :tabprevious<CR>
noremap <C-Right> :tabnext<CR>

" Tagbar
nnoremap <silent> <F7> :TagbarToggle<CR>

" Search
noremap <C-f> :Ack<space>
noremap <C-S-f> :Ack <cword><CR>
noremap <C-p> :FZF<CR>

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

" EasyAlign
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)"

" NERDTreeToggle
nmap <F12> :NERDTreeToggle<CR>

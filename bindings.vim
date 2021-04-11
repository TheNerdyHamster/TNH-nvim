" Better navigation for omnicomplete
inoremap <expr> <c-j> ("\<C-n>")
inoremap <expr> <c-k> ("\<C-p>")

" General
inoremap jk <Esc>
inoremap kj <Esc>

" vnoremap jk <Esc>
" vnoremap kj <Esc>

" ALE
nnoremap <silent> K :ALEHover<CR>
nnoremap <silent> gd :ALEGoToDefinition<CR>

" Disable arrow keys
nnoremap <up> <nop>
nnoremap <down> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

" Better bindings for SOL  & EOL
map H ^
map L $

" Better tabbing
vnoremap < <gv
vnoremap > >gv

" Move single lines
nmap <A-j> [e
nmap <A-k> ]e

" Move multiple lines selected
vmap <A-j> [egv
vmap <A-k> ]egv

" NERDTree
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <leader>e :NERDTreeFocus<CR>

" Project
nnoremap <leader>pv :NERDTreeToggle<CR>
nnoremap <leader>ps :Rg<SPACE>

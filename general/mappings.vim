"""""""""""""""""""""
""     General     ""
"""""""""""""""""""""

" Better nav for omnicomplete
inoremap <expr> <c-j> ("\<C-n>")
inoremap <expr> <c-k> ("\<C-p>")

" Use alt + hjkl to resize windows
nnoremap <M-j>    :resize -2<CR>
nnoremap <M-k>    :resize +2<CR>
nnoremap <M-h>    :vertical resize -2<CR>
nnoremap <M-l>    :vertical resize +2<CR>

" I hate escape more than anything else
inoremap jk <Esc>
inoremap kj <Esc>

" TAB in general mode will move to text buffer
nnoremap <TAB> :bnext<CR>
" SHIFT-TAB will go back
nnoremap <S-TAB> :bprevious<CR>

" Alternate way to save
nnoremap <C-s> :w<CR>
" Alternate way to quit
nnoremap <C-Q> :wq!<CR>
" Use control-c instead of escape
nnoremap <C-c> <Esc>

" Better tabbing
vnoremap < <gv
vnoremap > >gv

" Better window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

"""""""""""""""""""""
""    Which-Key    ""
"""""""""""""""""""""

let @s = 'veS"'

" Timeout
let g:which_key_timeout = 100

let g:which_key_display_names = {'<CR>': '↵', '<TAB>': '⇆'}

" Map leader to which_key
nnoremap <silent> <leader> :silent WhichKey '<Space>'<CR>
vnoremap <silent> <leader> :silent <c-u> :silent WhichKeyVisual '<Space>'<CR>

" Create map to add keys to
let g:which_key_map =  {}
" Define a separator
let g:which_key_sep = '→'

" Not a fan of floating windows for this
let g:which_key_use_floating_win = 0

highlight default link WhichKey          Operator
highlight default link WhichKeySeperator DiffAdded
highlight default link WhichKeyGroup     Identifier
highlight default link WhichKeyDesc      Function

" Hide status line
autocmd! FileType which_key
autocmd  FileType which_key set laststatus=0 noshowmode noruler
  \| autocmd BufLeave <buffer> set laststatus=2 noshowmode ruler

" Single mappings
let g:which_key_map['/'] = [ '<Plug>NERDCommenterToggle'  , 'comment' ]
let g:which_key_map['e'] = [ ':CocCommand explorer'       , 'explorer' ]
let g:which_key_map['b'] = [ '<C-W>s'                     , 'split below']
let g:which_key_map['v'] = [ '<C-W>v'                     , 'split right']
let g:which_key_map['r'] = [ ':source $MYWIMRC'           , 'Reload config']
let g:which_key_map['z'] = [ 'Goyo'                       , 'zen' ]

" +coc mappings
let g:which_key_map.c = {
    \ 'name' : '+coc' ,
    \ 'a' : [':CocList diagnostics'                       , 'diagnostics'],
    \ 'c' : [':CocList commands'                          , 'commands'],
    \ 'e' : [':CocList extensions'                        , 'extensions'],
    \ 'm' : [':CocList marketplace'                       , 'marketplace'],
    \ 'o' : [':CocList outline'                           , 'outline'],
    \ 'p' : [':CocListResume'                             , 'resume'],
    \ 's' : [':CocList -I symbols'                        , 'symbols'],
  \ }

" +lsp mappings
let g:which_key_map.l = {
    \ 'name' : '+lsp' ,
    \ '.' : [':CocConfig'                       , 'config'],
    \ 'a' : ['<Plug>(coc-codeaction)'           , 'code action'],
    \ 'A' : ['<Plug>(coc-codeaction-selected)'  , 'selected action'],
    \ 'b' : [':CocNext'                         , 'next action'],
    \ 'B' : [':CocPrev'                         , 'prev action'],
    \ 'l' : ['<Plug>(coc-codelens-action)'      , 'code lens'],
    \ 'q' : ['<Plug>(coc-fix-current)'          , 'quickfix'],
    \ 'r' : ['<Plug>(coc-rename)'               , 'rename'],
  \ } 

let g:which_key_map.w = {
    \ 'name' : '+wiki',
    \ ' ' : {
        \ 'name' : '+diary',
        \ 'i' : 'Update diary',
        \ 'm' : 'Make diary for tommrow',
        \ 't' : 'Open diary in new tab',
        \ 'w' : 'Make diary for today',
        \ 'y' : 'Make diary for yeasterday',
    \     },
    \ 'd' : 'delete wiki',
    \ 'i' : 'Open diary of current wiki',
    \ 'l' : {
        \ 'name' : '+links',
        \ 'l' : 'follow link',
        \ 'n' : 'next link',
        \ 'p' : 'prev link',
    \     },
    \ 'r' : 'rename wiki',
    \ 's' : 'search & open wiki',
    \ 't' : 'open default wiki in new tab',
    \ 'w' : 'open default wiki',
  \ }





" Register which key map
call which_key#register('<Space>', "g:which_key_map")

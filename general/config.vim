""""""""""""""""""
""  SimplyFold  ""
""""""""""""""""""

let g:SimpylFold_docstring_preview=1

""""""""""
""  RG  ""
""""""""""

if executable('rg')
  let g:rg_derive_root = 'true'
endif

"""""""""""""""
"" NERDTree  ""
"""""""""""""""

" Start NERDTree, unless a file or session is specified, eg. vim -S session_file.vim.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists('s:std_in') && v:this_session == '' | NERDTree | endif

" Exit if NERDTree is the only window left.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() |
    \ quit | endif

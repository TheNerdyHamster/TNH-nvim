""""""""
"" Go ""
""""""""

let g:go_def_mode='gopls'
let g:go_info_mode='gopls'
let g:go_def_mapping_enabled = 0

autocmd FileType go nmap <leader>pb  <Plug>(go-build)
autocmd FileType go nmap <leader>pr  <Plug>(go-run)
autocmd FileType go nmap <leader>pt  <Plug>(go-test)
autocmd FileType go nmap <leader>pT  <Plug>(go-test-func)

"""""""""""
"" C/C++ ""
"""""""""""

let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1

let g:syntastic_cpp_checkers = ['cpplint']
let g:syntastic_c_checkers = ['cpplint']
let g:syntastic_cpp_cpplint_exec = 'cpplint'
" The following two lines are optional. Configure it to your liking!
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

autocmd FileType c nmap <leader>pr  :<C-u>make run<CR>
autocmd FileType c nmap <leader>pb  :<C-u>make build<CR>
autocmd FileType c nmap <leader>pt  :<C-u>make test<CR>
autocmd FileType c nmap <leader>pT  :<C-u>make test<CR>
autocmd FileType c nmap <leader>pf  :<C-u>ClangFormat<CR>

"""""""""
"" Web ""
"""""""""
au BufNewFile,BufRead *.js, *.html, *.css
    \ set tabstop=2
    \ set softtabstop=2
    \ set shiftwidth=2

""""""""""""
"" Python ""
""""""""""""

let python_highlight_all=1

au BufNewFile,BufRead *.py
    \ set tabstop=4
    \ set softtabstop=4
    \ set shiftwidth=4
    \ set textwidth=79
    \ set expandtab
    \ set autoindent
    \ set fileformat=unix


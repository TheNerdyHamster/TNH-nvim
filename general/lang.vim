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

vnoremap <silent><leader>cca :<C-U>Lspsaga range_code_action<CR>

nnoremap <silent><leader>chd :Lspsaga hover_doc<CR>
nnoremap <silent><C-f> <cmd>lua require('lspsaga.action').smart_scroll_with_saga(1)<CR>
nnoremap <silent><C-b> <cmd>lua require('lspsaga.action').smart_scroll_with_saga(-1)<CR>

" nnoremap <silent><leader>crn :Lspsaga rename<CR>
" nnoremap <silent><leader>cpd:Lspsaga preview_definition<CR>
nnoremap <silent> <leader>cld :Lspsaga show_line_diagnostics<CR>
nnoremap <silent> [e :Lspsaga diagnostic_jump_next<CR>
nnoremap <silent> ]e :Lspsaga diagnostic_jump_prev<CR>
nnoremap <silent> <leader>cot :Lspsaga open_floaterm<CR>
tnoremap <silent> <leader>cct <C-\><C-n>:Lspsaga close_floaterm<CR>

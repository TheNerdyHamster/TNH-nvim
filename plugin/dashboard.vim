let g:dashboard_default_executive ='telescope' 
let g:dashboard_custom_footer = ['']
let g:dashboard_custom_header = [
            \ '',
            \ ' .-------------------------. ',
            \ ' | Made by TheNerdyHamster | ',
            \ " '-------------------------' ",
            \ '',
            \ '',
            \ ]


" Find files using Telescope command-line sugar.
nnoremap <silent> <leader>ff :DashboardFindFile<CR>
nnoremap <silent> <leader>fg :Telescope live_grep<cr>
nnoremap <silent> <leader>fb :Telescope buffers<cr>
nnoremap <silent> <leader>ft :Telescope help_tags<cr>
nnoremap <silent> <leader>fh :DashboardFindHistory<CR>
nnoremap <silent> <leader>fc :DashboardChangeColorscheme<CR>
nnoremap <silent> <leader>fw :DashboardFindWord<CR>
nnoremap <silent> <leader>fm :DashboardJumpMark<CR>
nnoremap <silent> <leader>fn :DashboardNewFile<CR>

nmap <leader>fss :<C-u>SessionSave<CR>
nmap <leader>fsl :<C-u>SessionLoad<CR>

let g:dashboard_custom_shortcut={
      \ 'last_session'       : 'SPC fs l',
      \ 'find_history'       : 'SPC f h',
      \ 'find_file'          : 'SPC f f',
      \ 'new_file'           : 'SPC f n',
      \ 'change_colorscheme' : 'SPC f c',
      \ 'find_word'          : 'SPC f w',
      \ 'book_marks'         : 'SPC f m',
      \ }

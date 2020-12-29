"""""""""""""""
""  VimWiki  ""
"""""""""""""""
nmap <leader>wll <Plug>VimwikiFollowLink
nmap <leader>wln <Plug>VimwikiNextLink
nmap <leader>wlp <Plug>VimwikiPrevLink

let g:vimwiki_list = [{'path': '~/Documents/wiki'}]

au BufRead,BufNewFile *.wiki set filetype=vimwiki

function! ToggleCalendar()
  execute ':CalendarH'
  if exists('g:calendar_open')
    if g:calendar_open == 1
      execute 'q'
      unlet g:calendar_open
    else
      g:calendar_open = 1
    end
  else
    let g:calendar_open = 1
  end
endfunction

autocmd FileType vimwiki nmap <leader>wc :call ToggleCalendar()

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

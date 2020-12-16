"""""""""""""""""""""
""     VimWiki     ""
"""""""""""""""""""""
nmap <leader>wll <Plug>VimwikiFollowLink
nmap <leader>wln <Plug>VimwikiNextLink
nmap <leader>wlp <Plug>VimwikiPrevLink

let g:vimwiki_list = [{'path': '~/Documents/wiki'}]

au BufRead,BufNewFile *.wiki set filetype=vimwiki

function! ToggleCalendar()
  execute ':Calendar'
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

au FileType vimwiki map c :call ToggleCalendar()

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

autocmd FileType vimwiki map c :call ToggleCalendar()

""""""""""
""  RG  ""
""""""""""

if executable('rg')
  let g:rg_derive_root = 'true'
endif

"""""""""""""
""  Netrw  ""
"""""""""""""

let g:netrw_browse_split = 2
let g:netrw_liststyle = 3
let g:netrw_banner = 0
let g:netrw_winsize = 25

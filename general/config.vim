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

let g:netrw_browse_split = 4
let g:netrw_liststyle = 3
let g:netrw_banner = 0
let g:netrw_winsize = 25

function! OpenToRight()
  :normal v
  let g:path=expand('%:p')
  :q!
  execute 'belowright vnew' g:path
  :normal <C-l>
endfunction

function! OpenBelow()
  :normal v
  let g:path=expand('%:p')
  :q!
  execute 'belowright new' g:path
  :normal <C-l>
endfunction

function! NetrwMappings()
  noremap <buffer> <C-l> <C-w>l
  noremap <silent> <C-f> :call ToggleNetrw()<CR>
  noremap <buffer> V :call OpenToRight()<CR>
  noremap <buffer> H :call OpenBelow()<CR>
endfunction

augroup netrw_mappings
  autocmd!
  autocmd filetype netrw call NetrwMappings()
augroup END

" Function to toggle Netrw
function! ToggleNetrw()
  if g:NetrwIsOpen
    let i = bufnr("$")
    while (i >= 1)
      if (getbufvar(i, "&filetype") == "netrw")
        silent exe "bwipeout" . i
      endif
      let i-=1
    endwhile
    let g:NetrwIsOpen=0
  else
    let g:NetrwIsOpen=1
    silent Lexplore
  endif
endfunction

" Close netrw when its the only buffer
autocmd WinEnter * if winnr('$') == 1 && getbufvar(winbufnr(winnr()), "&filetype") == "netrw" || &buftype == 'quickfix' |q|endif

" Let Netrw act as a project drawer
augroup ProjectDrawer
  autocmd!
  autocmd VimEnter * :call ToggleNetrw()
augroup END

let g:NetrwIsOpen=0

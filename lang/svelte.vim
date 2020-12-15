let g:vim_svelte_plugin_load_full_syntax = 1

let g:vim_svelte_plugin_use_pug = 1

let g:vim_svelte_plugin_use_foldexpr = 1

autocmd FileType svelte inoremap <buffer><expr> : InsertColon()

function! InsertColon()
  let tag = GetSvelteTag()
  return tag == 'template' ? ':' : ': '
endfunction

let g:startify_change_to_vcs_root = 1
let g:startify_fortune_use_unicode = 1
let g:startify_session_persistence = 1
let g:startify_enable_special = 0
let g:startify_session_autoload = 1
let g:startify_session_dir = '~/.config/nvim/session'

let g:startify_custom_header = [
        \ '      _______   ____  __      _   __      _               ',
        \ '     /_  __/ | / / / / /     / | / /   __(_)___ ___       ',
        \ '      / / /  |/ / /_/ /_____/  |/ / | / / / __ `__ \      ',
        \ '     / / / /|  / __  /_____/ /|  /| |/ / / / / / / /      ',
        \ '    /_/ /_/ |_/_/ /_/     /_/ |_/ |___/_/_/ /_/ /_/       ',
        \]

" let g:startify_custom_header = [
"       \ '        ____ ____ ____ ____ ____ ____ ____ ____  ',
"       \ '       ||T |||N |||H |||- |||N |||v |||i |||m || ',
"       \ '       ||__|||__|||__|||__|||__|||__|||__|||__|| ',
"       \ '       |/__\|/__\|/__\|/__\|/__\|/__\|/__\|/__\| ',
"       \ ]


let g:startify_lists = [
          \ { 'type': 'files',     'header': ['   Files']                        },
          \ { 'type': 'dir',       'header': ['   Current Directory '. getcwd()] },
          \ { 'type': 'sessions',  'header': ['   Sessions']                     },
          \ { 'type': 'bookmarks', 'header': ['   Bookmarks']                    },
          \ { 'type': 'commands',  'header': ['   Commands']                     },
          \ ]

let g:startify_bookmarks = [
            \ { 'd':  '~/Projects/dotfiles' },
            \ { 'i':  '~/.config/nvim/init.vim' },
            \ { 'z':  '~/.zshrc' },
            \ { 'p':  '~/Projects'},
            \ { 'pi': '~/Pictures'},
            \ ]



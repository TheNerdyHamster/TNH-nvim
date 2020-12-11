let g:startify_change_to_vcs_root = 1
let g:startify_fortune_use_unicode = 1
let g:startify_session_persistence = 1
let g:startify_enable_special = 0
let g:startify_session_autoload = 1
let g:startify_session_dir = '~/.config/nvim/session'

let g:startify_custom_header = [
        \ '     _______ _   _ _    _        _   _       _              ',
        \ '    |__   __| \ | | |  | |      | \ | |     (_)             ',
        \ '       | |  |  \| | |__| |______|  \| |_   ___ _ __ ___     ',
        \ '       | |  | . ` |  __  |______| . ` \ \ / / | ''_ ` _ \   ',
        \ '       | |  | |\  | |  | |      | |\  |\ V /| | | | | | |   ',
        \ '       |_|  |_| \_|_|  |_|      |_| \_| \_/ |_|_| |_| |_|   ',
        \]
                                                      
                                                      


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



""""""""""""""
""  VimPlug  ""
"""""""""""""""

if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'
    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'
    " Themes
    Plug 'overcache/NeoSolarized'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'ryanoasis/vim-devicons'
    " Languages
    Plug 'fatih/vim-go'
    Plug 'jackguo380/vim-lsp-cxx-highlight'
    Plug 'vim-syntastic/syntastic'
    Plug 'rhysd/vim-clang-format'
    Plug 'LnL7/vim-nix'
    Plug 'posva/vim-vue'
    " Coc
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    " Mappings
    Plug 'liuchengxu/vim-which-key'
    " Utils
    Plug 'wakatime/vim-wakatime'
    Plug 'vimwiki/vimwiki'
    Plug 'mattn/calendar-vim'
    Plug 'norcalli/nvim-colorizer.lua'
    Plug 'tpope/vim-commentary'
    Plug 'vim-utils/vim-man'
    Plug 'jremmen/vim-ripgrep'
    Plug 'mbbill/undotree'
    " Tools
    Plug 'tpope/vim-fugitive'
    Plug 'preservim/nerdtree'
call plug#end()

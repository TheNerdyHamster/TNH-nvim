if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

    " Themes
    Plug 'joshdick/onedark.vim'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'ryanoasis/vim-devicons'

    " Gui enchancements
    Plug 'dense-analysis/ale'
    Plug 'sheerun/vim-polyglot'
    Plug 'norcalli/nvim-colorizer.lua'
    Plug 'mbbill/undotree'
    Plug 'liuchengxu/vim-which-key'

    " Semantic language support
    Plug 'ycm-core/YouCompleteMe'
    Plug 'airblade/vim-gitgutter'

    " Syntactic language support
    Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

    " Completion
    Plug 'tpope/vim-commentary'
    Plug 'jiangmiao/auto-pairs'

    " File browser
    Plug 'preservim/nerdtree'

    " Move code around
    Plug 'tpope/vim-unimpaired'

    " Searching
    Plug 'jremmen/vim-ripgrep'
    Plug 'junegunn/fzf.vim'

    " Tmux
    Plug 'christoomey/vim-tmux-navigator'

    " Utils
    Plug 'vim-utils/vim-man'
    Plug 'tpope/vim-fugitive'

call plug#end()

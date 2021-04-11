syntax on
filetype plugin indent on

let g:mapleader = " "

set guicursor=
set relativenumber
set nu
set nowrap
set incsearch
set nohlsearch
set hidden
set encoding=utf-8
set pumheight=10
set fileencoding=utf-8
set noerrorbells
set iskeyword+=-
set smartcase
set ignorecase
set splitbelow
set t_Co=256
set conceallevel=0
set tabstop=4 softtabstop=4
set shiftwidth=4
set smarttab
set expandtab
set smartindent
set autoindent
set laststatus=0
set colorcolumn=120
set showtabline=2
set noshowmode
set timeoutlen=500
set cursorline
set formatoptions-=cro
set clipboard=unnamedplus
set termguicolors
set noswapfile
set nobackup
set undodir=~/.config/nvim/undodir
set undofile
set scrolloff=10
set signcolumn=yes
set autowrite

au! BufWritePost $MYVIMRC source %
autocmd BufWritePre * %s/\s\+$//e

"""""""""""""""""
""  Setttings  ""
"""""""""""""""""

syntax on                               " Enables syntax highlighing
filetype plugin indent on               " Allow auto-indenting depending on file type

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

let g:loaded_node_provider=1
au! BufWritePost $MYVIMRC source %      " auto source when writing to init.vm alternatively you can run :source $MYVIMRC
autocmd BufWritePre * %s/\s\+$//e       " Remove tralning spaces on save
" You can't stop me
cmap w!! w !sudo tee %

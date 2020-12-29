"""""""""""""""""
""  Setttings  ""
"""""""""""""""""

syntax on                               " Enables syntax highlighing
filetype plugin indent on               " Allow auto-indenting depending on file type

let g:mapleader = " "

set guicursor=                          " Disable cursor
set relativenumber                      " Enable relative numbers
set nowrap                              " Display long lines as just one line
set encoding=utf-8                      " The encoding displayed
set pumheight=10                        " Makes popup menu smaller
set fileencoding=utf-8                  " The encoding written to file
set noerrorbells                        " Disable error bells
set iskeyword+=-                      	" treat dash separated words as a word text object"
set smartcase                           " Case insensitive matching
set splitbelow                          " Horizontal splits will automatically be below
" set splitright                          " Vertical splits will automatically be to the right
set t_Co=256                            " Support 256 colors
set conceallevel=0                      " So that I can see `` in markdown files
set tabstop=2 softtabstop=2             " Insert 2 spaces for a tab
set shiftwidth=2                        " Change the number of space characters inserted for indentation
set smarttab                            " Makes tabbing smarter will realize you have 2 vs 4
set expandtab                           " Converts tabs to spaces
set smartindent                         " Makes indenting smart
set autoindent                          " Good auto indent
set laststatus=0                        " Always display the status line
set colorcolumn=120                      " Set an 80 column border for a better style
set showtabline=2                       " Always show tabs
set noshowmode                          " We don't need to see things like -- INSERT -- anymore
set timeoutlen=500                      " By default timeoutlen is 1000 ms
set formatoptions-=cro                  " Stop newline continution of comments
set clipboard=unnamedplus               " Copy paste between vim and everything else
set termguicolors
set noswapfile
set incsearch
set background=dark                     " tell vim what the background color looks like

au! BufWritePost $MYVIMRC source %      " auto source when writing to init.vm alternatively you can run :source $MYVIMRC
autocmd BufWritePre * %s/\s\+$//e       " Remove tralning spaces on save
" You can't stop me
cmap w!! w !sudo tee %

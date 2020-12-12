" General settings for NeoVim
source $HOME/.config/nvim/vim-plug/plugins.vim
source $HOME/.config/nvim/general/settings.vim
source $HOME/.config/nvim/keys/mappings.vim

" coc
source $HOME/.config/nvim/plug-config/coc.vim

" Theme
source $HOME/.config/nvim/themes/onedark.vim

" Airline
source $HOME/.config/nvim/themes/airline.vim

" Utils
source $HOME/.config/nvim/plug-config/start-screen.vim

" Color utils
luafile $HOME/.config/nvim/lua/plug-colorizer.lua
source $HOME/.config/nvim/plug-config/rainbow_parentheses.vim

"Git
source $HOME/.config/nvim/plug-config/signify.vim

" Tools
source $HOME/.config/nvim/plug-config/ansible.vim
source $HOME/.config/nvim/plug-config/rnvimr.vim
source $HOME/.config/nvim/plug-config/fzf.vim
source $HOME/.config/nvim/plug-config/commentary.vim

" Basic config set
source $HOME/.config/nvim/basics.vim
" Plugins
call plug#begin ('~/.config/nvim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes' " Vim status bar
Plug 'yggdroot/indentline' " More clear indent line
Plug 'lilydjwg/colorizer' " Shows hex, rgb, and css colors
Plug 'tpope/vim-commentary' " Utility for easy comments
Plug 'scrooloose/nerdtree'
Plug 'mattn/emmet-vim' " Code snippets for web-dev
Plug 'junegunn/goyo.vim'
Plug 'ryanoasis/vim-devicons'
Plug 'tpope/vim-surround'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'instant-markdown/vim-instant-markdown', {'for': 'markdown'}
call plug#end()
" Vim wiki path
source $HOME/.config/nvim/vimwiki.vim " I like to keep this separate from my plugin config because it has some personal folders that I .gitignore 
" Shortcuts
source $HOME/.config/nvim/shortcuts.vim
" Plugin config
source $HOME/.config/nvim/plugconfig.vim

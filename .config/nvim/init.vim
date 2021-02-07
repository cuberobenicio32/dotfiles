" Basic config set
source $HOME/.config/nvim/basics.vim
" Plugins
call plug#begin ('~/.config/nvim/plugged')
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'yggdroot/indentline'
Plug 'lilydjwg/colorizer'
Plug 'tpope/vim-commentary'
Plug 'scrooloose/nerdtree'
Plug 'mattn/emmet-vim'
Plug 'junegunn/goyo.vim'
Plug 'tpope/vim-surround'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'instant-markdown/vim-instant-markdown', {'for': 'markdown'}
Plug 'sheerun/vim-polyglot'
Plug 'sainnhe/sonokai'
call plug#end()
" Vim wiki path
source $HOME/.config/nvim/vimwiki.vim " I like to keep this separate from my plugin config because it has some personal folders that I .gitignore 
" Shortcuts
source $HOME/.config/nvim/shortcuts.vim
" Plugin config
source $HOME/.config/nvim/plugconfig.vim
" Colorscheme

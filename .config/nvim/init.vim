" Basic config set
source $HOME/.config/nvim/basics.vim
" Plugins
call plug#begin ('~/.config/nvim/plugged')
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'lilydjwg/colorizer'
Plug 'mattn/emmet-vim'
Plug 'junegunn/fzf', { 'do' : { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'scrooloose/nerdtree'
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-commentary'
Plug 'instant-markdown/vim-instant-markdown', {'for': 'markdown'}
Plug 'morhetz/gruvbox'
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-surround'
call plug#end()
" Vim wiki path
source $HOME/.config/nvim/vimwiki.vim " I like to keep this separate from my plugin config because it has some personal folders that I .gitignore 
" Shortcuts
source $HOME/.config/nvim/shortcuts.vim
" Plugin config
source $HOME/.config/nvim/coc.vim
source $HOME/.config/nvim/vimwiki.vim
source $HOME/.config/nvim/airline.vim
source $HOME/.config/nvim/plugconfig.vim

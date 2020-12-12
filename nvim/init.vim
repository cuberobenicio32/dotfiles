" Basic config set
syntax enable
set number
set showcmd
set showmatch
set noshowmode
set nocompatible
filetype plugin on 
set relativenumber
set title 		
set hidden
set noswapfile
set smartindent
set autoindent
set nobackup
set nowritebackup
set termguicolors
set background=dark 
set sw=2
set encoding=utf-8
set clipboard=unnamed
set numberwidth=1
set mouse=a
" Disables autocommenting on new line
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" Plugins
call plug#begin ('~/.config/nvim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes' " Vim status bar
Plug 'ntk148v/vim-horizon' " My colorscheme.
Plug 'yggdroot/indentline'
Plug 'lilydjwg/colorizer'
Plug 'tpope/vim-commentary'
Plug 'vimwiki/vimwiki'
Plug 'scrooloose/nerdtree'
Plug 'mattn/emmet-vim'
Plug 'junegunn/goyo.vim'

call plug#end()



" Plugin config  

" Vim wiki

" Vim wiki path
let wiki = {}
let g:vimwiki_list = [{'path': '/mnt/c/Users/Usuario/Desktop/Benicio/Wiki', 'path_html': '/mnt/c/Users/Usuario/Desktop/Benicio/Wiki/Wiki-HTML'}, {'path': '/mnt/c/Users/Usuario/Desktop/Benicio/Wiki/Notas', 'path_html': '/mnt/c/Users/Usuario/Desktop/Benicio/Wiki/Notas/Notas-HTML'}, {'path': '/mnt/c/Users/Usuario/Desktop/Benicio/Wiki/Blog', 'path_html': '/mnt/c/Users/Usuario/Desktop/Proyectos/personal-website/Blog'}]
let wiki.nested_syntaxes = {'python': 'python', 'c++': 'cpp', 'vimscript': 'vimscript', 'c' : 'c'}
" Config scheme 
colorscheme horizon
" Shortcuts
let mapleader=' '
let maplocalleader = ','

nmap <leader>nt :NERDTreeFind<CR>
nmap <leader>vs :vsplit

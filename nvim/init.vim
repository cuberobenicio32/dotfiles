" Basic config set

syntax enable
set number
set showcmd
set showmatch
set noshowmode
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

" Themes / Appearance
Plug 'morhetz/gruvbox'
Plug 'arcticicestudio/nord-vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'dracula/vim'
Plug 'ryanoasis/vim-devicons'

" IDE
Plug 'easymotion/vim-easymotion'
Plug 'scrooloose/nerdtree'
Plug 'christoomey/vim-tmux-navigator'
Plug 'mhinz/vim-startify'
Plug 'liuchengxu/vim-which-key'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'turbio/bracey.vim'
Plug 'preservim/nerdcommenter'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
nmap <leader>pw <Plug>MarkdownPreviewToggle<CR> 

" Deoplete, autocompletion engine.
if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif
let g:deoplete#enable_at_startup = 1
Plug 'zchee/deoplete-clang'
Plug 'deoplete-plugins/deoplete-jedi'
let g:deoplete#sources#clang#libclang_path = '/usr/lib/llvm-7/lib/libclang-7.so'
let g:deoplete#sources#clang#clang_header = '/usr/lib/clang'

"Misc
Plug 'yggdroot/indentline'
Plug 'tpope/vim-surround'
Plug 'jiangmiao/auto-pairs'
Plug 'lilydjwg/colorizer'
Plug 'AndrewRadev/tagalong.vim'

call plug#end()

"""""""" Plugin config 
"Config scheme
colorscheme dracula

" Fzf config  
nmap <leader>f :Files<CR>

" Shortcuts
let mapleader=' '
let maplocalleader = ','

nmap <leader>s <Plug>(easymotion-s2)
nmap <leader>nt :NERDTreeFind<CR>

nmap <leader>q :q<CR>
nmap <leader>w :w<CR>

nmap <leader>vs :vsplit

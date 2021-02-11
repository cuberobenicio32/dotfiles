"  In this file, I use some personal shortcuts, aside from what shortcuts plugins offer. There are obviously more shortcuts.

" <SPACE> is my currently leader.
let mapleader=' '
let maplocalleader = ','

" Basic vim shortcuts
map <F2> :bn<CR> " Next buffer
nmap <F3> :bp<CR> " Previous buffer
nmap <leader>db :bd<CR> " Delete buffer

" Plugin shortcuts
nmap <leader>nt :NERDTreeFind<CR> " Opens nerd tree
nmap <leader>vs :vsplit " Splits a file 
nmap <leader>zz :Files .<CR>

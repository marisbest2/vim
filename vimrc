" Vim Config
" Stuff taken from various online sources and my own research


filetype plugin indent on " turn on plugins and indents
syntax on " turn on syntax 
set encoding=utf-8
set shell=/bin/zsh " set shell

" number settings 
set number
set relativenumber
set ruler 

" Look and feel
set t_Co=256
colorscheme molokai

" tab stuff
set tabstop=4       " number of visual spaces per TAB
set softtabstop=4   " number of spaces in tab when editing
set expandtab       " tabs are spaces
set smarttab        " smart tabbing

" Map <Space> to / (search) and Ctrl-<Space> to ? (backwards search)
map <space> /
map <c-space> ?


set showmatch           " highlight matching [{()}]

" matching
set incsearch           " search as characters are entered
set hlsearch            " highlight matches

" ignore case when searching
set ignorecase

" When searching try to be smart about cases 
set smartcase


" move to beginning/end of line
nnoremap B ^
nnoremap E $

" Spell checking
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Pressing ,ss will toggle and untoggle spell checking
map <leader>ss :setlocal spell!<cr>

" Shortcuts using <leader>
map <leader>sn ]s
map <leader>sp [s
map <leader>sa zg
map <leader>s? z=


" Vim Config
" Stuff taken from various online sources and my own research
execute pathogen#infect()
set nocompatible

filetyp plugin indent on " turn on plugins and indents
syntax on " turn on syntax 
set encoding=utf-8
set shell=/bin/zsh " set shell

" set leader to ,
let mapleader = ","

" fix backspace
set backspace=indent,eol,start

" number settings 
set ruler
" toggles number type using ctrl-m 
function! NumberToggle()
    if(&number == &relativenumber)
        set number
        set relativenumber!
      elseif(&relativenumber==1)
        set relativenumber
        set number
      else
        set relativenumber
        set number!                                    
    endif
endfunction
set number
set relativenumber
nnoremap <C-m> :call NumberToggle()<CR>


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
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest

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

" Use normal regex mode
nnoremap / /\v
vnoremap / /\v

" Clear highlights
nnoremap <leader><space> :noh<cr>
" Easy jumping 
nnoremap <tab> %
vnoremap <tab> %

" Save on focus-out
au FocusLost * :wa

" Vertical splits
nnoremap <leader>w <C-w>v<C-w>l
" Move around with ctrl-hjkl
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                               VIM SETTINGS                                   "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" set backspace=2
" set backspace=indent,eol,start

set encoding=utf-8
set termguicolors

set mouse=a
set number relativenumber

set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2
set autoindent
set smartindent

set incsearch
set scrolloff=5
set laststatus=2
se noshowmode

let mapleader=" "

inoremap kj <Esc>

nmap <leader>w :w<CR>
nmap <leader>q :wq<CR>
nmap Q :q!<CR>

nnoremap <leader>v :source ~/.vimrc<CR>

nmap <leader>s :set hlsearch!<CR>
nnoremap <silent> <CR> :nohlsearch<CR><CR>

vmap <leader>y "+y
vmap <leader>d "+d
nmap <leader>y "+yy
nmap <leader>p "+p
nmap <leader>P "+P

imap <A-h> <C-o>h
imap <A-j> <C-o>j
imap <A-k> <C-o>k
imap <A-l> <C-o>l

nmap <leader>- :split<CR>
nmap <leader>\ :vsplit<CR>

map <S-h> <C-w>h
map <S-j> <C-w>j
map <S-k> <C-w>k
map <S-l> <C-w>l

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                  VIM-PLUG                                   " 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call plug#begin()
Plug 'tpope/vim-sensible'
Plug 'mhinz/vim-startify'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'machakann/vim-highlightedyank'
Plug 'mg979/vim-visual-multi', { 'branch': 'master'}
Plug 'yggdroot/indentline'
Plug 'preservim/nerdtree' |
      \ Plug 'Xuyuanp/nerdtree-git-plugin' |
      \ Plug 'ryanoasis/vim-devicons'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'yuttie/comfortable-motion.vim'
Plug 'haishanh/night-owl.vim'
Plug 'lifepillar/vim-gruvbox8'
Plug 'itchyny/lightline.vim'
" Plug '0robustus1/vim-tmux-conf'
Plug 'mattn/emmet-vim'
Plug 'ap/vim-css-color'
Plug 'vim-python/python-syntax'
call plug#end()
" autocmd FileType vim syntax keyword Function Plug

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                               PLUGINS SETTINGS                               "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd User Startified setlocal cursorline

let g:indentLine_fileTypeExclude=['help', 'nerdtree', 'startify']
let g:indentLine_char=''
let g:indentLine_leadingSpaceEnabled=1
let g:indentLine_leadingSpaceChar='·'

nmap <leader>f :NERDTreeToggle<CR>
let g:NERDTreeGitStatusUseNerdFonts=1

colorscheme gruvbox8
let g:lightline = {}
let g:lightline.colorscheme='seoul256'

let g:user_emmet_leader_key="<A-e>"

let g:python_highlight_all=1

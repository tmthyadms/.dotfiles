" General Configs {{{

set encoding=utf-8
set number relativenumber

set termguicolors
set background=dark

set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2
set scrolloff=5

set autoindent
set smartindent

set mouse=a
set noshowmode

set foldmethod=marker

"}}}


" Keybindings {{{

" Essentials
imap kj <Esc>
map <Space> <Leader>
nmap <Leader>v :source ~/.vimrc<CR>

" Insert mode navigation
imap <A-h> <C-o>h
imap <A-j> <C-o>j
imap <A-k> <C-o>k
imap <A-l> <C-o>l

" Search highlight
nmap <Leader>s :set hlsearch!<CR>
nmap <Silent> <CR> :nohlsearch<CR><CR>

" Clipboard operations
nmap <Leader>d "+d
vmap <Leader>d "+d
nmap <Leader>P "+P
nmap <Leader>p "+p
vmap <Leader>y "+y
nmap <Leader>y "+yy

" Save & quit
nmap <Leader>w :w<CR>
nmap <Leader>q :wq<CR>
nmap <S-q> :q!<CR>

" Split windows
nmap <Leader>- :split<CR>
nmap <Leader>\ :vsplit<CR>

" Window navigation
map <S-h> <C-w>h
map <S-j> <C-w>j
map <S-k> <C-w>k
map <S-l> <C-w>l

nmap <Leader><S-s> :Startify<CR>
nmap <Leader>f <Plug>(Prettier)

"}}}


" Plugins {{{

call plug#begin()

" Plug '0robustus1/vim-tmux-conf'
Plug 'ap/vim-css-color'
Plug 'itchyny/lightline.vim'
Plug 'machakann/vim-highlightedyank'
Plug 'mattn/emmet-vim'
Plug 'mg979/vim-visual-multi'
Plug 'mhinz/vim-startify'
Plug 'yggdroot/indentline'
Plug 'yuttie/comfortable-motion.vim'
Plug 'prettier/vim-prettier', { 'do': 'yarn install --frozen-lockfile --production' }

" NERDTree
Plug 'preservim/nerdtree' |
      \ Plug 'ryanoasis/vim-devicons' |
      \ Plug 'tiagofumo/vim-nerdtree-syntax-highlight' |
      \ Plug 'Xuyuanp/nerdtree-git-plugin'

" tpope's
Plug 'tpope/vim-sensible'
" backspace, incsearch, listchars
" scrolloff (1), autoread, runtime
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'

" Themes
Plug 'haishanh/night-owl.vim'
Plug 'lifepillar/vim-gruvbox8'
Plug 'ghifarit53/tokyonight-vim'

call plug#end()

"}}}


" Plugin Configs {{{

" Highlight plugins
" autocmd FileType vim syntax keyword Function Plug

" Emmet
let g:user_emmet_leader_key="<A-e>"

" Visual multi
let g:VM_maps={}
let g:VM_maps['Find Under']='gb'
let g:VM_maps['Find Subword Under']='gb'
" Follow VSCode Vim visual multi

" Highlight current line in Startify 
autocmd User Startified setlocal cursorline
autocmd VimEnter *
            \   if !argc()
            \ |   Startify
            \ |   NERDTree
            \ |   wincmd w
            \ | endif

" Indentation line 
let g:indentLine_fileTypeExclude=['help', 'nerdtree', 'startify']
let g:indentLine_char=''
let g:indentLine_leadingSpaceEnabled=1
let g:indentLine_leadingSpaceChar='·'

" Prettier
let g:prettier#autoformat_config_present = 1
let g:prettier#autoformat_require_pragma = 0

" NERDTree
nmap <C-n> :NERDTreeToggle<CR>
let g:NERDTreeGitStatusUseNerdFonts=1

" Colorscheme & lightline
let g:tokyonight_style='storm'
" night, storm
let g:tokyonight_enable_italic=1

colorscheme tokyonight
" night-owl, gruvbox8, gruvbox8_hard, gruvbox8_soft, tokyonight

let g:lightline={}
let g:lightline.colorscheme='tokyonight'
" nightowl, gruxbov8, tokyonight

" }}}

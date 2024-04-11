" General {{{

set number relativenumber

set termguicolors

set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2

set autoindent
set smartindent

set noshowmode

set foldmethod=marker

" }}}

" Keybindings {{{

" Basic
imap kj <Esc>
map <Space> <Leader>
nmap <Leader>v :source ~/.vimrc<CR>

" Save & Quit
nmap <Leader>w :w<CR>
nmap <Leader>q :wq<CR>
nmap <S-q> :q!<CR>

" Search Highlight
nmap <Leader>s :set hlsearch!<CR>
nmap <Silent> <CR> :nohlsearch<CR><CR>

" Pane Split
nmap <Leader>- :split<CR>
nmap <Leader>\ :vsplit<CR>

" Pane Navigation
map <S-h> <C-w>h
map <S-j> <C-w>j
map <S-k> <C-w>k
map <S-l> <C-w>l


" Insert Mode Navigation
imap <A-h> <C-o>h
imap <A-j> <C-o>j
imap <A-k> <C-o>k
imap <A-l> <C-o>l

" Clipboard Operations
nmap <Leader>d "+d
vmap <Leader>d "+d
nmap <Leader>P "+P
nmap <Leader>p "+p
vmap <Leader>y "+y
nmap <Leader>y "+yy


"}}}

" Plugins {{{

call plug#begin()
" backspace, incsearch, listchars
" scrolloff (1), autoread, runtime
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'

Plug 'mg979/vim-visual-multi'
Plug 'mhinz/vim-startify'
Plug 'mattn/emmet-vim'
" Plug '0robustus1/vim-tmux-conf'

Plug 'preservim/nerdtree' |
      \ Plug 'ryanoasis/vim-devicons' |
      \ Plug 'tiagofumo/vim-nerdtree-syntax-highlight' |
      \ Plug 'Xuyuanp/nerdtree-git-plugin'

Plug 'machakann/vim-highlightedyank'
Plug 'yggdroot/indentline'
Plug 'haishanh/night-owl.vim'
Plug 'lifepillar/vim-gruvbox8'
Plug 'ghifarit53/tokyonight-vim'
Plug 'ap/vim-css-color'
Plug 'prettier/vim-prettier', { 'do': 'yarn install --frozen-lockfile --production' }
Plug 'itchyny/lightline.vim'
call plug#end()

"}}}

" Plugin Settings {{{

" Plug Highlight
autocmd FileType vim syntax keyword Function Plug

" Emmet
let g:user_emmet_leader_key="<A-e>"

" Visual Multi
let g:VM_maps={}
" `gb` as to follow VSCode Vim multi select
let g:VM_maps['Find Under']='gb'
let g:VM_maps['Find Subword Under']='gb'

" Startify
nmap <Leader><S-s> :Startify<CR>
autocmd User Startified setlocal cursorline
autocmd VimEnter *
      \   if !argc()
      \ |   Startify
      \ |   NERDTree
      \ |   wincmd w
      \ | endif

" Indent Line
let g:indentLine_fileTypeExclude=['help', 'nerdtree', 'startify']
let g:indentLine_char=''
let g:indentLine_leadingSpaceEnabled=1
let g:indentLine_leadingSpaceChar='·'

" Prettier
nmap <Leader>f <Plug>(Prettier)
let g:prettier#autoformat_config_present = 1
let g:prettier#autoformat_require_pragma = 0

" NERDTree
nmap <C-n> :NERDTreeToggle<CR>
let g:NERDTreeGitStatusUseNerdFonts=1

" Theme
let g:tokyonight_style='night' " night, storm
let g:tokyonight_enable_italic=1

colorscheme tokyonight " night-owl, gruvbox8, gruvbox8_hard, gruvbox8_soft, tokyonight

" Lightline
let g:lightline={}
let g:lightline.colorscheme='tokyonight' " nightowl, gruxbov8, tokyonight

" }}}

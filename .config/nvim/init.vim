
call plug#begin('~/.config/nvim/plugged')

Plug 'junegunn/goyo.vim'
Plug 'neo4j-contrib/cypher-vim-syntax'
Plug 'norcalli/nvim-colorizer.lua'
Plug 'joshdick/onedark.vim'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'mattn/emmet-vim'
Plug 'zinit-zsh/zinit-vim-syntax'
Plug 'dylanaraps/wal.vim'

call plug#end()

let g:loaded_python_provider=0
let g:loaded_ruby_provider = 0

let g:deoplete#enable_at_startup = 1

let g:user_emmet_leader_key=','
let g:user_emmet_mode='n'
let g:user_emmet_install_global = 1

let g:python3_host_prog='~/.asdf/shims/python3' 

colorscheme wal

syntax on

set encoding=utf-8

set number relativenumber
set nolinebreak

set nobackup
set wildmode=longest,list,full

set smartcase
set smartindent

set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2

set autochdir
set hlsearch

set clipboard+=unnamedplus
set backspace=indent,eol,start

map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

autocmd FileType nerdtree setlocal number relativenumber

nnoremap <F3> :set hlsearch!<CR>
imap <A-BS> <C-w>
cmap <A-BS> <C-w>

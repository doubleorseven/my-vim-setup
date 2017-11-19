set nocompatible              " be iMproved, required
filetype off                  " required
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
" Dracula theme
Plugin 'dracula/vim'
" comment functions
Plugin 'scrooloose/nerdcommenter'
" files tree
Plugin 'scrooloose/nerdtree'
" status bar
Plugin 'itchyny/lightline.vim'
" navation in directories
Plugin 'ctrlpvim/ctrlp.vim'
" git wrapper
Plugin 'tpope/vim-fugitive'
" git diff
Plugin 'airblade/vim-gitgutter'
" autocomplete with tab
Plugin 'ervandew/supertab'

call vundle#end()

filetype plugin indent on
syntax on
colorscheme dracula
set lines=35 columns=150
set colorcolumn=90
set number
set hidden
set history=100
set nowrap
set tabstop=4
set shiftwidth=4
set expandtab
set smartindent
set autoindent
set hlsearch " highlight search words
set showmatch " match parenthesis


" key maps
map <C-n> :NERDTreeToggle<CR>


" remove whitespace on save
autocmd BufWritePre * :%s/\s\+$//e

" cancel search with Escape
nnoremap <slient><Esc> :nohlsearch<Bar>:echo<CR>


"NERDTree
let NERDTreeDirArrows=0
let g:nerdtree_tabs_open_on_console_startup=0

"CTRLP
let g:ctrlp_regexp_search=1
let g:ctrlp_clear_cache_on_exit=0
"lightline
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ,
      \             [ 'venv', 'readonly'] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'fugitive#head',
      \   'venv': 'virtualenv#statusline'
      \ },
      \ }
let laststatus=2

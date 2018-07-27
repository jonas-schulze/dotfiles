set nocompatible

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
Plug 'flazz/vim-colorschemes'
Plug 'scrooloose/nerdtree'
"Plug 'junegunn/vim-easy-align'
Plug 'lervag/vimtex'
Plug 'Valloric/YouCompleteMe'
Plug 'tpope/vim-fugitive'

"if has('nvim')
  "Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
"else
  "Plug 'Shougo/deoplete.nvim'
  "Plug 'roxma/nvim-yarp'
  "Plug 'roxma/vim-hug-neovim-rpc'
"endif

call plug#end()

set termguicolors
filetype plugin indent on

let maplocalleader = '-'

" Enable spell checking
setlocal spell spelllang=en_us

" Use utf-8 as file encoding
set fileencoding=utf-8

" Simplify usage of sustem clipboard
"if has("clipboard")
"  set clipboard=unnamed
"endif

" Allow writing via `W` and quitting via `Q`
command WQ wq
command Wq wq
command Q q
command W w
command QA qa
command Qa qa
command WQA wqa
command WQa wqa
command Wqa wqa

" Centralize backups, swapfiles and undo history
set backupdir=~/.vim/backups
set directory=~/.vim/swaps
if exists("&undodir")
  set undodir=~/.vim/undo
endif
" Don’t create backups when editing files in certain directories
set backupskip=/tmp/*

" Show the (partial) command as it’s being typed
set showcmd
" Allow backspace in insert mode
set backspace=indent,eol,start

" Use relative line numbers
"set relativenumber
" Start scrolling three lines before the horizontal window border
set scrolloff=3

" Clip lines to 100 characters using `gw` or `gq`
"set textwidth=100

" Use spaces instead of tabs
set tabstop=2 shiftwidth=2 expandtab

" Show “invisible” characters
set listchars=tab:▸\ ,space:·,nbsp:_
set list

" Wrap lines only at words
set linebreak
" Indent and highlight subsequent lines
set breakindent
let &showbreak = '+++ '
" Allow jumping within wrapped lines
nnoremap j gj
nnoremap k gk
" Use space to toggle folds
set foldmethod=syntax
set foldlevelstart=20
nnoremap <space> za

" Highlight searches
set hlsearch
" Ignore case of searches
set ignorecase
" Highlight dynamically as pattern is typed
set incsearch
" Always show status line
set laststatus=2
" Enable mouse in all modes
set mouse=a

" Load specific configurations
source ~/.vim/config/git.vim
source ~/.vim/config/latex.vim
source ~/.vim/config/completion.vim
source ~/.vim/config/math.vim
source ~/.vim/config/appearance.vim

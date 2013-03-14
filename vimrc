" My personal vimrc

" - Tabs/Spaces -
set smarttab
set shiftwidth=2
set softtabstop=2
set tabstop=2               
set autoindent
set expandtab
set listchars=tab:⇢\ ,trail:·
set list

" - Line numbers -
set number

" - Disable Cursorkeys -
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>

" - Search -
set ignorecase
set smartcase

" - etc -
set autoread
let mapleader = ","
map <Leader>p <C-^> " Go to previous file
map <Leader>w :w!<CR>

" - NERDTree -
autocmd vimenter * if !argc() | NERDTree | endif
map <Leader>n :NERDTreeToggle<CR>

" - Vundle -
filetype off "required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'

" original repos on github
Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-bundler'
Bundle 'scrooloose/nerdtree'
Bundle 'kien/ctrlp.vim'

filetype plugin indent on

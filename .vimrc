set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

" File navigation
Plugin 'scrooloose/nerdtree.git'
Plugin 'kien/ctrlp.vim.git'

" Git
Plugin 'airblade/vim-gitgutter'

" Syntax highlighting
Plugin 'scrooloose/syntastic.git'

Plugin 'kchmck/vim-coffee-script'
Plugin 'tpope/vim-markdown'
Plugin 'othree/html5.vim'
Plugin 'digitaltoad/vim-jade'
Plugin 'elzr/vim-json'

" Auto-completion
" Plugin 'Valloric/YouCompleteMe'

" Syntax color
Plugin 'altercation/vim-colors-solarized'

call vundle#end()

syntax on
filetype on
filetype plugin indent on

" SHOW POSITION
set ruler
set rulerformat=%=%h%m%r%w\ %(%c%V%),%l/%L\ %P
set cursorline
"set cursorcolumn
set cul
set autoread

" LINE NUMBER
set number

" SEARCH
set hlsearch
set ignorecase
set smartcase

" FILEFORMAT
set ff=unix

" TABS/SPACE
set backspace=2
set shiftwidth=2
set tabstop=2
set expandtab
set mouse=a

" Tommorow Options
set background=dark
let g:solarized_termtrans = 1
colorscheme tommorow

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['eslint']

" NerdTree open at start
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
map <C-n> :NERDTreeToggle<CR>

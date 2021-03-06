" General

set nocompatible
set number                      "Line numbers are good
set backspace=indent,eol,start  "Allow backspace in insert mode
set history=1000                "Store lots of :cmdline history
set showcmd                     "Show incomplete cmds down the bottom
set showmode                    "Show current mode down the bottom
set gcr=a:blinkon0              "Disable cursor blink
set visualbell                  "No sounds
set autoread                    "Reload files changed outside vim
set laststatus=2                "Always display the status line
set hidden                      "Hide buffer instead of closing it
set pastetoggle=<F2>            "Paste without being smart
set mouse=a                     "Mouse interation
set ttyfast                     "Indicates fast terminal connection
set encoding=utf-8              " Set character encoding to use in vim
set termencoding=utf-8          " Let vim know what encoding we use in our terminal

" Key mappings

let mapleader=","

" Use ; over : for commands
nnoremap ; :

" Clear search highlighting with ,<space>
nnoremap <leader><space> :noh<cr>

" Tab to next buffer
nnoremap <tab> :bnext<cr>

" Shift-tab to previous buffer
nnoremap <s-tab> :bprevious<cr>

" Switch between last two buffers
nnoremap <leader><leader> <C-^>
" Load plugins

 if filereadable(expand("$HOME/.vundle.vim"))
   source $HOME/.vundle.vim
 endif

" Swap file and backups

set noswapfile
set nobackup
set nowb
au FocusLost * :wa

" Persistent undo

if has('persistent_undo')
  silent !mkdir ~/.vim/backups > /dev/null 2>&1
  set undodir=~/.vim/backups
  set undofile
endif

" Indentation

set autoindent
set smartindent
set smarttab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab

" Enable loading the plugin/indent files for specific file types

filetype plugin indent on
	
" Wrapping

set nowrap       "Don't wrap lines
set linebreak    "Wrap lines at convenient points

" Folding

set foldmethod=indent   "fold based on indent
set foldnestmax=3       "deepest fold is 3 levels
set nofoldenable        "dont fold by default

" Search

set hlsearch
set incsearch
set ignorecase
set showmatch
set smartcase

" Colors

syntax on
set cursorline
set background=dark
let g:solarized_termcolors=256
" colorscheme solarized
highlight clear SignColumn


" Scrolling

set scrolloff=4
set sidescrolloff=15
set sidescroll=1

" Ctrl-P

let g:ctrlp_show_hidden=1
let g:ctrlp_max_files = 600
let g:ctrlp_max_depth = 6

" NERDTree
" Stick this in your vimrc to open NERDTree with Ctrl+n
map <C-n> :NERDTreeToggle<CR>

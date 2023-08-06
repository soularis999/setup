set t_Co=256          " set the runtime path to include Vundle and initialize
set nocompatible          " no need for backward compatibility
set number                " add order lines
noremap <SPACE> <C-e>     " set space to scrolling
filetype off              " required

syntax on             
colorscheme onedark
highlight Normal ctermbg=None
highlight LineNr ctermfg=DarkGrey

set rtp+=/usr/local/opt/fzf
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" the dark minimalist theme
Plugin 'dikiaap/minimalist'

" Highlight the Insert and Virtual modes
Plugin 'itchyny/lightline.vim'

" Nerd tree to see file sidebar
Plugin 'preservim/nerdtree'

" Easymotion helps with navigation
Plugin 'easymotion/vim-easymotion'

" white space remover
Plugin 'axelf4/vim-strip-trailing-whitespace'

Plugin 'tpope/vim-sensible'
" the plugin for bottom status bar
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" Clojure plugin
" syntax highlighting, indentation, and rainbow parentheses to better
" distinguish forms visually
Plugin 'guns/vim-clojure-highlight'
Plugin 'guns/vim-clojure-static'
Plugin 'luochen1990/rainbow'
" provide structural editing support with vim-like mappings.
Plugin 'guns/vim-sexp'
Plugin 'tpope/vim-sexp-mappings-for-regular-people'
Plugin 'tpope/vim-salve'
Plugin 'tpope/vim-projectionist'
Plugin 'tpope/vim-dispatch'
Plugin 'tpope/vim-fireplace'

" JS
Plugin 'pangloss/vim-javascript'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


" airline configs
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'default'


" Install vundle if it's missing!
"let iCanHazVundle=1
"let vundle_readme=expand('~/.vim/bundle/vundle/README.md')
"if !filereadable(vundle_readme)
"    echo "Installing Vundle.."
"    echo ""
"    silent !mkdir -p ~/.vim/bundle
"    silent !git clone https://github.com/gmarik/vundle ~/.vim/bundle/vundle
"    let iCanHazVundle=0
"endif
"
"set rtp+=~/.vim/bundle/vundle/
"set rtp+=~/.vim/bundle/powerline/powerline/bindings/vim
"call vundle#rc()
set nocompatible              " be iMproved, required
filetype off                  " required
set rtp+=~/.vim/bundle/vundle/ " set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/powerline/powerline/bindings/vim
call vundle#begin()


" Vundle configuration

" Plugins
Bundle 'gmarik/vundle' 
Bundle 'Valloric/YouCompleteMe'
Bundle 'a.vim'
Bundle 'wincent/Command-T'
Bundle 'DoxygenToolkit.vim'
Bundle 'scrooloose/nerdtree'
Bundle 'godlygeek/tabular'
Bundle 'tpope/vim-sensible'
Bundle 'tpope/vim-unimpaired'
Bundle 'tpope/vim-endwise'
Bundle 'tpope/vim-fugitive'
Bundle 'jeffkreeftmeijer/vim-numbertoggle'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
Bundle 'Mizuchi/STL-Syntax'
Bundle 'tomtom/tcomment_vim'
Bundle 'majutsushi/tagbar'
Bundle 'julialang/julia-vim'
Bundle 'sickill/vim-monokai.git'
Bundle 'SirVer/ultisnips'


" Vim environment options
syntax on 
set nowrap
set expandtab
set number
set tabstop=4
set shiftwidth=4
set visualbell
set noerrorbells
set cursorline
set nu
set rnu
set showcmd
"set showmatch
set smartcase
set ignorecase
"set incsearch
set hlsearch
set ttyfast
set autoindent
set backspace=indent,eol,start
set ruler
set relativenumber

" Remappings
ino jj <Esc>
no <down> <Nop>
no <left> <Nop>
no <right> <Nop>
no <up> <Nop>
vmap <C-C> "+y
map <F2> :NERDTreeToggle<CR>
"
" " Use the same symbols as TextMate for tabstops and EOLs
set listchars=tab:▸\ ,eol:¬
"Invisible character colors 
" highlight NonText ctermfg=1
"highlight Normal ctermbg=NONE
"
" Set background color to none
highlight nonText ctermbg=NONE
highlight SpecialKey ctermfg=1

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Colorscheme
colorscheme monokai 
set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ 13

if has("gui_running")
    """ FOR GVIM "
    " Disable menu
    set guioptions-=M
    " Disable toolbar
    set guioptions-=T

    let g:solarized_termcolors=256
else
    """ FOR Native Vim "
    set term=screen-256color
    set t_Co=256
    " colorscheme solarized
    " let g:solarized_termcolors=256
    " set background=light
endif

set laststatus=2
let g:Powerline_symbols='fancy'

" Syntastic
let g:syntastic_cpp_compiler = 'clang++-3.5'
let g:syntastic_cpp_compiler_options = '-std=c++11 -stdlib=libc++'

" YouCompleteMe options
"let g:ycm_confirm_extra_conf = 0
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_autoclose_preview_window_after_insertion = 1

" NerdTree options
map <C-t> :NERDTreeToggle<CR>

" EASYMOTION
let g:EasyMotion_leader_key = '<leader>'

" Rainbow Parenthesis colors
nnoremap <F3> :RainbowParenthesesToggleAll<cr>

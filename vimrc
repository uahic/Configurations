
set nocompatible              " be iMproved, required
filetype off                  " required
set rtp+=~/.vim/bundle/vundle/ " set the runtime path to include Vundle and initialize
"set rtp+=~/.vim/bundle/powerline/powerline/bindings/vim
call vundle#begin()
"
" Vundle configuration
" Plugins
Bundle 'gmarik/vundle' 
Bundle 'Valloric/YouCompleteMe'
Bundle 'a.vim'
Bundle 'wincent/Command-T'
Bundle 'DoxygenToolkit.vim'
Bundle 'scrooloose/nerdtree'
Bundle 'tpope/vim-markdown.git'
Bundle 'scrooloose/nerdcommenter.git'
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

Bundle 'Raimondi/delimitMate.git'
Bundle 'ervandew/supertab'
Bundle 'jistr/vim-nerdtree-tabs'

" Some Snippets for Ultisnips
Plugin 'honza/vim-snippets'

Bundle 'rhysd/vim-clang-format.git'
Bundle 'scrooloose/syntastic.git'

Bundle 'dhruvasagar/vim-dotoo.git'

Bundle 'altercation/vim-colors-solarized.git'

Bundle 'samsonw/vim-task.git'
Bundle 'vim-airline/vim-airline'
Bundle 'vim-airline/vim-airline-themes'
"Bundle 'farseer90718/vim-taskwarrior'
"Bundle 'irrationalistic/vim-tasks'

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
call vundle#end()
filetype plugin indent on

let g:airline#extensions#tabline#enabled = 1
" Colorscheme
"colorscheme monokai 
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
    "set term=screen-256color
    "set t_Co=256
     colorscheme solarized
     let g:solarized_termcolors=256
     set background=light
endif

" Fix not escaping visual mode on shifting
vnoremap < <gv
vnoremap > >gv 

""" Code folding options
nmap <leader>g0 :set foldlevel=0<CR>
nmap <leader>g1 :set foldlevel=1<CR>
nmap <leader>g2 :set foldlevel=2<CR>
nmap <leader>g3 :set foldlevel=3<CR>
nmap <leader>g4 :set foldlevel=4<CR>
nmap <leader>g5 :set foldlevel=5<CR>
nmap <leader>g6 :set foldlevel=6<CR>
nmap <leader>g7 :set foldlevel=7<CR>
nmap <leader>g8 :set foldlevel=8<CR>
nmap <leader>g9 :set foldlevel=9<CR>
set foldmethod=syntax
set foldlevel=10

" No swap file
set noswapfile

" Resizing
nnoremap <silent> + :vertical resize +5<CR>
nnoremap <silent> - :vertical resize -5<CR>


set laststatus=2
let g:Powerline_symbols='fancy'

" Syntastic
let g:syntastic_cpp_compiler = 'clang-3.9'
let g:syntastic_cpp_compiler_options = '-std=c++11 -stdlib=libc++'

" YouCompleteMe options
"let g:ycm_confirm_extra_conf = 0
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_autoclose_preview_window_after_insertion = 1
"let g:ycm_python_binary_path = '/usr/bin/python3'
let g:ycm_collect_identifiers_from_comments_and_strings = 1
" Global ycm config file path
let g:ycm_global_ycm_extra_conf = '/fzi/ids/schulze/.ycm_config.py'
" Turn off disturbing confirmation if ycm config file has been found
let g:ycm_confirm_extra_conf = 0


" Paste
set pastetoggle=<F4>

" NerdTree options
map <F2> :NERDTreeTabsToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" Tagbar
map <F3> :TagbarToggle<CR>
let g:tagbar_ctags_bin = "/disk/no_backup/schulze/builds_32/ctags-5.8/bin/ctags"

" Command-t
noremap <leader>o :CommandT<CR>
noremap <leader>O :CommandTFlush<CR>
noremap <leader>m :CommandTBuffer<CR>

" EASYMOTION
let g:EasyMotion_leader_key = '<leader>'

" YouCompleteMe Keybindings
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'.
nnoremap <Leader>] :YcmCompleter GoTo<CR>                                                                                                                                                 
nnoremap <Leader>[ :YcmCompleter GetDoc<CR>

" Ultisnips
let g:UltiSnipsSnippetsDir = '~/.vim/custom_snips/'
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"
let g:UltiSnipsEditSplit="vertical"

let g:UltiSnipsExpandTrigger = "<nop>"
let g:ulti_expand_or_jump_res = 0
function ExpandSnippetOrCarriageReturn()
    let snippet = UltiSnips#ExpandSnippetOrJump()
    if g:ulti_expand_or_jump_res > 0
        return snippet
    else
        return "\<CR>"
    endif
endfunction
let g:endwise_no_mappings = 1
inoremap <expr> <CR> pumvisible() ? "\<C-R>=ExpandSnippetOrCarriageReturn()\<CR>" : "\<CR>\<C-R>=EndwiseDiscretionary()\<CR>"


" Clang format style
let g:clang_format#auto_format = 0
let g:clang_format#auto_formatexpr = 0
let g:clang_format#command = 'clang-format'

" Syntastic
let g:syntastic_mode="passive"
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
let g:syntastic_error_symbol = "✗"
let g:syntastic_warning_symbol = "⚠"
let g:syntastic_mode_map = { 'passive_filetypes': ['python'] }

" Task
inoremap :call Toggle_task_status()i
noremap :call Toggle_task_status()

" Airline
let g:airline_powerline_fonts = 1 
let g:airline_theme='papercolor'

function! s:insert_gates()
  let gatename = substitute(toupper(expand("%:t")), "\\.", "_", "g")
  execute "normal! i#ifndef " . gatename
  execute "normal! o#define " . gatename . " "
  execute "normal! Go#endif /* " . gatename . " */"
  normal! kk
endfunction
autocmd BufNewFile *.{h,hh,hpp} call <SID>insert_gates()

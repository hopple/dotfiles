set nocompatible

set encoding=utf-8
"set fileencodings=utf-8,gbk
"set ambiwidth=double
set gfn=Consolas:h12:cANSI
set guioptions-=T "get rid of toolbar
set guioptions-=r "get rid of scrollbars

"Color scheme
set background=dark
set t_Co=16
let g:solarized_termcolors=16
colorscheme solarized
"set columns=100 lines=400

"showing line numbers and length
set number
set tw=100
set nowrap
set fo-=t

"set colorcolumn=80
"highlight ColorColumn ctermbg=233

"load pathogen
filetype off
call pathogen#infect()
call pathogen#helptags()

"enable syntax highlighting
filetype off
filetype plugin indent on
syntax on

"bind leader key
let mapleader=","

"removes last search highlight
noremap <C-n> :nohl<CR>
vnoremap <C-n> :nohl<CR>
inoremap <C-n> :nohl<CR>

"easier moving tabs
map <Leader>n <esc>:tabprevious<CR>
map <Leader>m <esc>:tabnext<CR>

"map sort function to a key
vnoremap <Leader>s :sort<CR>

"Easier moving of code blocks.
vnoremap < <gv
vnoremap > >gv

"code folding
set foldmethod=indent
set foldlevel=99


"set spell
set history=1000
set undolevels=700

set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround
set expandtab

set hlsearch
set incsearch
set ignorecase
set smartcase

set nobackup
set nowritebackup
set noswapfile

"python IDE setup
set laststatus=2

"MiniBufExplorer
"let g:miniBufExplMapWindowNavVim=1
"let g:miniBufExplMapWindowNavArrows=1
"let g:miniBufExplMapCTabSwitchBufs=1
"let g:miniBufExplModSelTarget=1
map <F3> :MiniBufExplorer<cr>

"NERD TREE SETUP
map <F2> :NERDTreeToggle<cr>

"Better navigating through omnicomplete option list
set completeopt=longest,menuone
function! OmniPopup(action)
     if pumvisible()
         if a:action == 'j'
             return "\<C-N>"
         elseif a:action == 'k'
             return "\<C-P>"
         endif
     endif
     return a:action
endfunction

inoremap <silent><C-j> <C-R>=OmniPopup('j')<CR>
inoremap <silent><C-k> <C-R>=OmniPopup('k')<CR>


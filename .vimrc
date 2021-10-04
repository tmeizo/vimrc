"Auto indent
set ai
"Auto read
set ar
"Auto write
set awa
"Deleting
set bs=indent,eol,start
"Display
set dy=lastline,uhex
"Windows are equal
set ea
"Ignore case in patterns
set ic
"Line number
set nu
"Columns for line number
set nuw=4
"Scroll offset
set so=5
"New window below
set sb
"Break line char
set sbr=>\  
"New window right
set spr
"Wrap
set ww=b,s
set nowrap
"Size of indent
set tabstop=4
"Shift width
set sw=4
"Spaces instead of tabs
set expandtab

set smartindent

"Show whitespaces
set list

set encoding=UTF-8

set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'preservim/nerdtree'
Plugin 'fatih/vim-go'
Plugin 'blueshirts/darcula'
Plugin 'vim-airline/vim-airline'
Plugin 'preservim/nerdcommenter'
Plugin 'ekalinin/Dockerfile.vim'
Plugin 'neoclide/coc.nvim'

call vundle#end()
filetype plugin indent on

if exists('+termguicolors')
    set termguicolors
endif

colorscheme darcula

"airline separators
let g:airline_left_sep = ''
let g:airline_right_sep = ''

"NERDTree and NERDCommenter
map <C-g> :NERDTreeToggle<CR>
map // <plug>NERDCommenterToggle

"Quick window moving
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
map <C-h> <C-w>h

"Coc
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<CR>"
inoremap <expr> <Space> pumvisible() ? "\<C-y> " : "\<Space>"
inoremap <silent><expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <silent><expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<Tab>"

"Terminal
noremap <F12> :tabnew<CR>:terminal<CR>i
tnoremap <ESC> <C-\><C-n>

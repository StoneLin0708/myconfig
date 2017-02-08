if 0 | endif

set runtimepath+=~/.config/nvim/bundle/neobundle.vim/
call neobundle#begin(expand('~/.config/nvim/bundle'))
NeoBundleFetch 'Shougo/neobundle.vim'
"
NeoBundle 'Shougo/deoplete.nvim'
"NeoBundle 'zchee/deoplete-clang'
NeoBundle 'kiddos/deoplete-cpp'

NeoBundle 'airblade/vim-gitgutter'
NeoBundle 'flazz/vim-colorschemes'
NeoBundle 'kiddos/malokai.vim'
NeoBundle 'octol/vim-cpp-enhanced-highlight'

NeoBundle 'vim-airline/vim-airline'
NeoBundle 'vim-airline/vim-airline-themes'
NeoBundle 'scrooloose/nerdtree'
"NeoBundle 'Xuyuanp/nerdtree-git-plugin'


"
call neobundle#end()
filetype plugin indent on
NeoBundleCheck

set clipboard=unnamed,unnamedplus
set encoding=utf-8

set expandtab
set tabstop=4
set softtabstop=2
set shiftwidth=2
set smartindent
set number
set cursorline

nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l

map <Up>  <C-e>
map <Down> <C-y>

nmap <Tab> :NERDTreeToggle<CR>

syntax on
colorscheme malokai
let g:airline_theme='simple'

"let g:cpp_class_scope_highlight = 1

let g:deoplete#enable_at_startup = 1
let g:deoplete#enable_ignore_case = 1
let g:deoplete#enable_smart_case = 1
let g:deoplete#enable_camel_case = 1
let g:deoplete#enable_refresh_always = 0
"let g:deoplete#sources#clang#libclang_path = '/usr/lib/llvm-3.9/lib/libclang.so'
"let g:deoplete#sources#clang#clang_header = '/usr/lib/llvm-3.9/lib/clang'

let g:deoplete#sources = {}
"let g:deoplete#sources.cpp = ['src', 'cpp', 'cpp/include']

let g:deoplete#sources#cpp#cpp_include_path = [
      \'.',
      \'/usr/local/include'
      \'include',
      \'../include',
      \'src',
      \'../src'
      \]

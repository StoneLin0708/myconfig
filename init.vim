if 0 | endif

call plug#begin('~/.local/share/nvim/plugged')

Plug 'airblade/vim-gitgutter'
Plug 'flazz/vim-colorschemes'
Plug 'kiddos/malokai.vim'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'

Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

Plug 'iamcco/mathjax-support-for-mkdp'
Plug 'iamcco/markdown-preview.vim'

" python
Plug 'tell-k/vim-autopep8'
" Plug 'zchee/deoplete-jedi'
Plug 'tweekmonster/django-plus.vim'

" deoplete
" Plug 'Shougo/deoplete.nvim'
" Plug 'Shougo/neoinclude.vim'

" c++
Plug 'roxma/nvim-completion-manager'
Plug 'roxma/ncm-clang'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'rhysd/vim-clang-format'
Plug 'w0rp/ale'

" lua
Plug 'tbastos/vim-lua'

" C# ??
Plug 'OmniSharp/omnisharp-vim'
call plug#end()

filetype plugin indent on

" Basic setting
set clipboard=unnamed,unnamedplus
set encoding=utf-8
set autoread

set expandtab

set tabstop=4
set softtabstop=2
set shiftwidth=2

set smartindent
set number
set cursorline
set mouse-=a
autocmd BufRead,BufNewFile *.html setlocal filetype=html
autocmd BufRead,BufNewFile *.h setlocal filetype=cpp
autocmd BufRead,BufNewFile *.c setlocal filetype=cpp
autocmd BufRead,BufNewFile *.py setlocal filetype=python
autocmd FileType python setlocal tabstop=2
autocmd FileType python setlocal softtabstop=2
autocmd FileType python setlocal shiftwidth=2
autocmd FileType html setlocal tabstop=4
autocmd FileType html setlocal softtabstop=4
autocmd FileType html setlocal shiftwidth=4

"
nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l

map <Up>  <C-e>
map <Down> <C-y>

nmap <F2> :NERDTreeToggle<CR>
set lazyredraw
set completeopt-=preview
syntax on
colorscheme malokai

" colorscheme atom
let g:mapleader=','
let g:airline_theme='simple'

" NERD COMMENTER
let g:NERDSpaceDelims = 1
let g:NERDCompactSexyComs = 1

" Python
let g:autopep8_disable_show_diff=1
let g:autopep8_indent_size=4
let g:ale_python_flake8_options='--max-line-length=120'
" c++
let g:cpp_class_scope_highlight = 1

" let g:cpp_member_variable_highlight = 1
" let g:cpp_class_decl_highlight = 1
" let g:cpp_experimental_simple_template_highlight = 1
let g:cpp_experimental_template_highlight = 1


" Deoplete
" let g:deoplete#enable_at_startup = 1
" let g:deoplete#enable_ignore_case = 1
" let g:deoplete#enable_smart_case = 1
" let g:deoplete#enable_camel_case = 1
" let g:deoplete#enable_refresh_always = 0
" let g:deoplete#sources#jedi#python_path = 'python'

" ale
let g:ale_linters = {
      \'cpp' : ['clang','clangtidy'],
      \'python': ['autopep8'],
      \}

let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_insert_leave = 1

let g:ale_c_build_dir_names = ['build']
" let g:ale_cpp_clangtidy_options = '-std=c++1z -x c++'
let g:ale_cpp_clangtidy_checks = ['*'
      \,'-cert-*'
      \,'-cppcoreguidelines-*'
      \,'-llvm-include-order'
      \,'-llvm-header-guard'
      \,'-misc-unused-parameters'
      \,'-misc-noexcept-move-constructor'
      \,'-readability-else-after-return'
      \,'-readability-named-parameter'
      \,'-readability-braces-around-statements'
      \,'-fuchsia-default-arguments'
      \]

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-n>"
let g:UltiSnipsJumpBackwardTrigger="<c-p>"

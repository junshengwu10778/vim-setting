set nocompatible
filetype off
set nu
set hlsearch
set ai
set cindent
set tabstop=4
"set backup
"set backupdir=~/.backup
set shiftwidth=4
set backspace=indent,eol,start
set nowrap
set incsearch
set tags=./tags,./TAGS,tags;~,TAGS;~;
set expandtab
set completeopt=longest,menu
set encoding=utf-8
filetype indent on 
set t_Co=256
syntax on
syntax enable
set bg=dark
"set g:solarized_termcolors=256
"colorscheme solarized


" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

" Multiple Plug commands can be written in a single line using | separators
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

Plug 'junegunn/fzf.vim'

Plug 'vim-airline/vim-airline'

Plug 'Rip-Rip/clang_complete'

Plug 'scrooloose/nerdcommenter'

Plug 'w0rp/ale'

Plug 'octol/vim-cpp-enhanced-highlight'

Plug 'ervandew/supertab'

Plug 'Shougo/neocomplete.vim'
" Initialize plugin system
call plug#end()







" NerdTree Commenter
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims=1
" Hot key for NerdTree Commenter
vmap <C-_> <leader>c<Space>
nmap <C-_> <leader>c<Space>


" setting leader key
let mapleader=";"


" Hot key for tab 
noremap <leader><tab> :tabnext<CR>
noremap <leader><s-tab> :tabprevious<CR>
" Hot key for ctags
noremap jd g<c-]>
" Hot key for auto compelete brackets
inoremap {<CR> {<CR>}<Esc>ko


" Hot key for fzf
nmap <C-p> :FZF<CR>


" setting ale
let g:ale_sign_error = "✗"
let g:ale_sign_warning = '⚠'
let g:ale_statusline_format = ['⨉ %d', '⚠ %d', '⬥ ok']


" c++ syntax highlighting
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1
let g:cpp_experimental_simple_template_highlight = 1
let g:cpp_concepts_highlight = 1


" SuperTab completion fall-back
let g:SuperTabDefaultCompletionType='<c-x><c-u><c-p>'
" clang_compelete setting
let g:clang_snippets=1
let g:clang_snippets_engine='ultisnips'
let g:clang_auto_select=1
" setting the path includes libclang library
let g:clang_library_path='/usr/lib/llvm-6.0/lib/libclang.so'
set completeopt=menu,menuone
let g:clang_cpp_option= '-std=c++11'


" UltiSnips
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

" neocompelte 
let g:neocomplete#enable_at_startup = 1
" Use smartcase.
let g:neocomplete#enable_smart_case = 1
" " Set minimum syntax keyword length.
let g:neocomplete#sources#syntax#min_keyword_length = 3


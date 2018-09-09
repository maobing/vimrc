set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle
Plugin 'VundleVim/Vundle.vim'

Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'altercation/vim-colors-solarized'
Plugin 'kien/ctrlp.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-syntastic/syntastic'
Plugin 'Valloric/YouCompleteMe'
Plugin 'easymotion/vim-easymotion'
Plugin 'kien/rainbow_parentheses.vim'
Plugin 'rhysd/vim-clang-format'
Plugin 'tell-k/vim-autopep8'

" All of your Plugins must be added before the following line
call vundle#end()

" Misc
filetype plugin indent on

syntax on
syntax enable
set background=dark
let g:solarized_termtrans=1
let g:solarized_bold=0
colorscheme solarized

set backspace=indent,eol,start

set is
set hlsearch
set ls=2

set ruler
" set nowrap
set number

set ignorecase
set smartcase
set mousehide
set autoindent
set si
set cindent
set wildignore=*.swp,*.bak,*.pyc,*.class,*.jar,*.gif,*.png,*jpg

set expandtab
set smarttab
set tabstop=4
set shiftwidth=2
set softtabstop=2
set smartindent
let g:pymode_indent=1

let g:alternateExtensions_h="hpp,cpp,c"
let g:alternateExtensions_hpp="h,cpp"
let g:alternateExtensions_cpp="h,hpp"

set t_Co=256

set pastetoggle=<F10>

" cfg for NERDTree
map <F5> :NERDTreeToggle<CR>
map <leader>r :NERDTreeFind<cr>
let NERDTreeIgnore=['\.pyc$', '\~$']
let g:nerdtree_tabs_open_on_console_startup=1

" cfg for synastics
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_mode_map = {'mode': 'passive', 'active_filetypes':[], 'passive_filetypes': []}
nnoremap <C-w>E :SyntasticCheck<CR> :SynasticToggleMode<CR>

" cfg for YCM
nnoremap <C-g> :YcmCompleter GoToDefinitionElseDeclaration<CR>

" EasyMotion cfg
let g:EasyMotion_do_mapping=0
nmap s <Plug>(easymotion-overwin-f)
let g:EasyMotion_smartcase=1

" ctrl p cfg
let g:ctrlp_max_files=0
" ctrl p: ignore files in ctrl p search
set wildignore+=*.so,*.swp,*.zip,*.pyc,*.ninja,a.out
let g:ctrlp_custom_ignore = {
                  \ 'dir': 'build.*',
                  \ 'file': '\v\.(so|swp|zip|pyc)$'
                  \ }

" clang format cfg
nmap <F9> : ClangFormat<CR>

" autopep8 cfg
autocmd FileType python noremap <buffer> <F8> :call Autopep8()<CR>
let g:autopep8_aggressive=1
let g:autopep8_disable_show_diff=1


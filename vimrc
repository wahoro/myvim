" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Plugins
"Plugin 'Valloric/YouCompleteMe'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'majutsushi/tagbar'
Plugin 'vim-scripts/a.vim'

" Color schemes
Plugin 'tomasr/molokai'
Plugin 'altercation/vim-colors-solarized'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'

" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on

":inoremap [ [] <Esc>i 
"inoremap jk <Esc> 
inoremap jk <Esc>
inoremap <Esc> <nop>

"let Tlist_Use_Right_Window = 1
"let Tlist_Show_One_File = 1
"let Tlist_Exit_OnlyWinodw = 1
"noremap <F8> :TlistToggle<CR>
"noremap <F7> :set nu!<CR>
"

"colorscheme molokai
set background=dark
colorscheme solarized
"colorscheme molokai

syntax enable
syntax on

" highlight current line
au WinLeave * set nocursorline nocursorcolumn
au WinEnter * set cursorline cursorcolumn
set cursorline cursorcolumn

" search
set incsearch

" encoding dectection
set fileencodings=utf-8,gb2312,gb18030,gbk,ucs-bom,cp936,latin1

" enable filetype dectection and ft specific plugin/indent
filetype plugin indent on

set ignorecase
set smartcase
set nowrap

" editor settings
set history=1000
set nocompatible
set nofoldenable                                                  " disable folding"
set confirm                                                       " prompt when existing from an unsaved file
set backspace=indent,eol,start                                    " More powerful backspacing
set t_Co=256                                                      " Explicitly tell vim that the terminal has 256 colors "
set report=0                                                      " always report number of lines changed                "
set nowrap                                                        " dont wrap lines
set scrolloff=5                                                   " 5 lines above/below cursor when scrolling
set number                                                        " show line numbers
set showmatch                                                     " show matching bracket (briefly jump)
set showcmd                                                       " show typed command in status bar
set title                                                         " show file in titlebar
set laststatus=2                                                  " use 2 lines for the status bar
set matchtime=2                                                   " show matching bracket for 0.2 seconds

" Default Indentation
set autoindent
set smartindent     " indent when
set tabstop=4       " tab width
set softtabstop=4   " backspace
set shiftwidth=4    " indent width

" ctrlp
set wildignore+=*/tmp/*,*.so,*.o,*.a,*.obj,*.swp,*.zip,*.pyc,*.pyo,*.class,.DS_Store  " MacOSX/Linux
let g:ctrlp_custom_ignore = '\.git$\|\.hg$\|\.svn$'
let g:ctrlp_open_new_file = 'v'

" eggcache vim
nnoremap ; :
nnoremap : <nop>
:command W w
:command WQ wq
:command Wq wq
:command Q q
:command Qa qa
:command QA qa

let mapleader=','
"noremap <leader>sv :source $MYVIMRC<cr>
noremap <leader>ev :vs $MYVIMRC<cr>
noremap <silent><leader>p "0p

noremap <silent><leader>1 1gt
noremap <silent><leader>2 2gt
noremap <silent><leader>3 3gt
noremap <silent><leader>4 4gt
noremap <silent><leader>5 5gt
noremap <silent><leader>6 6gt
noremap <silent><leader>7 7gt
noremap <silent><leader>8 8gt
noremap <silent><leader>9 9gt
noremap <silent><leader>t :tabnew<cr> 
noremap <silent><tab>m :tabnew<cr> 
noremap <silent><leader>g :tabclose<cr> 
noremap <silent><tab>e :tabclose<cr> 
noremap <silent><tab>n :tabnext<cr> 
noremap <silent><tab>p :tabprev<cr> 

inoremap <c-j> <down>
inoremap <c-k> <up>
inoremap <c-h> <left>
inoremap <c-l> <right>

"source ~/github/vim/asc.vim
"source ~/github/vim/skywind.vim

noremap <F3> :TagbarToggle<CR>
noremap <F4> :NERDTreeToggle<cr>

" Tagbar
let g:tagbar_right=1
let g:tagbar_width=40
let g:tagbar_autofocus = 1
let g:tagbar_sort = 0
let g:tagbar_compact = 1
let g:tagbar_ctags_bin = '/source/g3lib/c++/3rdparty/ctags-5.8/ctags'

" Nerd Tree
let NERDChristmasTree=0
let NERDTreeWinSize=30
let NERDTreeChDirMode=2
let NERDTreeIgnore=['\~$', '\.pyc$', '\.swp$']
" let NERDTreeSortOrder=['^__\.py$', '\/$', '*', '\.swp$',  '\~$']
let NERDTreeShowBookmarks=1
let NERDTreeWinPos = "left"

" nerdcommenter
let NERDSpaceDelims=1
" nmap <D-/> :NERDComToggleComment<cr>
let NERDCompactSexyComs=1

autocmd FileType h,c,cc,cpp,sh setlocal tabstop=2 shiftwidth=2 softtabstop=2 expandtab textwidth=120
autocmd FileType php setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=120
autocmd FileType ruby setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=120
autocmd FileType php setlocal tabstop=4 shiftwidth=4 softtabstop=4 textwidth=120
autocmd FileType coffee,javascript setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=120
autocmd FileType python setlocal tabstop=4 shiftwidth=4 softtabstop=4 expandtab textwidth=120
autocmd FileType html,htmldjango,xhtml,haml setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=0
autocmd FileType sass,scss,css setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=120

" When editing a file, always jump to the last cursor position
if has("autocmd")
autocmd BufReadPost * 
\ if line("'\"") > 0 && line ("'\"") <= line("$") |
\ exe "normal g'\"" | 
\ endif                       
endif

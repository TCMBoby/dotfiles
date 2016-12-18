set nocompatible	" be iMproved, required
filetype off		" required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
" call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" Plugin on GitHub repo
"Plugin 'tpope/vim-fugitive'
" Plugin from http://vim-scripts.org/vim/scripts.html
"Plugin 'L9'
" Git Plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" Git repos on your local machine (i.e. whem working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set up the runtimepath properly
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else
"Plugin 'ascenator/L9', {'name': 'newL9'}

" vim-fugitive: a Git wrapper so awesome, it should be illegal
Plugin 'tpope/vim-fugitive'

" command-t: Fast file navigation for VIM
Plugin 'git://git.wincent.com/command-t.git'

" vim-airline: lean & mean status/tabline for vim that's light as air
Plugin 'vim-airline/vim-airline'

" vim-airline-themes: a collection of themes for vim-airline
Plugin 'vim-airline/vim-airline-themes'

" All of your Plugins must be added before the following line
call vundle#end()		" required
filetype plugin indent on	" required
" To ignore plugin indent changes, instead use:
" filetype plugin on
"
" Brief help
" :PluginList		- list configured plugins
" :PluginInstall	- installs plugins; append '!' to update or just
" :PluginUpdate
" :PluginSearch foo	- searches for foo; append '!' to refresh local cache
" :PluginClean		- confirms removal of unused plugins; append '!' to
" auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

syntax enable " Enable syntax highlighting
set background=dark " Set dark terminal background

set mouse=a " Automatically enable mouse usage.

set noshowmode " Do not show active mode. Airline already does that.

set cursorline " Highlight the current line.
highlight clear SignColumn " SignColumn should match background.
highlight clear LineNr " Current line number row will have same background in relative mode.

set incsearch " While typing a search command, show where the pattern, as it was typed so far, matches.
set hlsearch " Highlight search terms.
set ignorecase " If the 'ignorecase' option is on, the case of normal letters is ignored.
set smartcase " Override the 'ignorecase' option if the search pattern contains upper case characters.

set wildmenu " Show list instead of just completing
set wildmode=list:longest,full " Command <Tab> completion, list matches, then longest common part, then all.

set backspace=indent,eol,start " Backspace for dummies
set linespace=0 " No extra spaces between rows
set number " Line number on
set showmatch " Show matching brackets/parenthesis
set whichwrap=b,s,h,l,<,>,[,] " Backspace and cursor keys wrap, too
set scrolljump=1 " Lines to scroll when cursor leaves screen
set scrolloff=5 " Minimal number of screen lines to keep above and below the cursor.
"set foldenable " Auto fold code
set ruler " Show the line and column number of the cursor position, separated by a comma.
set laststatus=2 " Always display status line
set ttimeoutlen=10 " Set timeout for key code input

set nowrap " Do not wrap long lines
set autoindent " Indent at the same level of the previous line
set shiftwidth=4 " Use indents of  4 spaces
set expandtab " Tabs are spaces, not tabs
set tabstop=4 " An indentation every 4 columns
set softtabstop=4 " Let backspace delete indent

" airline
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='bubblegum'



filetype plugin indent on   " Enable file type based indentation
set autoindent              " Respect indentation when starting a new line
set smartindent             " Smart indent
set wrap                    " Wrap lines
set linebreak               " Show linebreaks
" let &showbreak='↪ '       " Use ↪ character to show line-breaks

" Allow backspacing over autoindent, line breaks and start of insert action
set backspace=indent,eol,start
set whichwrap+=<,>,h,l

map Y y$                " Map Y to act like D and C (yank until EOL) not as yy
set hidden              " Deal nicely with buffers and switch without saving
set spelllang=en_us     " Spell check for US english
" Don't redraw when not needed
set lazyredraw                  
" Highlight current vim line
set cursorline                  
set fileformats=unix 
" Keep cursor from reaching end of screen
set scrolloff=5                 
" Enable syntax highlighting
syntax on

" Set mapleader (for custom bindings, ex: ,ie in python)
let mapleader =','              
let g:mapleader = ','

" ==> Search == {{{
" Highlight searches. To turn-off: nohl
set hlsearch
" Highlight pattern matches as you type
set incsearch
" Ignore case when using a search pattern
set ignorecase
" Override 'ignorecase' when pattern has upper case character
set smartcase
" Show matching brackets when text indicator is over them
set showmatch                   
" # of tenths of a second to blink when matching brackets
set matchtime=10                
" Do not display column numbers by default:
set nonumber 		" For column numbers, set number

set showcmd         " Show partial commands in the last line of the screen
set laststatus=2    " Always display a status line
set ruler           " Display the cursor position at the bottom right
set magic           " For regular expressions, turn magic on
set history=10000   " Show longest possible command history
set undolevels=1000 " Number of levels to undo <u: undo, C-R: redo>
set encoding=utf-8  " Set default encoding
set mousehide       " Hide mouse pointer when typing. restore when mouse is moved
set wildmenu        " Enable enhanced tab auto-complete
" Complete till longest string, then open the wildmenu
set wildmode=list:longest,full
set wildignorecase
" Ignore complied files and files in version control
set wildignore=*.o,*~,*.pyc,*/.git/*,*/.svn/*

set expandtab       " Expand tabs to spaces
set tabstop=4       " Number of spaces tab is counted for
set shiftwidth=4    " Number of spaces to use for autoindent
set backspace=2     " Fix backspace behavior on most terminals

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=       " No terminal visual bell

" Remove the Windows ^M - when the encodings gets messed up
noremap <Leader>m mmHmt:%s/<C-V><cr>//ge<cr>'tzt'm

" Set pastetoggle to F10 (stop auto-indent when pasting by pressing <F10> first)
set pastetoggle=<F10>

" Windows splitting:   :sp horizontal split, :vsp vertical split :q! close
" Split navigations: (like h,j,k, l) instead of ctrl-w then j, simply ctrl-j
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Return to last edit position when opening files (You want this!)
autocmd BufReadPost *
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \   exe "normal! g`\"" |
     \ endif

" ==> Python related === {{{
" Fold Python code (with -/+, zM, zR)
set foldmethod=indent
set foldlevel=0 	" Fold everything from beginning by default
nn - zc 		" - closes the fold
nn + zo 		" + (or l) opens the fold
set foldcolumn=0 	" No folds by default, (columns start with 0)

" Flag unnecessary whitespace
" au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

" Highlight all syntax
autocmd BufRead,BufNewFile *.py let python_highlight_all=1

" Delete trailing white space on save, useful for Python
func! DeleteTrailingWS()
  exe "normal mz"
  %s/\s\+$//ge
  exe "normal `z"
endfunc

" Python related shortcuts
map ,pf  :!pyflakes %<CR>
map <f9> :w<CR>:!python %<CR>

map ,ie $a<CR>from IPython import embed; embed()<ESC>
map ,de <ESC>:g/from IPython import embed; embed()/d<CR>

map ,id $a<CR>import ipdb; ipdb.set_trace()<ESC>
map ,dd <ESC>:g/import ipdb; ipdb.set_trace()/d<CR>


" ==> Plugin manager (vim-plug): ================= {{{
" (:PlugInstall to install/update plugins), :PlugClean to delete
" filetype off, filetype plugin indent on, syntax on are all handled by
" vim-plug, so can be removed from .vimrc script above
" https://github.com/junegunn/vim-plug/wiki/tips#automatic-installation
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Load all plugins needed (use single quotes)
call plug#begin('~/.vim/plugged')
" Plug 'davidhalter/jedi-vim'         " auto complete in Python
" Load utilsnips and YouCompleteMe plugins (very useful for Python)
" Plug 'SirVer/ultisnips'             " Ultimate snippet solution for Vim
" Plug 'Valloric/YouCompleteMe'
Plug 'junegunn/seoul256.vim'        " colorscheme
" Plug 'vim-syntastic/syntastic'      " Check Python syntax when saving
Plug 'nvie/vim-flake8'              " PEP8 checking
" Plug 'itchyny/lightline.vim'        " Show details of file on last line
Plug 'Lokaltog/powerline'           " Show details of file on last line
Plug 'ctrlpvim/ctrlp.vim'           " Shows files in current dir
Plug 'junegunn/fzf'                 " Fuzzy finder (better than ctrlp)
Plug 'junegunn/fzf.vim'
Plug 'scrooloose/nerdtree'          " Shows Tree of current dir
Plug 'airblade/vim-gitgutter'       " Shows number of lines changed

" Plug 'SirVer/ultisnips', { 'on': [] }
" Plug 'Valloric/YouCompleteMe', { 'on': [] }
" augroup load_us_ycm
"   autocmd!
"     autocmd InsertEnter * call plug#load('ultisnips', 'YouCompleteMe')
"                          \| autocmd! load_us_ycm
"                          augroup END
" Plug 'scrooloose/nerdtree', {'on': NERDTreeToggle'}

call plug#end()

" Change colorscheme
" colorscheme darkblue
let g:seoul256_background = 233       " Change numbers 233 (Darkest) to 239 (lightest)
colorscheme seoul256
" set background=dark

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"


syntax on
"filetype off " Pathogen needs to run before plugin indent on
"call pathogen#incubate()
call pathogen#infect('bundle/{}')
call pathogen#helptags() " generate helptags for everything in 'runtimepath'

if has("gui_running")
   let s:uname = system("uname")
   if s:uname == "Darwin\n"
      set guifont=DejaVu\ Sans\ Mono\ for\ Powerline:h14
   endif
endif

" change the mapleader from \ to ,
let mapleader=","

" Quickly edit/reload the vimrc file
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>

filetype plugin indent on

"execute Helptags

colorscheme vividchalk

set paste
set nopaste
set wrap        				" don't wrap lines
set linebreak
set nolist
set tabstop=4     				" a tab is four spaces
set backspace=indent,eol,start	" allow backspacing over everything in insert mode
set autoindent    				" always set autoindenting on
set copyindent    				" copy the previous indentation on autoindenting
set number        	" always show line numbers
set shiftwidth=4  " number of spaces to use for autoindenting
set shiftround    " use multiple of shiftwidth when indenting with '<' and '>'
set showmatch     " set show matching parenthesis
set ignorecase    " ignore case when searching
set smartcase     " ignore case if search pattern is all lowercase, case-sensitive otherwise
"set smarttab      " insert tabs on the start of a line according to shiftwidth, not tabstop
set hlsearch      " highlight search terms
set incsearch     "show search matches as you type
set spell spelllang=en_us


filetype plugin on

let g:languagetool_jar='/usr/local/Cellar/languagetool/2.3/libexec/languagetool-commandline.jar'

set history=700
set ruler

set tags=tags;/

let g:scala_sort_across_groups=1

let g:scala_first_party_namespaces='\(controllers\|views\|models\|util\|de.\)'

set laststatus=2   " Always show the statusline
set encoding=utf-8 " Necessary to show Unicode glyphs

let g:vim_markdown_folding_disabled=1
au BufRead,BufNewFile *.md set filetype=markdown

let g:pymode_rope = 0 
let g:pymode_rope_autoimport = 0
let g:pymode_rope_lookup_project = 0
let g:pymode_rope_complete_on_dot = 0
"Show hidden files in NerdTree

"let NERDTreeShowHidden=1
"
""autopen NERDTree and focus cursor in new document
autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p

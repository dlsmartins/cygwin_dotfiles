" vim:foldmethod=marker:foldlevel=0

" Launch config {{{
execute pathogen#infect()
" Jump to last time position
if has("autocmd")
	au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif
" }}}

" Colors {{{
set background=dark " Set background tone
colorscheme gruvbox " Set color scheme
syntax enable " Enable syntax highlighting
" }}}

" Spaces & Tabs {{{
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
" }}}

" UI Config {{{
set number " Show line numbers (absolute)
set relativenumber " Show line number (relative)
set showcmd " Show command in bottom bar
set cursorline " Highlight current line
filetype plugin indent on " Enable indentation definition on a file type basis
set wildmenu " Enable command autocomplete menu
set lazyredraw " Lazy redraw screen
set showmatch " Highlight matching ]})
set laststatus=2 " Always display the status line
set ruler " Enable ruler (line, column indicator)
let g:airline_powerline_fonts=1 " Enable airline to use powerline fonts
" }}}

" Searching {{{
set incsearch " Enable incremental search (search as you type)
set hlsearch " Highlight search results
nnoremap <leader><space> :nohlsearch<CR> " Map clean search highlight
" }}}

" Folding {{{
set foldenable " Enable folding
set foldlevelstart=0 " Close all folds by default
nnoremap <space> za " Map toggle fold
set foldmethod=marker " Fold based on markers
" }}}

"Movement {{{
set backspace=indent,eol,start " Enable backspace through anything in insert mode
"}}}

" Leader Shortcuts {{{
let mapleader="," " Set mapleader to ,
" }}}

" Other {{{
set omnifunc=syntaxcomplete#Complete " Enable Omni completion
set modelines=1 " Enable mode lines
set ttimeoutlen=100
set scrolloff=1 " Always display one line before and after the cursor
set display+=lastline " If a line is too long to fit on screen, display it on next line
set listchars=eol:¬,tab:░•,trail:␣,precedes:←,extends:→ " Set representations for whitespace chars
set list " Enable display of whitespace chars
let g:indentLine_leadingSpaceChar = '•' " Set indentLine plugin leading space char
let g:indentLine_leadingSpaceEnabled = 1 " Enable indentLine plugin leading spaces
" }}}

" Undo, Swap & Backup files {{{
set undofile " Enable undo files
set undodir=~/.cache/vim/undo " Set folder to store undo files
set backup " Enable backup files
set backupdir=~/.cache/vim/backup " Set folder to store backup files
set directory=~/.cache/vim/swap  " Set folder to store swap files
" }}}



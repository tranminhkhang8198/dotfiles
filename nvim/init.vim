" Habit
let mapleader = ","

" Specify a directory for plugins
call plug#begin('~/.local/share/nvim/plugged')
" Use NerdTree for file browsing
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'

" Move to and from Tmux panes and Vim panes
Plug 'christoomey/vim-tmux-navigator'

" Syntax For Languages

" Nice status bar
Plug 'vim-airline/vim-airline'

" Colors Scheme
Plug 'flazz/vim-colorschemes'

" Auto close parens, braces, brackets, etc
Plug 'jiangmiao/auto-pairs'

" Convenience for commenting things in and out
Plug 'scrooloose/nerdcommenter'

" Hightlight trailing whitespaces
Plug 'ntpeters/vim-better-whitespace'

" Show git stuff in gutter
Plug 'airblade/vim-gitgutter'

" Indicator for what was yanked
Plug 'machakann/vim-highlightedyank'

" Git integration glore
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'

" Fuzzy finder
Plug 'junegunn/fzf'

" Better than grepprg
Plug 'mileszs/ack.vim'

" Coc
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Vim dev icons
Plug 'ryanoasis/vim-devicons'

Plug 'sheerun/vim-polyglot'

" update &runtimepath and initialize plugin system
" Automatically executes `filetype plugin indent` on and `syntax enable`.
call plug#end()


" Color Scheme
colorscheme gruvbox


" Display hidden characters
set list
set listchars=tab:▸\ ,eol:¬

" In many terminal emulators the mouse works just fine, thus enable it.  set mouse=a

" Searching
nnoremap / /\v
vnoremap / /\v
set ignorecase
set smartcase


" Hightlight the line the cursor is on
set cursorline
" Show the cursor position all the time
set ruler

" Allow backspacing over everything in insert mode
set backspace=indent,eol,start

" Read/write file when switching buffers
set autowrite
set autoread

" Tab settings
set shiftwidth=4
set tabstop=4
set softtabstop=4
set expandtab
set smarttab

" Automatic indentation is good
set autoindent

" Undo function after reopening
set undofile
set undodir=/tmp


" OS x copy sharing
set clipboard=unnamedplus

" Acelerated scrolling
set scrolljump=-15


" Better vertical movwment for wrapped line
nnoremap j gj
nnoremap k gk

" Quickly cancle search hightlighting
nnoremap <leader><space> :nohlsearch<cr>

" Strip all trailing whitespace
nnoremap <leader>f :StripWhitespace<cr>

" Replace <Esc> with C-c
inoremap <F1> <Esc>
inoremap <C-c> <Esc>
nnoremap <C-c> :wa<cr>

" [scrooloose/nerdtree]
" Toggle NERDTree on and off
noremap <leader>a :NERDTreeToggle<cr>
" Chage NERDTree folder color


" I type Wq more often than wq
cmap Wq wq

" [scrooloose/nerdcommenter]
" Don't be too smart across lines
let g:AutoPairsMultilineClose=0
" Don't insert extra spaces
let g:AutoPairsMapSpace=0

" Use arrow keys to switch tabs
nnoremap <Left> :tabprevious<CR>
nnoremap <Right> :tabnext<CR>

" Column limits
set textwidth=110
set colorcolumn=110
" Toggle between column widths
nnoremap <leader>c :call ToggleColumnWidth()<cr>
let g:wide_column = 1
function! ToggleColumnWidth()
    if g:wide_column
        set textwidth=80
        set colorcolumn=80
        let g:wide_column = 0
    else
        set textwidth=110
        set colorcolumn=110
        let g:wide_column = 1
    endif
endfunction

" Sort lines in alphabetical order
vnoremap <leader>s :'<,'>!sort -f<cr>

" FZF
if executable('fzf')
    nnoremap <C-p> :FZF<cr>
endif

" Quickly insert a timestamp
nnoremap tt "=strftime("%F %T%z")<CR>p

" Git status
nnoremap <leader>w :Gstatus<cr>

" Make workflow
nnoremap <leader>m :let &makeprg=""<left>
nnoremap <silent> <Leader>b :cclose<cr>:silent !clear<cr>:make<cr>"

autocmd FileType typescript setlocal formatprg=prettier\ --parser\ typescript

" Set number
set number
set relativenumber

" Insert new line before/after without insert mode
nmap o o<Esc>
nmap O O<Esc>

" Automatically disable NERDTree
" autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Set vertical split to the right / horizontal split to bottom
set splitright
set splitbelow


" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Paste without adding new line above
" nmap p pkdd

" Jump out of [{(
inoremap <C-e> <Esc>%%a

" [ryanoasis/vim-devicons]
set encoding=UTF-8
set guifont=Ubuntu\ Nerd\ Font\ 11
let g:airline_powerline_fonts = 1


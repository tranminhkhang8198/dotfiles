" Habit
let mapleader = ","

" Specify a directory for plugins
call plug#begin('~/.local/share/nvim/plugged')
" Use NerdTree for file browsing
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'

" Convenience for commenting things in and out
Plug 'scrooloose/nerdcommenter'

" Show git stuff in gutter
Plug 'airblade/vim-gitgutter'

" Git integration glore
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'

" Move to and from Tmux panes and Vim panes
Plug 'christoomey/vim-tmux-navigator'

" Nice status bar
Plug 'vim-airline/vim-airline'

" Auto close parens, braces, brackets, etc
Plug 'jiangmiao/auto-pairs'

" Hightlight trailing whitespaces
Plug 'ntpeters/vim-better-whitespace'

" Indicator for what was yanked
Plug 'machakann/vim-highlightedyank'

" Fuzzy finder
Plug 'junegunn/fzf'

" Coc
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Vim dev icons
Plug 'ryanoasis/vim-devicons'

" HTML emmet
Plug 'mattn/emmet-vim'

" Syntax hightlighting
Plug 'sheerun/vim-polyglot'

" Colors Scheme
" Plug 'dikiaap/minimalist'
Plug 'morhetz/gruvbox'

" Syntax
Plug 'dense-analysis/ale'
Plug 'leafgarland/typescript-vim'

" Vim airline theme
" Plug 'vim-airline/vim-airline-themes'

" update &runtimepath and initialize plugin system
" Automatically executes `filetype plugin indent` on and `syntax enable`.
call plug#end()

" [Color Scheme]
colorscheme gruvbox
" set t_Co=256
" syntax on
" colorscheme minimalist


" Display hidden characters
set list
set listchars=tab:▸\ ,eol:¬

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
nmap <Leader>r :NERDTreeRefreshRoot<cr>
noremap <leader>a :NERDTreeToggle<cr>

" Fixed moving up and down from NERDTree
let g:NERDTreeMapJumpNextSibling = '<Nop>'
let g:NERDTreeMapJumpPrevSibling = '<Nop>'

let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1

" [scrooloose/nerdcommenter]
" Don't be too smart across lines
let g:AutoPairsMultilineClose=0
" Don't insert extra spaces
let g:AutoPairsMapSpace=0

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

" FZF
nnoremap <C-p> :FZF<cr>

" Set number
set number
set relativenumber

" Insert new line before/after without insert mode
nmap o o<Esc>
nmap O O<Esc>

" Set vertical split to the right / horizontal split to bottom
set splitright
set splitbelow

" [neoclide/coc.nvim]
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

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current position.
" Coc only does snippet and additional edit on confirm.
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
" END [neoclide/coc.nvim]


" [ryanoasis/vim-devicons]
set encoding=UTF-8
set guifont=Ubuntu\ Nerd\ Font\ 11
let g:airline_powerline_fonts = 1

" let g:airline_theme='minimalist'
" let g:airline_powerline_fonts = 1
" let g:airline#extensions#tabline#enabled = 1

" [mattn/emmet-vim]
" Redefine trigger key
let g:user_emmet_leader_key=','

" Jump out of [{(
inoremap <leader>e <Esc>%%a

" Save file with <leader>w
nnoremap <leader>w :w!<Esc>

" Set <leader> q for quit
nnoremap <leader>q :q<Esc>

" [prettier/vim-prettier]

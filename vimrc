execute pathogen#infect()

autocmd fileType make setlocal noexpandtab
filetype plugin indent on

" Reload a file when it is changed from the outside
set autoread

" Disable Backups (git for that)
set nobackup
set noswapfile
set hidden
set showmode
set laststatus=2
set statusline=%f\ %l\|%c\ %m%=%p%%\ (%Y%R)
set wildmenu
set wildmode=longest:full,list:full
set visualbell
set t_vb=
set encoding=utf-8 fileencodings=
scriptencoding utf-8
syntax on


set incsearch
set ignorecase
set smartcase

set nu
set ruler

set showmatch

set autoindent
set textwidth=80
set smartindent

set shiftwidth=4
set sts=4
set expandtab
set smarttab
set ttyfast

set termguicolors
" set t_Co=256
" colorscheme onedark
colorscheme hybrid
" colorscheme jellybeans
" colorscheme gruvbox
" colorscheme nord

set background=dark
let g:jellybeans_background_color_256 = '232'
set cc=80
highlight ColorColumn guibg=#00aaff
let g:netrw_liststyle=3
set list
set fillchars=vert:\|
let g:load_doxygen_syntax=1

set listchars=tab:>─,eol:¬,trail:·,nbsp:¤
set cursorline
set mouse=a

set backspace=eol,start,indent
set whichwrap+=<,>,h,l
set title

let g:rainbow_active = 1

set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Plugin 'Valloric/YouCompleteMe'
Plugin 'VundleVim/Vundle.vim'
Plugin 'tenfyzhong/CompleteParameter.vim'
Plugin 'preservim/nerdcommenter'
"Plugin 'SirVer/ultisnips'
"Plugin 'honza/vim-snippets'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tpope/vim-vinegar'
Plugin 'ludovicchabant/vim-gutentags'
Plugin 'rhysd/vim-clang-format'
Plugin 'vim-scripts/taglist.vim'
Plugin 'morhetz/gruvbox'
Plugin 'slim-template/vim-slim'
Plugin 'dracula/vim'
Plugin 'luochen1990/rainbow'
" Plugin 'preservim/nerdtree'
Plugin 'BeomjoonGoh/vim-easy-term'
"Plugin 'paroxayte/vwm.vim'
" Plugin 'tiagofumo/vim-nerdtree-syntax-highlight'
Plugin 'JamshedVesuna/vim-markdown-preview'
Plugin 'sheerun/vim-polyglot'
Plugin 'jiangmiao/auto-pairs'
Plugin 'arcticicestudio/nord-vim'
" Plugin 'bagrat/vim-buffet'
" Plugin 'vim-syntastic/syntastic'
Plugin 'joshdick/onedark.vim'

call vundle#end()
filetype plugin indent on

cabbrev make <c-r>=(getcmdtype()==':' && getcmdpos()==1 ? 'silent make<bar>copen<bar>redraw!' : 'make')<CR>
noremap <leader>m :silent! :make! \| :redraw!<cr>

augroup quickfix
    autocmd!
    " automatic location/quickfix window
    autocmd QuickFixCmdPost [^l]* cwindow
    autocmd QuickFixCmdPost    l* lwindow
augroup END

map <C-t><C-w> :tabclose<CR>

map <C-t><C-t> :tabnew<CR>
map <S-H> gT
map <S-L> gt

" map <C-c> :s/^/\/\//<Enter> 
" map <C-u> :s/^\/\///<Enter>

" Set ',' as leader

let mapleader = ","
noremap <leader>m :silent! :make! \| :redraw!<cr>

" nerdcommenter settings

let g:NERDSpaceDelims = 1
let g:NERDCompactSexyComs = 1
let g:NERDCustomDelimiters = { 'c': {'left': '/*', 'right': '*/'} }
let g:NERDCommentEmptyLines = 0
let g:NERDTrimTrailingWhitespace = 1
let g:NERDToggleCheckAllLines = 1

" Ultisnips Settings

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

" air-line
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" " unicode symbols
" let g:airline_left_sep = '»'
" let g:airline_left_sep = '▶'
" let g:airline_right_sep = '«'
" let g:airline_right_sep = '◀'
" let g:airline_symbols.linenr = '␊'
" let g:airline_symbols.linenr = '␤'
" let g:airline_symbols.linenr = '¶'
" let g:airline_symbols.branch = '⎇'
" let g:airline_symbols.paste = 'ρ'
" let g:airline_symbols.paste = 'þ'
" let g:airline_symbols.paste = '∥'
" let g:airline_symbols.whitespace = 'ξ'
" let g:airline_powerline_fonts = 1
" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

let g:airline_theme = "hybrid"
" let g:airline_theme = "jellybeans"

let g:nremap = {"[q": "", "]q": "", "[l": "", "]l": ""}
nmap [q <Plug>(qf_qf_previous)
nmap ]q <Plug>(qf_qf_next)
nmap [l <Plug>(qf_loc_previous)
nmap ]l <Plug>(qf_loc_next)

nmap <leader>v :vsplit<cr>
nmap <leader>h :split<cr>
nmap <leader>t :Term zsh --login<cr>

noremap <leader>gs :Gstatus<cr>

nmap <silent> <leader>w :wincmd k<CR>
nmap <silent> <leader>s :wincmd j<CR>
nmap <silent> <leader>a :wincmd h<CR>
nmap <silent> <leader>d :wincmd l<CR>


nmap <silent> <leader>f :ClangFormat<CR>
nmap <silent> <leader>T :Tlist<CR>
nmap <silent> <leader>U :TlistUpdate<CR>

" let g:easy_term_alias[''] = 'zsh --login'
let vim_markdown_preview_github=1
hi EndOfBuffer ctermbg=bg ctermfg=bg guibg=bg guifg=bg


noremap <Space>tt :tabe<cr>
noremap <Space>qq :tabc<cr>
noremap <Space>nn :tabn<cr>
noremap <Space>pp :tabp<cr>

tnoremap <Space>tt <C-\><C-n>:tabe<cr>
tnoremap <Space>qq <C-\><C-n>:tabc<cr>
tnoremap <Space>nn <C-\><C-n>:tabn<cr>
tnoremap <Space>pp <C-\><C-n>:tabp<cr>

" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*

" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 1
" let g:syntastic_check_on_wq = 0

map <Space><Space> :w <cr>
map <C-w> <C-w>w<cr>


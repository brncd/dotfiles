set number
set encoding=utf-8
set fileformat=unix
set noexpandtab
set tabstop=2
set shiftwidth=2
set background=dark
set foldmethod=syntax
set foldlevelstart=20
set noshowmode
set wildmenu " Wildmenu for autocomplete in command mode.
set splitright
set splitbelow

" !!! Turn off swap files and backups
set noswapfile
set nobackup
set nowritebackup

" vim-plug Plugins:
call plug#begin('~/.vim/plugged')
" Themes:
Plug 'morhetz/gruvbox'
" Indent:
Plug 'nathanaelkane/vim-indent-guides' " visual tab guide
" Syntax:
Plug 'scrooloose/syntastic' " lint
"Plug 'sheerun/vim-polyglot'
" Bar:
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" File Explorer:
Plug 'scrooloose/nerdtree'
" Git:
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
call plug#end()

" Plugins settings:
let g:indent_guides_enable_on_vim_startup = 1

" Interface:
syntax on
filetype indent on
filetype plugin on
colorscheme gruvbox
let g:gruvbox_contrast_dark = "hard"
let g:gruvbox_italic=1
let g:airline_theme='gruvbox'

" Syntastic:
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Searching:
set incsearch " Dynamically search while typing characters.
set hlsearch " Highlight occurences.
set ignorecase " Ignore case while searching with lowercase characters.
set smartcase " Check for case when using mixed case.

" Keymap: 
map <C-t> :vertical terminal<CR>
tnoremap <C-t> <C-\><C-n>:q!<CR>
map <C-b> :NERDTreeToggle<CR>
" Scrolling:
nnoremap <C-j> 10<C-e>
nnoremap <C-k> 10<C-y>
